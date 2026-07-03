# Numerical Simulation Decision

**Stage:** 7b — Numerical Simulation and Computational Illustration
**Decision:** YES
**Timestamp:** 2026-07-03T00:00:00Z

**Target propositions or mechanisms:**
- P2 (existence/uniqueness of the exit threshold p̄) — numerical check of H2 single-peakedness under CRRA and linear demand
- P4 (welfare kink at p̄) — welfare-by-price curves with the kink marked
- P5 (second-best VBP price p^SB) — interior vs. corner location of argmax W(p)
- P6 (insurer–planner wedge; corner solution p^cost* risk) — shape of E_I(p) under CRRA vs. linear demand
- Regime map over demand curvature × fixed cost (interior / corner / kink / multiple-optima classification)
- Counterexample search: parameter combinations where a proposition's claimed sign or uniqueness fails

**User-specified requirements (T2 integration test template):**
- Test A: CRRA utility u(q) = 2√q (⇒ D(s) = s^{-2}) — corner-regime check; verify the workflow does not incorrectly claim an interior optimum
- Test B: linear-demand (quadratic-utility) case — interior-maximum check; local optimizer vs. grid search
- Test C: regime map over demand-curvature and cost parameters (PNG + PDF + underlying CSV)
- Test D: welfare-by-price figures for both cases, marking feasible interval, global optimum, local critical points, boundary values, and parameters used
- Test E: counterexample handoff to Stage 8 with explicit diagnosis of any missing curvature condition
- Note: the T2 template mentions a "uniform firm-cost distribution"; Project_004's model primitives specify a deterministic cost pair (c_g, c_o) and fixed cost F, with no cost distribution. To preserve equation–code consistency (Gate 4b, Check N1), the simulation implements the model as written; the cost-heterogeneity element is replaced by sweeps over (c_o, F).

**Code execution authorized:** NO (pending HiL-N2)
**Manuscript figures requested:** UNDECIDED (to be decided at HiL-N3)
**Requested output formats:** both (PNG + PDF)
