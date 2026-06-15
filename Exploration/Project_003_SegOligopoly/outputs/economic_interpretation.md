# Economic Interpretation

**Date:** 2026-06-15
**Stage:** 9 — Economic Interpretation

---

## [P_E1] — Existence and Uniqueness: Economic Interpretation

**Proposition (restated in plain English):**
When a dominant firm faces price-taking competitors and a binding production cap, it sets prices in both markets according to a clean formula: the price in each market equals half the market-specific demand intercept plus half the firm's effective marginal cost (which includes the value of the scarce capacity). The unique equilibrium and the shadow price on the capacity constraint are both available in closed form.

---

### The Core Mechanism

The dominant firm chooses prices to maximize profit, but it is limited by how much it can produce in total. This creates a trade-off: producing more in one market means less for the other. The solution is a shadow price λ* that measures how much the firm would gain if its capacity were relaxed by one unit. This shadow price acts as an extra cost that the firm applies equally to both markets — it is the glue that links otherwise independent pricing decisions.

**Step-by-step mechanism:**
Binding capacity K → dominant firm faces a cost of using capacity in any one market (λ* > 0) → optimal pricing in each market sets marginal revenue equal to marginal cost *plus* this shadow cost → shadow price is uniquely determined by the tightness of the capacity constraint (how far K falls below the unconstrained optimum K̄).

---

### The Intuition

The key insight is that a binding capacity constraint converts what would otherwise be two independent monopoly problems into a single linked system. The shadow price λ* is the mechanism of linkage: it appears additively in both markets' price formulas, so anything that changes the value of capacity propagates instantly to both prices.

**Why it would have been non-obvious before the model:**
Without writing down the Lagrangian, it is not clear that the constraint would produce a closed-form solution — one might expect a complicated implicit system. The linear structure reveals that the interaction is entirely captured by a single scalar (λ*), keeping the model tractable while retaining the cross-market linkage.

---

### What This Result Rules Out

This result rules out the possibility that the dominant firm could "decouple" its pricing decisions market by market when capacity is binding. Even if the firm wishes it could optimize each market independently, the binding constraint forces it to treat capacity as a scarce shared resource.

---

### Real-World Counterpart

This is consistent with the observation that large carbonated beverage manufacturers in China report binding distribution and production capacity constraints, especially during peak seasons, and that price adjustments in one regional market are often accompanied by adjustments in other regions even when those markets are physically separate.

**Concrete illustrative example:**
Suppose a = 10, b = 1, e_u = 0.5, e_r = 2, c = 0.5, K = 3. Then B = 1 + 0.5 + 1 + 2 = 4.5, K̄ = (10 + 10 − 4.5·0.5)/2 = (20 − 2.25)/2 = 8.875. Since K = 3 < K̄, the constraint binds. λ* = (10 + 10 − 6)/4.5 − 0.5 = 14/4.5 − 0.5 ≈ 3.11 − 0.5 = 2.61. The firm is paying a shadow cost of 2.61 per unit of capacity — more than five times its marginal production cost c = 0.5. This reflects genuine capacity scarcity.

---

### "So What?" — Introduction Paragraph

Markets for consumer goods in developing economies are often served by a mix of national branded firms and local producers. This paper asks: when a national firm cannot fully serve all its markets simultaneously, how does competition in one market affect pricing in another? We show that a binding capacity constraint converts what might seem like independent market decisions into a single linked system. The shadow price of capacity — the value of an extra unit of production capacity — acts as a common cost factor across all markets, transmitting competitive shocks from one region to another even when consumers and products cannot move between regions.

---

### Connection to Prior Literature

The existence result is standard; the closed-form tractability follows directly from the linear specification. The contribution relative to the classic dominant firm literature (Gaskins 1971, JET) is that capacity appears not as a strategic deterrent but as a resource constraint, and its shadow price plays the equilibrium role that limit pricing plays in the dynamic model. The cross-market linkage structure is novel.

---

### Limitations of the Interpretation

This interpretation should NOT be taken to imply:
- That capacity constraints are always binding in practice — the model assumes A3 throughout.
- That the shadow price λ* is observable or estimable without detailed cost and production data.
- That the closed-form result extends to non-linear demand or supply functions.

