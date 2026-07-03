"""Stage 7b figure generation (T2 Test D + regime map + comparative statics).

Run from this directory:  python generate_figures.py
Reads CSVs from ../numerical_results/ (run the other scripts first).
Writes each figure to ../numerical_figures/ as BOTH .png and .pdf.
Figures are produced only by this script; no manual editing.
"""

import os
import textwrap

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

from parameters import BASELINE, FIGURES_DIR, P_MAX, RESULTS_DIR

os.makedirs(FIGURES_DIR, exist_ok=True)

BASE_NOTE = (f"Baseline (illustrative): N={BASELINE['N']:g}, c_g={BASELINE['c_g']:g}, "
             f"c_o={BASELINE['c_o']:g}, F={BASELINE['F']:g}, V_o={BASELINE['V_o']:g}, "
             f"lam={BASELINE['lam']:g}")


def save(fig, stem):
    for ext in ("png", "pdf"):
        fig.savefig(os.path.join(FIGURES_DIR, f"{stem}.{ext}"),
                    dpi=200, bbox_inches="tight")
    plt.close(fig)
    print(f"wrote {stem}.png / {stem}.pdf")


def footnote(ax, text, width=110):
    """Below-axes footnote, wrapped so it never exceeds the axes width.

    A single long line combined with bbox_inches='tight' widens the saved
    bounding box beyond the axes and distorts the figure's aspect ratio;
    wrapping to ~2 short lines keeps the plot ratio intact.
    """
    ax.annotate(textwrap.fill(text, width=width), xy=(0, -0.16),
                xycoords="axes fraction", fontsize=7, va="top", ha="left",
                color="0.3", linespacing=1.4)


def welfare_figure(grid, opt, family, stem, title, type_label):
    g = grid[grid.family == family]
    o = opt[(opt.family == family) & (opt.objective == "max W") & (opt.method == "grid")].iloc[0]
    thresholds = [float(t) for t in str(o.thresholds).split(";") if t]
    fig, ax = plt.subplots(figsize=(6.5, 4.2))
    ax.plot(g.p, g.welfare, lw=1.8, color="#1f77b4", label="W(p)")
    for i, t in enumerate(thresholds):
        ax.axvline(t, color="0.5", ls="--", lw=1,
                   label="participation boundary p̄" if i == 0 else None)
    # local critical points (strict interior local maxima of the gridded W)
    w = g.welfare.to_numpy()
    pg = g.p.to_numpy()
    loc = np.nonzero((w[1:-1] > w[:-2]) & (w[1:-1] >= w[2:]))[0] + 1
    for j, i in enumerate(loc):
        ax.plot([pg[i]], [w[i]], "o", ms=7, mfc="none", mec="#d62728", mew=1.5,
                label="local maximum" if j == 0 else None)
    ax.plot([o.p_star], [o.value], "o", ms=8, color="#d62728",
            label=f"global optimum p*={o.p_star:.3f} ({o.regime})")
    # boundary welfare values
    for pb in (g.p.iloc[0], g.p.iloc[-1]):
        wb = float(g.loc[(g.p - pb).abs().idxmin(), "welfare"])
        ax.plot([pb], [wb], "s", ms=5, color="0.4")
        ax.annotate(f"W={wb:.3f}", (pb, wb), fontsize=7,
                    textcoords="offset points", xytext=(4, 6))
    ax.set_xlabel("VBP price p  (cost units, c_g = 1)")
    ax.set_ylabel("Social welfare W(p)  (utils)")
    ax.set_title(title, fontsize=11)
    ax.legend(fontsize=8, loc="best")
    ax.set_xlim(g.p.iloc[0], g.p.iloc[-1])
    footnote(ax, f"{type_label} — NOT A PROOF.  Feasible interval "
                 f"[c_g, {P_MAX:g}].  {BASE_NOTE}")
    save(fig, stem)


