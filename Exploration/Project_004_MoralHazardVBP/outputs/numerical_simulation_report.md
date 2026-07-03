# Numerical Simulation Report

**Date:** 2026-07-03
**Stage:** 7b — Numerical Simulation and Computational Illustration (T2 integration test)
**Plan:** `numerical_simulation_plan.md` (approved at HiL-N2)
**Parameters:** `parameter_definitions.md` (no post-results parameter changes; change log empty)

**Environment:** Python 3.9.1 · numpy 2.0.2 · scipy 1.13.1 · pandas 2.3.3 · matplotlib 3.9.4 · sympy 1.14.0 · seed 20260703 (full record: `numerical_results/environment_versions.csv`)

**Reproduce (from `outputs/numerical_code/`):**
```
python run_simulation.py && python parameter_sweep.py && python counterexample_search.py && python generate_figures.py
```

---

## 1. Symbolic checks (sympy)

| Check | Result | Epistemic status |
|-------|--------|------------------|
| CES: dE_I/dp = λND(s)·(1−ε₀) — matches P1's decomposition dE_I/dp = λND(s)[1−ε(s)] exactly | PASS | **SYMBOLICALLY VERIFIED** |
| Branch welfare FOC: dW/dp = 0 at (1−λ)p = c on each branch (MP §8 second-best benchmark) | PASS | **SYMBOLICALLY VERIFIED** |
| Linear demand: E_I peaks at s = a/(2b) (P1 tipping price ε = 1) | PASS | **SYMBOLICALLY VERIFIED** |

CSV: `numerical_results/sympy_checks.csv`.

## 2. T2 Test A — CRRA u(q) = 2√q ⇒ D(s) = s⁻² (corner regime)

- **Expenditure:** E_I(p) = λN(1−λ)⁻²/p is strictly decreasing and convex on [c_g, 10] (constant elasticity ε₀ = 2 > 1, so dE_I/dp < 0 throughout — P1 case (ii)). The expenditure minimizer is the **UPPER-PRICE CORNER** p = 10 (the grid ceiling); there is **no interior optimum**, and the workflow did **not** claim one. Matches the T2 template's "convex form, boundary optimum" expectation. — **NUMERICALLY VERIFIED FOR SPECIFIED PARAMETERS**, consistent with the symbolic sign result (SYMBOLICALLY VERIFIED that dE_I/dp < 0 ⇔ ε₀ > 1).
- **Welfare:** W(p) has the P4 kink at p̄_low = 2.2222 (downward jump: originator entry raises supply cost c_g→c_o; V_o − F = 0.3 does not compensate at these parameters). Global welfare maximum is **interior on the originator branch** at p* = 6.6667 = c_o/(1−λ), exactly the analytical second-best FOC. Grid (2001 pts), fine grid (4001 pts), and scipy bounded optimization all agree to <2e-3. — **NUMERICALLY VERIFIED FOR SPECIFIED PARAMETERS; NOT A PROOF**
- **Participation is a bounded interval:** Π_O(p) ≥ 0 only on [2.2222, 20.0000]; above p = 20 demand collapse (s⁻²) makes variable profit fall below F again. See §6 (counterexample).
- Figures: `welfare_crra_corner.{png,pdf}` (numerical example), `expenditure_shapes.{png,pdf}` (computational illustration).

## 3. T2 Test B — Linear demand D(s) = a − bs (interior regime)

