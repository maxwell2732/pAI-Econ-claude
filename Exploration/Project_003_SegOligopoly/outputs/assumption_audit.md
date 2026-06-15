# Assumption Audit

**Date:** 2026-06-15
**Stage:** 5 — Assumption Audit

---

## Extracted Assumptions

### [A1] Market Segmentation

**Statement:** The urban and rural markets are geographically and commercially separated. The per-unit cost of consumer arbitrage τ (buying in the rural market and reselling in the urban market) satisfies τ > p_u* − p_r* > 0, so no consumer arbitrage occurs in equilibrium.

**Where used in model:** Section 10 (Maintained Assumptions); motivates why the dominant firm can set p_u ≠ p_r (necessary for third-degree PD)

**Q1 — Necessity:** NECESSARY
**Justification:** Without market segmentation (τ = 0), arbitrage destroys price differences and forces the dominant firm to a uniform price. Third-degree PD requires no-arbitrage as a prerequisite.

**Q2 — Economic motivation:** STRONG
**Real-world counterpart:** China's urban and rural beverage distribution channels are structurally separated: urban supermarkets / convenience stores (KA channels) operate on centralized procurement from national distributors, while rural retail is served by regional distributors and small kiosks through cold-chain logistics networks that are expensive to operate across regions. Consumer-level arbitrage (buying cheap rural product to resell in urban) is impractical at scale due to cold-chain handling requirements, small lot sizes, and transportation cost relative to the price gap (typically ¥0.5–2 per 500ml bottle).

**Q3 — Standard in literature:** STANDARD
**Notes:** No-arbitrage is the universal precondition for third-degree PD in the literature (Varian 1985; Schmalensee 1981; Tirole 1988, Ch. 3). Every paper in this tradition assumes it.

**Q4 — What breaks if relaxed:** If τ falls below the equilibrium price gap (p_u* − p_r*), the dominant firm must compress the gap to τ — the price gap is bounded above by the arbitrage cost. In the limit τ → 0, the model collapses to the uniform-price counterfactual. A partial segmentation model (where τ is a finite parameter) would generate a richer welfare comparison but at the cost of an additional parameter.

**Referee risk:** MEDIUM — A referee may note that e-commerce (JD, Taobao) is eroding urban-rural segmentation. Suggested response: the model applies to the traditional channel period (2000–2018); a robustness section with partial arbitrage cost τ addresses the e-commerce erosion concern.

**Binding:** YES

---

### [A2] Dominant Firm Cost Advantage

**Statement:** The dominant firm has constant marginal cost c that is strictly lower than the fringe's effective marginal cost at any equilibrium quantity. In the linear model: c < p_m* for all m ∈ {u, r}, where p_m* is the fringe's supply-weighted marginal cost at equilibrium supply s_m* = e_m · p_m*.

**Where used in model:** Section 4 (Preferences), Section 5 (Action Spaces, existence of interior solution), Section 10 (A2)

**Q1 — Necessity:** NECESSARY
**Justification:** Without a cost advantage, the dominant firm has no positive profit margin and no incentive to participate. The entire dominant firm structure presupposes a firm with lower costs (or higher quality / brand value) that gives it market power over the fringe.

**Q2 — Economic motivation:** STRONG
**Real-world counterpart:** Coca-Cola and PepsiCo have significantly lower per-unit production costs than regional Chinese brands due to global procurement scale, dedicated bottling lines, and brand investment amortized over hundreds of billions of units. Their cost advantage in variable production cost is well-documented in industry analyses.

**Q3 — Standard in literature:** STANDARD
**Notes:** The dominant firm model by construction assumes the dominant firm is more efficient — otherwise it would not be dominant. This assumption requires no special defense.

**Q4 — What breaks if relaxed:** If c ≥ p_m* for some market m (dominant firm as expensive as or more expensive than the fringe at equilibrium), the dominant firm exits market m (q_m* = 0). If c ≥ min_m p_m*, the model degenerates to a competitive market entirely supplied by the fringe.

**Referee risk:** LOW

**Binding:** YES (necessary for positive dominant firm profit and market participation)

---

### [A3] Binding Capacity Constraint

