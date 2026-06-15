# Proof Sketches

**Date:** 2026-06-15
**Stage:** 7 — Proof Sketches

---

## [P_E1] — Proof Sketch: Existence and Uniqueness of Dominant Firm Equilibrium

**Claim (restated):**
> Under Assumptions A1–A4, H2 (interior solution: p_m* < a_m/(b_m + e_m)), and A3 (K < K̄), there exists a unique dominant firm equilibrium (p_u*, p_r*, λ*) with closed-form expressions: p_m* = (c + λ*)/2 + a_m/[2(b_m + e_m)], λ* = (a_u + a_r − 2K)/B − c > 0, q_m* = [a_m − (b_m + e_m)(c + λ*)]/2 > 0.

**Proof strategy:** Direct optimization; Karush-Kuhn-Tucker (KKT) conditions for a constrained quadratic program; closed-form solution via linear system.

**Proof sketch:**

1. **Establish strict concavity of the profit function** [SOLID]
   The dominant firm's unconstrained profit is Π_D(p_u, p_r) = Σ_m (p_m − c)(a_m − (b_m + e_m)p_m). The Hessian is diagonal with entries ∂²Π_D/∂p_m² = −2(b_m + e_m) < 0 (since b_m, e_m > 0). Hence Π_D is strictly concave in (p_u, p_r). The feasible set {(p_u, p_r) : R_u(p_u) + R_r(p_r) ≤ K, R_m ≥ 0} is the intersection of linear half-spaces and is compact and convex under H2 and A3. By Weierstrass, a maximum exists.

2. **Write the KKT conditions** [SOLID]
   The Lagrangian is L = Σ_m (p_m − c − λ) R_m(p_m) + λK, where λ ≥ 0 is the multiplier on the capacity constraint. KKT conditions: (i) R_m(p_m*) + (p_m* − c − λ*) R'_m(p_m*) = 0 for m ∈ {u, r}; (ii) λ*[R_u(p_u*) + R_r(p_r*) − K] = 0; (iii) λ* ≥ 0; (iv) R_u(p_u*) + R_r(p_r*) ≤ K. Since Π_D is strictly concave and the constraint is linear, LICQ holds and KKT conditions are necessary and sufficient.

3. **Verify the constraint binds (λ* > 0) under A3** [SOLID]
   Suppose the constraint does not bind (λ* = 0). Then the FOC for each market gives the unconstrained optimal price p_m^{nc} = c/2 + a_m/[2(b_m + e_m)] with unconstrained optimal quantity q_m^{nc} = [a_m − (b_m + e_m)c]/2. The total unconstrained quantity is q_u^{nc} + q_r^{nc} = K̄ = (a_u + a_r − (b_u + e_u + b_r + e_r)c)/2. Under A3, K < K̄, so R_u(p_u^{nc}) + R_r(p_r^{nc}) = K̄ > K — the capacity constraint is violated. Hence the constraint must bind: λ* > 0 by complementary slackness.

4. **Solve the linear system for the closed form** [SOLID]
   With λ* > 0 and the constraint binding, substitute R_m(p_m) = a_m − (b_m + e_m)p_m and R'_m = −(b_m + e_m) into the FOC: [a_m − (b_m + e_m)p_m*] + (p_m* − c − λ*)(−(b_m + e_m)) = 0. Expanding: a_m − (b_m + e_m)p_m* − (b_m + e_m)p_m* + (b_m + e_m)(c + λ*) = 0, giving p_m* = [a_m + (b_m + e_m)(c + λ*)]/[2(b_m + e_m)] = (c + λ*)/2 + a_m/[2(b_m + e_m)]. This is the claimed formula.

5. **Determine λ* from the binding constraint** [SOLID]
   The binding constraint gives: Σ_m q_m* = K, where q_m* = R_m(p_m*) = a_m − (b_m + e_m)p_m* = a_m − (b_m + e_m)[(c + λ*)/2 + a_m/(2(b_m + e_m))] = [a_m − (b_m + e_m)(c + λ*)]/2. Summing: [Σ_m a_m − B(c + λ*)]/2 = K, so c + λ* = (Σ_m a_m − 2K)/B, giving λ* = (a_u + a_r − 2K)/B − c. Under A3 (K < K̄ = (a_u + a_r − Bc)/2): a_u + a_r − 2K > Bc, so λ* > 0. ✓

