# General Equilibrium Basics

## Model Family Name
General Competitive Equilibrium / Arrow-Debreu / Walrasian Equilibrium

## Canonical Economic Question
When all markets clear simultaneously and prices are determined endogenously, what allocation of goods results, and under what conditions is it efficient (Pareto optimal)?

## When to Use This Model
- When partial equilibrium analysis is insufficient because feedback effects across markets matter
- When analyzing the general equilibrium consequences of a policy (e.g., a tax that affects factor prices and consumer incomes simultaneously)
- When proving existence and optimality of competitive equilibria (welfare theorems)
- When studying how the distribution of endowments and preferences across agents determines the equilibrium allocation

## Typical Primitives
- l goods, n consumers, m firms
- Consumer i: endowment ωᵢ ∈ ℝˡ₊; utility function Uᵢ(xᵢ), continuous, quasi-concave; budget constraint p·xᵢ ≤ p·ωᵢ + Σⱼ θᵢⱼ πⱼ(p) where θᵢⱼ is consumer i's share of firm j's profit
- Firm j: production set Yⱼ ⊂ ℝˡ; maximizes profit πⱼ(p) = max{p·yⱼ : yⱼ ∈ Yⱼ}
- Walrasian equilibrium: (p*, x*, y*) such that all consumers maximize utility, all firms maximize profit, and all markets clear: Σᵢ xᵢ* = Σᵢ ωᵢ + Σⱼ yⱼ*

## Timing
- Static model: no timing; all agents simultaneously choose optimal demand and supply at equilibrium prices
- Arrow-Debreu extension: contingent claims markets for all future states and dates are open at date 0

## Information Structure
- Full information: all agents observe all prices p; prices aggregate all private information about endowments and preferences
- No private information about goods (extends to differential information models)
- In competitive equilibrium, agents are price-takers: no agent has market power

## Agent Heterogeneity
- Consumers differ in endowments ωᵢ and utility functions Uᵢ
- Firms differ in their production sets Yⱼ (technology)
- The distribution of endowments determines the distribution of income and hence the distribution of consumption

## Choice Variables
- Consumers: demand vector xᵢ ∈ ℝˡ₊
- Firms: production vector yⱼ ∈ Yⱼ

## Constraints
- Consumer: budget constraint p·xᵢ ≤ mᵢ(p) = p·ωᵢ + Σⱼ θᵢⱼ πⱼ(p)
- Firm: yⱼ ∈ Yⱼ (production possibility set)
- Market clearing: excess demand z(p) = Σᵢ xᵢ(p) − Σᵢ ωᵢ − Σⱼ yⱼ(p) = 0 for all goods

## Equilibrium Concept or Solution Concept
- **Walrasian competitive equilibrium:** price vector p* such that z(p*) = 0 (markets clear)
- **Brouwer / Kakutani fixed-point theorem:** used to prove existence; z(p) is a continuous function of prices on the simplex; there exists p* with z(p*) = 0
- **Tâtonnement process (informal stability):** conceptual adjustment process (not literally observed) that guides prices toward equilibrium

## Main Mechanism
In competitive equilibrium, prices serve as signals that coordinate decentralized decisions. No agent needs to know others' preferences; the price vector encodes all relevant scarcity information. If a good is scarce, its price rises, reducing demand and increasing supply until the market clears. The welfare theorems connect the existence of competitive equilibrium to Pareto efficiency.

**First Welfare Theorem:** every Walrasian competitive equilibrium is Pareto optimal (if preferences are locally non-satiated).

**Second Welfare Theorem:** any Pareto optimal allocation can be achieved as a Walrasian equilibrium after a suitable redistribution of endowments (if preferences are convex).

## Common Propositions
- **Walras' Law:** p·z(p) = 0 for all p (if all consumers' budget constraints hold with equality)
- **Existence (Arrow-Debreu 1954, McKenzie 1954):** under convexity and continuity conditions, at least one competitive equilibrium exists
- **First Welfare Theorem:** competitive equilibrium is Pareto optimal under local non-satiation
- **Second Welfare Theorem:** any Pareto optimum is a competitive equilibrium with lump-sum transfers, under convexity
- **No surplus in equilibrium:** profits are zero in long-run competitive equilibrium with free entry

## Comparative Statics Usually Available
- Endowment redistribution → new equilibrium prices; distributional effects depend on general equilibrium income effects
- Technology shock → factor price changes; Stolper-Samuelson (2 factors, 2 goods): an increase in the relative price of a good raises the real return of the factor used intensively in that good
- Tax incidence in GE: who bears the economic burden of a tax depends on supply and demand elasticities in general equilibrium, not on who legally pays

## Welfare Implications
- Welfare theorems justify the market mechanism under their conditions; violations (externalities, public goods, market power, information asymmetry) are the basis for market failure and policy intervention
- Pareto criterion: GE analysis measures welfare without cardinal utility comparisons; distributional issues require a social welfare function beyond Pareto
- Second-best GE (Diamond-Mirrlees): when some taxes are unavoidable, the optimal tax structure differs from first-best — requires production efficiency, no taxation of intermediate goods

## Common Modeling Pitfalls
- Assuming partial equilibrium when income effects and factor market feedback are important
- Forgetting that the Second Welfare Theorem requires lump-sum transfers (not income taxes); income taxes introduce distortions that prevent a complete decentralization
- Ignoring the multiplicity of equilibria: multiple Walrasian equilibria can exist even under standard conditions (no uniqueness guarantee in general)
- Applying welfare theorems in settings with externalities, public goods, or market power — the theorems break down in these cases

## How to Extend the Model
- **With uncertainty (Arrow-Debreu):** add states of nature s ∈ S; contingent claims markets for each good-state pair; equilibrium = complete markets Pareto optimum
- **Incomplete markets (Radner equilibrium):** fewer assets than states; financial markets play a role; equilibrium is generically constrained suboptimal
- **General equilibrium with monopoly (Monopolistic competition / Dixit-Stiglitz):** product differentiation; firm entry; provides microfoundations for growth theory
- **Dynamic general equilibrium (DSGE / RBC):** intertemporal optimization in GE; business cycle analysis
- **Spatial general equilibrium:** labor and capital mobile across regions; trade in goods; gravity models

## Example Research Questions This Model Can Support
- What is the incidence of a carbon tax in a two-sector economy with labor and capital as factors?
- How does a trade shock (reduction in tariffs) affect wages of different skill groups through factor market equilibrium?
- Does an increase in skilled labor supply (immigration) raise or lower wages of existing skilled workers, accounting for GE effects on goods prices?
- What is the welfare effect of a price ceiling on housing when supply is endogenously determined?
- Can the current inequality in income be supported as a competitive equilibrium of a model with heterogeneous skill endowments?

## Closely Related Model Families
- **Consumer Choice** (individual demand side of GE)
- **Dynamic Optimization / Bellman** (the Ramsey growth model is a dynamic GE model)
- **Overlapping Generations** (GE with finitely-lived agents; market incompleteness across generations)
- **Matching Models** (TU assignment market is isomorphic to a GE with transferable utility)

## When This Model Is Not Appropriate
- When market power is present and agents are not price-takers (use oligopoly or monopoly models)
- When the primary friction is information asymmetry (use information economics models; Walrasian equilibrium with private information requires substantial modification)
- When markets are fundamentally incomplete and the incompleteness is the central question (use incomplete markets models)
- When the focus is on a single market with negligible feedback effects on other markets (partial equilibrium is sufficient)