**Statement:** The dominant firm's total capacity K satisfies K < K̄ ≡ [a_u + a_r − (b_u + e_u + b_r + e_r) · c] / 2, where K̄ is the sum of the dominant firm's unconstrained optimal residual demand quantities in the two markets. This ensures λ* > 0 and the two markets are linked.

**Where used in model:** Section 5 (Action Spaces, KKT conditions), Section 6 (Outcome function for λ*), Section 10 (A3); this is the sole source of cross-market interaction.

**Q1 — Necessity:** NECESSARY (load-bearing)
**Justification:** This is the paper's central assumption. If K ≥ K̄, the constraint does not bind (λ* = 0), and the two markets' FOCs are fully independent. The cross-market comparative static ∂p_u*/∂e_r is exactly zero when λ* = 0. The paper's main mechanism — that rural fringe supply affects urban pricing through the capacity shadow price — vanishes. Without A3, the paper is two separate applications of the dominant firm model.

**Q2 — Economic motivation:** STRONG
**Real-world counterpart:** In China's FMCG sector, beverage firms regularly operate at or near distribution capacity, particularly during peak seasons (summer) or during rural market expansion phases. Coca-Cola China's distribution network expansion (rural reach program, 2002–2012) was explicitly constrained by cold-chain truck fleet capacity and warehouse coverage — the firm could not simultaneously serve urban and rural markets at full unconstrained optimal levels. This is the canonical business context where the binding constraint is empirically realistic.

**Q3 — Standard in literature:** NON-STANDARD
**Notes:** Most dominant firm models do not include a capacity constraint. This is the paper's main technical contribution. Non-standard assumptions require explicit motivation — the economic justification is strong (see Q2) but the referee will ask for it.

**Q4 — What breaks if relaxed:** If K ≥ K̄ (capacity is abundant), the model reduces to the separable dominant firm + third-degree PD model. The paper's contribution disappears. The capacity constraint is a knife-edge: at K = K̄ the constraint binds with λ* = 0 (just binding but no effect); for K < K̄ the mechanism is active; for K ≥ K̄ there is no mechanism. Stage 8 should check robustness to the magnitude of K̄ − K (how far into the binding region does the main proposition's strength vary?).

**Referee risk:** HIGH — The referee will object: "Why should we assume the capacity constraint is binding? Can't Coca-Cola just build more capacity?" Suggested response: (1) The model is a short-run model where capacity is fixed; (2) Capacity expansion is costly and requires long lead times (cold-chain logistics investment); (3) The paper can present both the binding (K < K̄) and non-binding (K ≥ K̄) cases as a comparative statics exercise — the binding case is the interesting one.

**Binding:** YES — THE MOST BINDING ASSUMPTION IN THE MODEL

---

### [A4] Asymmetric Fringe — Rural More Competitive

**Statement:** The aggregate fringe supply elasticity parameter is higher in the rural market: e_r > e_u. Under symmetric consumer demand (a_u = a_r, b_u = b_r), this is sufficient to ensure p_u* > p_r* in equilibrium — the dominant firm charges more in the urban market where fringe competition is weaker.

**Where used in model:** Section 10 (A4); determines the sign of the main comparative static result

**Q1 — Necessity:** NECESSARY for the direction of p_u* > p_r*; NOT necessary for the existence of a binding cross-market interaction.
**Justification:** The comparative static ∂(p_u* − p_r*)/∂e_r is well-defined regardless of the sign of e_r − e_u. A4 is needed only to establish that the equilibrium price gap is positive (urban price higher). Without A4, the price gap could go either way — and the paper would need to characterize both cases.

**Q2 — Economic motivation:** STRONG
**Real-world counterpart:** China's rural carbonated beverage market has a substantially larger and more competitive fringe than urban markets. Hundreds of regional and local soda producers (e.g., Wahaha, Robust, and dozens of provincial brands) have established distribution networks, brand familiarity, and cost advantages in rural areas. In urban markets, multinationals dominate distribution in modern trade channels and local brands have weaker footholds. This asymmetry is consistent with e_r > e_u.

**Q3 — Standard in literature:** STANDARD
**Notes:** Price discrimination papers routinely impose demand or elasticity conditions to sign the direction of price differentials (e.g., "market 1 is more elastic than market 2"). A4 is the supply-side analog and is equally standard.

