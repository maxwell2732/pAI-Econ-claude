# Price Discrimination

## Model Family Name
Price Discrimination — First, Second, and Third Degree (Pigou 1920; Mussa-Rosen 1978; Varian 1985)

## Canonical Economic Question
When a firm has market power and consumers differ in their willingness to pay, how can the firm capture consumer surplus through differential pricing, and what are the welfare implications of each pricing strategy?

## When to Use This Model
- When a monopolist (or firm with market power) faces consumers with heterogeneous valuations
- When the firm can distinguish consumers (or induce self-selection) and charge different prices to different buyers
- When analyzing why the same product is sold at different prices in different markets or to different groups
- When the question concerns the welfare effects of price discrimination vs. uniform pricing
- When studying versioning, bundling, quality ladders, or menu design as discrimination instruments

## Typical Primitives
**Common structure:**
- Single seller with cost C(q) (often constant marginal cost c)
- Continuum of buyers with types θ ∈ [θ_L, θ_H] drawn from distribution F(θ)
- Buyer type θ has valuation v(θ, q) for quantity q; single-crossing: ∂²v/∂θ∂q > 0 (higher types value quality more)

**Third-degree PD:**
- Two separate markets with demand functions D₁(p) and D₂(p); firm can set different prices p₁, p₂ in each market
- No resale between markets (market segmentation is feasible)

**Second-degree PD (versioning / screening):**
- Firm cannot observe θ; offers a menu {(qⱼ, tⱼ)} of quantity-payment pairs; buyers self-select
- Equivalent to the screening model — see `screening.md` for full treatment
- Key additions here: quality ladders, versioning (degraded good = damaged good strategy), and bundling

**First-degree PD (perfect PD):**
- Firm observes each buyer's type θ perfectly; charges each buyer exactly their surplus
- Buyer gets zero surplus; firm extracts all gains from trade

## Timing
**Third-degree:**
1. Firm observes which market each buyer belongs to (or uses observable characteristics as proxy)
2. Firm sets price pₘ in each market m
3. Buyers in each market decide whether to purchase

**Second-degree:**
1. Firm designs menu {(qⱼ, tⱼ)}
2. Buyers observe their own type, choose from the menu
3. Firm provides quantity and collects payment

**First-degree:**
1. Firm makes a take-it-or-leave-it offer to each buyer at price = v(θ)
2. Buyer accepts (earns zero surplus) or rejects

## Information Structure
- **First-degree:** Firm has complete information about each buyer's valuation
- **Second-degree:** Firm knows the distribution F(θ) but not individual types; screening through self-selection
- **Third-degree:** Firm can observe a signal (group membership, geography, student status) that is correlated with θ but does not observe θ exactly

## Agent Heterogeneity
- Buyers differ in type θ (valuation for quality or quantity)
- In third-degree PD: groups may differ in the entire demand distribution (not just mean)
- In second-degree PD: single-crossing condition is the key structural assumption

## Choice Variables
- Firm: prices {pₘ} (third-degree), menu {(qⱼ, tⱼ)} (second-degree), or individual offers (first-degree)
- Buyers: purchase decision and quantity (third-degree), menu choice (second-degree)

## Constraints
- **Third-degree:** Arbitrage constraint — markets must be physically or legally separated; no resale
- **Second-degree (IC):** Incentive compatibility — each type must weakly prefer the bundle designed for them: v(θ, qⱼ) − tⱼ ≥ v(θ, qₖ) − tₖ for all k ≠ j
- **Second-degree (IR):** Individual rationality — each type must prefer participating: v(θ, qⱼ) − tⱼ ≥ 0
- **First-degree:** IR only — buyer participates iff v(θ) − p(θ) ≥ 0

## Equilibrium Concept or Solution Concept
- **Third-degree:** Monopoly pricing in each market; set MR₁(p₁) = MR₂(p₂) = MC; higher price in less elastic market
- **Second-degree:** Mechanism design / screening; optimal menu satisfies IC and IR; distortion at the bottom (lowest type gets inefficient quantity or excluded); rent extraction at the top (no distortion but information rent paid)
- **First-degree:** Socially efficient quantity produced for every type (no distortion); firm captures all surplus; outcome is first-best quantity with full rent extraction

## Main Mechanism

**Third-degree PD — inverse elasticity rule:** A price-discriminating monopolist charges higher prices in markets where demand is less elastic. The condition MR₁ = MR₂ = MC implies (p₁ − MC)/p₁ = 1/|ε₁| and (p₂ − MC)/p₂ = 1/|ε₂|: the Lerner index is higher in the less elastic market. Welfare relative to uniform pricing is ambiguous: if output in low-elasticity market falls and output in high-elasticity market rises, welfare may increase (more transactions) or decrease (resources devoted to price separation).

**Second-degree PD — screening / versioning:** Because the firm cannot distinguish types, it distorts quality downward for low types (to reduce the cost of providing incentive rents to high types) and may exclude the lowest types altogether. The information rent paid to high types is the price the firm pays for self-selection. Bundling, versioning (offering a "stripped" version), and block tariffs are implementation tools. See `screening.md` for the full mechanism design treatment.

**First-degree PD:** The firm extracts the entire consumer surplus by making each buyer a take-it-or-leave-it offer at their reservation price. Output is socially efficient (no deadweight loss). The distributional implication is extreme: all gains from trade go to the firm.

**Damaged goods strategy:** A firm may intentionally degrade a high-quality good to create a low-quality version (IBM LaserPrinter E) rather than design a new product — it is cheaper than designing separate products and achieves second-degree PD through versioning.

