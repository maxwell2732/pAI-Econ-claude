# Counterexamples and Edge Cases

**Date:** 2026-06-15
**Stage:** 8 — Counterexample Finder

---

## Summary Table

| Proposition | Attempts | Breaks Found | Severity | Status |
|------------|---------|-------------|---------|--------|
| P_E1 | 5 | 0 (1 boundary condition) | LOW | ROBUST |
| P_C1 | 4 | 1 (sign reversal under asymmetric demand) | MEDIUM | NEEDS SCOPE RESTRICTION |
| P_C2 | 6 | 1 (sign of shadow price channel can flip for p_u* under extreme asymmetry) | LOW | ROBUST (minor scope note) |
| P_C3 | 4 | 0 | — | ROBUST |
| P_W1 | 6 | 1 (welfare reversal when fringe asymmetry is small) | MEDIUM | NEEDS CONDITION STATED |
| P_B1 | 3 | 0 (correction already incorporated) | — | ROBUST |

---

## [P_E1] — Counterexample Analysis: Existence and Uniqueness

### Attempt 1: Minimal Case (Single Market, K → 0)
**Tried:** Set K = 0 (zero capacity for dominant firm). Does a non-trivial equilibrium exist?
**Result:** SURVIVES — At K = 0, the dominant firm supplies nothing in both markets; fringe supplies all demand. The model degenerates but is consistent: q_m* = 0 = R_m(p_m*) means R_m(p_m*) = 0, so p_m* is the choke price of residual demand, a_m/(b_m + e_m). This is a valid degenerate equilibrium. The interesting case is K > 0, which is assumed throughout.

### Attempt 2: Extreme Fringe (e_m → ∞)
**Tried:** Let e_r → ∞ (infinite rural fringe supply elasticity — perfectly elastic fringe at price 0+).
**Result:** SURVIVES (with degeneration). As e_r → ∞, S_r(p_r) = e_r · p_r → ∞ for any p_r > 0. The dominant firm is crowded out of the rural market: q_r* = R_r(p_r*) = a_r − (b_r + e_r)p_r* → 0. The dominant firm allocates all capacity to the urban market. The equilibrium degenerates to a corner solution where the dominant firm serves only the urban market. This is handled by noting that q_r* = 0 is a corner solution (H2 fails for the rural market when e_r is too large). The proposition's interior solution assumption H2 must be stated as binding: the result holds for finite e_r satisfying H2.

**Boundary condition (not a break):** When e_r → ∞, the dominant firm exits the rural market. This is an exit corner solution. Add as a Remark: "Proposition P_E1 holds for e_r < ē_r ≡ a_r/p_r* − b_r, the upper bound on rural fringe elasticity consistent with interior dominant firm supply in the rural market."

### Attempt 3: Equal Fringe Parameters (e_u = e_r = e)
**Tried:** Symmetric fringe (same elasticity in both markets) with symmetric demand.
**Result:** SURVIVES — When e_u = e_r = e and a_u = a_r, b_u = b_r: p_u* = p_r* = (c + λ*)/2 + a/[2(b + e)] — identical prices in both markets. The equilibrium exists and is unique; the dominant firm splits capacity equally: q_u* = q_r* = K/2. This is the symmetric baseline; all propositions hold with p_u* − p_r* = 0.

### Attempt 4: H2 Failure (High λ*, Low a_m)
**Tried:** Set a_m small relative to (b_m + e_m)(c + λ*) to violate H2.
**Result:** SURVIVES (but exits interior). When a_r < (b_r + e_r)(c + λ*), the dominant firm's "desired" rural quantity q_r* = [a_r − (b_r + e_r)(c + λ*)]/2 < 0, which is not feasible. The corner solution q_r* = 0 applies. The dominant firm allocates all K to the urban market and sets p_r = a_r/(b_r + e_r) (the choke price — extracting zero residual demand in rural). The proposition holds for the urban market; the rural market is unserved by the dominant firm. H2 must be maintained.