**Q4 — What breaks if relaxed:** If e_u > e_r (urban fringe is more competitive), the sign of p_u* − p_r* reverses: the dominant firm charges more in the rural market. This is empirically less realistic for China's beverage market but is a valid model outcome — the paper should characterize both cases and let the parameter ordering determine the sign.

**Referee risk:** LOW-MEDIUM — Requires empirical motivation but is consistent with market structure data.

**Binding:** YES for the sign of the main result

---

### [A5] Linear Consumer Demand

**Statement:** Consumer demand in market m is linear: D_m(p_m) = a_m − b_m · p_m, with a_m > 0, b_m > 0.

**Where used in model:** Section 2 (Timing, market clearing), Section 4 (Consumers), Section 6 (closed-form outcomes)

**Q1 — Necessity:** LIKELY DISPENSABLE for qualitative direction of results; NECESSARY for closed-form expressions.
**Justification:** The qualitative comparative static ∂p_u*/∂e_r > 0 holds under general downward-sloping demand (derivable via the Implicit Function Theorem). Linearity delivers closed-form expressions for p_m*, q_m*, and λ*.

**Q2 — Economic motivation:** WEAK
**Real-world counterpart:** Linear demand is a first-order Taylor approximation to any demand function near the equilibrium. There is no structural reason why beverage demand would be exactly linear; it is a technical convenience.

**Q3 — Standard in literature:** STANDARD
**Notes:** Linear demand is the default specification in virtually all textbook and applied IO models. Reviewers expect it and do not object to it as the main specification; non-linear generalizations are typically left to extensions or "Online Appendix."

**Q4 — What breaks if relaxed:** Under constant elasticity demand D_m(p) = A_m · p^{−η_m}, closed-form solutions disappear but comparative statics can still be signed under regularity conditions on elasticity. The main qualitative result is preserved as long as residual demand is log-concave (a standard condition in price discrimination welfare analysis).

**Referee risk:** LOW

**Binding:** NO for qualitative results; YES for closed-form

---

### [A6] Linear Fringe Supply (Upward-Sloping)

**Statement:** Aggregate fringe supply in market m is linear: S_m(p_m) = e_m · p_m, derived from N_m identical fringe firms with quadratic cost c_i^F(q_i) = q_i² / (2g_m).

**Where used in model:** Section 1 (Agent note on fringe), Section 4 (Fringe payoffs), Section 5 (Fringe strategy), Section 6 (outcome variables)

**Q1 — Necessity:** LIKELY DISPENSABLE for qualitative results; NECESSARY for the exact parametric expressions.
**Justification:** Any upward-sloping fringe supply curve S_m'(p) > 0 generates a downward-sloping residual demand R_m'(p) = D_m'(p) − S_m'(p) < 0. The qualitative results hold under this generality; linearity gives algebraic convenience.

**Q2 — Economic motivation:** WEAK (functional form) / STRONG (upward slope)
**Real-world counterpart:** The upward slope of fringe supply is strongly motivated — fringe firms face increasing marginal costs due to limited scale, regional distribution constraints, and diminishing returns to expansion. The specific linear form is a parametric convenience.

**Q3 — Standard in literature:** STANDARD
**Notes:** Linear supply from quadratic costs is the dominant firm model's standard assumption (Carlton-Perloff Ch. 6 uses exactly this specification).

**Q4 — What breaks if relaxed:** Under perfectly elastic fringe supply (S_m'(p) → ∞), the dominant firm loses all market power in that market. Under backward-bending fringe supply (S_m'(p) < 0 for some range), multiple equilibria may arise. The linear upward-sloping supply avoids these pathologies.

**Referee risk:** LOW

**Binding:** NO for qualitative results

---

### [A7] Constant Marginal Cost for Dominant Firm

**Statement:** The dominant firm's cost function is linear: C(q_u, q_r) = c · (q_u + q_r), with constant marginal cost c > 0. There are no economies or diseconomies of scale in production.

**Where used in model:** Section 4 (Dominant firm payoff), Section 5 (FOC derivation), Section 6 (outcome function)

**Q1 — Necessity:** PROBABLY NECESSARY for the clean role of the capacity constraint.
**Justification:** With convex cost C''(·) > 0, the dominant firm's effective marginal cost C'(q_u + q_r) rises with total output, creating a cost-driven cross-market linkage even without the capacity constraint. The capacity constraint's role as the sole cross-market mechanism depends on constant MC. With convex C, both a cost channel and a capacity channel operate simultaneously, complicating attribution.

