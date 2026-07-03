"""Stage 7b baseline simulation (T2 Tests A, B, D groundwork).

Run from this directory:  python run_simulation.py
Writes: ../numerical_results/{baseline_results,optimization_results,environment_versions}.csv

Environment recorded at run time in environment_versions.csv.
"""

import os
import platform
import sys

import numpy as np
import pandas as pd
import sympy as sp

import model_functions as mf
from parameters import BASELINE, N_GRID, N_GRID_FINE, P_MAX, RESULTS_DIR, SEED

np.random.seed(SEED)
os.makedirs(RESULTS_DIR, exist_ok=True)


def record_versions():
    import matplotlib
    import scipy
    rows = [("python", platform.python_version()), ("numpy", np.__version__),
            ("scipy", scipy.__version__), ("pandas", pd.__version__),
            ("matplotlib", matplotlib.__version__), ("sympy", sp.__version__),
            ("platform", platform.platform()), ("seed", str(SEED))]
    pd.DataFrame(rows, columns=["package", "version"]).to_csv(
        os.path.join(RESULTS_DIR, "environment_versions.csv"), index=False)


def sympy_checks(params):
    """Symbolic verification of the analytical benchmarks (MP §8).

    1. CES: dE_I/dp = lam*N*D(s)*(1 - eps0)  -> sign fixed by eps0 vs 1
       (confirms the corrected Stage 6 FOC |eps| = 1, NOT 1/(1-lam)).
    2. Branch welfare: dW/dp = 0  at  (1-lam)*p = c  on each branch.
    3. Linear: E_I peak at s = a/(2b).
    Returns list of (check, expected, result, status) rows.
    """
    p, lam, N, eps0, c, a, b = sp.symbols("p lam N eps0 c a b", positive=True)
    s = (1 - lam) * p
    rows = []

    E_ces = lam * p * N * s ** (-eps0)
    dE = sp.simplify(sp.diff(E_ces, p) / (lam * N * s ** (-eps0)))
    rows.append(("CES dE_I/dp / (lam*N*D)", "1 - eps0", str(dE),
                 "PASS" if sp.simplify(dE - (1 - eps0)) == 0 else "FAIL"))

    q = s ** (-eps0)
    U = q ** (1 - 1 / eps0) / (1 - 1 / eps0)
    W_branch = N * (U - c * q)
    dW = sp.simplify(sp.diff(W_branch, p))
    at_opt = sp.simplify(dW.subs(p, c / (1 - lam)))
    rows.append(("CES branch dW/dp at p=c/(1-lam)", "0", str(at_opt),
                 "PASS" if at_opt == 0 else "FAIL"))

    E_lin = lam * p * N * (a - b * s)
    p_peak = sp.solve(sp.diff(E_lin, p), p)[0]
    s_peak = sp.simplify((1 - lam) * p_peak)
    rows.append(("Linear E_I peak at s", "a/(2b)", str(s_peak),
                 "PASS" if sp.simplify(s_peak - a / (2 * b)) == 0 else "FAIL"))
    return rows