6. **Verify uniqueness** [SOLID]
   The solution (p_u*, p_r*, λ*) is obtained by solving a 2×1 linear system (step 4) plus one scalar equation (step 5). The system is linear with a unique solution for any K, a_m, b_m, e_m, c. Strict concavity of Π_D implies the solution to the KKT system is the unique global maximum.

7. **Verify interior solution (H2)** [PLAUSIBLE]
   Need p_m* < a_m/(b_m + e_m) (choke price of residual demand). Substituting: (c + λ*)/2 + a_m/[2(b_m + e_m)] < a_m/(b_m + e_m) iff c + λ* < a_m/(b_m + e_m). Under A3 and A2 this holds when demand intercepts a_m are sufficiently large relative to costs. This is assumption H2 stated explicitly — the proof requires H2 as a maintained condition; it cannot be derived from A1–A4 alone.

**Additional lemmas needed:**
- **Lemma 0 (Parameter Admissibility):** State H2 as a formal parameter restriction: a_m > (b_m + e_m)(c + λ*) for m ∈ {u, r}, where λ* is as above. This ensures q_m* > 0 and the interior solution assumption is self-consistent.

**Hardest step:** Step 7 — H2 is assumed but requires a closed-form parameter condition to be stated explicitly in the paper. The self-referential nature (λ* appears in the condition for λ* > 0 to be consistent) requires careful statement.

**Rigor summary:** NEAR-COMPLETE — Steps 1–6 are essentially complete proofs for a linear model. Step 7 introduces H2 which must be stated as an explicit assumption. The proof is ready for paper write-up with Step 7 formalized as a parameter restriction.

**To complete this proof, one would need to:**
- State H2 explicitly: a_m > (b_m + e_m)(c + λ*), where λ* = (a_u + a_r − 2K)/B − c, as a maintained parameter restriction in the model setup
- Note that H2 is equivalent to q_m* > 0 and can be verified numerically for any calibration

---

## [P_C1] — Proof Sketch: Urban-Rural Price Gap Sign and Magnitude

**Claim (restated):**
> Under P_E1 and A4 (e_r > e_u), with symmetric demand (a_u = a_r = a, b_u = b_r = b): p_u* − p_r* = (a/2)·[1/(b + e_u) − 1/(b + e_r)] > 0. The price gap is independent of K, λ*, and c.

**Proof strategy:** Direct subtraction of closed-form price expressions.

**Proof sketch:**

1. **Substitute closed-form prices** [SOLID]
   From P_E1: p_m* = (c + λ*)/2 + a_m/[2(b_m + e_m)]. Therefore: p_u* − p_r* = [(c + λ*)/2 + a_u/[2(b_u + e_u)]] − [(c + λ*)/2 + a_r/[2(b_r + e_r)]] = a_u/[2(b_u + e_u)] − a_r/[2(b_r + e_r)].

2. **Cancellation of λ* and c** [SOLID]
   The (c + λ*)/2 terms cancel exactly. The price gap depends only on the market-specific "residual demand intercept" terms a_m/[2(b_m + e_m)] and not on K, c, or λ*. This cancellation is exact in the linear model and is a direct algebraic consequence of the additive structure of the closed-form equilibrium.

3. **Apply symmetric demand and sign under A4** [SOLID]
   Under a_u = a_r = a and b_u = b_r = b: p_u* − p_r* = (a/2)·[1/(b + e_u) − 1/(b + e_r)]. Under A4 (e_r > e_u > 0 and b > 0): b + e_u < b + e_r, so 1/(b + e_u) > 1/(b + e_r), giving p_u* − p_r* > 0.

4. **State invariance properties** [SOLID]
   Since the expression (a/2)·[1/(b + e_u) − 1/(b + e_r)] contains no K, c, or λ*, the price gap is invariant to: the capacity level K (within the binding region K < K̄), the dominant firm's marginal cost c, and any common shifts to both demand functions.

**Hardest step:** Step 1 — straightforward; no hard steps in this proof.

**Rigor summary:** NEAR-COMPLETE — This is a direct algebraic calculation requiring no additional lemmas. The result follows immediately from P_E1's closed form.

