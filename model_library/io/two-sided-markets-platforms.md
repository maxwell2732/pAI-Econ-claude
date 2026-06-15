# Two-Sided Markets and Platforms

## Model Family Name
Two-Sided Markets / Platform Economics (Rochet-Tirole 2003, 2006; Armstrong 2006)

## Canonical Economic Question
When a platform serves two distinct groups of users whose value depends on participation from the other side (indirect network effects), how should the platform set prices to each side, and why does the price structure (not just the price level) matter?

## When to Use This Model
- When the research involves an intermediary (platform, marketplace, exchange) that connects two or more distinct user groups
- When each side's willingness to pay depends on the size or composition of the other side (indirect network effects)
- When prices to one side are subsidized (zero or negative) while the other side is monetized
- When analyzing competition between platforms for multi-homing vs. single-homing users
- When the question involves platform design: pricing rules, access fees, transaction fees, exclusivity

## Typical Primitives
**Rochet-Tirole (2003) — transaction-based model:**
- Platform serves buyers B and sellers S
- Each buyer i has willingness to pay bᵢ per transaction with a seller; each seller j has benefit sⱼ per transaction with a buyer
- Platform charges per-transaction fees aB (to buyers) and aS (to sellers); total transaction price a = aB + aS
- Number of transactions: D(a) — function of total price level; individual participation depends on aB for buyers, aS for sellers

**Armstrong (2006) — membership model:**
- Two groups: side 1 and side 2; nᵢ agents join platform
- Indirect network effect: agent on side 1 gains α₁ per agent on side 2 (and vice versa)
- Platform charges membership fees p₁ and p₂
- Participation: nᵢ(pᵢ, nⱼ) — increasing in nⱼ (cross-side effect), decreasing in pᵢ

## Timing
**Single platform (monopoly):**
1. Platform announces price structure (aB, aS) or (p₁, p₂)
2. Agents on each side simultaneously decide whether to join
3. Transactions occur; platform collects fees

**Competing platforms:**
1. Platforms simultaneously set price structures
2. Agents choose which platform(s) to join (single-homing or multi-homing)
3. Transactions occur across platforms

## Information Structure
- Platform knows the joint distribution of buyer and seller valuations (or can infer it from demand)
- Agents observe prices on their own side; may or may not observe prices on the other side
- Under incomplete information: platform uses price structure to screen heterogeneous agents (connects to mechanism design)

## Agent Heterogeneity
- Buyers differ in transaction value bᵢ; sellers differ in transaction benefit sⱼ
- Heterogeneity in multi-homing costs: some agents join multiple platforms, others single-home
- Competitive bottleneck (Armstrong 2006): one side single-homes (e.g., consumers), the other multi-homes (merchants); the single-homing side is the "bottleneck"

## Choice Variables
- Platform: price structure (aB, aS) — total level a and allocation between sides
- Agents: whether to join / how many transactions to undertake
- In competing platforms: agents choose which platform(s) to join

## Constraints
- Platform participation constraint: each side must weakly prefer joining to not joining
- Non-negativity: prices may be negative (subsidized side) — platform cross-subsidizes
- Feasibility: platform profits ≥ 0 (or ≥ outside option in competitive setting)

## Equilibrium Concept or Solution Concept
- **Monopoly platform:** maximizes profit π = (aB − cB)·D(a) + (aS − cS)·D(a) = (a − c)·D(a) subject to both sides participating; Ramsey-like pricing at each side
- **Platform Lerner conditions (Rochet-Tirole):** (aB − cB)/a = 1/εB + (cross-side effect), (aS − cS)/a = 1/εS + (cross-side effect) — markup on each side accounts for externality imposed on the other side
- **Competing platforms (Armstrong):** Nash equilibrium in platform prices; price on each side depends on own-side elasticity, cross-side externality, and competitive pressure from rival platforms

## Main Mechanism

**Price structure, not just price level:** For a standard intermediary, only the total price a = aB + aS matters for the number of transactions. What makes platforms special is that the *allocation* between sides also matters: a higher aB reduces buyer participation, which reduces the value of the platform to sellers, which may reduce seller participation — and vice versa. The platform must internalize these cross-side externalities when setting prices.

**Seesaw principle:** Increasing the price on one side raises that side's contribution to profit but reduces participation, which lowers the value to the other side and may require reducing price there. The optimal trade-off depends on cross-side externalities and own-side elasticities.

**Subsidizing one side:** When one side generates large positive externalities for the other (e.g., content creators attracting consumers), the platform may price that side at zero or negative prices (e.g., consumers get free access while advertisers pay). This is profit-maximizing, not predatory pricing.

**Competitive bottleneck:** When consumers single-home and merchants multi-home, platforms compete for consumers by subsidizing them, while extracting rents from merchants (who have no choice but to be present on all consumer-facing platforms).