## Common Propositions
- **Third-degree PD, output effect (Varian 1985):** PD increases welfare iff total output increases; welfare unambiguously falls if PD causes a market to be served at a lower quantity than uniform pricing, and unambiguously rises only if PD allows a previously unserved market to be served
- **Third-degree PD, profit:** PD always weakly increases firm profit (uniform price is a special case of the PD menu)
- **Second-degree PD, no distortion at top:** The highest type always receives the socially efficient quantity; all distortions are downward toward the bottom
- **First-degree PD, efficiency:** First-degree PD achieves the first-best allocation (no deadweight loss) but maximizes redistribution toward the firm
- **Damaged goods:** A firm may optimally produce a degraded good even at positive cost (e.g., Intel's 486SX with disabled coprocessor) to achieve price discrimination without separate design costs

## Comparative Statics Usually Available
- Higher dispersion of types → more valuable to price-discriminate (larger gains from segmentation)
- Lower marginal cost of quality → less distortion in second-degree PD menu
- More markets in third-degree PD → total output more likely to rise; welfare more likely to improve
- Better signal of type (closer to first-degree) → higher firm profit, lower total consumer surplus
- Stronger arbitrage (easier resale) → third-degree PD breaks down; price converges to uniform

## Welfare Implications
- **First-degree:** Pareto efficient (no DWL) but extreme redistribution; often used as a benchmark, not a realistic policy target
- **Second-degree:** Inefficient for low types (quality distortion, exclusion); information rents reduce profit relative to first-degree; often welfare-superior to uniform pricing because more types served
- **Third-degree:** Ambiguous welfare effect; depends on whether previously excluded markets become served; if all markets were already served, PD redistributes but may reduce welfare
- **Bundling:** Mixed bundling can dominate separate pricing when valuations are negatively correlated across goods

## Common Modeling Pitfalls
- Treating second-degree and third-degree PD as the same — they differ in the observability of type and the mechanism (screening menu vs. market segmentation)
- Ignoring that third-degree PD requires arbitrage prevention — resale eliminates PD
- Applying second-degree PD framework without single-crossing — if ∂²v/∂θ∂q ≤ 0, standard screening results fail
- Assuming first-degree PD is achievable in practice — it requires complete information about each buyer's valuation, which is unrealistic in most settings

## How to Extend the Model
- **Nonlinear pricing / two-part tariffs:** T(q) = A + p·q; access fee A extracts surplus; per-unit price p can be set at MC for efficiency
- **Bundling:** firm offers multiple products; negative correlation in valuations across goods makes bundling profitable even when valuations are uncorrelated with costs
- **Intertemporal PD:** firm sells over time; durable goods monopoly and Coase conjecture — inability to commit to future prices erodes monopoly profit
- **Dynamic pricing / revenue management:** prices adjust over time based on observed demand; airlines, hotels, ride-sharing
- **Personalized pricing (algorithmic PD):** digital data allows near-first-degree PD; connects to privacy regulation and platform economics

## Example Research Questions This Model Can Support
- Do pharmaceutical firms charge higher prices in less price-sensitive markets (e.g., US vs. Europe), consistent with third-degree PD?
- How does the introduction of a student discount affect total enrollment and university revenue — is it welfare-improving?
- Why do software firms offer a free "basic" version and a paid "premium" version rather than a single product at an intermediate price?
- Does allowing international price discrimination in pharmaceuticals reduce or increase access in low-income countries?
- Can a platform's data advantage enable near-first-degree PD, and what are the regulatory implications?

## Closely Related Model Families
- **Screening** (second-degree PD is identical to the screening model — see `screening.md` for full mechanism design treatment)
- **Mechanism Design** (optimal nonlinear pricing is a mechanism design problem: revelation principle applies)
- **Two-Sided Markets** (platforms practice PD across sides — subsidize one side, charge the other)
- **Hotelling / Product Differentiation** (third-degree PD with spatial heterogeneity)
- **Dynamic Optimization** (intertemporal PD and the Coase conjecture require dynamic analysis)

## When This Model Is Not Appropriate
- When the firm has no market power (competitive markets — price equals marginal cost regardless of buyer heterogeneity)
- When resale is costless and arbitrage perfectly enforces one price (third-degree PD breaks down)
- When consumers are homogeneous — PD adds no revenue relative to uniform pricing
- When the question is about strategic interaction between multiple price-discriminating firms (use oligopoly with heterogeneous consumers)

## Empirical Paper Caution

**Among the most empirically tractable IO models** — price differences across markets, consumers, or time are directly observable, and the model generates clear comparative static predictions.

Two failure modes observed in practice:
1. **Attributing any price variation to PD without testing the mechanism:** Prices vary across markets for many reasons (cost differences, competition, regulation). Identifying PD requires showing that (a) the firm has market power, (b) marginal costs do not differ, and (c) price differences correlate with demand elasticity differences — not just group membership.
2. **Conflating second-degree and third-degree PD in the model:** If the paper studies versioning (quality ladders), the correct model is second-degree PD / screening with IC constraints — not third-degree market segmentation. The welfare implications differ.

**When price discrimination models are well-suited for empirical papers:**
- The paper exploits exogenous variation in arbitrage costs or market separation to test whether PD emerges (e.g., trade policy creating market borders, platform algorithm changes affecting price visibility)
- The paper estimates demand elasticities in different markets and tests the inverse elasticity rule
- The paper studies versioning or quality ladders and tests whether low-quality products show larger distortions (consistent with second-degree PD)

**AI execution risk:** AI may add a price discrimination framework to any paper studying price variation, even when the variation is driven by costs or competition rather than demand elasticity differences. Require the model section to state explicitly what prevents arbitrage and how demand elasticity differences across groups are identified.