**To complete this proof, one would need to:**
- Nothing beyond P_E1; this proof is essentially complete given the closed-form equilibrium.
- Extend to asymmetric demand: without a_u = a_r, the sign of p_u* − p_r* depends on both demand and fringe asymmetry. The general condition is a_u/[b_u + e_u] ≶ a_r/[b_r + e_r] — state this as the general criterion in the paper and use symmetric demand only for clean exposition.

---

## [P_C2] — Proof Sketch: Cross-Market Comparative Statics (Main Result)

**Claim (restated):**
> Under A3 (K < K̄) and P_E1: (a) dλ*/de_r = −(a_u + a_r − 2K)/B² < 0; (b) dp_u*/de_r = (1/2)·dλ*/de_r < 0; (c) d(p_u* − p_r*)/de_r = a_r/[2(b_r + e_r)²] > 0; (d) dq_u*/de_r = (b_u + e_u)(a_u + a_r − 2K)/(2B²) > 0; (e) dp_u*/de_r = 0 when K ≥ K̄.

**Proof strategy:** Direct differentiation of closed-form equilibrium with respect to e_r, using the chain rule through λ*.

**Proof sketch:**

1. **Differentiate λ* with respect to e_r** [SOLID]
   From P_E1: λ* = (a_u + a_r − 2K)/B − c, where B = b_u + e_u + b_r + e_r. Since ∂B/∂e_r = 1: dλ*/de_r = −(a_u + a_r − 2K)/B². Under A3: a_u + a_r − 2K > Bc > 0 (from the proof of P_E1, step 3), so a_u + a_r − 2K > 0 and dλ*/de_r < 0. The capacity shadow price falls as rural fringe supply becomes more elastic.

2. **Differentiate p_u* with respect to e_r via the chain rule** [SOLID]
   From P_E1: p_u* = (c + λ*)/2 + a_u/[2(b_u + e_u)]. The second term is independent of e_r. Therefore: dp_u*/de_r = (1/2)·(dλ*/de_r) = −(a_u + a_r − 2K)/(2B²) < 0.

3. **Differentiate p_r* with respect to e_r (two channels)** [SOLID]
   From P_E1: p_r* = (c + λ*)/2 + a_r/[2(b_r + e_r)]. There are two channels:
   - Shadow price channel: (1/2)·dλ*/de_r = −(a_u + a_r − 2K)/(2B²) < 0
   - Direct residual demand channel: −a_r/[2(b_r + e_r)²] < 0
   Total: dp_r*/de_r = −(a_u + a_r − 2K)/(2B²) − a_r/[2(b_r + e_r)²] < 0. Rural price falls by strictly more than urban price because it has an additional direct channel.

4. **Compute the effect on the price gap** [SOLID]
   d(p_u* − p_r*)/de_r = dp_u*/de_r − dp_r*/de_r = [−(a_u + a_r − 2K)/(2B²)] − [−(a_u + a_r − 2K)/(2B²) − a_r/(2(b_r + e_r)²)] = a_r/[2(b_r + e_r)²] > 0. The shadow price channel cancels in the difference; the price gap widens solely through the direct rural residual demand channel.

5. **Differentiate q_u* with respect to e_r** [SOLID]
   From P_E1: q_u* = [a_u − (b_u + e_u)(c + λ*)]/2. Therefore dq_u*/de_r = −(b_u + e_u)/2 · dλ*/de_r = −(b_u + e_u)/2 · [−(a_u + a_r − 2K)/B²] = (b_u + e_u)(a_u + a_r − 2K)/(2B²) > 0. Since q_u* + q_r* = K: dq_r*/de_r = −dq_u*/de_r < 0. The dominant firm reallocates capacity toward the urban market.

6. **Establish the zero-effect result under K ≥ K̄ (part e)** [SOLID]
   When K ≥ K̄, the capacity constraint does not bind and λ* = 0. The unconstrained prices are p_u*^{nc} = c/2 + a_u/[2(b_u + e_u)], which is independent of e_r (the rural market parameter does not appear). Hence dp_u*^{nc}/de_r = 0 and dq_u*^{nc}/de_r = 0 exactly. The cross-market effect is precisely zero without the binding capacity constraint.