## Common Propositions
- **Rochet-Tirole (2003):** Total transaction volume depends only on total price a = aB + aS, not its allocation; but platform profit and welfare depend on the allocation when sides have heterogeneous valuations
- **Optimal pricing (monopoly):** Markup on side i = 1/εᵢ − (cross-side externality per marginal agent on side i)/(a − c); a side with large positive cross-side externalities should be subsidized
- **Armstrong (2006) — competitive bottleneck:** The single-homing side is priced competitively; the multi-homing side is priced above cost even with intense platform competition
- **Neutrality of fee structure:** Under certain conditions (Rochet-Tirole), a fixed total fee split differently between sides achieves the same transaction volume — only the level matters, not the split (fails with heterogeneous agents or fixed membership fees)
- **Platform bias:** Platforms may favor one side's content/listings over another's when it raises cross-side participation — "algorithmic bias" as profit maximization

## Comparative Statics Usually Available
- Higher cross-side externality from side 2 to side 1 → lower price to side 2 (subsidize the side that attracts the valuable side)
- More elastic own-side demand → lower price to that side (standard markup result)
- Multi-homing on side 2 → intensifies competition for side 2; price to side 2 approaches cost; side 1 (bottleneck) pays more
- Market expansion: adding more agents on either side → higher platform profits if cross-side effects are positive

## Welfare Implications
- Monopoly platform pricing is typically inefficient (double marginalization on one side, under-provision on the other)
- Subsidizing one side below cost is not necessarily welfare-reducing — may maximize total surplus if cross-side externalities are large
- Exclusive dealing / tipping to one platform: if network effects are strong, markets may tip to a single platform; monopoly pricing then raises welfare concerns
- Antitrust in two-sided markets: a price below cost on one side is NOT per se predatory (Amex case); must examine total price and cross-side effects

## Common Modeling Pitfalls
- Treating a two-sided market as two separate one-sided markets and optimizing each side independently — this ignores cross-side externalities and yields incorrect price predictions
- Applying standard Lerner markup formula to each side without accounting for the cross-side externality term
- Assuming "below-cost pricing to one side = predatory" — it may be the profit-maximizing price structure
- Ignoring the difference between transaction fees and membership/access fees — the two generate different price structures and welfare implications

## How to Extend the Model
- **Multi-homing with endogenous platform differentiation:** platforms differentiate to soften competition for the single-homing side
- **Dynamic platform competition:** chicken-and-egg problem — how does a platform achieve critical mass when value to each side depends on the other side?
- **Data as a platform asset:** platform collects data from one side to improve service to the other; privacy regulation affects price structure
- **Tipping and winner-take-all dynamics:** strong network effects → equilibria with one dominant platform even when multiple platforms are equally efficient
- **Algorithmic pricing and auctions:** platforms run auctions among advertisers (one side) while offering free access to consumers (other side) — eBay, Google

## Example Research Questions This Model Can Support
- How does Visa/Mastercard's interchange fee structure affect merchant acceptance and consumer card usage?
- Why do app stores charge developers a commission while offering free downloads to consumers, and is this welfare-improving?
- How does platform competition change when one side multi-homes (merchants) and the other single-homes (consumers)?
- Does an online marketplace create more value by increasing the number of sellers or by curating seller quality, given limited consumer attention?
- When should a regulator intervene in a tipping market where one platform has achieved near-monopoly through network effects?

## Closely Related Model Families
- **Oligopoly Competition** (competing platforms is a special case of oligopoly with network effects)
- **Mechanism Design** (platform design is a mechanism design problem when agents are heterogeneous)
- **Matching Models** (platforms that facilitate matching between buyers and sellers — e.g., labor platforms — combine two-sided market pricing with matching)
- **Hotelling / Product Differentiation** (competing platforms differentiate to avoid tipping; horizontal differentiation applies)
- **Disclosure / Persuasion** (data-collecting platforms design information structures for one side)

## When This Model Is Not Appropriate
- When the platform serves only one type of user (use standard monopoly/oligopoly)
- When network effects are direct (within-side) rather than indirect (cross-side) — use network externalities models
- When prices are regulated on both sides and the platform has no pricing choice
- When the question is purely about matching efficiency without pricing considerations (use Matching Models)

## Empirical Paper Caution

**Well-suited for empirical papers on digital platforms and marketplaces**, provided the researcher can observe price structure on both sides.

Two failure modes observed in practice:
1. **Treating the platform as a single-sided firm:** Estimating a demand model for one side without modeling the interdependence with the other side yields biased elasticity estimates and incorrect welfare calculations.
2. **Attributing below-cost pricing to predation without examining the two-sided structure:** A platform charging zero to consumers may be profit-maximizing, not predatory — the empirical paper must account for advertiser or seller revenue.

**When two-sided market models are well-suited for empirical papers:**
- The paper has data on prices and participation on both sides of the platform
- The paper exploits variation in one side's price (e.g., fee changes, regulatory interventions) and traces through to the other side's participation — testing the cross-side externality
- The paper studies platform design changes (algorithm updates, fee structure changes) that create natural experiments in the price allocation between sides

**AI execution risk:** AI may add "two-sided market" framing to any intermediary even when cross-side externalities are small or one-directional. Require the model section to specify the direction and magnitude of cross-side externalities and explain how the empirical design identifies them.
