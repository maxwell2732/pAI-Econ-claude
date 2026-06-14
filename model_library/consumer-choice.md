# Consumer Choice Model

## Model Family Name
Consumer Choice / Utility Maximization

## Canonical Economic Question
How does a rational consumer allocate income across goods to maximize utility, and how do demand functions respond to prices and income?

## When to Use This Model
- When the central question involves individual demand behavior, welfare effects of price changes, or revealed preference
- As a building block for market equilibrium models
- When analyzing tax incidence, subsidies, or rationing on household welfare
- When deriving testable implications of rational choice for demand data

## Typical Primitives
- One consumer (or a representative consumer) with utility function U(x₁, x₂, ..., xₙ) over n goods
- Budget constraint: Σpᵢxᵢ = m, where pᵢ is the price of good i and m is income
- Utility function assumed continuous, monotone, and quasi-concave (for interior solutions)

## Timing
1. Consumer observes prices (p₁, ..., pₙ) and income m (all known at decision time)
2. Consumer chooses quantities (x₁, ..., xₙ) to maximize utility subject to budget constraint
3. Equilibrium demand functions xᵢ*(p, m) are derived

## Information Structure
- Full information: consumer knows all prices and own income with certainty
- No strategic interaction (single-agent decision problem)
- No uncertainty in the basic model; can add uncertainty via expected utility or state-contingent consumption

## Agent Heterogeneity
- Standard model: single consumer or representative consumer (no heterogeneity)
- Extended: heterogeneous consumers indexed by income m, preferences θ, or both; aggregate demand is the integral of individual demands

## Choice Variables
- Consumption quantities xᵢ ≥ 0 for each good i
- In duality: expenditure e given target utility ū (expenditure minimization dual)

## Constraints
- Budget constraint: p·x ≤ m (holds with equality under local non-satiation)
- Non-negativity: xᵢ ≥ 0 (binding for corner solutions)
- Occasionally: quantity constraints, rationing, or credit constraints

## Equilibrium Concept or Solution Concept
- Constrained utility maximization (primal problem)
- Kuhn-Tucker conditions; interior solution satisfies MRS = price ratio
- Dual: expenditure minimization subject to utility target

## Main Mechanism
The consumer's marginal rate of substitution between any two goods must equal their price ratio at an interior optimum. Budget exhaustion (under local non-satiation) pins total spending. Demand functions inherit the properties of the utility function via the envelope theorem and duality.

## Common Propositions
- **Walras' Law:** p·x*(p, m) = m for all (p, m)
- **Homogeneity:** Marshallian demands are homogeneous of degree zero in (p, m)
- **Slutsky symmetry:** Cross-substitution effects are symmetric (∂hᵢ/∂pⱼ = ∂hⱼ/∂pᵢ) where h is Hicksian demand
- **Negative own-price substitution effect:** ∂hᵢ/∂pᵢ ≤ 0 always; Marshallian demand can violate this only via Giffen good (income effect dominates)
- **Roy's identity:** xᵢ*(p, m) = −[∂V/∂pᵢ] / [∂V/∂m] where V is the indirect utility function

## Comparative Statics Usually Available
- Price change → income and substitution effects (Slutsky decomposition)
- Income change → Engel curves; income elasticity classifies goods as normal/inferior
- Compensating variation and equivalent variation measure welfare effects of price changes

## Welfare Implications
- Welfare analysis uses CV, EV, or consumer surplus change
- Second theorem of welfare economics: any Pareto optimum can be achieved by a budget redistribution followed by competitive equilibrium
- Deadweight loss from taxes or price distortions measurable via expenditure function

## Common Modeling Pitfalls
- Assuming quasi-linear utility when income effects matter for welfare calculations
- Forgetting corner solutions when goods are not substitutable
- Confusing Marshallian (uncompensated) and Hicksian (compensated) demands in welfare analysis
- Using representative consumer aggregation when distributional effects are central to the question

## How to Extend the Model
- Add uncertainty: expected utility over state-contingent consumption bundles
- Add dynamics: intertemporal consumption-savings problem (see Dynamic Optimization template)
- Add discrete goods: combine with Discrete Choice / Random Utility framework
- Add social comparisons: utility depends on neighbors' consumption (externality)
- Add household production: goods are inputs to home-produced commodities

## Example Research Questions This Model Can Support
- How does a sugar tax affect household welfare across income groups, and what is the optimal rate given demand responses?
- What are the demand consequences of introducing a new nutritional label that changes perceived product quality?
- Under what conditions does a subsidy on a complement good induce more consumption of a target good than a direct subsidy?
- How do changes in household income uncertainty affect demand for health insurance as a risk-management good?
- Can observed demand data rationalize non-standard preferences (e.g., reference dependence)?

## Closely Related Model Families
- **Indirect Utility and Expenditure Minimization** (dual formulation, same primitives)
- **Discrete Choice / Random Utility** (when goods are indivisible)
- **Rational Inattention** (when consumers do not process all price information)
- **Household Production** (Becker 1965: goods are inputs to commodities)

## When This Model Is Not Appropriate
- When the agent faces strategic interaction with other consumers (use game theory)
- When the agent's choice fundamentally involves non-price rationing or queuing (add queue models)
- When the agent is a firm choosing inputs (use cost minimization / profit maximization)
- When information frictions about prices are the central question (use Rational Inattention or Search Models)