- An **interior local maximum of W exists** on the originator branch at p = 6.6667 = c_o/(1−λ) with W = 32.300 (analytical FOC value reproduced by scipy and grid; agreement to <3e-4). — **NUMERICALLY VERIFIED FOR SPECIFIED PARAMETERS** — this is a **numerical existence example, not a general theorem**.
- **Unfavorable-to-expectation result, reported per protocol:** the interior local maximum is **not global** at baseline. The global maximum sits **AT THE KINK** (p̄⁻ = 2.0533, approached from the generic side) with W = 40.43: the generic-branch welfare is still rising when originator entry truncates it, and entry drops welfare discontinuously. No parameters were adjusted to reverse this. — **NUMERICALLY VERIFIED FOR SPECIFIED PARAMETERS**
- **Expenditure:** ε(s) < 1 on the whole grid (tipping price p̂ = a/(2b(1−λ)) = 16.67 lies above the grid), so E_I is increasing and the cost-minimizer is the **LOWER CORNER p^cost* = c_g = 1** — exactly P6 Case 1. — **NUMERICALLY VERIFIED FOR SPECIFIED PARAMETERS**
- Local optimizer vs. grid/global search: agree on every reported optimum (Gate 4b N4).
- Figure: `welfare_linear_interior.{png,pdf}` (numerical example; caption marks both the local interior maximum and the kink-global optimum).

## 4. T2 Test C — Regime map

3,600-cell grid over ε₀ ∈ [0.3, 3] × F ∈ [0.05, 2] (CES family, other parameters at baseline). Location of argmax W(p) on [c_g, 10]:

| Regime | Cells | Share |
|--------|-------|-------|
| AT_KINK (global optimum at participation boundary) | 1,692 | 47.0% |
| INTERIOR_GENERIC (F high → originator out or entry harmful; optimum at (1−λ)p = c_g) | 1,239 | 34.4% |
| INTERIOR_ORIGINATOR (low F, high curvature; optimum at (1−λ)p = c_o) | 669 | 18.6% |
| LOWER/UPPER corner, INFEASIBLE, INDETERMINATE | 0 | 0% |

Cells with **multiple local optima** (one per welfare branch — the generic behavior when the kink is active) are overlaid as dots in the figure and recorded in `n_local_maxima`. — **ROBUST ACROSS SEARCHED GRID** (classification stable between 2001- and 4001-point price grids at baseline; grid stated in the figure). Figure: `regime_map.{png,pdf}` (parameter sweep). CSV: `regime_map_results.csv`.

## 5. Comparative statics (P3, P6)

- **P3 (∂p̄/∂λ < 0):** p̄_low is monotonically decreasing in λ at every step of the λ ∈ [0.1, 0.9] grid, for BOTH demand families. — **ROBUST ACROSS SEARCHED GRID** (41-point λ grid; NOT A PROOF)
- **P6 wedge:** for inelastic CES (ε₀ < 1): p^cost* = c_g < p^SB — consistent with P6 Case 1. For ε₀ ≥ 1 (21 of 28 scanned ε₀ values): the wedge REVERSES (p^cost* at the upper corner, above p^SB) — this matches P6's own Case 2 discussion and lies outside the essential-drug (inelastic) domain that P6's headline claim addresses. — **NUMERICALLY VERIFIED FOR SPECIFIED PARAMETERS**
- Figure: `optimal_price_comparative_statics.{png,pdf}` (parameter sweep). CSV: `parameter_sweep_results.csv`.

## 6. Counterexample found — P2's biconditional (⚠️ within stated assumptions)

**COUNTEREXAMPLE FOUND.** P2 claims: under A1–A4 and H2, Π_O(p) ≥ 0 **⇔** p ≥ p̄ on the domain p ∈ [c_g, ∞). At the **linear-demand baseline** — which satisfies A1 (regularity), A2, A3 (F > 0), A4 (market viability: peak variable profit 73.63 at p = 17.67, far above F = 0.5) and H2's own sufficient condition (linear demand is log-concave) — Π_O(p) = 0 has **two** roots: p̄_low = 2.0533 and p̄_high = 33.2801 (just below the choke price a/(b(1−λ)) = 33.33). For p > p̄_high, p ≥ p̄ holds but Π_O(p) < 0: **the "⇐" direction of P2 fails.** The same bounded-participation structure appears in 180 CES combinations with ε₀ > 1 (those additionally violate H2's log-concavity, so they are domain-boundary findings rather than counterexamples).

