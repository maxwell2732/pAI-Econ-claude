"""Stage 7b counterexample search (T2 Test E).

Run from this directory:  python counterexample_search.py
Writes: ../numerical_results/counterexample_candidates.csv

Targets (approved at HiL-N2):
  T1  P2/H2 single-threshold participation: for CES demand with eps0 > 1 the
      originator's variable profit is single-peaked but NOT monotone, so
      Pi_O(p) = 0 can have TWO roots -> the participation set is a bounded
      interval, contradicting the reduced form 1[p >= p_bar] used in W(p).
      (H2's sufficient condition, log-concave demand, fails: CES is log-convex.)
  T2  P6 wedge direction: sign of p_cost - p_SB across demand curvature;
      P6's corner argument is stated for inelastic demand (eps0 < 1).
  T3  P1 expenditure monotonicity/tipping: sign pattern of dE_I/dp.
"""

import os

import numpy as np
import pandas as pd

import model_functions as mf
from parameters import BASELINE, N_GRID, P_MAX, RESULTS_DIR, SEED

np.random.seed(SEED)
os.makedirs(RESULTS_DIR, exist_ok=True)


def search_bounded_participation():
    """T1: parameter combinations where Pi_O(p) = 0 has TWO roots.

    CES (eps0 > 1): H2's log-concavity sufficient condition fails, so these
    are domain-boundary findings (outside stated assumptions).
    LINEAR: demand IS log-concave and A1-A4 hold at baseline, yet a second
    root exists just below the choke price a/(b*(1-lam)) where demand -> 0.
    That is a COUNTEREXAMPLE WITHIN STATED ASSUMPTIONS to P2's biconditional
    Pi_O(p) >= 0  <=>  p >= p_bar  on the stated domain p in [c_g, inf).
    """
    rows = []
    # --- linear family at baseline: within stated assumptions ---
    params = dict(BASELINE)
    D_lin, _ = mf.make_family(params, "linear")
    roots = mf.exit_thresholds(params, D_lin, p_hi=params["a"] / (params["b"] *
                               (1.0 - params["lam"])) * 0.999999)
    if len(roots) >= 2:
        rows.append(dict(
            target="P2/H2 single-threshold participation",
            family="linear", eps0=np.nan, lam=params["lam"], c_o=params["c_o"],
            F=params["F"], p_bar_low=roots[0], p_bar_high=roots[1],
            finding="COUNTEREXAMPLE: linear demand is log-concave (H2 sufficient "
                    "condition holds) and A1-A4 hold, but Pi_O < 0 for "
                    "p > p_bar_high (demand vanishes near the choke price); "
                    "the biconditional in P2 fails on [c_g, inf)",
            within_stated_assumptions=True,
            diagnosis_hint="proposition-domain issue: restrict P2 to "
                           "p in [c_g, p_O_max] (or below the choke price), or "
                           "restate participation as an interval"))
    for eps0 in np.linspace(1.1, 3.0, 20):
        for lam in (0.3, 0.5, 0.7):
            for c_o in (1.5, 2.0, 3.0):
                params = dict(BASELINE, eps0=eps0, lam=lam, c_o=c_o)
                D, _ = mf.make_family(params, "ces")
                # peak of variable profit at p* = eps0*c_o/(eps0-1); pick F below peak
                p_peak = eps0 * c_o / (eps0 - 1.0)
                v_peak = float(mf.originator_profit(np.array([p_peak]),
                                                    dict(params, F=0.0), D)[0])
                if v_peak <= 0:
                    continue
                params["F"] = 0.5 * v_peak
                roots = mf.exit_thresholds(params, D)
                if len(roots) >= 2:
                    rows.append(dict(
                        target="P2/H2 single-threshold participation",
                        family="ces", eps0=eps0, lam=lam, c_o=c_o,
                        F=params["F"], p_bar_low=roots[0], p_bar_high=roots[1],
                        finding="participation set is bounded interval "
                                "[p_bar_low, p_bar_high]; 1[p>=p_bar] form fails "
                                "above p_bar_high",
                        within_stated_assumptions=False,  # H2 log-concavity is violated by CES
                        diagnosis_hint="missing curvature condition: H2 requires "
                                       "log-concave demand; CES is log-convex"))
    return rows