def analyze_family(family, params, n_grid):
    """Grid + scipy + analytical optima for W and E_I; returns (grid_df, opt_rows)."""
    D, U = mf.make_family(params, family)
    p = np.linspace(params["c_g"], P_MAX, n_grid)
    W = mf.social_welfare(p, params, D, U)
    E = mf.insurer_expenditure(p, params, D)
    Pi = mf.originator_profit(p, params, D)
    inmkt = mf.participation(p, params, D)
    thresholds = mf.exit_thresholds(params, D)

    grid_df = pd.DataFrame({"family": family, "p": p, "welfare": W,
                            "expenditure": E, "originator_profit": Pi,
                            "originator_participates": inmkt.astype(int)})

    opt_rows = []
    # --- welfare maximization: grid
    p_w, v_w, regime_w, n_loc = mf.classify_argmax(p, W, params, D)
    opt_rows.append(dict(family=family, objective="max W", method="grid",
                         p_star=p_w, value=v_w, regime=regime_w,
                         n_local_maxima=n_loc, converged=True,
                         thresholds=";".join(f"{t:.6f}" for t in thresholds)))
    # --- welfare maximization: scipy per participation segment, then compare
    seg_bounds = [params["c_g"]] + [t for t in thresholds if params["c_g"] < t < P_MAX] + [P_MAX]
    best = (np.nan, -np.inf, False)
    for lo, hi in zip(seg_bounds[:-1], seg_bounds[1:]):
        eps = 1e-7 * (hi - lo)
        ps, vs, ok = mf.scipy_branch_optimum(
            lambda x: mf.social_welfare(np.array([x]), params, D, U)[0], lo + eps, hi - eps)
        # segment endpoints are candidates too (corner/kink)
        for cand_p in (lo, hi, ps):
            cand_v = float(mf.social_welfare(np.array([cand_p]), params, D, U)[0])
            if cand_v > best[1]:
                best = (cand_p, cand_v, ok)
    agree = abs(best[0] - p_w) < 5e-3 * (P_MAX - params["c_g"])
    opt_rows.append(dict(family=family, objective="max W", method="scipy_bounded",
                         p_star=best[0], value=best[1], regime=regime_w,
                         n_local_maxima=n_loc, converged=best[2],
                         thresholds=f"agrees_with_grid={agree}"))
    # --- expenditure minimization: grid (classify on -E)
    p_e, v_e, regime_e, n_loc_e = mf.classify_argmax(p, -E, params, D)
    opt_rows.append(dict(family=family, objective="min E_I", method="grid",
                         p_star=p_e, value=-v_e, regime=regime_e,
                         n_local_maxima=n_loc_e, converged=True,
                         thresholds=";".join(f"{t:.6f}" for t in thresholds)))
    # --- analytical benchmarks (MP §8): branch optima of W at (1-lam)p = c
    for c, name in ((params["c_g"], "generic"), (params["c_o"], "originator")):
        p_an = c / (1.0 - params["lam"])
        if params["c_g"] <= p_an <= P_MAX:
            v_an = float(mf.social_welfare(np.array([p_an]), params, D, U)[0])
            opt_rows.append(dict(family=family, objective="max W",
                                 method=f"analytical_branch_{name}", p_star=p_an,
                                 value=v_an, regime="branch FOC (1-lam)p=c",
                                 n_local_maxima=np.nan, converged=True, thresholds=""))
    return grid_df, opt_rows


def main():
    record_versions()
    sym = pd.DataFrame(sympy_checks(BASELINE),
                       columns=["check", "expected", "result", "status"])

    grids, opts = [], []
    for family in ("ces", "linear"):
        g, o = analyze_family(family, dict(BASELINE), N_GRID)
        grids.append(g)
        opts.extend(o)
        # Gate 4b N4: finer-grid sensitivity — optima must not move
        g2, o2 = analyze_family(family, dict(BASELINE), N_GRID_FINE)
        for row in o2:
            row["method"] += "_finegrid"
        opts.extend([r for r in o2 if r["method"].startswith(("grid", "scipy")) or True])

    pd.concat(grids, ignore_index=True).to_csv(
        os.path.join(RESULTS_DIR, "baseline_results.csv"), index=False)
    opt_df = pd.DataFrame(opts)
    opt_df.to_csv(os.path.join(RESULTS_DIR, "optimization_results.csv"), index=False)
    sym.to_csv(os.path.join(RESULTS_DIR, "sympy_checks.csv"), index=False)

    print("=== sympy symbolic checks ===")
    print(sym.to_string(index=False))
    print("\n=== optimization results ===")
    with pd.option_context("display.width", 200):
        print(opt_df.to_string(index=False))


if __name__ == "__main__":
    main()