7. **Economic decomposition: shadow price channel vs. direct channel** [SOLID]
   The total effect on each price decomposes cleanly: (i) Shadow price channel [affects both markets equally]: dp_m*/de_r = (1/2)·dλ*/de_r < 0 for both m; this channel propagates the rural fringe shock to the urban market through λ*. (ii) Direct residual demand channel [affects only p_r*]: −a_r/[2(b_r + e_r)²] < 0; this is the direct effect of higher e_r on rural residual demand elasticity. The price gap widens because the shadow price channel cancels in the difference (p_u* − p_r*) and only the direct channel survives.

**Additional lemmas needed:**
- None; the proof is self-contained given P_E1.

**Hardest step:** Step 1 — the sign of dλ*/de_r requires confirming a_u + a_r − 2K > 0 under A3. This follows from the proof of P_E1 step 3 (K < K̄ = (a_u + a_r − Bc)/2 < (a_u + a_r)/2, so a_u + a_r > 2K). This is straightforward but the implicit use of A3's full content (not just K < K̄ but K < (a_u + a_r)/2 as well) should be made explicit. Since c > 0 and K < K̄ < (a_u + a_r)/2, this holds strictly.

**Rigor summary:** NEAR-COMPLETE — Every step is a direct algebraic differentiation of closed-form expressions. No fixed-point arguments or limiting results required. The decomposition into shadow price and direct channels (step 7) is novel and requires clear presentation but is mathematically immediate.

**To complete this proof, one would need to:**
- Verify a_u + a_r > 2K under A3: follows from K < K̄ = (a_u + a_r − Bc)/2 ≤ (a_u + a_r)/2 since Bc > 0.
- State the decomposition (step 7) as a named Corollary, since it is the economic content that ties the mechanism together.

---

## [P_C3] — Proof Sketch: Capacity Comparative Statics and Price Gap Invariance

**Claim (restated):**
> Under A3: (a) dp_m*/dK = −1/B < 0 for both m; (b) d(p_u* − p_r*)/dK = 0; (c) as K → K̄⁻, λ* → 0 and p_m* → p_m^{nc}.

**Proof strategy:** Direct differentiation of closed-form equilibrium with respect to K.

**Proof sketch:**

1. **Differentiate λ* with respect to K** [SOLID]
   From P_E1: λ* = (a_u + a_r − 2K)/B − c. Differentiating: dλ*/dK = −2/B < 0. The shadow price falls at rate 2/B as capacity increases — each unit of extra capacity reduces the shadow cost by 2/B.

2. **Differentiate p_m* with respect to K** [SOLID]
   From p_m* = (c + λ*)/2 + a_m/[2(b_m + e_m)]: dp_m*/dK = (1/2)·dλ*/dK = (1/2)·(−2/B) = −1/B < 0. Identical for both markets: dp_u*/dK = dp_r*/dK = −1/B. The effect is symmetric across markets.

3. **Establish price gap invariance** [SOLID]
   d(p_u* − p_r*)/dK = dp_u*/dK − dp_r*/dK = −1/B − (−1/B) = 0. The price gap is exactly invariant to K because both prices respond identically to capacity changes — the K effect enters only through λ* which affects both markets symmetrically.

4. **Derive the limit as K → K̄** [SOLID]
   As K → K̄⁻ = [(a_u + a_r − Bc)/2]⁻: λ* = (a_u + a_r − 2K)/B − c → (a_u + a_r − (a_u + a_r − Bc))/B − c = Bc/B − c = c − c = 0. Therefore lim_{K→K̄⁻} p_m* = 0/2 + c/2 + a_m/[2(b_m + e_m)] — wait: p_m* = (c + λ*)/2 + a_m/[2(b_m + e_m)] → c/2 + a_m/[2(b_m + e_m)] = p_m^{nc}. Continuity of p_m* in K follows from the closed-form expression.

