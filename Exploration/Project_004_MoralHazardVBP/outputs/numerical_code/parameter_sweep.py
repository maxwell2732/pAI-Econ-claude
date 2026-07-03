"""Stage 7b parameter sweep (T2 Test C regime map + comparative statics).

Run from this directory:  python parameter_sweep.py
Writes: ../numerical_results/{regime_map_results,parameter_sweep_results}.csv
"""

import os

import numpy as np
import pandas as pd

import model_functions as mf
from parameters import BASELINE, N_GRID, P_MAX, RESULTS_DIR, SEED, SWEEP

np.random.seed(SEED)
os.makedirs(RESULTS_DIR, exist_ok=True)


def regime_map():
    """Classify argmax W(p) over the (eps0, F) grid (CES family)."""
    e_lo, e_hi, e_n = SWEEP["eps0"]
    f_lo, f_hi, f_n = SWEEP["F"]
    rows = []
    p = np.linspace(BASELINE["c_g"], P_MAX, N_GRID)
    for eps0 in np.linspace(e_lo, e_hi, e_n):
        for F in np.linspace(f_lo, f_hi, f_n):
            params = dict(BASELINE, eps0=eps0, F=F)
            D, U = mf.make_family(params, "ces")
            try:
                W = mf.social_welfare(p, params, D, U)
                p_star, v_star, regime, n_loc = mf.classify_argmax(p, W, params, D)
                thresholds = mf.exit_thresholds(params, D)
            except Exception:
                p_star, v_star, regime, n_loc, thresholds = np.nan, np.nan, "INDETERMINATE", 0, []
            rows.append(dict(eps0=eps0, F=F, p_star=p_star, W_star=v_star,
                             regime=regime, n_local_maxima=n_loc,
                             n_thresholds=len(thresholds),
                             p_bar_low=thresholds[0] if thresholds else np.nan,
                             p_bar_high=thresholds[1] if len(thresholds) > 1 else np.nan))
    return pd.DataFrame(rows)


def comparative_statics():
    """p_SB (argmax W), p_cost (argmin E_I), p_bar_low vs lambda, both families."""
    l_lo, l_hi, l_n = SWEEP["lam"]
    rows = []
    for family in ("ces", "linear"):
        for lam in np.linspace(l_lo, l_hi, l_n):
            params = dict(BASELINE, lam=lam)
            D, U = mf.make_family(params, family)
            p = np.linspace(params["c_g"], P_MAX, N_GRID)
            W = mf.social_welfare(p, params, D, U)
            E = mf.insurer_expenditure(p, params, D)
            p_sb, _, reg_w, _ = mf.classify_argmax(p, W, params, D)
            p_cost, _, reg_e, _ = mf.classify_argmax(p, -E, params, D)
            thresholds = mf.exit_thresholds(params, D)
            rows.append(dict(family=family, lam=lam, p_SB=p_sb, regime_W=reg_w,
                             p_cost=p_cost, regime_E=reg_e,
                             p_bar_low=thresholds[0] if thresholds else np.nan,
                             p_bar_high=thresholds[1] if len(thresholds) > 1 else np.nan,
                             wedge=p_cost - p_sb))
    return pd.DataFrame(rows)


def main():
    rm = regime_map()
    cs = comparative_statics()
    rm.to_csv(os.path.join(RESULTS_DIR, "regime_map_results.csv"), index=False)
    cs.to_csv(os.path.join(RESULTS_DIR, "parameter_sweep_results.csv"), index=False)
    print("regime map cells:", len(rm))
    print(rm["regime"].value_counts().to_string())
    print("\ncomparative statics rows:", len(cs))
    print("\nsign(d p_bar_low / d lam) by family (P3 check):")
    for family in ("ces", "linear"):
        sub = cs[cs.family == family].sort_values("lam")
        d = np.diff(sub["p_bar_low"].to_numpy())
        d = d[np.isfinite(d)]
        print(f"  {family}: all decreasing = {bool(np.all(d < 0))}, "
              f"all increasing = {bool(np.all(d > 0))}")


if __name__ == "__main__":
    main()
