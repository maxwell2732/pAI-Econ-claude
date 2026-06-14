# Basic Mechanism Design

## Model Family Name
Mechanism Design / Revelation Principle / Social Choice Implementation

## Canonical Economic Question
Given a social objective and agents with private information, can the social planner (or principal) design a game — a mechanism — whose equilibrium outcomes achieve the social objective, and if so, what is the optimal mechanism?

## When to Use This Model
- When the question is about what outcomes are achievable given incentive constraints (implementability)
- When designing auctions, voting rules, public good provision schemes, or regulatory mechanisms
- When the revelation principle is needed to reduce an infinite design space to direct mechanisms
- When analyzing whether a given social choice rule (SCR) can be implemented in dominant strategies, Nash equilibrium, or Bayes Nash equilibrium

## Typical Primitives
- n agents, each with private type θᵢ ∈ Θᵢ; types drawn from F = F₁ × ... × Fₙ
- Outcome space X (e.g., allocation of goods plus transfers)
- Agent payoffs: uᵢ(x, θᵢ) — may or may not include transfers
- Social planner chooses a mechanism M = (S₁,...,Sₙ, g) where Sᵢ is agent i's message space and g: S → X is the outcome function
- Induced game: agents simultaneously send messages sᵢ ∈ Sᵢ; outcome g(s) is implemented

## Timing
1. Nature draws types θᵢ ∼ Fᵢ; each agent observes own type
2. Planner (or mechanism designer) announces mechanism M = (S, g)
3. Agents simultaneously send messages sᵢ based on their types
4. Outcome x = g(s₁,...,sₙ) is implemented; payoffs uᵢ(x, θᵢ) realized

## Information Structure
- Each agent knows own type θᵢ; does not directly observe others' types (private values standard case)
- Common knowledge: distribution F, mechanism M, payoff functions u
- Interdependent values case: uᵢ depends on others' types → more complex implementation

## Agent Heterogeneity
- All heterogeneity is in private types θᵢ; the mechanism must elicit this information
- Symmetric agents (common case): types i.i.d., same utility function up to type

## Choice Variables
- Designer: mechanism M = (S, g); or equivalently (by revelation principle), a social choice function f: Θ → X
- Agents: messages sᵢ ∈ Sᵢ (which map to truthful reports θᵢ in a direct mechanism)

## Constraints
- **Incentive Compatibility (IC):** agents prefer to report truthfully (BIC: truth is a BNE; DIC: truth is a dominant strategy)
- **Individual Rationality (IR) / participation:** agents prefer to participate given IC
- **Feasibility / Resource constraint:** outcomes must be feasible (e.g., sum of transfers ≤ 0, Myerson-Satterthwaite)

## Equilibrium Concept or Solution Concept
- **Direct mechanism:** message space = type space; mechanism asks agents to report type directly
- **Revelation Principle:** any BNE outcome of any mechanism can be replicated by a truthful BNE of a direct mechanism → WLOG focus on direct mechanisms where truth-telling is an equilibrium
- **Dominant strategy implementation (DIC):** truth is optimal regardless of others' reports (strong; satisfies ex post IC)
- **Bayesian implementation (BIC):** truth is optimal in expectation over others' types (weaker; more outcomes achievable)

## Main Mechanism
The Revelation Principle reduces the designer's search from an infinite space of mechanisms and equilibria to a manageable space: choose a direct mechanism (allocation rule f(θ) and transfer rule t(θ)) satisfying IC and IR. In the quasi-linear case (payoffs = value − transfer), IC requires:
- In dominant strategies: the allocation rule is an implementable function (characterized by a monotonicity condition)
- In BNE: the expected allocation is monotone in type (Mirrlees-Myerson condition)

Myerson (1981) shows: revenue-maximizing auction = maximize virtual surplus = Σᵢ [vᵢ − (1−F(vᵢ))/f(vᵢ)] · qᵢ(v).