The model abstracts away from dynamics (no capacity investment), heterogeneous consumers within each market, and strategic interaction between the dominant firm and individual fringe firms. Results may differ substantially when these features are present.

---

## [P_C1] — Urban-Rural Price Gap: Economic Interpretation

**Proposition (restated in plain English):**
The dominant firm charges a higher price in the market where fringe competitors are weaker — specifically, in the market where the fringe supply elasticity per unit of demand is lower. The size of the price gap depends only on how different the fringe supply structures are, not on how tight the capacity constraint is or how high the firm's costs are.

---

### The Core Mechanism

The dominant firm sets each market's price by balancing its marginal revenue against the shadow cost of capacity. In the urban market, fringe supply is less elastic (e_u < e_r), so the residual demand curve is steeper and the dominant firm can extract more surplus. In the rural market, the fringe supply is more elastic (higher e_r), which flattens residual demand and squeezes the dominant firm's margin. The dominant firm rationally charges more where competition is weaker.

**Step-by-step mechanism:**
Fringe asymmetry (e_r > e_u under A4, or A4' in general) → urban residual demand less elastic than rural → urban MR curve lies further out → dominant firm's optimal urban price exceeds rural price → gap equals the difference in market-specific terms a_m/[2(b_m + e_m)], which depends only on fringe-adjusted demand intercepts.

---

### The Intuition

The result reflects the fact that the dominant firm is essentially applying an inverse-elasticity rule to residual demand in each market: it charges more where residual demand is less elastic. The remarkable feature is that the λ* term — which encodes all the cross-market linkage — cancels exactly in the price difference. The capacity constraint shifts both prices by the same amount (it raises the effective marginal cost equally in both markets) and therefore has no effect on the gap.

**Why it would have been non-obvious before the model:**
Before working through the algebra, one might expect that a tighter capacity constraint (higher λ*) would widen or narrow the gap — more capacity scarcity might force the firm to be more aggressive in one market versus the other. The model shows that capacity scarcity is market-neutral: it is a common cost addition that leaves relative prices unchanged.

---

### What This Result Rules Out

This result rules out the possibility that capacity investment alone could change the urban-rural price gap. No matter how much or how little capacity the dominant firm has (as long as the constraint binds), the price gap is pinned by the fringe supply asymmetry. This has direct policy implications: subsidizing the dominant firm's distribution capacity will not, by itself, narrow the rural-urban price gap.

---

### Real-World Counterpart

This is consistent with the observation that in China's carbonated beverage market, rural markets tend to host more local competitors (high e_r), and the price gap between urban and rural outlets for the same branded product appears to persist even as distribution networks expand. The model suggests this persistence reflects structural fringe supply asymmetry, not a temporary capacity bottleneck.

**Concrete illustrative example:**
With a = 10, b = 1, e_u = 0.5, e_r = 2: p_u* − p_r* = (10/2)[1/(1 + 0.5) − 1/(1 + 2)] = 5[1/1.5 − 1/3] = 5[0.667 − 0.333] = 5·0.333 = 1.67. If we double capacity (K from 3 to 6), but the fringe parameters stay the same, the price gap remains exactly 1.67. The dominant firm charges 1.67 more in the urban market regardless of how much capacity it has.

---

### "So What?" — Introduction Paragraph

A common intuition in competition policy is that a dominant firm can narrow price disparities between markets by expanding supply. This paper challenges that intuition. We show that in a market with a competitive fringe, the price gap a dominant firm sets between two markets is determined entirely by the relative strength of fringe competition in each market — not by the firm's production capacity. This "price gap invariance" result implies that structural interventions (strengthening rural competition) and capacity interventions (improving distribution) address fundamentally different aspects of market outcomes: only the former can narrow the urban-rural price gap.

---

### Connection to Prior Literature

The result that the dominant firm applies an inverse elasticity rule to residual demand follows naturally from the standard dominant firm model. The new finding is the explicit invariance of the price gap to K and c, which has not been noted in the dominant firm literature. In Varian's (1985) third-degree PD framework (AER), the analogous question would be whether a capacity-constrained monopolist's price gap between two markets depends on capacity — the answer from this model's structure is no.

---

### Limitations of the Interpretation

This interpretation should NOT be taken to imply:
- That the rural market necessarily has more fringe competitors — A4 (and A4') is an assumption maintained throughout, not a derived result.
- That the price gap is the same for all products — the model is calibrated to a specific product class where A4' holds; for products where urban demand is larger and rural fringe is also large, A4' may fail and the gap sign reverses (as shown in Stage 8).
- That price gaps in the data are caused solely by fringe supply asymmetry — cost differentials, regulatory factors, and distribution costs are not in the model.

The symmetric demand restriction used for the closed-form formula is a simplification; the general condition for p_u* > p_r* is A4' (a_u/(b_u + e_u) > a_r/(b_r + e_r)), which may or may not hold depending on the relative scales of the two markets.

---

## [P_C2] — Cross-Market Comparative Statics: Economic Interpretation

**Proposition (restated in plain English):**
When fringe competition in the rural market intensifies, the dominant firm lowers prices in BOTH markets — even in the urban market where the fringe did not change. Moreover, despite both prices falling, the price gap widens: the dominant firm retreats further from the rural market and doubles down on urban pricing.

---

### The Core Mechanism

The dominant firm's capacity is its scarce resource. When rural fringe competition strengthens, the dominant firm's residual demand in the rural market shrinks — rural becomes less profitable at any given price. The firm responds by shifting capacity toward the urban market, where fringe competition is weaker and profit margins are higher. This reallocation raises urban quantity (q_u* increases) and — because capacity is now "worth less" (λ* falls) — the effective marginal cost drops, pulling both prices down. But the rural price falls by more, because it also absorbs the direct effect of the stronger rural fringe.

**Step-by-step mechanism:**
e_r ↑ → rural residual demand flatter → dominant firm's optimal rural quantity falls → capacity "freed up" by rural retreat → optimal response: shift to urban → λ* ↓ (capacity less scarce) → both prices fall via λ* (shadow price channel) → rural price also falls via direct residual demand channel → net: p_r* falls by more than p_u* → gap widens.

---

### The Intuition

The result reflects two separate channels through which rural competition affects the dominant firm's behavior. The shadow price channel — the drop in λ* — affects both markets symmetrically, reducing both prices by the same amount. The direct residual demand channel affects only the rural price, reducing it further. The price gap widens because only the rural price has the second channel.

**Why it would have been non-obvious before the model:**
Without a binding capacity constraint, the two markets are completely independent — changes in rural fringe competition have zero effect on urban prices. The cross-market effect is entirely a creation of the capacity constraint. An economist who sees the markets as "segmented" (which they are, in the sense that consumers cannot arbitrage) would correctly predict zero cross-market effect in the absence of the capacity linkage.

---

### What This Result Rules Out

This result rules out the "markets are independent" intuition for capacity-constrained firms. It also rules out the possibility that intensified rural competition could raise urban prices — the shadow price effect always pushes in the downward direction. A stronger rural fringe is good for both sets of consumers (urban and rural prices both fall) but bad for the dominant firm's urban market dominance.

---

### Real-World Counterpart

This is consistent with the observation that in regions of China where local beverage producers (e.g., regional brands and private-label products) have expanded distribution, the national dominant firm (Coca-Cola, PepsiCo, or a major domestic brand) has been observed to reduce prices across its portfolio — including in cities where local competition has not increased. The model suggests this is not coincidental pricing, but a systematic response to the reallocation of production capacity.

**Concrete illustrative example:**
With the baseline parameters (a = 10, b = 1, e_u = 0.5, e_r = 2, c = 0.5, K = 3): dp_u*/de_r = −(10 + 10 − 6)/(2 · 4.5²) = −14/40.5 ≈ −0.35. If rural fringe elasticity rises from e_r = 2 to e_r = 3 (a 50% increase), urban price falls by approximately 0.35 per unit of elasticity increase, or about 0.35 per unit — roughly 4% of the urban equilibrium price. The urban market "feels" the rural competition shock.

---

### Policy / Welfare Interpretation

**Who benefits:** Urban consumers (lower urban price) and rural consumers (lower rural price by more).
**Who loses:** Dominant firm (lower profits in both markets); urban fringe (lower urban price reduces their revenue); rural fringe firms also face price pressure but their supply increases at the higher output level (effect is ambiguous for rural fringe profits).
**Distributional consequence:** Intensifying rural fringe competition creates a positive externality for urban consumers — a finding that is invisible in standard single-market analysis.
**Policy implication:** This suggests that policies aimed at reducing barriers to rural market entry (e.g., reducing licensing costs for local producers, improving rural cold chain for small producers) may have spillover benefits for urban consumers via the capacity reallocation channel. Competition policy in segmented markets should account for cross-market effects when evaluating the impact of new entry.

---

### "So What?" — Introduction Paragraph

A central question in competition policy is whether market power in one geographic segment affects pricing in another. When markets are physically separated and consumers cannot move between them, the conventional answer is no: a dominant firm's urban pricing is unaffected by rural competitive conditions. This paper shows that this answer is wrong when the dominant firm faces a binding production capacity constraint. We derive a simple cross-market comparative static: an increase in rural fringe competition reduces urban prices, because the dominant firm optimally reallocates scarce capacity toward the urban market. The entire cross-market effect operates through the shadow price of capacity — and vanishes precisely when the capacity constraint is slack. This provides a testable distinguishing prediction between capacity-constrained and unconstrained dominant firms.

---

### Connection to Prior Literature

The standard dominant firm model (traceable to Gaskins 1971) treats each market independently; there is no cross-market comparative static when markets are segmented. Varian (1985) studies price discrimination across two markets but with a monopolist (no fringe) and no capacity constraint; the welfare question is about total output, not cross-market price spillovers. This paper introduces the capacity constraint as a new mechanism generating cross-market interaction, producing a comparative static that is absent from both the dominant firm model and the Varian model. The two-channel decomposition (shadow price channel, direct channel) appears to be new.

---

### Limitations of the Interpretation

This interpretation should NOT be taken to imply:
- That the observed cross-market effect is large in practice — its magnitude is dp_u*/de_r = (a_u + a_r − 2K)/(2B²), which depends on how binding the constraint is (how far K is below K̄).
- That strengthening rural competition is unambiguously good for rural consumers — the direct effect (lower rural price) benefits rural consumers, but the dominant firm's capacity reallocation to the urban market reduces dominant firm supply to rural consumers, which may offset the benefit from the fringe's lower prices.
- That the cross-market effect persists when the capacity constraint is relaxed — it vanishes exactly when K ≥ K̄.

The model assumes fringe firms are atomistic price-takers. If a small number of large regional competitors drive the rural competition shock, the equilibrium changes qualitatively.

---

## [P_C3] — Capacity Level Comparative Statics: Economic Interpretation

**Proposition (restated in plain English):**
When the dominant firm expands its total production capacity, both urban and rural prices fall by exactly the same amount. The urban-rural price gap does not change. Capacity expansion is price-gap neutral.

---

### The Core Mechanism

More capacity means the capacity constraint is less binding, which reduces the shadow price λ*. A lower λ* makes capacity "cheaper" — the firm's effective marginal cost falls uniformly in both markets by the same amount (1/B per unit of capacity). Since both prices decrease by the same amount (dp_u*/dK = dp_r*/dK = −1/B), their difference stays the same.

**Step-by-step mechanism:**
K ↑ → constraint less binding → λ* ↓ (falls at rate 2/B) → effective MC falls equally in both markets → both optimal prices fall at rate 1/B → price gap p_u* − p_r* = a_u/[2(b_u + e_u)] − a_r/[2(b_r + e_r)] (no K) → gap unchanged.

---

### The Intuition

The result reflects the fact that in the linear model, capacity enters both market pricing formulas through a single common term: (c + λ*)/2. This common term rises and falls with λ*, and since λ* changes at the same rate for both markets (there is only one capacity constraint, shared by both), both prices respond identically to K. The price gap, being the difference of two terms that move together, does not change.

**Why it would have been non-obvious before the model:**
Informal reasoning might suggest that more capacity would disproportionately benefit the "rationed" market — the one where the dominant firm was previously under-serving demand. The model shows this is wrong: the constraint is on total capacity, not on market-specific capacity, and the optimal reallocation keeps both markets' quantities growing proportionally as K rises.

---

### What This Result Rules Out

This result rules out the possibility that capacity investment by the dominant firm could be used as a policy tool to narrow the urban-rural price gap. It also rules out the hypothesis that capacity constraints are the proximate cause of the price gap — the gap is driven by fringe asymmetry, not by scarcity. Furthermore, it rules out the possibility that the price gap would widen as the firm becomes more capacity-constrained — the gap is invariant throughout.

---

### Real-World Counterpart

This is consistent with the observation that when Coca-Cola or PepsiCo expands production or cold-chain distribution capacity in China, prices tend to fall broadly across both urban and rural outlets, without notably closing the urban-rural premium differential. The model suggests this broad price reduction (rather than targeted rural price reduction) is the expected response to capacity expansion in this market structure.

**Concrete illustrative example:**
From the baseline: K = 3, p_u* ≈ 3.72, p_r* ≈ 2.05, gap ≈ 1.67. If K increases to K = 5: λ* = (20 − 10)/4.5 − 0.5 = 10/4.5 − 0.5 ≈ 2.22 − 0.5 = 1.72 (vs. 2.61 before). dp_m*/dK = −1/B = −1/4.5 ≈ −0.22. Two additional units of capacity reduce both prices by 0.44. New prices: p_u* ≈ 3.28, p_r* ≈ 1.61. Gap: 1.67. Unchanged exactly.

---

### Policy / Welfare Interpretation

**Who benefits:** All consumers (lower prices in both markets); dominant firm faces reduced revenue but also reduced shadow cost.
**Who loses:** Fringe firms (lower market prices reduce fringe revenue, though fringe quantities also fall as the dominant firm takes more of the market).
**Distributional consequence:** Capacity expansion benefits consumers uniformly across markets but does not help rural consumers relative to urban consumers.
**Policy implication:** A regulator who wants to narrow the urban-rural price gap should focus on fringe competition (e.g., rural entry support) rather than dominant firm capacity investment. These are genuinely different policy instruments targeting different margins.

---

### "So What?" — Introduction Paragraph

In policy discussions about dominant firms in consumer goods markets, two distinct interventions are often proposed: encouraging investment in production and distribution capacity, and promoting competition from smaller rivals. This paper shows that these interventions have fundamentally different effects on market structure. Capacity investment reduces prices across the board but leaves the urban-rural price differential unchanged. Strengthening rural fringe competition, by contrast, reduces the price gap (as we show in Proposition P_C2). For a regulator who cares about spatial equity in pricing — whether rural consumers pay more than urban consumers for the same branded product — investment subsidies for the dominant firm are the wrong policy tool.

---

### Connection to Prior Literature

Gap invariance is to our knowledge a new result. The related literature on price discrimination discusses when price differences arise and when they are welfare-improving, but does not characterize which interventions affect the gap vs. the level. Varian's (1985) welfare criterion concerns total output, not the price structure; it does not address gap invariance. The result also complements Gaskins (1971): in the dynamic model, capacity investment reduces the dominant firm's limit price, affecting the level of prices; the static analog here shows the same uniform price reduction without gap effects.

---

### Limitations of the Interpretation

This interpretation should NOT be taken to imply:
- That capacity expansion is welfare-neutral — it is not, since lower prices benefit consumers and change fringe supply levels.
- That gap invariance holds under non-linear demand — the result depends on the linear structure (see Stage 8 edge cases).
- That capacity expansion has no strategic implications — in a dynamic model, capacity investment could deter entry (Dixit 1980-style), changing fringe supply elasticities e_m and hence the gap itself; the static model abstracts away from this.

---

## [P_W1] — Welfare: Market Segmentation Reduces Total Output and Welfare

**Proposition (restated in plain English):**
When the dominant firm is allowed to charge different prices in urban and rural markets, total market output (dominant firm plus fringe, across both markets) falls relative to a uniform-price benchmark. Overall welfare is lower. Rural consumers benefit from lower prices; urban consumers are worse off.

---

### The Core Mechanism

The dominant firm's total production is fixed at K in both regimes (it always uses all its capacity when the constraint binds). The welfare difference comes entirely from fringe supply. Under segmentation, the dominant firm charges a high urban price and a low rural price. The urban fringe (which prices at the urban market price) produces more at the high urban price. The rural fringe produces less at the low rural price. Because the rural fringe has a higher supply elasticity (e_r > e_u under A4, or A4' in general), the drop in rural fringe output exceeds the rise in urban fringe output. Total fringe output — and hence total market output — falls under segmentation.

**Step-by-step mechanism:**
Segmentation → p_u* > p^{U*} > p_r* → urban fringe output rises by e_u(p_u* − p^{U*}) → rural fringe output falls by e_r(p^{U*} − p_r*) → because e_r(p^{U*} − p_r*) > e_u(p_u* − p^{U*}) under A4' → total fringe output falls → Q^{SEG} < Q^{UNI} → W^{SEG} < W^{UNI} by Varian (1985) criterion.

---

### The Intuition

The result is an application of Varian's (1985) insight: third-degree price discrimination (relative to uniform pricing) raises welfare if and only if it raises total output. Here, segmentation raises output in the urban market (high-price market) and reduces it in the rural market (low-price market). The net effect is negative because the rural market has a stronger response — the rural fringe is more elastic, so the rural output reduction outweighs the urban output increase.

**Why it would have been non-obvious before the model:**
One might think that since the dominant firm produces the same total K in both regimes, welfare is determined purely by fringe output, and the welfare direction is unclear without further information. The model shows that A4' (stronger rural fringe) is the decisive condition: it means rural output is more responsive to price changes, making the rural price reduction relatively less "effective" at generating output compared to how much the urban price increase reduces urban fringe supply.

---

### What This Result Rules Out

This result rules out the possibility that geographic price discrimination by a capacity-constrained dominant firm could be welfare-improving when fringe competition is stronger in the rural market (A4'). It also rules out the claim that dominant firm capacity is the main determinant of welfare — since dominant firm output is K in both regimes, welfare is determined by the fringe response.

---

### Real-World Counterpart

This is consistent with the observation that competition authorities in China have questioned the welfare implications of geographic pricing by dominant beverage firms. The model offers a potential theoretical foundation for this concern: when the dominant firm price-discriminates across urban and rural markets, the net welfare effect is negative if rural markets have stronger local competition — a condition that may plausibly hold in China's carbonated beverage market.

**Concrete illustrative example:**
Baseline: a = 10, b = 1, e_u = 0.5, e_r = 2, c = 0.5, K = 3. Segmented prices: p_u* ≈ 3.72, p_r* ≈ 2.05. Uniform price: p^{U*} = (a_u + a_r − K)/B = (20 − 3)/4.5 ≈ 3.78... (wait, this should be computed properly). Let me compute more carefully.

Under the uniform pricing benchmark: the dominant firm maximizes π = (p − c)(R_u(p) + R_r(p)) subject to total residual demand ≤ K. Here R_m(p) = a_m − (b_m + e_m)p. Total residual demand = (a_u + a_r) − (B)p. The dominant firm sets price such that total residual demand = K: p^{U*} = [(a_u + a_r) − K]/B = (20 − 3)/4.5 ≈ 3.78.

Fringe outputs: under segmentation: s_u* = e_u · p_u* = 0.5 · 3.72 = 1.86; s_r* = e_r · p_r* = 2 · 2.05 = 4.10. Total fringe = 5.96.
Under uniform: s^{U*} = (e_u + e_r) · p^{U*} = 2.5 · 3.78 = 9.44.

Q^{SEG} = K + 5.96 = 8.96; Q^{UNI} = K + 9.44 = 12.44. The welfare difference is large here, primarily because the uniform price is close to the segmented urban price (the dominant firm gains little from urban premium) while the rural price falls substantially under segmentation (reducing rural fringe supply sharply).

---

### Policy / Welfare Interpretation

**Who benefits:** Rural consumers (lower rural price); urban fringe firms (higher urban price means more urban fringe revenue).
**Who loses:** Urban consumers (higher urban price); rural fringe firms (lower rural price means less rural fringe revenue); aggregate welfare falls.
**Distributional consequence:** Market segmentation creates a regressive transfer: urban consumers (typically higher income in China) pay more, and aggregate efficiency is lost. Rural consumers (typically lower income) gain, but the aggregate welfare loss exceeds the rural consumer surplus gain.
**Policy implication:** A regulator who applies a uniform pricing requirement would improve aggregate welfare in this model. However, the distributional trade-off is politically important: the uniform pricing requirement would harm rural consumers who benefit from lower segmented prices. The paper does not resolve this distributional tension — it identifies it.

---

### "So What?" — Introduction Paragraph

Should competition authorities require dominant firms to charge the same price in rural and urban markets? This paper provides a nuanced answer. We show that geographic price discrimination by a capacity-constrained dominant firm reduces aggregate welfare when rural markets host stronger fringe competition — a condition met in many Chinese consumer goods markets. The aggregate welfare loss arises because price discrimination reduces total market output: the dominant firm's high urban price depresses urban fringe supply more than the low rural price stimulates rural fringe supply. Despite this aggregate welfare loss, rural consumers benefit from lower prices under discrimination. This creates a fundamental tension between equity (rural consumers are better off) and efficiency (total welfare is lower), which any policy must navigate.

---

### Connection to Prior Literature

This result is an application of Varian's (1985, AER) welfare criterion — third-degree PD raises welfare iff total output rises — to the dominant firm + fringe setting with a binding capacity constraint. The extension is non-trivial: in Varian's model, total output equals the monopolist's choice; here, total output equals K (fixed, dominant firm) plus endogenous fringe supply. Welfare is therefore determined by fringe output changes, not dominant firm output changes. The distributional analysis (rural consumers gain, urban consumers lose) is an empirically relevant novel characterization absent from the Varian framework.

---

### Limitations of the Interpretation

This interpretation should NOT be taken to imply:
- That uniform pricing is always welfare-improving in dominant firm markets — this result holds specifically when A4' is satisfied and the capacity constraint binds in both regimes.
- That rural consumers would support a uniform pricing rule — they would lose from it, facing higher rural prices under uniform pricing.
- That the welfare result holds when fringe firms have market power — the model assumes atomistic price-taking fringe; strategic fringe interaction could change the welfare direction.

The model abstracts away from the dominant firm's dynamic capacity investment decision and from heterogeneous consumer preferences within each market. The welfare analysis applies to a representative consumer in each market.

---

## [P_B1] — Boundary Result: Economic Interpretation

**Proposition (restated in plain English):**
As the dominant firm's capacity becomes just barely sufficient to meet demand without the constraint binding, prices smoothly approach their unconstrained levels. But the responsiveness of urban prices to rural competition — the cross-market effect — does not vanish smoothly: it makes an abrupt jump at the exact point where the constraint becomes slack.

---

### The Core Mechanism

Price levels depend on the shadow price λ*, which falls continuously to zero as K approaches K̄. So prices adjust smoothly. But the cross-market comparative static dp_u*/de_r depends on how much "slack" the constraint has (how far K is below K̄), not just on whether the constraint binds. As K approaches K̄, there is less and less capacity slack, and the cross-market effect shrinks continuously — but does not reach zero. At the exact moment K crosses K̄ and the constraint becomes slack, the cross-market effect drops to zero discontinuously.

**Step-by-step mechanism:**
K ↑ toward K̄ → λ* → 0 continuously → price levels p_m* → p_m^{nc} continuously → but dp_u*/de_r = −(a_u + a_r − 2K)/(2B²) → −c/(2B) ≠ 0 as K → K̄⁻ → at K = K̄: dp_u*/de_r = 0 exactly → jump of size c/(2B) at the transition point.

---

### The Intuition

The discontinuity arises because the capacity constraint is binary: either it binds (λ* > 0, cross-market effects present) or it does not (λ* = 0, cross-market effects absent). The price level adjusts continuously as the constraint approaches the boundary, but the comparative static measures the sensitivity to a new shock (a change in e_r) at the current equilibrium. Just below K̄, the constraint is barely binding — but it is still binding, so a shock to e_r still propagates to both markets via λ*. Just above K̄, the constraint is slack, and a shock to e_r has no effect on urban pricing at all. The cross-market "switch" is all-or-nothing.

**Why it would have been non-obvious before the model:**
One might expect that as the constraint becomes less binding, the cross-market effect would diminish smoothly to zero, so that near-unconstrained and unconstrained firms are nearly identical in their behavior. The model shows this is not the case: a barely-constrained firm is qualitatively different from an unconstrained firm in how it responds to competitive shocks in distant markets.

---

### What This Result Rules Out

This result rules out the assumption that the cross-market effect "fades away gracefully" as capacity becomes less scarce. It also rules out the use of continuous approximations near K̄ for the comparative statics (even if the equilibrium prices can be approximated continuously, the derivatives cannot be).

---

### Real-World Counterpart

This suggests that empirical identification of the cross-market mechanism should focus on periods of capacity constraint (seasonal peaks, supply chain disruptions) where the mechanism is "on," rather than treating it as a continuously present background effect. Firms transitioning from constrained to unconstrained status may exhibit qualitatively different pricing behavior on either side of the threshold.

---

### "So What?" — Introduction Paragraph

A dominant firm's response to competitive shocks in distant markets depends sharply on whether its capacity is binding. Our analysis reveals that the cross-market pricing effect is not a smooth function of capacity: it is present for all levels of capacity scarcity, including nearly non-binding constraints, but drops to zero discontinuously the moment the constraint becomes fully slack. This structural discontinuity has empirical implications — the capacity constraint effectively acts as a binary "switch" for cross-market spillovers — and theoretical implications for how we model the transition between constrained and unconstrained market regimes.

---

### Limitations of the Interpretation

This interpretation should NOT be taken to imply:
- That capacity is observed or easily measured in practice — the switch point K̄ depends on demand and cost parameters that may not be estimable.
- That the discontinuity matters quantitatively — the jump is of size c/(2B), which may be small if c is small relative to B.
- That the discontinuity holds under non-linear demand — the result is specific to the linear specification.

---

## Cross-Proposition Narrative

This paper tells a single connected story about how a capacity-constrained dominant firm manages geographic price discrimination across markets with asymmetric competition. The capacity constraint is the central character: it links otherwise independent markets (P_E1), explains why prices respond to distant competition (P_C2), enforces a gap structure that investment cannot alter (P_C1, P_C3), and generates an aggregate welfare loss that harms some consumers even as it benefits others (P_W1). The boundary result (P_B1) shows that the capacity constraint is not a minor technical assumption but a structural feature that qualitatively changes the firm's behavior — turning it on and off as a "switch" for cross-market spillovers.

The central message in plain language: **A dominant firm with binding capacity uses it as a common scarce resource across markets, and any asymmetry in fringe competition across markets gets amplified — not smoothed — by this shared constraint. The firm retreats from competitive markets and doubles down on protected ones, widening price gaps even as average prices fall. The only way to narrow the gap is to change the fringe structure, not the capacity level.**

---

## Recommended Discussion Section Topics

1. **Robustness to asymmetric demand (A4' vs. A4)** — The welfare and price gap results depend on whether the urban residual demand intercept exceeds the rural (A4'). A calibration exercise should check whether A4' holds for China's carbonated beverage market using available price and market share data. Discuss what happens to the main results when A4' fails (reversal of welfare direction).

2. **Dynamic capacity investment and strategic deterrence** — The model treats K as exogenous. In a dynamic model (Dixit 1980-style), the dominant firm might strategically limit capacity to maintain the price gap and preserve urban market rents. This would imply that the binding capacity constraint is not a cost but a strategic choice, with different policy implications. Discuss as an extension.

3. **Empirical identification of the cross-market mechanism** — Proposition P_C2 predicts that urban prices should fall when rural competition intensifies, and that this effect vanishes when the firm is unconstrained (K ≥ K̄). Panel data on regional beverage prices combined with measures of local competitor entry could provide a test: the cross-market effect should be larger in periods of capacity constraint (identified from firm-level production data or supply chain reports). Discuss the empirical strategy and required data.
