# Numerical Simulation Plan

**Date:** 2026-07-03
**Stage:** 7b — Numerical Simulation Plan (awaiting HiL-N2 approval — NO CODE HAS BEEN EXECUTED)
**Project:** Project_004_MoralHazardVBP (T2 integration test)

---

## 1. Propositions / mechanisms to simulate

| ID | Proposition / mechanism | What the simulation checks |
|----|------------------------|---------------------------|
| T2-A | P6 corner risk + welfare shape under CRRA | With u(q) = 2√q ⇒ D(s) = s⁻² (constant elasticity ε₀ = 2), verify E_I(p) is monotone/convex (no interior optimum) and that the optimizer correctly reports a **boundary** solution rather than a spurious interior one |
| T2-B | P5/P6 interior regime under linear demand | With D(s) = a − bs, verify an interior maximum of W(p) exists at p^SB = c_o/(1−λ) on the originator branch; local optimizer (scipy) must agree with grid search |
| T2-C | Regime map | Over a grid of demand curvature ε₀ (CES family D(s) = s^(−ε₀)) × fixed cost F, classify argmax W(p) as: lower-price corner / interior (generic branch) / at kink p̄ / interior (originator branch) / upper-price corner / multiple local optima / infeasible / numerically indeterminate |
| T2-D | P4 welfare kink | Welfare-by-price curves for both demand families, marking the feasible interval, the kink at p̄, local critical points, boundary welfare values, and the global optimum |
| T2-E | Counterexample search | Sweep (ε₀, λ, c_o, F) for violations of: P2 uniqueness of p̄ (H2 log-concavity fails for CES demand — does single-peakedness of originator variable profit still hold?); P6 wedge direction (does the cost-minimizing insurer always prefer a lower price than the planner? Elastic demand ε₀ > 1/(1−λ)⁻¹-relevant region suggests reversal); P1 expenditure tipping sign |

**Fidelity note:** The T2 template's "uniform firm-cost distribution" has no counterpart in `model_primitives.md` (deterministic costs c_g < c_o, fixed cost F). To keep Gate 4b Check N1 (equation–code consistency) satisfiable, the code implements the model exactly as written; cost heterogeneity is represented by sweeps over (c_o, F).

## 2. Model-to-code mapping

| Equation (source) | Code function (`model_functions.py`) |
|---|---|
| D(s) = s^(−ε₀), CRRA/CES family; ε₀ = 2 ⇔ u(q) = 2√q (`model_primitives.md` §4, U′ = D⁻¹) | `demand_ces(s, eps0)` |
| D(s) = a − bs, linear (P2 sufficient-condition example) | `demand_linear(s, a, b)` |
| U(q) recovered from U′(q) = D⁻¹(q) (`model_primitives.md` §4, Patient) | `utility_ces(q, eps0)`, `utility_linear(q, a, b)` |
| Π_O(p) = (p − c_o)·N·D((1−λ)p) − F (`model_primitives.md` §4, Originator) | `originator_profit(p, params)` |
| p̄: Π_O(p̄) = 0 (`model_primitives.md` Notation) | `exit_threshold(params)` (root-finding + multiplicity scan) |
| E_I(p) = λ·p·N·D((1−λ)p) (`model_primitives.md` §4(a)) | `insurer_expenditure(p, params)` |
| W(p) = N[U(D((1−λ)p)) − c(p)·D((1−λ)p)] − F·1[p ≥ p̄] + N·V_o·1[p ≥ p̄] (`model_primitives.md` §4(b)) | `social_welfare(p, params)` |
| FOC benchmarks: p^SB = c_o/(1−λ) or c_g/(1−λ); |ε| = 1/(1−λ) for p^cost* (`model_primitives.md` §8) | `analytical_benchmarks(params)` (sympy cross-check) |

## 3. Baseline parameters and ranges

See `parameter_definitions.md` for the full classified table. Baseline: N = 1, c_g = 1 (normalizations); c_o = 2, F = 0.5, V_o = 0.8, λ = 0.7, linear demand a = 10, b = 1 (illustrative); CRRA ε₀ = 2 from u(q) = 2√q (user-specified via T2). Price grid p ∈ [c_g, 10], 2001 points.

## 4. Simulation types selected

Baseline simulation (T2-A/B anchor cases) · comparative statics (optimal prices vs. λ, F) · parameter sweep (ε₀ × F, plus λ, c_o slices) · regime map (T2-C) · counterexample search (T2-E) · welfare and policy figures (T2-D). Dynamic simulation: N/A (static model).

## 5. Figures to be generated

| Filename stem | Type label | x-axis | y-axis | What it shows |
|--------------|-----------|--------|--------|---------------|
| `welfare_crra_corner` | numerical example | VBP price p | W(p), E_I(p) (twin panel-free: two figures if needed) | CRRA case: welfare kink at p̄, boundary behavior of E_I; feasible interval, global optimum, critical points, boundary values, baseline parameters annotated |
| `welfare_linear_interior` | numerical example | VBP price p | W(p) | Linear case: interior maximum on the originator branch; kink at p̄; optimizer vs. grid agreement annotated |
| `regime_map` | parameter sweep | demand curvature ε₀ | fixed cost F | Regime classification of argmax W (color-coded, incl. corner/kink/multiple-optima/infeasible regions) |
| `expenditure_shapes` | computational illustration | VBP price p | E_I(p) | E_I monotone-decreasing (CRRA ε₀=2) vs. inverted-U (linear) — the P6 corner mechanism |
| `optimal_price_comparative_statics` | parameter sweep | λ | p^SB, p^cost*, p̄ | Wedge between planner and cost-minimizer; ∂p̄/∂λ sign check (P3) |

All figures: PNG + PDF, one figure per file, generated only by `generate_figures.py` from CSVs.

## 6. Parameter sweep / counterexample search

Sweep: YES — ε₀ ∈ [0.3, 3] × F ∈ [0.05, 2] (60×60 grid) for the regime map; λ ∈ [0.1, 0.9] (step 0.02) for comparative statics. Counterexample search: YES — targeted scans described in T2-E; any violation logged to `counterexample_candidates.csv` with full parameter vector and which proposition/condition it violates.

## 7. Expected computational cost

All objects are closed-form; heaviest task is the 60×60 regime map × 2001-point price grid ≈ 7.2M function evaluations (vectorized numpy) plus root-finding for p̄ per cell. Estimated well under one minute on a laptop. No randomness except optimizer multi-starts (seeded).

## 8. Expected output files

```
numerical_code/     parameters.py, model_functions.py, run_simulation.py,
                    parameter_sweep.py, counterexample_search.py, generate_figures.py
numerical_results/  baseline_results.csv, optimization_results.csv,
                    parameter_sweep_results.csv, regime_map_results.csv,
                    counterexample_candidates.csv
numerical_figures/  welfare_crra_corner.{png,pdf}, welfare_linear_interior.{png,pdf},
                    regime_map.{png,pdf}, expenditure_shapes.{png,pdf},
                    optimal_price_comparative_statics.{png,pdf}
```