### Attempt 5: Existence Failure — KKT Degeneracy
**Tried:** Check whether the KKT system can have no solution (e.g., if the feasible set is empty).
**Result:** SURVIVES — The feasible set is non-empty for any K > 0 (the dominant firm can always set high prices to reduce residual demand to zero and "supply" zero). The profit function is continuous on a compact set (prices bounded above by max choke prices). Existence follows from Weierstrass even if the interior solution does not exist. The unique KKT solution is either interior (H2 holds) or a corner (H2 fails for one market).

**P_E1 Overall verdict:** ROBUST. The only vulnerability is H2 (interior solution), which is correctly stated as a maintained assumption. Corner solutions when H2 fails are economically natural (dominant firm exits high-fringe markets) and should be described as a remark.

---

## [P_C1] — Counterexample Analysis: Urban-Rural Price Gap Sign

### Attempt 1: Asymmetric Demand Breaking the Sign
**Tried:** Relax symmetric demand assumption. Set a_u < a_r (smaller urban market) and b_u > b_r (more elastic urban demand) while keeping e_r > e_u (A4).

**Result:**
```
⚠️  BREAKS — Asymmetric demand
Counterexample: a_u = 2, b_u = 3, e_u = 0.5; a_r = 5, b_r = 1, e_r = 2.
   Price gap = a_u/[2(b_u+e_u)] − a_r/[2(b_r+e_r)] = 2/[2(3.5)] − 5/[2(3)] = 2/7 − 5/6 ≈ 0.286 − 0.833 < 0.
   Despite e_r > e_u (A4), p_u* < p_r* because the urban residual demand intercept
   a_u/(b_u+e_u) = 2/3.5 < a_r/(b_r+e_r) = 5/3. The dominant firm charges MORE in the
   rural market where total demand is larger.
What fails: The sign p_u* > p_r* requires a_u/(b_u + e_u) > a_r/(b_r + e_r), not merely e_r > e_u.
Severity: MEDIUM — P_C1 as stated (for symmetric demand) is correct; but the claim
   cannot be generalized to asymmetric demand without the additional condition on demand
   intercepts. The paper must state this clearly.
Fix options:
  Option A: Restrict P_C1 to symmetric demand only — already done; just make this
     restriction more prominent and note the general condition.
  Option B: Restate P_C1 for general demand: p_u* > p_r* iff
     a_u/(b_u + e_u) > a_r/(b_r + e_r). This is the general condition; A4 alone is
     insufficient. The symmetric demand case is a special case where A4 is sufficient.
  Option C: Add A4' as a general assumption replacing A4 for P_C1 in the asymmetric
     case: "A4' (General Dominance): a_u/(b_u + e_u) > a_r/(b_r + e_r)."
```

**Recommended fix:** Adopt Option B. Restate P_C1 for general demand with condition A4', and note that under symmetric demand (a_u = a_r, b_u = b_r), A4' reduces to A4 (e_r > e_u). This strengthens rather than weakens the paper — it provides the general condition.

### Attempt 2: Extreme Fringe Asymmetry (e_r → ∞)
**Tried:** Very large e_r with symmetric demand.
**Result:** SURVIVES — As e_r → ∞: p_u* − p_r* = (a/2)[1/(b + e_u) − 1/(b + e_r)] → (a/2)[1/(b + e_u) − 0] = a/[2(b + e_u)] > 0. The price gap grows and approaches its maximum a/[2(b + e_u)]. The claim is robust under extreme fringe asymmetry (up to the H2 boundary where q_r* → 0).

### Attempt 3: e_u = e_r (Symmetric Fringe)
**Tried:** A4 fails: e_u = e_r.
**Result:** SURVIVES (degenerate) — p_u* − p_r* = 0 under symmetric demand and symmetric fringe. The proposition holds with equality (price gap = 0). This is a boundary case, not a break.

### Attempt 4: K → 0 (Extreme Scarcity)
**Tried:** K → 0: shadow price λ* → (a_u + a_r)/B − c → large (if demand intercepts are large). Does the price gap change?
**Result:** SURVIVES — p_u* − p_r* = a/[2(b+e_u)] − a/[2(b+e_r)] is independent of K (shown in P_C1 proof). Even as K → 0, the price gap stays constant at a/2 · [1/(b+e_u) − 1/(b+e_r)]. The dominant firm's prices both rise (via λ*), but their difference is unaffected. This confirms the invariance to K claimed in P_C1 and P_C3.