- **Root cause:** single-peakedness of variable profit implies a unique *lower* crossing, not a one-sided participation set; variable profit falls back below F when demand vanishes (choke price) or collapses fast (elastic CES).
- **Mitigation:** economically harmless for VBP analysis — the relevant price range is far below p̄_high (p̄_high is 16× the baseline second-best price). Restricting P2's domain to p ∈ [c_g, p_O^max] (P2(b) already implies p̄ < p_O^max) or restating participation as an interval repairs the proposition.
- **Consequence (Gate 4b counterexample rule):** the original unmodified P2 is **BLOCKED from Stage 10** until Stage 8 + HiL-6 resolve it. The existing `manuscript.tex` (generated before Stage 7b) contains the unrestricted form and should be revised accordingly.
- CSV: `counterexample_candidates.csv` (211 rows; column `within_stated_assumptions` separates the true counterexample from domain-boundary findings).

## 7. Failed optimizations, corner cases, inconclusive regions

- Failed optimizations: **none** (all scipy bounded runs converged; `converged=True` in `optimization_results.csv`).
- NaN/unbounded values: none on the evaluated grids (CES utility is finite for s > 0; linear demand truncated at 0 by construction).
- Corner cases found and reported: E_I upper corner (CES), E_I lower corner (linear), welfare global optimum at kink (linear baseline; 47% of regime-map cells).
- Inconclusive regions: none flagged (INDETERMINATE count = 0 in the regime map).

## 8. Deviations from the plan

1. `sympy_checks.csv` and `environment_versions.csv` were added beyond the five planned CSVs (both are Gate 4b N1/N2 evidence).
2. The regime classifier was revised mid-run (before Gate 4b) to report *location of the global optimum* and *multiplicity* as separate dimensions; the first version collapsed 82% of cells into MULTIPLE_LOCAL_OPTIMA because the welfare kink generically creates one local maximum per branch. No parameters were changed.
3. The `welfare_linear_interior` figure title was corrected after first rendering to state that the interior maximum is local, not global, at baseline (honest-labeling rule); the data were not changed.

---

## Handoff to Stage 8 — Counterexample Finder

- **Approved simulation plan:** `outputs/numerical_simulation_plan.md`
- **Tested parameter ranges:** p ∈ [1, 10] (2001/4001 pts); ε₀ ∈ [0.3, 3] × F ∈ [0.05, 2] (3,600 cells); λ ∈ [0.1, 0.9] (41 pts, both families); targeted CES scans ε₀ ∈ [1.1, 3] × λ ∈ {0.3, 0.5, 0.7} × c_o ∈ {1.5, 2, 3}
- **Numerical counterexamples found:** P2 biconditional fails at linear baseline for p > p̄_high = 33.28 (within stated assumptions — see §6); 180 CES analogues (outside H2 log-concavity)
- **Suspicious parameter regions:** ε₀ ≥ 1 (P6 wedge reversal — matches P6 Case 2, but the manuscript should not describe the wedge sign as general); neighborhood of the choke price for any demand hitting zero
- **Interior/corner regime classification:** `regime_map_results.csv` (47% AT_KINK / 34% INTERIOR_GENERIC / 19% INTERIOR_ORIGINATOR)
- **Optimization failures:** none
- **Assumptions that appear binding:** H2's inference "single-peaked variable profit ⇒ participation set = [p̄, ∞)" is the load-bearing (and flawed) step; A4 guarantees the interval is nonempty, not one-sided
- **Propositions requiring analytical follow-up:** P2 (restrict domain to [c_g, p_O^max] or restate participation as an interval [p̄_low, p̄_high]); P4/P5 statements that inherit the 1[p ≥ p̄] indicator; P6 (state the inelastic-domain scope of the headline sign explicitly)
- **Code and result paths:** `outputs/numerical_code/*.py`; `outputs/numerical_results/*.csv`; `outputs/numerical_figures/*.{png,pdf}`
- **Researcher's preferred resolution (HiL-N3, 2026-07-03):** ACCEPT RESULTS; DO NOT USE RESULTS in the manuscript (figures remain workspace-only); **WEAKEN P2** by restricting its domain to p ∈ [c_g, p_O^max] — Stage 8 should verify analytically that the biconditional holds on that restricted domain and finalize the restatement at HiL-6
