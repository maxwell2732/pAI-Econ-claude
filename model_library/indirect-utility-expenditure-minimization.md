# Indirect Utility and Expenditure Minimization

## Model Family Name
Duality in Consumer Theory: Indirect Utility Function and Expenditure Function

## Canonical Economic Question
What is the minimum expenditure needed to achieve a given utility level at given prices? How does the cost of reaching a welfare target respond to price changes?

## When to Use This Model
- When the question concerns welfare measurement (compensating variation, equivalent variation)
- When deriving the full set of testable demand restrictions via duality
- When modeling government expenditure needed to maintain a household at a target utility level
- When analyzing the cost-of-living index or inflation's welfare impact across demographic groups
- When the dual formulation simplifies comparative statics relative to the primal problem

## Typical Primitives
- Utility function U(x) that is continuous, strictly increasing, and quasi-concave
- Price vector p ∈ ℝⁿ₊₊ and income m > 0 (primal) or utility target ū (dual)
- Indirect utility function V(p, m) = max{U(x) : p·x ≤ m}
- Expenditure function E(p, ū) = min{p·x : U(x) ≥ ū}

## Timing
1. Prices p are observed (and income m or target ū is fixed)
2. Primal: consumer maximizes U(x) s.t. p·x ≤ m → Marshallian demands x*(p, m)
3. Dual: consumer minimizes p·x s.t. U(x) ≥ ū → Hicksian (compensated) demands h(p, ū)
4. Key identity: h(p, ū) = x*(p, E(p, ū))

## Information Structure
- Full information; deterministic environment
- The duality apparatus is a mathematical tool applied after consumer behavior is specified
- No strategic interaction; single-agent optimization

## Agent Heterogeneity
- Typically applied to a single representative consumer
- With heterogeneous households: heterogeneity in ū (welfare levels) or in preferences generates different expenditure functions per household type

## Choice Variables
- Primal: consumption bundle x
- Dual: consumption bundle x at minimum cost

## Constraints
- Primal: p·x ≤ m
- Dual: U(x) ≥ ū
- Non-negativity: xᵢ ≥ 0

## Equilibrium Concept or Solution Concept
- Constrained optimization (not an equilibrium concept per se — single agent)
- Envelope theorem gives the key comparative statics
- Duality relations link primal and dual solutions

## Main Mechanism
Shephard's Lemma: ∂E(p, ū)/∂pᵢ = hᵢ(p, ū). The expenditure function encodes all compensated demand information in its price derivatives. Roy's Identity gives Marshallian demands from the indirect utility function. The duality between V and E means every result about one immediately translates to the other.

## Common Propositions
- **E(p, ū) is concave and homogeneous of degree one in p**
- **V(p, m) is quasi-convex in p and homogeneous of degree zero in (p, m)**
- **Slutsky equation:** ∂xᵢ/∂pⱼ = ∂hᵢ/∂pⱼ − xⱼ ∂xᵢ/∂m (substitution effect + income effect)
- **Compensating variation:** CV = E(p⁰, ū⁰) − E(p¹, ū⁰) = m − E(p¹, ū⁰)
- **Equivalent variation:** EV = E(p⁰, ū¹) − E(p¹, ū¹) = E(p⁰, ū¹) − m

## Comparative Statics Usually Available
- dE/dpᵢ = hᵢ (Shephard's Lemma) — change in minimum expenditure equals compensated demand
- d²E/dpᵢdpⱼ = ∂hᵢ/∂pⱼ = ∂hⱼ/∂pᵢ (Slutsky symmetry from concavity of E)
- dV/dm (marginal utility of income, λ) links primal and dual

## Welfare Implications
- CV and EV are the theoretically correct welfare measures for price changes; consumer surplus is an approximation valid when income effects are small
- Cost-of-living index = E(p¹, ū⁰)/E(p⁰, ū⁰): minimum income needed at new prices to achieve old utility
- Price index theory (Paasche, Laspeyres) provides bounds on the true cost-of-living index

## Common Modeling Pitfalls
- Using consumer surplus as a welfare measure when income effects are non-negligible
- Confusing the expenditure function (dual of utility maximization) with the cost function (dual of production maximization) — they share the same mathematical structure but different economic interpretations
- Applying expenditure functions without verifying the utility function is well-behaved (monotone, quasi-concave)
- Ignoring corner solutions where some goods are not consumed

## How to Extend the Model
- Stochastic prices: expected expenditure minimization (price index under uncertainty)
- Non-homothetic preferences: expenditure function is not separable in p and ū
- Public goods: add a public good z to utility; E(p, z, ū) defines the willingness-to-pay for public good changes
- Household production: E now represents the cost of attaining a household commodity level

## Example Research Questions This Model Can Support
- What is the compensating variation of a carbon tax for households at different income quintiles?
- Does the Laspeyres price index overstate inflation for low-income households?
- How much income support is needed to hold a household at the pre-reform utility level when food prices rise?
- What is the income elasticity of the expenditure function with respect to a targeted public good?
- How does the welfare cost of inflation differ between households with homothetic versus non-homothetic preferences?

## Closely Related Model Families
- **Consumer Choice** (primal formulation — same model, dual perspective)
- **General Equilibrium Basics** (welfare analysis in competitive equilibrium uses CV/EV)
- **Rational Inattention** (agent may not observe all prices needed to compute E)

## When This Model Is Not Appropriate
- When the agent does not optimize (behavioral models, habits, limited attention)
- When welfare is multidimensional and cannot be reduced to a scalar expenditure metric
- When general equilibrium price feedback makes the partial-equilibrium expenditure function misleading (need GE welfare analysis)
- When distributional concerns require tracking the full distribution of welfare, not just aggregate CV/EV