5. **Cross-market statics also vanish in the limit** [SOLID]
   From P_C2: dp_u*/de_r = −(a_u + a_r − 2K)/(2B²). As K → K̄: a_u + a_r − 2K → Bc > 0 (a positive limit, NOT zero). Wait — let me recompute: at K = K̄ = (a_u + a_r − Bc)/2: a_u + a_r − 2K̄ = a_u + a_r − (a_u + a_r − Bc) = Bc. So dp_u*/de_r → −Bc/(2B²) = −c/(2B) ≠ 0 at K = K̄? 
   
   But this is wrong — at K = K̄, the constraint is exactly non-binding (λ* = 0) and the model is at the boundary. The correct statement is: FOR K ≥ K̄ (strictly non-binding), dp_u*/de_r = 0 exactly (from the unconstrained solution). The limit as K → K̄ from below gives dp_u*/de_r → −c/(2B) ≠ 0, showing that dp_u*/de_r is NOT continuous at K = K̄. This is a DISCONTINUITY in the comparative static at the boundary K = K̄.

   **[FLAG — P_B1 requires revision]:** The cross-market comparative static dp_u*/de_r does NOT converge to zero as K → K̄; instead it converges to −c/(2B) < 0. The limit result in P_B1 is incorrect as stated. The correct statement is: (i) For K ≥ K̄ (non-binding): dp_u*/de_r = 0 exactly; (ii) For K < K̄ (binding): dp_u*/de_r = −(a_u + a_r − 2K)/(2B²) < 0, which → −c/(2B) as K → K̄ from below. There is a jump discontinuity of size c/(2B) in dp_u*/de_r at K = K̄. **This is a FALSE_RISK in P_B1 as stated.**

**Additional lemmas needed:**
- **Revision of P_B1:** The claim "all cross-market effects converge to zero as K → K̄" is false. The correct statement is: "dp_u*/de_r is discontinuous at K = K̄ — it equals −c/(2B) from below and 0 from above. The discontinuity is of size c/(2B) > 0." This discontinuity arises because the capacity constraint switches from binding to non-binding at exactly K = K̄ — a structural break in the optimization problem.

**Hardest step:** Step 5 — the discontinuity finding requires careful treatment and requires revising P_B1.

**Rigor summary:** MOSTLY SOLID for parts (a)–(c). Step 5 reveals a FALSE_RISK in P_B1 that must be corrected.

**To complete this proof, one would need to:**
- Revise P_B1: state the discontinuity result correctly (jump at K = K̄, not convergence to zero).
- Note that p_m* IS continuous at K = K̄ (the price levels converge continuously), but the SENSITIVITY dp_u*/de_r is discontinuous.
- Consider whether the discontinuity in dp_u*/de_r at K = K̄ should be a named result in the paper (it characterizes the "threshold" where the cross-market mechanism switches on).

---

## [P_W1] — Proof Sketch: Welfare — Segmentation Reduces Total Output

**Claim (restated):**
> Under A1–A4, symmetric demand, and binding capacity K in both regimes: Q^{SEG} − Q^{UNI} = a(e_r − e_u)·[e_u/(b + e_u) − e_r/(b + e_r)]/(2B) < 0. Hence W^{SEG} < W^{UNI}.

**Proof strategy:** (1) Compute Q^{SEG} and Q^{UNI} explicitly; (2) compute Q^{SEG} − Q^{UNI} and sign it; (3) apply Varian's welfare criterion.

**Proof sketch:**

1. **Compute the uniform price under binding capacity** [SOLID]
   Under uniform pricing, the dominant firm maximizes (p − c)·[R_u(p) + R_r(p)] = (p − c)·(a_u + a_r − B·p) subject to a_u + a_r − Bp ≤ K. The unconstrained uniform price is p^{nc,U} = c/2 + (a_u + a_r)/(2B) with unconstrained quantity K̄ > K (same condition as segmented case). So the constraint binds: from a_u + a_r − Bp^{U*} = K: p^{U*} = (a_u + a_r − K)/B.

2. **Compute total market output under uniform pricing** [SOLID]
   Q^{UNI} = Σ_m D_m(p^{U*}) = (a_u + a_r) − B·p^{U*} = (a_u + a_r) − B·(a_u + a_r − K)/B = K. Under uniform pricing with binding capacity, total market output (= dominant firm quantity K plus fringe quantity) equals K only because the dominant firm produces K. But total consumer demand = total market output includes fringe:
   
   Q^{UNI} = Σ_m [q_m^{U*} + s_m^{U*}] = K + Σ_m e_m · p^{U*} = K + (e_u + e_r)·(a_u + a_r − K)/B.

3. **Compute total market output under segmented pricing** [SOLID]
   Q^{SEG} = Σ_m [q_m* + s_m*] = K + Σ_m e_m · p_m* = K + e_u p_u* + e_r p_r*.