def search_wedge_direction():
    """T2: sign of the insurer-planner wedge across demand curvature (CES)."""
    rows = []
    p = np.linspace(BASELINE["c_g"], P_MAX, N_GRID)
    for eps0 in np.linspace(0.3, 3.0, 28):
        params = dict(BASELINE, eps0=eps0)
        D, U = mf.make_family(params, "ces")
        W = mf.social_welfare(p, params, D, U)
        E = mf.insurer_expenditure(p, params, D)
        p_sb, _, reg_w, _ = mf.classify_argmax(p, W, params, D)
        p_cost, _, reg_e, _ = mf.classify_argmax(p, -E, params, D)
        wedge = p_cost - p_sb
        claimed = wedge < 0  # P6 narrative: cost-minimizer pushes price BELOW p_SB
        rows.append(dict(
            target="P6 wedge direction", family="ces", eps0=eps0,
            lam=params["lam"], c_o=params["c_o"], F=params["F"],
            p_bar_low=np.nan, p_bar_high=np.nan,
            finding=f"p_cost={p_cost:.4f} ({reg_e}), p_SB={p_sb:.4f} ({reg_w}), "
                    f"wedge={wedge:+.4f} -> {'consistent' if claimed else 'REVERSED'}",
            within_stated_assumptions=bool(eps0 < 1.0),  # P6 corner case stated for eps0 < 1
            diagnosis_hint="" if claimed else
            "elastic demand (eps0 > 1): E_I is decreasing in p, so the "
            "cost-minimizer sits at the UPPER price corner, above p_SB; "
            "outside P6's stated inelastic domain"))
    return rows


def search_expenditure_tipping():
    """T3: sign pattern of dE_I/dp (P1 tipping) for both families."""
    rows = []
    p = np.linspace(BASELINE["c_g"], P_MAX, N_GRID)
    for family in ("ces", "linear"):
        params = dict(BASELINE)
        D, _ = mf.make_family(params, family)
        E = mf.insurer_expenditure(p, params, D)
        dE = np.gradient(E, p)
        sign = np.sign(dE)
        changes = np.nonzero(np.diff(sign) != 0)[0]
        p_tip = p[changes[0]] if len(changes) else np.nan
        rows.append(dict(
            target="P1 expenditure tipping", family=family,
            eps0=params["eps0"] if family == "ces" else np.nan,
            lam=params["lam"], c_o=params["c_o"], F=params["F"],
            p_bar_low=np.nan, p_bar_high=np.nan,
            finding=(f"dE_I/dp sign changes at p={p_tip:.4f}" if np.isfinite(p_tip)
                     else f"dE_I/dp has constant sign ({'+' if sign[1] > 0 else '-'}) "
                          f"on [c_g, P_MAX]"),
            within_stated_assumptions=True,
            diagnosis_hint="unit-elasticity point s=a/(2b) (linear); CES has "
                           "constant elasticity so no interior tipping"))
    return rows


def main():
    rows = (search_bounded_participation() + search_wedge_direction()
            + search_expenditure_tipping())
    df = pd.DataFrame(rows)
    df.to_csv(os.path.join(RESULTS_DIR, "counterexample_candidates.csv"), index=False)
    n_ce = int((~df["within_stated_assumptions"].astype(bool)).sum())
    print(f"rows written: {len(df)}; findings outside stated assumptions "
          f"(domain-boundary, not proposition violations): {n_ce}")
    print(df.groupby("target").size().to_string())


if __name__ == "__main__":
    main()