def regime_map_figure(rm):
    order = ["LOWER_CORNER", "INTERIOR_GENERIC", "AT_KINK", "INTERIOR_ORIGINATOR",
             "UPPER_CORNER", "MULTIPLE_LOCAL_OPTIMA", "INFEASIBLE", "INDETERMINATE"]
    colors = ["#4c72b0", "#8ecae6", "#f2cc60", "#55a868",
              "#c44e52", "#8172b3", "#cccccc", "#555555"]
    present = [r for r in order if r in set(rm.regime)]
    code = {r: i for i, r in enumerate(present)}
    e = np.sort(rm.eps0.unique())
    f = np.sort(rm.F.unique())
    Z = (rm.pivot(index="F", columns="eps0", values="regime")
           .reindex(index=f, columns=e).map(lambda r: code.get(r, np.nan)))
    cmap = matplotlib.colors.ListedColormap([colors[order.index(r)] for r in present])
    fig, ax = plt.subplots(figsize=(6.8, 4.6))
    ax.pcolormesh(e, f, Z.to_numpy(), cmap=cmap,
                  vmin=-0.5, vmax=len(present) - 0.5, shading="nearest")
    multi = rm[rm.n_local_maxima > 1]
    if len(multi):
        step = max(1, len(multi) // 900)
        ax.plot(multi.eps0[::step], multi.F[::step], ".", ms=1.5, color="k", alpha=0.35)
    ax.axvline(1.0, color="k", ls=":", lw=1)
    ax.annotate("unit elasticity", (1.02, f.min() + 0.02 * (f.max() - f.min())),
                fontsize=7, ha="left", va="bottom", rotation=90, color="0.2")
    handles = [plt.Rectangle((0, 0), 1, 1, color=colors[order.index(r)]) for r in present]
    labels = [r.replace("_", " ").lower() for r in present]
    if len(multi):
        handles.append(plt.Line2D([], [], ls="", marker=".", color="k", alpha=0.5))
        labels.append("multiple local optima\n(one per welfare branch)")
    ax.legend(handles, labels, fontsize=7, loc="upper right", framealpha=0.9)
    ax.set_xlabel("demand curvature ε₀  (CES: D(s) = s^(−ε₀); ε₀ = 2 ⇔ u = 2√q)")
    ax.set_ylabel("originator fixed cost F  (cost units)")
    ax.set_title("Regime of argmax W(p): interior vs. corner vs. kink vs. multiple optima",
                 fontsize=10.5)
    footnote(ax, f"Parameter sweep — NOT A PROOF.  Classification on the price grid "
                 f"[c_g, {P_MAX:g}], 2001 points.  {BASE_NOTE.replace('F=0.5, ', '')}")
    save(fig, "regime_map")


def expenditure_figure(grid):
    fig, ax = plt.subplots(figsize=(6.5, 4.2))
    for family, color, lbl in (("ces", "#d62728", "CES ε₀=2 (u=2√q): monotone ↓ ⇒ corner"),
                               ("linear", "#1f77b4", "linear: inverted-U ⇒ corner min")):
        g = grid[grid.family == family]
        ax.plot(g.p, g.expenditure, lw=1.8, color=color, label=lbl)
        i = int(g.expenditure.to_numpy().argmin())
        ax.plot([g.p.iloc[i]], [g.expenditure.iloc[i]], "v", ms=8, color=color)
    ax.set_xlabel("VBP price p  (cost units, c_g = 1)")
    ax.set_ylabel("Insurer expenditure E_I(p)  (cost units)")
    ax.set_title("E_I(p) shape drives the cost-minimizer to a corner (▼ = min on interval)",
                 fontsize=10.5)
    ax.legend(fontsize=8)
    ax.set_xlim(grid.p.min(), grid.p.max())
    footnote(ax, f"Computational illustration — NOT A PROOF.  {BASE_NOTE}")
    save(fig, "expenditure_shapes")


def comparative_statics_figure(cs):
    fig, ax = plt.subplots(figsize=(6.5, 4.2))
    styles = {"linear": "-", "ces": "--"}
    for family in ("linear", "ces"):
        sub = cs[cs.family == family].sort_values("lam")
        ax.plot(sub.lam, sub.p_SB, styles[family], color="#1f77b4", lw=1.8,
                label=f"p_SB ({family})")
        ax.plot(sub.lam, sub.p_cost, styles[family], color="#d62728", lw=1.8,
                label=f"p_cost ({family})")
        ax.plot(sub.lam, sub.p_bar_low, styles[family], color="#55a868", lw=1.4,
                label=f"p̄ ({family})")
    ax.set_xlabel("insurance coverage share λ")
    ax.set_ylabel("price  (cost units, c_g = 1)")
    ax.set_title("Optimal-price comparative statics: planner p_SB, cost-minimizer p_cost, "
                 "exit threshold p̄", fontsize=10)
    ax.legend(fontsize=7, ncol=2)
    footnote(ax, f"Parameter sweep — NOT A PROOF.  Grid optima on [c_g, {P_MAX:g}]; "
                 f"corners reported at interval ends.  {BASE_NOTE}")
    save(fig, "optimal_price_comparative_statics")


def main():
    grid = pd.read_csv(os.path.join(RESULTS_DIR, "baseline_results.csv"))
    opt = pd.read_csv(os.path.join(RESULTS_DIR, "optimization_results.csv"))
    rm = pd.read_csv(os.path.join(RESULTS_DIR, "regime_map_results.csv"))
    cs = pd.read_csv(os.path.join(RESULTS_DIR, "parameter_sweep_results.csv"))

    welfare_figure(grid, opt, "ces", "welfare_crra_corner",
                   "CRRA case u(q)=2√q ⇒ D(s)=s⁻²: welfare kink at p̄; "
                   "E_I monotone ⇒ expenditure corner", "Numerical example")
    welfare_figure(grid, opt, "linear", "welfare_linear_interior",
                   "Linear demand D(s)=a−bs: interior LOCAL maximum on the originator\n"
                   "branch (p=6.67); global optimum at the kink p̄⁻ at these parameters",
                   "Numerical example (existence of an interior local maximum at these "
                   "parameters, not a general theorem)")
    regime_map_figure(rm)
    expenditure_figure(grid)
    comparative_statics_figure(cs)


if __name__ == "__main__":
    main()
