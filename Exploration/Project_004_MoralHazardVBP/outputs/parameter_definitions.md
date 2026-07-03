# Parameter Definitions

**Date:** 2026-07-03
**Stage:** 7b — Numerical Simulation (T2 integration test)
**Status:** awaiting HiL-N2 approval

| Symbol | Description | Baseline | Range (sweeps) | Units | Classification | Source / justification | Propositions affected |
|--------|-------------|----------|----------------|-------|----------------|------------------------|----------------------|
| N | Market size (number of patients) | 1 | fixed | patients | THEORETICAL NORMALIZATION | Pure scale factor of Π_O, E_I, W; results homogeneous in N | all |
| c_g | Generic marginal cost | 1 | fixed | cost units | THEORETICAL NORMALIZATION | Sets the cost unit; only ratios c_o/c_g, F/c_g matter | all |
| c_o | Originator marginal cost | 2 | [1.1, 4] | cost units | ILLUSTRATIVE | Must satisfy c_o > c_g (model_primitives.md §6); level carries no empirical claim | P2–P6 |
| F | Originator fixed cost | 0.5 | [0.05, 2] | cost units | ILLUSTRATIVE | F > 0 is the irreducibility condition; swept in regime map | P2, P3, P4 |
| V_o | Per-patient variety value | 0.8 | [0, 2] (slices) | utils | ILLUSTRATIVE | V_o > 0 per model_primitives.md §6; governs kink jump direction in W | P4, P5 |
| λ | Insurance coverage share (coinsurance complement) | 0.7 | [0.1, 0.9] | share | ILLUSTRATIVE | λ ∈ (0,1); baseline chosen mid-high; NOT an empirical calibration of any BMI scheme | all |
| ε₀ | CES demand curvature, D(s) = s^(−ε₀) | 2 | [0.3, 3] | elasticity | USER SPECIFIED | ε₀ = 2 ⇔ u(q) = 2√q, fixed by the T2 test template (Test A); swept in regime map | P2, P5, P6 |
| a | Linear demand intercept, D(s) = a − bs | 10 | fixed | quantity | ILLUSTRATIVE | Ensures D > 0 on the whole price grid at baseline λ | P2, P5, P6 |
| b | Linear demand slope | 1 | fixed | qty/price | ILLUSTRATIVE | Normalization of the linear family's slope | P2, P5, P6 |
| p_max | Upper end of price grid | 10 | fixed | cost units | ILLUSTRATIVE (numerical) | Feasible interval [c_g, p_max]; corner at p_max means "no interior optimum below the grid ceiling" and is reported as an UPPER-PRICE CORNER, never as an interior optimum | all |
| n_grid | Price grid density | 2001 | 2001 / 4001 (robustness) | points | ILLUSTRATIVE (numerical) | Finer-grid sensitivity check required by Gate 4b N4 | all |
| seed | Random seed (optimizer multi-starts) | 20260703 | fixed | — | THEORETICAL NORMALIZATION (numerical) | Reproducibility (Gate 4b N2) | — |

## Parameter Change Log

*(empty — no parameters have been changed; any post-results change requires a written justification at HiL-N3 and a row here)*

| Symbol | Original | Revised | Reason | Before/after observing results | Affects interpretation or epistemic status? |
|--------|----------|---------|--------|-------------------------------|--------------------------------------------|