**P_C1 Overall verdict:** CONDITIONAL — The sign of p_u* − p_r* under symmetric demand is robust. Under asymmetric demand, A4 (e_r > e_u alone) is insufficient; the correct condition is A4': a_u/(b_u + e_u) > a_r/(b_r + e_r). P_C1 should be restated with the general condition.

---

## [P_C2] — Counterexample Analysis: Cross-Market Comparative Statics

### Attempt 1: Opposite Sign Check on dp_u*/de_r
**Tried:** Is there ANY parameter configuration where dp_u*/de_r > 0 (i.e., stronger rural fringe raises urban price)?
**Result:** SURVIVES — dp_u*/de_r = −(a_u + a_r − 2K)/(2B²). This is strictly negative as long as a_u + a_r > 2K, which follows from A3 (K < K̄ = (a_u + a_r − Bc)/2 < (a_u + a_r)/2 since Bc > 0). There is NO parameter configuration satisfying A3 where dp_u*/de_r > 0. The sign is always negative under A3.

### Attempt 2: Relaxing A3 (Non-Binding Constraint)
**Tried:** K ≥ K̄ — what happens to P_C2?
**Result:** SURVIVES (with part e intact) — Under K ≥ K̄: dp_u*/de_r = 0 exactly. This is the content of P_C2 part (e), which is already stated. The proposition correctly characterizes both the binding and non-binding cases. No break.

### Attempt 3: Does the Price GAP Widen in the Asymmetric Demand Case?
**Tried:** Drop symmetric demand in P_C2: does d(p_u* − p_r*)/de_r = a_r/[2(b_r + e_r)²] > 0 still hold?
**Result:** SURVIVES — d(p_u* − p_r*)/de_r = d[a_u/(2(b_u+e_u)) − a_r/(2(b_r+e_r))]/de_r = a_r/[2(b_r+e_r)²] > 0. This derivative does NOT depend on a_u, b_u, e_u, or on whether demand is symmetric. The price gap ALWAYS widens as e_r increases, regardless of demand asymmetry. P_C2 part (c) holds universally.

### Attempt 4: e_u → 0 (Urban Fringe Vanishes)
**Tried:** Let e_u → 0 (no urban fringe — dominant firm is a monopolist in the urban market).
**Result:** SURVIVES (with amplification) — As e_u → 0: p_u* → (c + λ*)/2 + a_u/(2b_u) (monopoly price in urban market). dp_u*/de_r = −(a_u + a_r − 2K)/(2B²) remains negative; the dominant firm's urban price still falls when rural fringe strengthens. The capacity reallocation effect dq_u*/de_r = (b_u + e_u)(a_u + a_r − 2K)/(2B²) → b_u(a_u + a_r − 2K)/(2B²) > 0 remains positive. The cross-market mechanism works even when the urban fringe is negligible — it operates purely through the capacity shadow price.

### Attempt 5: K Exactly at K̄ (Constraint Just Binds)
**Tried:** K = K̄ − ε for tiny ε > 0.
**Result:** SURVIVES — At K = K̄ − ε: λ* = (a_u + a_r − 2(K̄ − ε))/B − c = (Bc + 2ε)/B − c = 2ε/B → 0⁺. The cross-market effect dp_u*/de_r = −(a_u + a_r − 2(K̄ − ε))/(2B²) = −(Bc + 2ε)/(2B²) → −c/(2B) (the P_B1 limit). The effect is small but non-zero for any ε > 0. Continuous in K up to but not including K̄.