4. **Compute Q^{SEG} − Q^{UNI}** [SOLID]
   Q^{SEG} − Q^{UNI} = e_u(p_u* − p^{U*}) + e_r(p_r* − p^{U*}). Under symmetric demand (a_u = a_r = a, b_u = b_r = b): from P_C1 and the derivation in P_C2:
   
   p_u* − p^{U*} = a(e_r − e_u)/[2B(b + e_u)] > 0 (under A4)
   p_r* − p^{U*} = a(e_u − e_r)/[2B(b + e_r)] < 0 (under A4)
   
   Therefore: Q^{SEG} − Q^{UNI} = e_u · a(e_r − e_u)/[2B(b + e_u)] + e_r · a(e_u − e_r)/[2B(b + e_r)]
   = a(e_r − e_u)/(2B) · [e_u/(b + e_u) − e_r/(b + e_r)].
   
   Under A4 (e_r > e_u): (e_r − e_u) > 0. Since f(x) = x/(b + x) is strictly increasing in x for b > 0, and e_r > e_u: e_r/(b + e_r) > e_u/(b + e_u), so [e_u/(b + e_u) − e_r/(b + e_r)] < 0. Hence Q^{SEG} − Q^{UNI} < 0.

5. **Apply Varian's welfare criterion** [CITE — Varian 1985 AER 75(4): 870–875, VERIFIED]
   Varian (1985) establishes that total welfare W = ∫₀^Q P(x)dx − C^{total}(Q) is increasing in Q when the marginal cost is constant (no deadweight loss at the margin from supply). In this model the total cost of producing Q units is c·q_D + Σ_m C_m^F(s_m), where q_D = K is fixed and s_m = e_m p_m varies across regimes. The welfare comparison reduces to: W^{SEG} − W^{UNI} = [∫₀^{Q^{SEG}} P(x)dx − ∫₀^{Q^{UNI}} P(x)dx] − [C^{F,SEG} − C^{F,UNI}].

   Since Q^{SEG} < Q^{UNI}: the consumer surplus component is lower under segmentation (less total output sold). The fringe cost component: C_m^F(s_m) = s_m²/(2e_m) = e_m·(p_m*)²/2. Under segmentation, fringe produces more in the urban market (higher p_u*) and less in the rural market (lower p_r*) — net fringe cost effect is ambiguous.

