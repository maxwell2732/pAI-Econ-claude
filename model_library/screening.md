# Screening

## Model Family Name
Screening / Mechanism Design under Adverse Selection / Principal-Agent with Hidden Type

## Canonical Economic Question
When a principal faces an agent with private information (type), what contract menu maximizes the principal's objective while ensuring each type self-selects into its intended contract?

## When to Use This Model
- When the principal designs a mechanism (menu of contracts) and the agent's type is private information
- When the question concerns price discrimination, nonlinear pricing, insurance design, or optimal regulatory tariffs
- When the focus is on the trade-off between rent extraction and efficiency (information rent vs. distortion)
- When deriving the "no distortion at the top," downward distortion, and binding IR/IC constraints

## Typical Primitives
- Principal (P): maximizes expected profit or welfare; designs a menu {(qₜ, tₜ)}_t of quantity-transfer pairs
- Agent (A): privately knows type θ ∈ [θ_L, θ_H] distributed as F(θ) with density f(θ)
- Social surplus: S(q, θ) — increasing in q and θ; often S(q, θ) = θv(q) − C(q) or S = θq − q²/2
- Agent payoff: U = t − c(q, θ) or U = θq − t (in standard linear model)
- Principal payoff: π = t − C(q) (profit) or total surplus − rent

## Timing
1. Principal designs and commits to a menu of contracts {(q(θ), t(θ))}_θ
2. Agent observes own type θ (principal does not)
3. Agent selects contract from the menu (self-selection / revelation principle: WLOG, agent reports type)
4. Allocation (q(θ), t(θ)) is implemented; payoffs realized

## Information Structure
- Agent's type θ: private information revealed to agent before contracting
- Principal knows the distribution F(θ) but not the realization θ
- By the Revelation Principle: any Bayesian implementable allocation can be implemented by a direct mechanism in which agents truthfully report type

## Agent Heterogeneity
- Types indexed by θ: higher θ has higher marginal value of quantity or lower cost of effort
- Key condition for standard results: single-crossing (Spence-Mirrlees): ∂²U/∂q∂θ > 0 — higher types have higher marginal willingness to pay for quantity

## Choice Variables
- Principal: allocation rule q(θ) and transfer rule t(θ) for each type
- Agent: report θ̂ (in the direct mechanism); equivalently, which contract to select from the menu

## Constraints
- **Incentive Compatibility (IC):** each type θ prefers its own contract to any other: U(θ, θ) ≥ U(θ, θ̂) for all θ̂
- **Individual Rationality (IR):** each type is willing to participate: U(θ, θ) ≥ Ū(θ) (outside option, often Ū = 0)
- Implementability: under single-crossing, IC reduces to (i) q(θ) non-decreasing and (ii) local IC binds

## Equilibrium Concept or Solution Concept
- **Constrained optimization** (not a game equilibrium in the standard sense)
- Principal's problem: max ∫ π(q(θ), t(θ)) dF(θ) subject to IC and IR for all θ
- Solution via relaxed problem: bind only local IC (downward) and IR at lowest type; check global IC ex post
- Virtual type / virtual surplus approach: replace S(q, θ) with S(q, θ) − [1−F(θ)/f(θ)] · ∂S/∂θ

## Main Mechanism
The principal must leave informational rents to higher types to prevent them from mimicking lower types (IC constraint). To reduce rents, the principal distorts the allocation downward for all types below the top — provides less quantity than the first-best to low types. At the top type, no distortion: "no distortion at the top" (also: no distortion at the bottom in some formulations). The rent-efficiency tradeoff is the central mechanism: more distortion reduces rents paid but sacrifices social surplus.

## Common Propositions
- **No distortion at the top:** q*(θ_H) = q^{FB}(θ_H) (top type gets first-best quantity)
- **Downward distortion for lower types:** q*(θ) < q^{FB}(θ) for θ < θ_H
- **Information rents:** U*(θ) = ∫_{θ_L}^{θ} ∂S(q*(s), s)/∂s ds > 0 for θ > θ_L
- **Binding constraints:** IR binds at θ_L; IC binds locally downward (θ prefers to claim θ−ε)
- **Type-dependent outside options (Lewis-Sappington, Jullien 2000):** distortion can reverse direction; "no distortion anywhere" or upward distortion possible

## Comparative Statics Usually Available
- Distortion size ↑ as type distribution is more concentrated at the top (high F(θ)/f(θ))
- Rents ↑ as the type spread Δθ = θ_H − θ_L ↑
- First-best becomes achievable when agent's IR constraint is sufficiently type-dependent (outside option rises with type)
- Number of types ↑ → continuum limit; discrete screening problems require bunching analysis (ironing)

## Welfare Implications
- Second-best is Pareto inferior to first-best; the wedge is pure efficiency loss due to information asymmetry
- Consumer (agent) surplus is extracted up to the information rent
- "Taxation principle:" the mechanism is equivalent to a nonlinear price schedule T(q)
- Optimal nonlinear pricing (Mussa-Rosen 1978): connects screening to product versioning and quality differentiation

## Common Modeling Pitfalls
- Forgetting to verify global IC after solving the relaxed problem (local IC may not imply global IC without monotonicity)
- Assuming the IR constraint only binds at the bottom — this fails with type-dependent outside options
- Bunching: ignoring the possibility that the optimal q*(θ) is flat on an interval (ironing)
- Confusing screening (uninformed principal designs menu) with signaling (informed agent moves first)

## How to Extend the Model
- **Multidimensional types:** type θ ∈ ℝ² — single-crossing may fail; much harder; Armstrong (1996), Rochet-Choné (1998)
- **Dynamic screening:** agent's type changes over time; ratchet effect, commitment problems
- **Competitive screening:** multiple principals compete to offer contracts — Rothschild-Stiglitz (1976)
- **Type-dependent outside options (countervailing incentives):** U̲(θ) increasing in θ — changes binding constraint structure
- **Limited liability:** principal cannot extract transfers below zero — changes rent structure

## Example Research Questions This Model Can Support
- How should a monopolist design a nonlinear pricing schedule to maximize profit when consumers differ in valuation?
- What is the optimal insurance contract menu for a population of heterogeneous risk types?
- When the agent's outside option depends on type (e.g., competitive market wage), does the principal's optimal contract achieve first-best efficiency?
- How does the introduction of third-degree price discrimination (observable type proxies) affect welfare relative to second-degree screening?
- What is the optimal regulatory tariff structure for a utility with private information about its costs?

## Closely Related Model Families
- **Moral Hazard** (agent's action is unobservable, not type — different private information)
- **Adverse Selection** (market-level consequences of type heterogeneity without active mechanism design)
- **Signaling** (informed party moves first to communicate type; screening reverses this)
- **Mechanism Design** (screening is a special case: single principal, hidden type, direct mechanism)
- **Principal-Agent Models** (the organizing category; screening is the hidden-type variant)

## When This Model Is Not Appropriate
- When the principal cannot commit to a mechanism (renegotiation breaks the screening solution)
- When types are multidimensional and a tractable characterization is needed (requires specialized tools)
- When the agent's private information concerns future actions rather than current type (use moral hazard)
- When the market has many competing principals and free entry, making the competitive equilibrium the right solution concept (use Rothschild-Stiglitz framework)