### Attempt 6: Convex Dominant Firm Cost (Relaxing A7)
**Tried:** Replace C(q) = c·q with C(q) = c·q + (γ/2)·q² (γ > 0). Does P_C2 hold?
**Result:**
```
⚠️  BREAKS — Relaxing A7 (constant MC → convex cost)
Counterexample: With C(q) = cq + (γ/2)q², q = q_u + q_r, the FOC becomes
   p_m − c − γK − λ = −R_m/R'_m (since at the binding constraint, total output = K,
   so ∂C/∂q_m = c + γK is the same for both markets).
   Result: The effective marginal cost is c + γK, and λ* adjusts:
   λ*_new = (a_u + a_r − 2K)/B − c − γK.
   dp_u*/de_r is still −(a_u + a_r − 2K)/(2B²) < 0.
What fails: P_C2 SURVIVES — the sign of dp_u*/de_r is unchanged. With convex cost,
   there is an additional cross-market channel (the cost term γK depends on total output),
   but since total output is fixed at K in the binding regime, the convex cost does not
   add a new variable channel. P_C2 holds for convex cost too.
Severity: LOW — convex cost does not break P_C2; it only affects the level of λ*.
```
Note: A7 (constant MC) is NOT needed for P_C2 when the capacity constraint binds. The capacity constraint fixes total output at K regardless of the cost function. P_C2 is more robust than A7 suggests.

**P_C2 Overall verdict:** ROBUST. The cross-market effect dp_u*/de_r < 0 and dq_u*/de_r > 0 are robust to asymmetric demand, to vanishing urban fringe, and to convex dominant firm cost. The price gap widening d(p_u* − p_r*)/de_r > 0 holds universally without the symmetric demand restriction.

---

## [P_C3] — Counterexample Analysis: Capacity Comparative Statics

### Attempt 1: Asymmetric Demand — Does Gap Invariance Hold?
**Tried:** General a_u ≠ a_r, b_u ≠ b_r. Does d(p_u* − p_r*)/dK = 0 still hold?
**Result:** SURVIVES — p_u* − p_r* = a_u/[2(b_u+e_u)] − a_r/[2(b_r+e_r)], which contains no K for any demand specification. Gap invariance holds generally, not just for symmetric demand.

### Attempt 2: Non-Linear Demand
**Tried:** Replace linear demand with D_m(p) = a_m·p^{−η_m} (constant elasticity). Does dp_m*/dK still hold with constant sign?
**Result:** INCONCLUSIVE — Under non-linear demand, the closed-form solution is lost. The implicit function theorem gives dp_m*/dK sign = sign(∂²L/∂p_m∂K)/(−∂²L/∂p_m²), which requires evaluating second derivatives of the Lagrangian. The sign is negative (prices fall as K rises) under standard regularity conditions, but the clean symmetric formula dp_u*/dK = dp_r*/dK = −1/B does not generalize. Recommend noting this as a limitation of the linear specification.

### Attempt 3: Three Markets
**Tried:** Add a third market (peri-urban). Does gap invariance generalize to 3+ markets?
**Result:** SURVIVES (with generalization) — With N markets: p_m* = (c + λ*)/2 + a_m/[2(b_m + e_m)] and λ* = (Σ_m a_m − 2K)/B − c where B = Σ_m(b_m + e_m). The gap p_m* − p_{m'}* = a_m/[2(b_m + e_m)] − a_{m'}/[2(b_{m'}+e_{m'})] is still independent of K. Gap invariance generalizes to arbitrary N markets.