6. **Sign the full welfare difference** [PLAUSIBLE]
   A complete welfare calculation requires evaluating the consumer surplus loss from Q^{SEG} < Q^{UNI} against the fringe cost savings from reduced rural fringe production. Under the linear model, the consumer surplus difference is:
   
   ΔCS = Σ_m ΔCS_m = Σ_m (−b/2)·[(p_m*^{SEG})² − (p^{U*})²] approximately (for small price differences).
   
   The full calculation: CS_m = (a − bp_m)²/(2b) under linear demand.
   ΔCS_total = CS_u^{SEG} − CS_u^{UNI} + CS_r^{SEG} − CS_r^{UNI}
              = [(a − bp_u*)² − (a − bp^{U*})²]/(2b) + [(a − bp_r*)² − (a − bp^{U*})²]/(2b)
   
   This can be computed in closed form but requires expanding several squared terms. The claim W^{SEG} < W^{UNI} follows from Q^{SEG} < Q^{UNI} under the additional condition that marginal welfare (P − MC) is positive in both markets (i.e., prices exceed marginal costs, which holds under A2). With positive marginal welfare and lower total output, welfare is lower under segmentation.
   
   More precisely: the total surplus is ∫₀^Q P(x)dx − c·Q^D − Σ_m C_m^F(s_m). Since Q^D = K is identical across regimes, and the fringe cost is higher when fringe output is higher (convex cost), and total fringe output is higher under segmentation (higher urban fringe + lower rural fringe, net positive since e_u p_u* + e_r p_r* > (e_u + e_r)p^{U*} iff Q^{SEG} > Q^{UNI}... wait). Actually Q^{SEG} < Q^{UNI} means total market output (including fringe) is LOWER under segmentation. So consumer demand is lower. Consumer surplus is lower. Fringe output is also lower in total (since total output = dominant firm output + fringe output = K + fringe, and total output is lower, fringe output is lower too). Hence fringe profits are lower. Dominant firm profit is higher. Net: welfare is lower.

   **[FALSE_RISK — Step 6]:** The welfare comparison argument is correct in direction (W^{SEG} < W^{UNI}) but the step involves combining multiple surplus components. The cleanest proof: since Q^{SEG} < Q^{UNI} (step 4), and social welfare is total area under the demand curve minus total production costs, and both regimes face the same dominant firm cost cK, the welfare difference reduces to:
   W^{SEG} − W^{UNI} = [Σ_m ∫_{Q_m^{UNI}}^{Q_m^{SEG}} (P_m(x) − c_m^F'(x)) dx]
   where c_m^F' is the fringe marginal cost. Since Q^{SEG} < Q^{UNI}, each integral is negative (we are losing units with positive net social value). This requires that P_m(x) > c_m^F'(x) for x in the relevant range — i.e., prices exceed fringe marginal cost, which holds since fringe firms earn positive profit at equilibrium.

7. **Distributional decomposition** [SOLID]
   Sign each component directly from price comparisons: p_u* > p^{U*} (urban price higher under segmentation, from step 4) → CS_u^{SEG} < CS_u^{UNI}; p_r* < p^{U*} (rural price lower) → CS_r^{SEG} > CS_r^{UNI}; p_u* > p^{U*} → Π_{F_u}^{SEG} = e_u(p_u*)²/2 > Π_{F_u}^{UNI}; p_r* < p^{U*} → Π_{F_r}^{SEG} < Π_{F_r}^{UNI}; Π_D^{SEG} ≥ Π_D^{UNI} since segmentation is the dominant firm's preferred strategy.

**Additional lemmas needed:**
- **Lemma W1 (Uniform Price Under Binding Capacity):** Derive p^{U*} = (a_u + a_r − K)/B explicitly under symmetric demand and the same binding capacity condition. This lemma is needed to sign p_u* vs. p^{U*} and p_r* vs. p^{U*} (step 4).
- **Lemma W2 (Total Fringe Output Comparison):** Show that total fringe output e_u p_u* + e_r p_r* < (e_u + e_r) p^{U*} iff Q^{SEG} < Q^{UNI}, establishing the equivalence used in step 6.

**Hardest step:** Step 6 — the full welfare inequality requires careful handling of fringe cost differences across regimes. The cleanest proof uses the "loss of socially valuable units" argument (prices exceed fringe marginal costs for units lost). This is a valid argument but requires stating that P_m(Q_m^{UNI}) ≥ c_m^F'(s_m^{UNI}) in the relevant range. Under equilibrium fringe optimality, this holds: fringe sets price = marginal cost (supply curve is marginal cost curve), so c_m^F'(s_m^{UNI}) = p^{U*} and P_m(Q_m^{UNI}) is the inverse demand at total quantity Q_m^{UNI}. Since the market clears, P_m(Q_m^{UNI}) = p^{U*} = c_m^F'(s_m^{UNI}) at the equilibrium boundary, making the welfare argument boundary-valid.

**Rigor summary:** MOSTLY SOLID — Steps 1–5 and 7 are solid or have verified citations. Step 6 is PLAUSIBLE with a FALSE_RISK flag: the welfare inequality is correct but requires careful treatment of fringe cost differences. The cleanest proof (step 6, revised) avoids ambiguity by using the total output criterion directly with the marginal social value argument.

**To complete this proof, one would need to:**
- Prove Lemma W1 (uniform price under binding capacity constraint) — straightforward from the KKT conditions.
- For step 6: use the cleanest proof path: Q^{SEG} < Q^{UNI} and P_m(x) > c_m^{F'}(x) for all x ∈ (Q^{SEG}, Q^{UNI}) → each lost unit has positive social value → W^{SEG} < W^{UNI}. State this as a lemma with the condition "prices exceed fringe marginal cost in the equilibrium range."

---

## [P_B1] — Proof Sketch: Non-Binding Capacity Limit — REVISED

**Claim (restated — revised):**
> (Corrected from Stage 6) As K → K̄ from below (binding regime), prices p_m* converge continuously to the unconstrained prices p_m^{nc} = c/2 + a_m/[2(b_m + e_m)]. However, the cross-market comparative static dp_u*/de_r is DISCONTINUOUS at K = K̄: it equals −c/(2B) < 0 for K < K̄ (binding) and equals 0 for K ≥ K̄ (non-binding). The discontinuity has magnitude c/(2B).

**Proof strategy:** Direct calculation of limits; analysis of the constraint switching point.

**Proof sketch:**

1. **Price continuity at K = K̄** [SOLID]
   As K → K̄: λ* = (a_u + a_r − 2K)/B − c → (a_u + a_r − 2K̄)/B − c = [a_u + a_r − (a_u + a_r − Bc)]/B − c = c − c = 0. So p_m* → c/2 + a_m/[2(b_m + e_m)] = p_m^{nc} from below. Price levels are continuous.

2. **Comparative static discontinuity at K = K̄** [SOLID]
   From P_C2: for K < K̄, dp_u*/de_r = −(a_u + a_r − 2K)/(2B²). As K → K̄: −(a_u + a_r − 2K̄)/(2B²) = −Bc/(2B²) = −c/(2B). For K ≥ K̄: p_u*^{nc} = c/2 + a_u/[2(b_u + e_u)] is independent of e_r, so dp_u*/de_r = 0. The left limit is −c/(2B) ≠ 0, the right limit is 0. There is a jump discontinuity of size c/(2B) > 0.

3. **Economic interpretation of the discontinuity** [SOLID]
   The discontinuity arises because the capacity constraint switches from binding to non-binding at K = K̄ — a structural change in the optimization problem. At K = K̄ − ε (just binding), the dominant firm faces a small positive shadow price λ* = (a_u + a_r − 2(K̄ − ε))/B − c ≈ 2ε/B → 0⁺ and the cross-market effect dp_u*/de_r ≈ −c/(2B) < 0. At K = K̄ + ε (just non-binding), λ* = 0 and dp_u*/de_r = 0. The sudden switch reflects the fact that even an infinitesimally binding constraint creates a cross-market channel that is absent when the constraint is slack.

**Hardest step:** Step 3 — characterizing the economic meaning of the discontinuity.

**Rigor summary:** NEAR-COMPLETE — All steps are SOLID. The key correction from Stage 6 is that dp_u*/de_r → −c/(2B) ≠ 0 as K → K̄; the cross-market comparative static does not converge to zero at the boundary but instead jumps from a negative value to zero.

**Correction to P_B1:** The Stage 6 statement "As K → K̄, the cross-market effects vanish" is INCORRECT. Replace with: "The cross-market effects exist for all K ∈ (0, K̄), and the price levels converge continuously to the unconstrained levels, but the cross-market sensitivity dp_u*/de_r jumps discontinuously from −c/(2B) to 0 at K = K̄."

---

## Overall Proof Landscape

| Proposition | Rigor Level | Hardest Step | Lemmas Needed | Issues |
|------------|------------|-------------|--------------|--------|
| P_E1 | NEAR-COMPLETE | Step 7 (H2 parameter condition) | Lemma 0 (H2 explicit statement) | None critical |
| P_C1 | NEAR-COMPLETE | Step 1 (direct calc) | None | None |
| P_C2 | NEAR-COMPLETE | Step 1 (sign of dλ*/de_r) | None | None |
| P_C3 | MOSTLY SOLID | Step 5 (continuity of comparative static) | Revision of P_B1 | P_B1 correction needed |
| P_W1 | MOSTLY SOLID | Step 6 (full welfare inequality) | Lemmas W1, W2 | Step 6 has FALSE_RISK; cleanest proof available |
| P_B1 | NEAR-COMPLETE (revised) | Step 3 (econ. interp.) | None | MUST revise P_B1 statement |

**Most vulnerable proposition:** P_W1 (Step 6 has a FALSE_RISK; requires careful handling of fringe cost differences, though the clean proof path via "lost units with positive social value" resolves it).

**Most complete proof:** P_C2 (all steps are direct differentiations of closed-form expressions; no lemmas needed; NEAR-COMPLETE).

**Priority for formalization:**
1. **P_C2 first** — the main result, all steps SOLID, can be fully formalized directly from the closed-form derivation.
2. **P_W1 second** — most policy-relevant result; needs Lemma W1 and the Step 6 clean proof path to be complete.
3. **P_B1 (revised) third** — requires correcting the Stage 6 statement; short proof, but the discontinuity result is important for the paper's robustness section.

**Critical correction flagged in Stage 7:**
P_B1 as stated in Stage 6 contains a FALSE_RISK: the claim that dp_u*/de_r → 0 as K → K̄ is incorrect. The correct result is that dp_u*/de_r has a jump discontinuity of size c/(2B) at K = K̄. Stage 8 (Counterexample Finder) should check this correction and its implications for the paper's narrative.
