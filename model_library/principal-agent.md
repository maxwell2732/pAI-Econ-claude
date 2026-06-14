# Principal-Agent Models

## Model Family Name
Principal-Agent Framework (General)

## Canonical Economic Question
When one party (principal) delegates a task or decision to another party (agent) who has private information or takes private actions, what is the optimal contractual relationship, and how does the information friction affect the allocation of risk, effort, and surplus?

## When to Use This Model
- As the organizing framework for any delegation relationship with information asymmetry
- When the question involves the design of contracts under either hidden action (moral hazard) or hidden type (adverse selection / screening)
- When the research spans multiple information frictions (e.g., effort + type simultaneously)
- When analyzing authority, delegation, and organizational design under information constraints

## Typical Primitives
- Principal (P): uninformed party; designs a contract; typically risk-neutral
- Agent (A): informed party; takes an action or has a type; typically risk-averse or privately informed
- Contract: a mapping from observable outcomes to transfers and/or allocation rules
- Payoffs: principal profits from agent's action/type; agent values contract terms minus effort/disutility
- Information: the key primitive that distinguishes model variants:
  - Hidden type (θ) → Screening model
  - Hidden action (e) → Moral Hazard model
  - Hidden type + hidden action → Combined model

## Timing
- **Screening (static):**
  1. Agent learns type θ
  2. Principal offers menu of contracts
  3. Agent selects contract
  4. Agent takes action (observable or irrelevant)
  5. Payoffs realized

- **Moral Hazard (static):**
  1. Principal offers contract w(y)
  2. Agent accepts or rejects (IR)
  3. Agent chooses effort e (unobservable)
  4. Output y = y(e, ε) realized
  5. Transfer w(y) paid

- **Dynamic:** contracts span multiple periods; add renegotiation, ratchet effects, or long-term commitment

## Information Structure
- **Adverse selection / Screening:** agent has private information before contracting; principal knows only the distribution of types
- **Moral hazard:** agent's action is taken after the contract is signed; principal cannot observe the action, only outcomes
- **Combined:** agent has private type (adverse selection) and then takes hidden action (moral hazard); doubly constrained mechanism design

## Agent Heterogeneity
- Types θ: govern how costly effort is, how productive the agent is, or what the agent's outside option is
- Multiple agents: team production (Holmstrom), competitive screening (Rothschild-Stiglitz), auction-theoretic selection

## Choice Variables
- Principal: contract terms (wage schedule, allocation rule, transfer function)
- Agent: which contract to accept; what effort level to exert (moral hazard) or which contract from a menu to select (screening)

## Constraints
- **IR (Participation Constraint):** agent's expected payoff ≥ outside option Ū
- **IC (Incentive Compatibility):**
  - Screening: each type prefers its own contract to others
  - Moral hazard: agent's effort is a best response to the contract
- **Limited liability:** transfers may have a floor (agent cannot be charged large negative amounts)
- **Budget balance:** principal's profit = output − transfer; resources must be feasible

## Equilibrium Concept or Solution Concept
- **Constrained optimization:** principal maximizes expected payoff subject to IR and IC
- **Revelation Principle (screening):** WLOG, consider direct mechanisms where agents truthfully report type
- **First-Order Approach (moral hazard):** replace IC with agent's FOC for effort; valid under MLRP + CDFC conditions
- **Adverse selection + moral hazard (combined):** screening IC + moral hazard IC must hold simultaneously; more complex — screening may unravel under moral hazard

## Main Mechanism
The unifying insight of the principal-agent framework is that information rents and effort distortions are the cost of information asymmetry. Under adverse selection, the principal sacrifices efficiency (distorts the allocation) to reduce rents paid to better-informed types. Under moral hazard, the principal imposes risk on the agent to maintain effort incentives. The second-best contract trades these costs against the principal's rent extraction and profit maximization goals.

**Information rent (screening):** U*(θ) = ∫ ∂S(q*(s), s)/∂s ds > 0 for all but the lowest type.

**Incentive power (moral hazard):** optimal contract makes w(y) increasing in y; the slope (incentive power) depends on signal informativeness and agent risk aversion.

## Common Propositions
- **Screening:** no distortion at the top; downward distortion for all other types; information rents are increasing in type
- **Moral hazard:** second-best effort < first-best; risk-neutral agent: first-best achievable via fixed fee ("franchise")
- **Combined (Laffont-Tirole 1986):** with both hidden type and hidden action, optimal contract distorts both effort and allocation; the information rent may increase or decrease relative to pure screening depending on cost structure
- **Dynamic principal-agent:** in stationary environments, optimal long-term contract is history-dependent; past performance affects current allocation (backloading rewards)

## Comparative Statics Usually Available
- More risk-averse agent → higher risk premium → larger distortion from first-best in moral hazard
- Greater type dispersion → higher information rents → larger distortion in screening
- Better performance signal → higher-powered incentives sustainable in moral hazard
- Long-term contracts: repeated interaction relaxes incentive constraints via dynamic incentives

## Welfare Implications
- The information asymmetry always generates a welfare loss relative to first-best; the size of the loss depends on the severity of the information problem
- If the principal has market power, they extract information rents; agents are held to their reservation utility in competitive markets
- Competitive markets for principals (screening): Rothschild-Stiglitz competitive equilibrium may fail to exist or produce cross-subsidization
- Regulatory applications: the regulator (principal) regulates a firm (agent) with private information about costs

## Common Modeling Pitfalls
- Mixing up the moral hazard and adverse selection frameworks; they have different timing, different constraint sets, and different solutions
- Applying the revelation principle to moral hazard (the revelation principle applies to hidden type, not hidden action)
- Ignoring limited liability when it is economically relevant (especially in financial contracting)
- Assuming IR binds at the bottom type without verifying this holds (fails with type-dependent outside options)

## How to Extend the Model
- **Common agency:** multiple principals each contract with the same agent; conflicting incentives; Bernheim-Whinston
- **Delegation vs. control:** principal decides how much discretion to give the agent; authority is endogenous
- **Relational contracts:** informal contracts enforced by repeated interaction; first-best may be achievable without formal contracting
- **Renegotiation:** if contract can be renegotiated, commitment problems arise; affects design of optimal initial contract
- **Political economy:** principal is a committee or electorate; agent is a politician or bureaucrat; information asymmetries in governance

## Example Research Questions This Model Can Support
- How should a hospital design physician compensation to balance cost containment with quality of care?
- What is the optimal regulatory tariff for a public utility with private cost information and a moral hazard problem in cost reduction?
- When does a franchisor optimally allow a franchisee to be the residual claimant rather than using a fixed fee?
- How does the presence of both hidden type and hidden effort affect the optimal audit contract in a public procurement setting?
- Does competition among principals (multiple employers bidding for one worker) mitigate the efficiency loss from moral hazard?

## Closely Related Model Families
- **Screening** (hidden type variant — see separate template)
- **Moral Hazard** (hidden action variant — see separate template)
- **Mechanism Design** (principal-agent is a special case of mechanism design with one agent)
- **Signaling** (agent moves first to reveal type; roles of sender/receiver are reversed from screening)
- **Dynamic Optimization / Bellman** (dynamic principal-agent solved as a Bellman equation with continuation utility as state)

## When This Model Is Not Appropriate
- When there is no delegation relationship (both parties have equal information and symmetric roles)
- When the information asymmetry is irrelevant (e.g., both parties want to maximize the same objective)
- When the parties cannot write any contract at all (use non-contractible investment / hold-up models)
- When there are many principals and many agents with decentralized interaction (use competitive market / general equilibrium)