## Common Propositions
- **Revelation Principle:** any outcome achievable by any mechanism in some equilibrium can be achieved by a direct, truthful mechanism in the same equilibrium concept
- **Myerson-Satterthwaite (1983):** no efficient bilateral trade mechanism with voluntary participation and balanced budget; impossibility under private values + two-sided asymmetric information
- **Revenue equivalence (Vickrey-Mirrlees-Myerson):** under standard conditions, all auction formats that allocate to the highest-value bidder yield the same expected revenue
- **Gibbard-Satterthwaite:** any deterministic social choice function implementable in dominant strategies is a dictatorship (for 3+ outcomes); transfers escape this by expanding the choice space

## Comparative Statics Usually Available
- Optimal reserve price in auction: r* solves r − (1−F(r))/f(r) = 0 (virtual value = 0 at reserve)
- Revenue ↑ as n ↑ (more bidders → stronger competition)
- Inefficiency from asymmetric distributions: optimal mechanism distorts allocation away from highest-value bidder to extract more revenue

## Welfare Implications
- Efficient mechanism (maximize total surplus) typically differs from revenue-maximizing mechanism
- Impossibility results (Myerson-Satterthwaite): efficiency with voluntary participation is impossible under two-sided asymmetric information → private negotiations are always (weakly) inefficient
- Public goods provision: Clarke (VCG) mechanism is efficient and incentive-compatible but runs a budget surplus; balanced budget + efficiency + incentive compatibility is generally impossible (Groves-Ledyard trade-offs)

## Common Modeling Pitfalls
- Applying the revelation principle without checking that the equilibrium concept is consistent (e.g., DIC ≠ BIC → different sets of implementable outcomes)
- Forgetting that the revelation principle applies to a fixed equilibrium concept; it does not say all mechanisms yield the same outcomes
- Assuming transfer feasibility is unconstrained when the model requires balanced-budget mechanisms
- Ignoring the participation constraint (ex ante vs. interim vs. ex post IR can generate very different mechanism designs)

## How to Extend the Model
- **Correlated types:** when types are correlated, Cremer-McLean show that the full surplus can be extracted by exploiting correlation; requires specific and often unrealistic mechanisms
- **Dynamic mechanism design:** mechanism designed for repeated interactions; long-term contracts; ratchet effects
- **Robust mechanism design (Bergemann-Morris):** mechanism must work for all possible type distributions, not just a known prior
- **Mechanism design without transfers:** pure social choice implementation; harder implementability conditions
- **Information design as mechanism design:** designer also chooses the information structure (Bayesian persuasion extended)

## Example Research Questions This Model Can Support
- What is the revenue-maximizing auction format when bidders have independent private values with non-symmetric distributions?
- Can a public good be efficiently provided when consumers have private valuations? What mechanism achieves this?
- Is there a mechanism for bilateral trade (buyer and seller with private values) that achieves efficiency and voluntary participation simultaneously?
- What allocation rule for spectrum licenses maximizes total value when bidders have complementarities (combinatorial auction)?
- How should a school district design a student assignment mechanism that is both fair and incentive-compatible?

## Closely Related Model Families
- **Screening** (single principal–agent mechanism design with hidden type)
- **Moral Hazard** (mechanism design with hidden action instead of hidden type)
- **Disclosure / Persuasion / Information Design** (designer chooses information structure and/or mechanism)
- **Matching Models** (mechanism design for two-sided markets without transfers)
- **Principal-Agent Models** (mechanism design restricted to bilateral relationships)

## When This Model Is Not Appropriate
- When agents do not behave strategically or do not optimize (behavioral economics)
- When there is no designer and outcomes emerge from uncontrolled markets (use market equilibrium models)
- When the social choice problem is among alternatives with no private information (use social choice / voting models)
- When the mechanism designer cannot commit to the mechanism (use bargaining or repeated game models)
