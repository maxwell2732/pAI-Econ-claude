# Gate 2: Model Coherence Gate — Verdict

**Verdict:** PASS

**Check results:**

| Check | Status | Notes |
|-------|--------|-------|
| 1 — Variable Completeness | ✓ | All symbols defined in the Notation Summary (Section 11) before use; domains specified for every parameter and endogenous variable; residual demand R_m defined as D_m − S_m before appearing in FOCs |
| 2 — Equilibrium Concept Compatibility | ✓ | Price leadership equilibrium is fully compatible with the static complete-information game; the dominant firm's optimization is a well-posed constrained maximization problem; fringe firms' price-taking is justified as the N → ∞ Cournot limit (stated in Section 1); SPNE (Candidate B) is the formal game-theoretic foundation |
| 3 — Budget/Resource Consistency | ✓ | The only cross-agent constraint is the capacity constraint q_u + q_r ≤ K; market clearing is automatically ensured by the residual demand formulation (dominant firm supplies D_m(p_m) − S_m(p_m) which equals exactly the unmet demand); no circularity in resource allocation |
| 4 — Timing Consistency | ✓ | Timing is sequential and consistent: dominant firm sets prices → fringe observes and supplies → market clears → payoffs realized; no agent conditions on any event that occurs after their decision node |
| 5 — Tension Generation | ✓ | The model directly generates the Stage 1 tension: (a) asymmetric fringe supply parameters (e_u ≠ e_r) create different residual demand elasticities in each market, driving cross-market price differences; (b) the binding capacity constraint λ* > 0 links the two markets so that a change in rural fringe supply e_r affects the urban price p_u* through the shadow price λ* — the non-trivial cross-market mechanism identified by the Persona Council |
| 6 — Existence (Preliminary) | ✓ | Under A1–A4: the dominant firm's profit function is strictly concave in (p_u, p_r) for linear residual demand (Π_D = Σ_m (p_m − c) (a_m − (b_m + e_m)p_m) is quadratic and strictly concave with negative definite Hessian); the constraint set is compact and convex; a unique interior solution exists by Weierstrass |
| 7 — Payoff Consistency | ✓ | All payoff functions are well-defined: Π_D is a finite quadratic; CS_m is a non-negative quadratic; fringe profits Π_{F_m} = e_m(p_m*)²/2 are non-negative and finite; no unboundedness issues under the maintained assumptions |

**Critical issues (FAIL checks):** None.

**Issues to address (WARNING checks):** None.

**Recommended action:** Proceed to HiL-4.

---

**Supplementary notes for Stage 5 (Assumption Audit):**

The following assumptions should receive scrutiny in Stage 5:

1. **A1 (Market Segmentation):** The no-arbitrage condition τ > p_u* − p_r* is stated as an assumption but is not verified at the equilibrium prices. Stage 5 should either: (a) treat τ as an additional parameter and derive the condition on τ for segmentation to hold in equilibrium; or (b) note that China's urban-rural geographic separation and distribution channel structure makes the assumption empirically defensible without formal derivation.

2. **A3 (Binding Capacity Constraint):** The condition K < K̄ is a restriction on the parameter space. Stage 5 should assess whether this is a "natural" empirical condition (Coca-Cola often operates at or near distribution capacity in emerging markets) or an artificial restriction that substantially limits the paper's scope. If the constraint does not bind (K ≥ K̄), the model reduces to the separable dominant firm model with no cross-market interaction — the paper's main mechanism disappears. The binding constraint assumption is therefore load-bearing and requires strong justification.

3. **Competitive fringe assumption (A2-adjacent):** The claim that fringe firms are atomistic price-takers is justified via the N → ∞ Cournot limit, but this limit requires g_m → 0 simultaneously with N_m → ∞ such that e_m remains finite. Stage 5 should verify that the limit is well-defined and that individual fringe profits remain positive in the limit (they do: π_i^{F*} = g_m(p_m*)²/2 → 0, but the aggregate fringe profit Π_{F_m}* = N_m · g_m(p_m*)²/2 = e_m(p_m*)²/2 > 0 remains bounded).
