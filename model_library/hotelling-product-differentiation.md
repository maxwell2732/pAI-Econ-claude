# Hotelling / Product Differentiation

## Model Family Name
Hotelling Model / Spatial Competition / Product Differentiation

## Canonical Economic Question
How do firms choose product characteristics and prices when consumers have heterogeneous preferences over product attributes, and what is the equilibrium degree of product variety and market segmentation?

## When to Use This Model
- When product differentiation along a characteristic dimension (location, quality, variety) is the central competitive force
- When the question concerns firm entry, product positioning, price competition between differentiated goods
- When analyzing whether markets provide too much or too little variety
- When modeling political competition (candidates choosing policy positions), media positioning, or platform competition

## Typical Primitives
- Linear city of length 1 (or circle); consumers distributed uniformly on [0,1] (or F on the characteristic space)
- Firms at positions x₁, x₂ ∈ [0,1] with marginal cost c; prices p₁, p₂
- Consumer at location θ gets utility: U = v − pᵢ − t|θ − xᵢ| where t is the transportation/taste mismatch cost
- Consumer buys from firm offering higher net utility; firms maximize profit

## Timing
1. **Stage 1 (product choice):** firms simultaneously choose positions x₁, x₂ (or entry with fixed cost F)
2. **Stage 2 (price competition):** firms observe positions and simultaneously choose prices p₁, p₂
3. **Demand:** each consumer buys from the firm with higher net utility; market is covered (both firms serve positive demand) or uncovered (consumers may not buy at all)
4. **Equilibrium:** backward induction — solve for price equilibrium given positions; then solve for equilibrium positions

## Information Structure
- Full information: firms observe each other's positions and prices
- Consumers observe both firms' prices and positions (or: sequential if search is involved)
- No information asymmetry in the standard model (add private cost as extension)

## Agent Heterogeneity
- Consumers: heterogeneous in location θ ∼ U[0,1]; this is the source of differentiation demand
- Firms: typically symmetric (same costs, entry process); asymmetric costs generate different equilibrium positions

## Choice Variables
- Firms: product position xᵢ ∈ [0,1] and price pᵢ
- Consumers: which firm to buy from (or neither, if the market is uncovered)

## Constraints
- Consumer utility ≥ 0 for purchase (individual rationality; can be relaxed if market is fully covered)
- Symmetric equilibrium assumed in standard model; uniqueness may fail

## Equilibrium Concept or Solution Concept
- **Subgame Perfect Nash Equilibrium** via backward induction (positions in Stage 1, prices in Stage 2)
- **Price stage (given positions):** Nash equilibrium in prices; firms set p based on marginal consumer's indifference condition
- **Position stage:** Nash equilibrium in locations, given equilibrium price functions of positions
- **Minimum differentiation (Hotelling's original claim):** both firms locate at the center — but this is NOT an equilibrium under price competition (D'Aspremont et al. 1979); equilibrium requires maximum differentiation or intermediate positions

## Main Mechanism
Differentiation relaxes price competition: firms located far apart face less competitive pressure and can charge higher prices without losing all customers. Proximity to the center attracts more customers (demand stealing) but intensifies price competition. The equilibrium balances these forces. Under quadratic transport costs (D'Aspremont et al.): firms choose maximum differentiation and earn positive profits. Under linear costs: no pure strategy price equilibrium exists when firms are close; full differentiation is the equilibrium.

## Common Propositions
- **D'Aspremont-Gabszewicz-Thisse (1979):** with quadratic transport costs, unique symmetric equilibrium has maximal differentiation (x₁ = 0, x₂ = 1) and prices p* = c + t
- **Profits under differentiation:** π = t/2 per firm (duopoly markup depends only on t and symmetric positions)
- **Social optimum:** firms locate at x₁ = 1/4, x₂ = 3/4 (minimize total transportation cost); private equilibrium has excessive differentiation
- **Entry and variety:** free-entry equilibrium may produce too many or too few varieties depending on business-stealing and surplus-stealing externalities

## Comparative Statics Usually Available
- Higher t → more differentiation sustainable → higher equilibrium prices
- Lower fixed cost F → more entry → lower prices; may still produce inefficient variety
- Market coverage: if t is large relative to v, some consumers remain unserved; uncovered market version has different price equilibria
- Platform/network effects: consumers value being on the same platform → agglomeration vs. differentiation trade-off

## Welfare Implications
- Private equilibrium is generically inefficient: either too much or too little product variety relative to social optimum
- Too much variety: entry externalities (firms steal demand from incumbents); firms enter even when the marginal variety adds less consumer surplus than cost
- Too little variety: if fixed costs are high and the market is thin, the social planner would subsidize entry
- Spatial model provides a microfoundation for Dixit-Stiglitz monopolistic competition when the product space is circular and varieties are symmetric

## Common Modeling Pitfalls
- Forgetting the D'Aspremont correction: Hotelling's original claim of minimum differentiation is incorrect under price competition; quadratic transport costs are needed for well-behaved equilibrium
- Assuming a pure strategy price equilibrium always exists: with linear transport costs and close locations, price equilibrium may be in mixed strategies
- Using the model for more than two firms without recognizing that the circular city (Salop 1979) is the cleaner extension
- Ignoring the fixed cost of product introduction when analyzing entry and variety

## How to Extend the Model
- **Salop (1979) circular city:** n firms on a circle; allows free entry analysis; equilibrium n* and welfare analysis of excessive entry
- **Vertical differentiation (Shaked-Sutton):** quality rather than variety; all consumers agree on ranking → different equilibrium logic
- **Multi-dimensional product space:** firms choose combinations of attributes; very complex, typically requires special structure
- **Platform competition:** two-sided markets with Hotelling-style consumer differentiation; network effects interact with differentiation
- **Political economy:** candidates = firms; voters = consumers; platforms = positions; generates Median Voter Theorem as a special case

## Example Research Questions This Model Can Support
- Do competing television news channels differentiate or converge in their ideological positioning, and what drives the outcome?
- Is the variety of pharmaceutical products in a drug class socially efficient, or is there excessive "me-too" drug entry?
- How does the entry of a new product variety affect consumer welfare in a differentiated product market?
- Do competing platforms in ride-sharing or food delivery differentiate on service quality, and when does the market tip to monopoly?
- What is the equilibrium location choice for competing retail chains when consumers face transportation costs?

## Closely Related Model Families
- **Discrete Choice / Random Utility** (BLP model embeds Hotelling-type differentiation in a discrete choice framework)
- **Mechanism Design** (regulator can choose to implement the optimal variety level)
- **Adverse Selection** (if product quality is private information, Hotelling + information asymmetry generates new predictions)
- **Signaling** (advertising as a signal of product quality in a differentiated market)

## When This Model Is Not Appropriate
- When products are homogeneous and competition is purely in prices (use Bertrand / Cournot)
- When the product characteristic space has no natural metric (differentiation is not "distance-based")
- When the number of firms is large enough that each firm is negligibly small (use monopolistic competition / Dixit-Stiglitz)
- When network effects are so strong that the market tips to a single standard (use winner-takes-all / tipping models)