**Q2 — Economic motivation:** STRONG
**Real-world counterpart:** For a large manufacturer like Coca-Cola operating standardized bottling lines, per-unit variable cost (syrup, packaging, energy) is approximately constant over the range of quantities relevant to this model. Fixed costs (plant, distribution infrastructure) are sunk or capacity-constrained, not variable.

**Q3 — Standard in literature:** STANDARD
**Notes:** Constant MC is the dominant firm model's universal assumption.

**Q4 — What breaks if relaxed:** With C(q) = c·q + (γ/2)·q² (convex cost), the FOC gains an additional term: p_m* − c − γ(q_u* + q_r*) − λ = −R_m/R'_m. The effective cost is c + γK when the constraint binds — adding an endogenous cost effect on top of the capacity shadow price. This is a valid extension but the two channels (cost vs. capacity) cannot be separated without additional structure.

**Referee risk:** LOW-MEDIUM — A referee may suggest the convex cost extension as a robustness check.

**Binding:** YES for the clean identification of the capacity channel as the sole cross-market linkage

---

### [A8] Static Model (One-Shot Pricing)

**Statement:** The game is played once. The dominant firm sets prices (p_u, p_r) once; fringe responds once; payoffs are realized. There is no repetition, learning, or dynamic adjustment.

**Where used in model:** Section 2 (Timing, "Game type: Static")

**Q1 — Necessity:** PROBABLY NECESSARY for the clean optimization problem. A dynamic extension would require modeling fringe entry/exit and the dominant firm's intertemporal pricing strategy (the Gaskins 1971 approach).

**Q2 — Economic motivation:** STRONG
**Real-world counterpart:** Beverage list prices are typically set annually or seasonally; within a pricing period, the dominant firm's price is fixed and the fringe responds. The static model captures one pricing period.

**Q3 — Standard in literature:** STANDARD
**Notes:** All third-degree PD papers are static. Dynamic extensions with endogenous fringe entry are a separate literature (Gaskins 1971; limit pricing models).

**Q4 — What breaks if relaxed:** A dynamic model would introduce intertemporal cross-market effects: the dominant firm's today-prices affect tomorrow's fringe entry and hence tomorrow's residual demand. This would require a Gaskins-style optimal control formulation, substantially complicating the model.

**Referee risk:** LOW

**Binding:** NO — the static framing is appropriate and standard

---

### [A9] Exogenous Fringe Size (No Free Entry)

**Statement:** The number of fringe firms N_m and individual productivity g_m are exogenous. The aggregate fringe supply parameter e_m = N_m · g_m is fixed — fringe firms do not enter or exit in response to prices or profits.

**Where used in model:** Section 1 (fringe firms "Continuum of measure N_m"), Section 5 (fringe strategy), implicit throughout

**Q1 — Necessity:** NECESSARY for the static model to be well-defined.
**Justification:** With free entry and zero-profit condition, the long-run fringe supply becomes perfectly elastic at the break-even price — eliminating the dominant firm's market power entirely (under standard assumptions). Exogenous fringe size is necessary to preserve the dominant firm's market power in a static setting.

**Q2 — Economic motivation:** STRONG (short-run)
**Real-world counterpart:** Entry into beverage manufacturing requires capital-intensive investment (bottling plants, cold-chain logistics, brand building). In the short run (one pricing period), fringe size is fixed. The model is explicitly a short-run equilibrium.

**Q3 — Standard in literature:** STANDARD
**Notes:** Static dominant firm models always take fringe size as exogenous. Dynamic extensions (Gaskins) endogenize fringe entry.

**Q4 — What breaks if relaxed:** With free entry and a zero-profit condition for fringe firms at entry cost F_m^E, the equilibrium N_m is endogenous: fringe firms enter until π_i^{F*} = F_m^E. The equilibrium e_m becomes a function of the dominant firm's price — the dominant firm would internalize the effect of its pricing on fringe entry. This is a valid extension but dramatically changes the model structure.

**Referee risk:** LOW (accepted short-run assumption)

**Binding:** NO for the static framing; YES for a long-run interpretation

---

### [A10] Complete Information

**Statement:** All parameters (a_m, b_m, e_m, c, K) are common knowledge. There is no private information.