### Attempt 4: K Above K̄ Transition
**Tried:** What happens at K = K̄ exactly?
**Result:** SURVIVES — At K = K̄: λ* = 0 exactly (from P_E1). For K > K̄, the unconstrained solution applies with dp_m^{nc}/dK = 0 (prices don't depend on K when the constraint is slack). So dp_m*/dK jumps from −1/B (for K < K̄) to 0 (for K > K̄) at K = K̄ — another jump discontinuity. The price LEVEL is continuous but the price sensitivity to K is discontinuous. This complements the P_B1 finding (dp_u*/de_r is also discontinuous at K = K̄).

**P_C3 Overall verdict:** ROBUST. Gap invariance holds for any demand specification (asymmetric, general) and for N markets. The jump discontinuity at K = K̄ is correctly characterized.

---

## [P_W1] — Counterexample Analysis: Welfare

### Attempt 1: Symmetric Fringe — Welfare Comparison Degenerates
**Tried:** e_u = e_r = e (symmetric fringe; A4 fails). Does W^{SEG} = W^{UNI}?
**Result:** SURVIVES (boundary) — Under e_u = e_r and symmetric demand: p_u* = p_r* (from P_C1 with gap = 0), so the segmented equilibrium is identical to the uniform price equilibrium. W^{SEG} = W^{UNI}. This is the boundary case where both regimes coincide — the welfare comparison holds with equality. Not a break; the proposition correctly identifies this as the edge case where A4 binds with equality.

### Attempt 2: Small Fringe Asymmetry — Is the Welfare Loss Small?
**Tried:** Let e_r = e_u + δ for small δ > 0. Does W^{SEG} < W^{UNI} still hold?
**Result:** SURVIVES — Q^{SEG} − Q^{UNI} = a(e_r − e_u)/(2B) · [e_u/(b + e_u) − e_r/(b + e_r)] = a·δ/(2B) · [e_u/(b+e_u) − (e_u+δ)/(b+e_u+δ)]. For small δ: [e_u/(b+e_u) − (e_u+δ)/(b+e_u+δ)] ≈ −b·δ/(b+e_u)² < 0. So Q^{SEG} − Q^{UNI} ≈ −a·b·δ²/[2B·(b+e_u)²] — second-order in δ. The welfare loss is O(δ²) for small asymmetry. This is the correct result: welfare loss from segmentation is small when fringe asymmetry is small.

### Attempt 3: Large Demand Asymmetry — Can Welfare Reverse?
**Tried:** Asymmetric demand with a_r >> a_u (large rural market). With e_r > e_u (A4), does the welfare comparison reverse?
**Result:**
```
⚠️  BREAKS — Large demand asymmetry can change the welfare direction
Counterexample: a_u = 1, b_u = b_r = 1, e_u = 0.5, e_r = 2, a_r = 10, K = 3.
   B = 1 + 0.5 + 1 + 2 = 4.5. K̄ = (1 + 10 − 4.5·c)/2. Set c = 0.5:
   K̄ = (11 − 2.25)/2 = 4.375. K = 3 < K̄. ✓
   p^{U*} = (a_u + a_r − K)/B = (11 − 3)/4.5 = 8/4.5 ≈ 1.78
   p_u* = (a_u + a_r − 2K)/(2B) + a_u/[2(b_u+e_u)] = (11−6)/9 + 1/[2(1.5)] = 5/9 + 1/3 ≈ 0.556 + 0.333 = 0.889
   p_r* = 5/9 + a_r/[2(b_r+e_r)] = 5/9 + 10/[2(3)] = 5/9 + 5/3 ≈ 0.556 + 1.667 = 2.222
   
   Note: p_r* > p_u* here! Under asymmetric demand with a_r >> a_u, the dominant
   firm charges MORE in rural than urban despite stronger rural fringe (e_r > e_u)
   because the rural market is much larger (a_r >> a_u). This is the A4 failure
   case identified in P_C1.
   
   Moreover, the welfare comparison:
   Q^{SEG} = K + e_u·p_u* + e_r·p_r* = 3 + 0.5·0.889 + 2·2.222 = 3 + 0.445 + 4.444 = 7.889
   Q^{UNI} = K + (e_u + e_r)·p^{U*} = 3 + 2.5·1.78 = 3 + 4.44 = 7.44
   Q^{SEG} > Q^{UNI} in this case! The welfare comparison REVERSES: W^{SEG} > W^{UNI}.

What fails: P_W1 claims W^{SEG} < W^{UNI} under A4. This example has A4 (e_r > e_u)
   but violates A4' (a_u/(b_u+e_u) < a_r/(b_r+e_r)), so p_r* > p_u*. The dominant
   firm charges more in the rural market, fringe output is higher in the higher-priced
   rural market, and total output under segmentation exceeds uniform pricing output.
Severity: MEDIUM — The welfare result holds under symmetric demand but fails under
   large demand asymmetry that reverses the direction of the price gap.
Fix options:
  Option A: Restrict P_W1 to symmetric demand (already stated) and make this restriction
     prominent. Note that under asymmetric demand, the welfare sign depends on A4'.
  Option B: Restate P_W1 for general demand: W^{SEG} ≶ W^{UNI} depending on whether
     Q^{SEG} ≶ Q^{UNI}. The general condition for W^{SEG} < W^{UNI} is:
     e_u(p_u* − p^{U*}) + e_r(p_r* − p^{U*}) < 0, which holds iff A4' holds.
  Option C: Add A4' as the sufficient condition for P_W1.
```

**Recommended fix:** Adopt Option B/C jointly. Restate P_W1 for symmetric demand (the main case), note that the welfare sign is determined by whether Q^{SEG} ≷ Q^{UNI}, and state A4' as the general condition under which Q^{SEG} < Q^{UNI} (and hence W^{SEG} < W^{UNI}).

### Attempt 4: Welfare with Convex Dominant Firm Cost
**Tried:** C(q) = c·q + (γ/2)·q². Does the welfare comparison change direction?
**Result:** SURVIVES — Under binding capacity, total dominant firm output is K in both regimes regardless of the cost function. The welfare comparison reduces to fringe output and consumer surplus, which are determined by prices p_m* (segmented) vs. p^{U*} (uniform). Prices are still determined by the same structural formula with c replaced by c + γK (effective constant MC under binding constraint). The welfare comparison result is unchanged.

### Attempt 5: Consumer-Only Welfare (No Fringe Profits)
**Tried:** Suppose welfare is defined as consumer surplus only (ignoring fringe and dominant firm profits). Does the sign of ΔCS_total match the sign of ΔW_total?
**Result:** SURVIVES — ΔCS_total = CS_u^{SEG} − CS_u^{UNI} + CS_r^{SEG} − CS_r^{UNI}. Under symmetric demand and A4': p_u* > p^{U*} → CS_u falls; p_r* < p^{U*} → CS_r rises. The net consumer surplus effect: ΔCS_total is negative (shown by the Q^{SEG} < Q^{UNI} result — fewer total units consumed means lower aggregate consumer surplus). Consumer welfare is also lower under segmentation. The distributional result (urban consumers lose, rural consumers gain) holds within the consumer surplus comparison.

### Attempt 6: Fringe Market Power (Cournot N Firms)
**Tried:** Replace price-taking fringe with N Cournot fringe firms (not atomistic) in the rural market. Does P_W1 direction reverse?
**Result:** INCONCLUSIVE — With strategic fringe firms, the equilibrium concept changes (the dominant firm's residual demand is different, and fringe firms' best responses depend on each other and on the dominant firm's price). The welfare comparison in a dominant-Cournot-fringe model is a different model; it is not a robustness check for P_W1 but rather a distinct model specification. Note for Stage 10 as a robustness discussion.

**P_W1 Overall verdict:** CONDITIONAL — Under symmetric demand (the paper's main case), P_W1 is robust. Under asymmetric demand with demand reversal (a_r >> a_u causing p_r* > p_u* despite A4), the welfare comparison reverses. Fix: restrict to symmetric demand or state A4' as the sufficient condition for the welfare loss result. The core insight — the mechanism linking fringe competition, price structure, and welfare — is correct; the sign condition requires A4'.

---

## [P_B1] — Counterexample Analysis: Boundary Result (Revised)

### Attempt 1: Verify the Jump Discontinuity
**Tried:** Compute dp_u*/de_r from below and above K = K̄.
**Result:** SURVIVES — As shown in Stage 7 (Step 5 of P_C3 sketch): dp_u*/de_r → −c/(2B) < 0 from below K̄; dp_u*/de_r = 0 for K ≥ K̄. The jump discontinuity of size c/(2B) is confirmed. The corrected P_B1 statement is verified.

### Attempt 2: Does the Discontinuity Depend on c > 0?
**Tried:** Let c → 0 (zero marginal cost for dominant firm).
**Result:** SURVIVES (with degeneration) — As c → 0: the jump size c/(2B) → 0. The discontinuity vanishes at c = 0. This makes economic sense: if the dominant firm has zero marginal cost, the capacity constraint value K̄ = (a_u + a_r)/2 > 0 and the mechanism persists, but the switch point for the comparative static becomes continuous in the limit. Note as edge case: zero MC dominant firm has a continuous cross-market effect at K = K̄.

### Attempt 3: Does the Jump Represent a True Non-Monotonicity?
**Tried:** Is there a K* ∈ (0, K̄) where dp_u*/de_r achieves a local extremum?
**Result:** SURVIVES — dp_u*/de_r = −(a_u + a_r − 2K)/(2B²) is monotone increasing in K (becomes less negative as K increases). No interior extremum exists. The comparative static is monotonically increasing in K from its minimum at K → 0 (equal to −(a_u + a_r)/(2B²)) to the jump at K = K̄.

**P_B1 Overall verdict:** ROBUST (corrected). The revised P_B1 statement (price levels continuous, dp_u*/de_r discontinuous at K = K̄) is confirmed. The jump size c/(2B) vanishes as c → 0.

---

## Consolidated Fixes Required

The following fixes are REQUIRED before the paper can proceed:

| Counterexample | Affected Proposition | Recommended Fix | Fix Type |
|---------------|---------------------|----------------|---------|
| CE1: Asymmetric demand reverses sign of price gap | P_C1 | Replace A4 with A4': a_u/(b_u+e_u) > a_r/(b_r+e_r); note A4' reduces to A4 under symmetric demand | ASSUMPTION |
| CE2: Asymmetric demand reverses welfare comparison | P_W1 | Add A4' as sufficient condition for W^{SEG} < W^{UNI}; restrict main result to symmetric demand; state general condition | SCOPE + ASSUMPTION |
| CE3: P_B1 wrong limit for dp_u*/de_r | P_B1 | Already corrected in Stage 7; use revised statement (jump discontinuity of c/(2B) at K = K̄) | CLAIM |

---

## Edge Cases to Document in the Paper

| Edge Case | Proposition | How to Handle |
|-----------|------------|--------------|
| e_r → ∞: dominant firm exits rural market (H2 fails) | P_E1, P_C1, P_C2 | Remark: "For e_r < ē_r ≡ a_r/p_r* − b_r, the interior solution exists; above this threshold, the dominant firm exits the rural market and the model reduces to a single-market problem." |
| e_u = e_r (symmetric fringe): price gap = 0 | P_C1, P_W1 | Boundary case: equilibrium exists (equal prices), welfare comparison is trivially equal. State as Remark following P_C1. |
| K = K̄ − ε (barely binding constraint): all effects are O(ε) but non-zero | P_C2, P_B1 | Note in Section 4 (model discussion): "The cross-market mechanism is active for all K ∈ (0, K̄) and is quantitatively larger for smaller K (tighter capacity constraint)." |
| c → 0: jump discontinuity in dp_u*/de_r vanishes | P_B1 | Remark: "The discontinuity at K = K̄ has size c/(2B) and vanishes in the limit of zero marginal cost." |
| N > 2 markets: gap invariance to K holds for all N | P_C3 | Remark or extension section: "The price gap invariance result extends immediately to N markets with a common binding capacity constraint, since the K-dependent term (c + λ*)/2 is common to all N prices and cancels in pairwise differences." |
| Convex dominant firm cost: P_C2 survives (A7 not needed for the binding regime) | P_C2 | Footnote: "Under a binding capacity constraint, total output equals K regardless of the cost function's convexity; hence P_C2 holds for any increasing cost function C(q) with C'(K) < min_m P̄_m." |

---

## Robustness Summary

**Overall robustness assessment:** MODERATE to STRONG

The three CORE propositions survive adversarial testing with one required fix each. P_C2 is the most robust — the cross-market comparative static dp_u*/de_r < 0 and the price gap widening d(p_u* − p_r*)/de_r > 0 hold under asymmetric demand, asymmetric demand scales, and convex dominant firm cost. P_C3 (gap invariance to K) is also robust across all demand specifications and number of markets. P_W1 is the most fragile — its sign depends on whether the demand asymmetry favors the same direction as the fringe asymmetry; the fix (require A4' rather than A4) is straightforward and well-motivated. The most important finding from Stage 8 is that A4' (a_u/(b_u+e_u) > a_r/(b_r+e_r)) is the correct general condition for both the price gap sign (P_C1) and the welfare loss result (P_W1), while A4 (e_r > e_u) alone is sufficient only under symmetric demand. This refinement strengthens the paper.
