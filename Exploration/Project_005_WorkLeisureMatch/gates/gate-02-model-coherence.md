# Gate 2: Model Coherence Gate — Verdict

**Date:** 2026-06-29
**Runs after:** Stage 4 (Model Primitives)

---

**Verdict:** CONDITIONAL PASS

**Check results:**

| Check | Status | Notes |
|-------|--------|-------|
| 1 — Variable Completeness | ✓ | All symbols defined with explicit domains in the Notation Summary and in text before first use. 23 symbols fully specified. |
| 2 — Equilibrium Concept Compatibility | ✓ | STNE is appropriate: simultaneous Period 1 game with private types θ_i; threshold strategy is well-defined under Assumption SC (single-crossing verified analytically in Section 7). Nash in simultaneous game is the correct concept. |
| 3 — Budget/Resource Consistency | ✓ | Time constraint ℓ + h = T with ℓ, h > 0 and T fixed; consistent across all workers. No money budget constraint (income enters payoff directly). Social planner operates without budget constraints in the first-best; the second-best uses a revenue-neutral tax (not verified for budget balance but noted as an extension). |
| 4 — Timing Consistency | ✓ | Period 1: workers observe own θ_i, choose h_i simultaneously, before observing others' choices or the resulting L̄. Period 2: workers observe L̄ (public outcome of Period 1 equilibrium) and search. No agent conditions on future events not yet realized. |
| 5 — Tension Generation | ✓ | The central tension (Nash threshold θ* < social planner threshold θ^{SP}) is formally present: the Nash indifference condition ignores the ∂L̄/∂θ* term (the externality), while the social FOC includes it. The gap between θ* and θ^{SP} is precisely the fertility gap Δn = n^{SP} − n*. The model generates the tension by construction. |
| 6 — Existence (Preliminary) | ⚠️ | Existence of a Nash threshold θ* requires the best-response map BR(θ*) to have a fixed point. If π(Φ; γ) is strictly increasing in Φ (strategic complementarity), BR may be non-monotone and multiple fixed points may exist. Under the baseline assumption that π is exogenous (π = π(γ) only, independent of Φ), BR is monotone decreasing and a unique fixed point exists by the intermediate value theorem. The multiplicity case (π increasing in Φ) requires a separate treatment flagged in the outstanding issues. |
| 7 — Payoff Consistency | ⚠️ | The fertility function n_i = max{0, (T̄ − 1/μ(ℓ_i, L̄))/τ} involves the inverse Poisson meeting time 1/μ_i. For this to be well-defined, μ_i must be bounded away from zero (μ_i > 0 for all ℓ_i > 0, L̄ > 0). Under the Cobb-Douglas specification μ = λ · ℓ_i^α · L̄^β, μ_i → 0 as ℓ_i → 0 or L̄ → 0, which would make E[T_match] → ∞ and n_i = 0 trivially. Need to impose a lower bound ℓ_i ≥ ε > 0 (ensured by ℓ_H = T − h_H > 0 which is given) and L̄ ≥ ε (ensured if F(θ̂) > 0 for all θ̂, i.e., some workers always opt out). Both bounds follow from the model structure, but should be stated explicitly in Stage 5 (Assumption Audit). |

---

**Critical issues (FAIL checks):**
None.

**Issues to address (WARNING checks):**

- **Check 6 (Existence)**: In the baseline model, assume π = π(γ) is exogenous (does not depend on Φ). This ensures BR is monotone and a unique threshold equilibrium exists. State this as Assumption E (Exogenous Wage Premium) in Stage 5. The strategic complementarity / multiplicity extension should be presented as a separate Proposition in Stage 6 (Proposition 3 or Remark) rather than the baseline result.

- **Check 7 (Payoff Consistency)**: Confirm that ℓ_H = T − h_H > 0 (strictly positive leisure even for involuters) and L̄(θ*) > 0 for all θ* ∈ (0, ∞) (guaranteed if F has full support). State these as part of Assumption M1 (Meeting Function Regularity) in Stage 5. Add the explicit bound: for all ℓ_i ≥ ℓ_H > 0 and L̄ ≥ ℓ_H · F(0) > 0, we have μ_i > 0 and E[T_match] < ∞.

---

**Recommended action:**
CONDITIONAL PASS — proceed to HiL-4 with the following issues to be addressed in Stage 5 (Assumption Audit):
1. Add Assumption E: π = π(γ) is exogenous (independent of Φ) in the baseline; multiplicity extension deferred to a separate proposition.
2. Add lower-bound condition to Assumption M1: ℓ_H > 0 (ensured by T > h_H) and μ(ℓ_H, L̄) > 0 for all L̄ > 0.
Neither issue is a fundamental problem; both are easily resolved in the assumption auditing stage.