**Where used in model:** Section 3 (Information Structure)

**Q1 — Necessity:** PROBABLY NECESSARY for the price leadership equilibrium concept.
**Justification:** Under incomplete information (e.g., dominant firm privately knows its cost c or capacity K), fringe firms must form beliefs and a PBE or BNE is required. The dominant firm's pricing would then serve a signaling function. The clean dominant firm equilibrium assumes away these complications.

**Q2 — Economic motivation:** STRONG
**Real-world counterpart:** In large consumer goods markets, cost structures and market demand are widely known through industry reports (Nielsen, Kantar), competitor pricing is publicly observable at retail, and capacity constraints are evident from market share data.

**Q3 — Standard in literature:** STANDARD
**Notes:** Complete information is the baseline for all price leadership models. Incomplete information extensions (signaling, limit pricing à la Milgrom-Roberts) are a separate literature.

**Q4 — What breaks if relaxed:** Under incomplete information about c (fringe does not observe the dominant firm's cost), the dominant firm may use its price as a signal of cost — introducing a limit pricing motive (Milgrom-Roberts 1982). Under incomplete information about K (fringe does not know the capacity constraint), capacity allocation becomes a signaling device. These extensions add substantial complexity.

**Referee risk:** LOW

**Binding:** NO for the main results; YES for the equilibrium concept

---

## Binding Assumptions Summary

The following assumptions are identified as BINDING — the main results depend on them fundamentally:

| Label | Assumption | Binding Reason |
|-------|-----------|----------------|
| A1 | Market Segmentation | Third-degree PD requires no-arbitrage; without it only uniform pricing is feasible |
| A2 | Dominant Firm Cost Advantage | Without it the dominant firm exits the market; no dominant firm structure |
| A3 | Binding Capacity Constraint | **The load-bearing assumption.** The cross-market mechanism (∂p_u*/∂e_r ≠ 0 via λ*) is exactly zero when K ≥ K̄. Without A3, the model is two separable dominant firm problems and the paper has no contribution. |
| A4 | Asymmetric Fringe (e_r > e_u) | Determines the sign of p_u* − p_r*; necessary for the result that the dominant firm charges more in urban markets |
| A7 | Constant MC | Necessary for the capacity constraint to be the sole cross-market linkage; with convex cost, cost and capacity channels confound each other |

---

## High Referee-Risk Assumptions

| Label | Assumption | Likely Objection | Suggested Response |
|-------|-----------|-----------------|-------------------|
| A3 | Binding Capacity Constraint | "Why assume the constraint binds? Can't the dominant firm expand capacity?" | Present both cases: (i) K ≥ K̄ (separable, no cross-market mechanism — reduces to two separate dominant firm problems); (ii) K < K̄ (binding — the paper's main case). Motivate the binding case with the short-run horizon (capacity is fixed in the pricing period) and empirical evidence of capacity constraints in China FMCG distribution networks. |
| A1 | Market Segmentation | "E-commerce (Taobao, JD.com) is eroding urban-rural segmentation in China." | Scope the paper to the traditional channel era (pre-2018 for beverages); add a comparative static in τ (arbitrage cost) showing that as τ falls, the price gap compresses toward zero — this naturally models e-commerce penetration as a reduction in τ. |
| A3 (again) | Binding Capacity Constraint | "If K̄ is small, the constraint only binds for very small firms — does this describe Coca-Cola?" | K̄ can be arbitrarily large depending on demand parameters. The binding condition K < K̄ is empirically calibratable: at observed market shares and price levels, K̄ can be estimated and compared to Coca-Cola's actual distribution reach. The assumption is testable. |

---

## Hidden Assumptions Found

| Label | Hidden Assumption | Where It Matters |
|-------|------------------|-----------------|
| H1 | Uniqueness of equilibrium | The dominant firm's constrained optimization has a unique solution under A1–A4 (guaranteed by strict concavity of quadratic profit in (p_u, p_r)), but this is not explicitly stated. Must be stated as a Lemma before the main Proposition in Stage 6. |
| H2 | Interior solution: R_m(p_m*) > 0 | The dominant firm must supply a strictly positive quantity in each market. Requires p_m* < a_m/(b_m + e_m) (the choke price of residual demand). Under A3 and A2: p_m* = (c + λ*)/2 + a_m/[2(b_m + e_m)] < a_m/(b_m + e_m) iff c + λ* < a_m/(b_m + e_m), which holds as long as the demand intercept a_m is sufficiently large. Must be stated as a parameter restriction. |
| H3 | Positive capacity shadow price | λ* > 0 requires K < K̄. This is A3, but the boundary condition (what happens at K = K̄ exactly) is not handled — at K = K̄, λ* = 0 and the model degenerates smoothly to the separable case. The paper should note that all results are continuous in K. |
| H4 | No dominant firm market exit | The dominant firm supplies both markets in equilibrium (q_u* > 0 and q_r* > 0). Under the binding capacity constraint, it is possible that the dominant firm optimally serves only one market (corner solution). The parameter restrictions must rule out the corner solution or characterize it separately. Sufficient condition: min_m [a_m − (b_m + e_m)(c + λ*)] > 0 at the equilibrium λ*, which requires the demand intercepts to be large enough relative to costs and capacity shadow price. |
| H5 | Fringe firms are smaller than the dominant firm | The residual demand model only makes sense if the fringe collectively supplies less than total demand at any relevant price: S_m(p_m*) < D_m(p_m*), i.e., e_m · p_m* < a_m − b_m · p_m*. This gives p_m* < a_m/(b_m + e_m), which is identical to H2. |

**Recommendation:** Make H1 (uniqueness) and H2/H4 (interior solution) explicit as maintained assumptions or lemmas. They are easily verified under the stated parameter restrictions.

---

## Assumption Stacking Assessment

**Total explicit assumptions:** 10 (A1–A10)

**Total binding assumptions:** 5 (A1, A2, A3, A4, A7)

**Assumption stacking risk:** MEDIUM

The model imposes five binding assumptions simultaneously, but they are not all doing the same work. Attribution is clear:
- **A1** enables third-degree PD (without it, the model is just a single-price dominant firm problem)
- **A3** creates the cross-market linkage (without it, the two markets are independent — the paper's mechanism disappears)
- **A4** determines the sign of the result (without it, the direction of the price gap is indeterminate)
- **A2 and A7** are structural (define the dominant firm's cost structure) and are standard assumptions that any IO paper would make

The risk of stacking is concentrated in A3: it is simultaneously non-standard, load-bearing, and the hardest to motivate without empirical calibration. If A3 is questioned, the entire paper's mechanism is at stake. The paper should present the case K ≥ K̄ (no constraint) alongside K < K̄ (binding constraint) to show the constraint is doing real work and that the paper's main result is strictly a consequence of A3 rather than a trivial rearrangement of existing results.

---

## Recommendations for Stage 6 (Proposition Generator)

1. **State Lemma 0 (uniqueness and interior solution) before the first Proposition.** Under A1–A4 and H2, the dominant firm's optimization problem has a unique interior solution (p_u*, p_r*) >> 0 with q_u*, q_r* > 0 and λ* > 0. This lemma is proved by strict concavity of the profit function and the binding constraint condition.

2. **Structure propositions around what A3 specifically delivers.** Proposition 1 (equilibrium price gap) should be proved under A3 and then contrasted with the A3 = 0 case (K ≥ K̄). This makes explicit that the paper's contribution is conditional on the binding capacity constraint.

3. **Propose a Comparative Statics Proposition on the capacity level K.** A natural result: ∂(p_u* − p_r*)/∂K — how does the price gap change as capacity becomes less binding (K increases toward K̄)? This proposition would show that as K → K̄, the price gap converges to the separable-model gap (the benchmark), while for K << K̄, the gap is amplified by the capacity shadow price. This directly demonstrates what A3 adds relative to the baseline.

4. **Plan a Welfare Proposition comparing W^{SEG} and W^{UNI} under the binding capacity constraint.** Since both the segmented and uniform-price equilibria face the same K, and both bind at K, total dominant firm quantity is K in both regimes. The Varian welfare test (welfare rises iff total output rises) gives W^{SEG} = W^{UNI} at the dominant firm level — but consumer surplus and fringe profits differ across regimes. The welfare comparison is richer than the standard Varian result and should be a named Proposition.

5. **Add H1, H2, H4 as explicit parameter restrictions in the Stage 6 setup**, either as additional maintained assumptions or as conditions within each proposition statement.
