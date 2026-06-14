# Discrete Choice / Random Utility Model

## Model Family Name
Discrete Choice / Random Utility Model (RUM)

## Canonical Economic Question
When consumers choose one option from a finite set of alternatives, how do choice probabilities respond to prices, product attributes, and individual characteristics?

## When to Use This Model
- When goods are indivisible and mutually exclusive (car brands, jobs, neighborhoods, health plans)
- When demand is heterogeneous across consumers and only aggregate market shares are observed
- When market differentiation across discrete product varieties is central
- When identifying consumer valuation distributions from observed choices (structural demand estimation)

## Typical Primitives
- Consumer i choosing one alternative j from set J = {1, ..., J} (plus outside option 0)
- Indirect utility: Uᵢⱼ = Vⱼ(xⱼ, pⱼ, αᵢ) + εᵢⱼ where Vⱼ is the systematic component and εᵢⱼ is idiosyncratic
- Common form: Uᵢⱼ = αᵢ(yᵢ − pⱼ) + xⱼβᵢ + εᵢⱼ (Berry-Levinsohn-Pakes style)
- Distribution of (εᵢⱼ) and (αᵢ, βᵢ) are model primitives

## Timing
1. Product characteristics xⱼ and prices pⱼ are set (by firms or exogenously)
2. Consumer i observes all alternatives and draws idiosyncratic preference shocks εᵢⱼ
3. Consumer chooses alternative j* = argmax_j Uᵢⱼ
4. Market share of alternative j is sⱼ = Prob(Uᵢⱼ ≥ Uᵢₖ for all k ≠ j)

## Information Structure
- Consumers observe all prices and product attributes perfectly (standard assumption)
- Analyst observes aggregate market shares sⱼ and product characteristics xⱼ, not individual choices εᵢⱼ
- Idiosyncratic shocks εᵢⱼ represent consumer-level unobservables (private to consumer, unknown to firm or analyst)

## Agent Heterogeneity
- **Logit (McFadden 1974):** εᵢⱼ ∼ i.i.d. Type I Extreme Value → closed-form shares; homogeneous tastes except εᵢⱼ
- **Nested Logit:** εᵢⱼ correlated within nests; cross-elasticities more flexible
- **Mixed Logit / BLP (Berry-Levinsohn-Pakes):** random coefficients (αᵢ, βᵢ) ∼ F(θ); rich heterogeneity; no closed-form shares

## Choice Variables
- Consumer: discrete choice dᵢⱼ ∈ {0,1}, Σⱼ dᵢⱼ = 1
- Firm (if model is extended): prices pⱼ and product attributes xⱼ

## Constraints
- Consumer chooses exactly one alternative
- If outside option: consumer can choose j = 0 (not buy); market share ≤ 1

## Equilibrium Concept or Solution Concept
- Consumer level: utility maximization given prices and attributes
- Market level: Berry's (1994) inversion maps observed market shares to mean utilities (δⱼ = Vⱼ + ξⱼ where ξⱼ is product-level unobservable); if firms are added, Bertrand Nash pricing equilibrium

## Main Mechanism
Idiosyncratic preference shocks (or random coefficients) generate smooth demand curves from discrete choices. The distribution of ε generates market shares as integrals of individual choice probabilities. Independence of irrelevant alternatives (IIA) holds under logit but fails under nested logit or mixed logit — this is the core modeling choice that governs cross-price elasticity patterns.

## Common Propositions
- **Logit market share:** sⱼ = exp(δⱼ) / Σₖ exp(δₖ) — closed form, IIA holds
- **Log-odds ratio:** ln(sⱼ/s₀) = δⱼ (Berry 1994 inversion)
- **IIA property of logit:** cross-price elasticity ∂sⱼ/∂pₖ depends only on sₖ, not on the degree of substitutability between j and k
- **Mixed logit:** breaks IIA; cross-elasticities governed by distribution of random coefficients
- **Welfare:** consumer surplus = (1/α) × ln(Σⱼ exp(δⱼ)) for logit with homogeneous price coefficient α

## Comparative Statics Usually Available
- Own-price elasticity: εⱼⱼ = αpⱼ(1 − sⱼ) for logit
- Cross-price elasticity: εⱼₖ = −αpₖsₖ for logit (IIA: proportional to sₖ only)
- Attribute improvement: ∂sⱼ/∂xⱼ proportional to βⱼ and sⱼ(1 − sⱼ)
- New product welfare gain: ΔCS = (1/α) × ln(1 + exp(δ_new)) for logit

## Welfare Implications
- Consumer welfare from product entry is computable from the surplus integral under the random utility assumption
- Markups under Bertrand Nash: pⱼ − cⱼ = −sⱼ / (∂sⱼ/∂pⱼ) (Lerner formula from first-order condition)
- Market power measured by Lerner index depends on own-price elasticity

## Common Modeling Pitfalls
- Logit IIA property implies proportional substitution across all alternatives — unrealistic when alternatives cluster (e.g., red bus / blue bus problem)
- Including too many product fixed effects can prevent identification of demand parameters
- Confusing product-level shocks ξⱼ (supply side) with consumer-level shocks εᵢⱼ (demand side)
- Failing to account for endogeneity of prices when firms set prices in response to ξⱼ (need BLP instruments)

## How to Extend the Model
- Add supply side: Bertrand Nash firm pricing → full demand-supply system
- Dynamic discrete choice (Rust 1987): consumer makes repeated discrete choices over time with state variable
- Consideration sets: consumers only consider a subset of alternatives before choosing (limited attention)
- Endogenous product entry: firms choose which products to offer in addition to prices

## Example Research Questions This Model Can Support
- How much does a 10% price increase for one health insurance plan shift enrollment toward competitor plans?
- What is the welfare gain from introducing a new variety of a good (consumer surplus from new product)?
- Does a merger between two firms with differentiated products harm consumers, and by how much?
- How heterogeneous are consumer valuations for fuel efficiency in the automobile market?
- Does nutritional labeling on food products affect market shares, and which consumer segments respond most?

## Closely Related Model Families
- **Consumer Choice** (continuous goods; discrete choice is the indivisible-goods case)
- **Hotelling / Product Differentiation** (spatial model of discrete choice with endogenous product positioning)
- **Screening** (firm offers a menu; consumer self-selects — related but different mechanism)
- **Search Models** (consumers may not observe all alternatives before choosing)

## When This Model Is Not Appropriate
- When goods are continuous and divisible (use standard consumer choice)
- When the number of alternatives is very large and consumers cannot evaluate all of them (use search / consideration set models)
- When the primary question is about intertemporal consumption, not cross-product substitution
- When the research question is about production or supply, not demand
