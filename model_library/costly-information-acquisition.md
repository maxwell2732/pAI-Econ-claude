# Costly Information Acquisition

## Model Family Name
Costly Information Acquisition / Attention Allocation

## Canonical Economic Question
When acquiring information is costly, how much information does a rational agent choose to acquire before making a decision, and how does the precision of acquired information respond to the stakes of the decision and the cost of attention?

## When to Use This Model
- When the central question is how much information agents collect before deciding, not just what they decide
- When the cost of processing, searching for, or verifying information is a first-order factor
- When agents choose which of several signals to acquire (information choice, not just stopping rule)
- When the value of information (VOI) framework is needed to price a signal before it is revealed
- When analyzing attention allocation: scarce cognitive resources assigned to multiple tasks

## Typical Primitives
- State of the world θ ∈ Θ, unknown to the decision-maker before acquiring information
- Action space A; decision-maker chooses action a after observing signal s
- Payoff: u(a, θ) — depends on both action and state
- Prior belief μ₀ over θ
- Signal technology: acquiring signal s costs c(s) or c(π) where π is the precision of s
- Expected payoff from acquiring signal s: E[max_a E[u(a,θ) | s]] − c(s)

## Timing
1. Decision-maker observes prior μ₀
2. Decision-maker chooses which signals to acquire (and how many), paying cost c per signal
3. Signals are revealed
4. Decision-maker updates beliefs to posterior μ and takes optimal action a*(μ)
5. Payoff u(a*(μ), θ) is realized

## Information Structure
- State θ is unknown; signal s is informative about θ
- Signals may be: a noisy binary test, a precise measurement with Gaussian error, a search draw, or an expert's recommendation
- Prior: μ₀ known to decision-maker; posterior formed by Bayes' rule after signal realization
- Acquired signals may be public or private (matters if other agents are present)

## Agent Heterogeneity
- Agents may differ in: prior beliefs μ₀, payoff functions u(a, θ), signal costs c, or decision stakes
- High-stakes agents acquire more precise signals; low-cost agents acquire more signals

## Choice Variables
- Which signals to acquire and in what quantity (or: the precision level π of a Gaussian signal)
- After observing signals: the action a ∈ A

## Constraints
- Information cost constraint: total expenditure on signals ≤ budget B (or enter cost directly into objective)
- Bayesian updating: posterior must be consistent with prior and acquired signals
- In some models: total time or attention capacity ≤ T (capacity constraint, linking to Rational Inattention)

## Equilibrium Concept or Solution Concept
- Single-agent: maximize expected utility net of information acquisition costs; this defines the optimal information demand
- Multi-agent: if information is used in a game, equilibrium requires consistency between beliefs and strategies (BNE with endogenous information)
- Value of information (VOI): agent acquires signal s iff VOI(s) ≥ c(s), where VOI(s) = E[V(μ_s)] − V(μ₀) (expected posterior value minus prior value)

## Main Mechanism
The value of a signal equals the expected improvement in decision quality. The agent trades off the cost of the signal against this expected improvement. Signals are most valuable when: (1) the prior is close to a decision threshold (uncertainty is high), (2) the payoff difference between actions is large (stakes are high), or (3) the signal is highly informative (low noise). Below a threshold stake level or above a threshold cost, no information is acquired — the agent acts on the prior alone.

## Common Propositions
- **VOI is non-negative:** acquiring information cannot decrease expected payoff (before paying cost)
- **Information complementarity:** when two signals address different sources of uncertainty, acquiring both yields more than the sum of individual values
- **Information substitutability:** when two signals address the same uncertainty, their joint value is less than the sum (diminishing value of redundant information)
- **Threshold rule for acquisition:** agent acquires signal s iff VOI(s) ≥ c(s)
- **Stakes monotonicity:** VOI is increasing in the stakes |u(a₁,θ) − u(a₂,θ)| of the decision

## Comparative Statics Usually Available
- Acquisition ↑ as stakes ↑; acquisition ↓ as cost c ↑
- Precision of acquired signal ↑ when prior is near decision threshold (uncertainty effect)
- With multiple signals: agent substitutes toward cheaper signals; complements may be bundled
- Time pressure (reduced decision horizon): lowers expected VOI → less information acquired

## Welfare Implications
- Underacquisition when there are positive externalities of information (e.g., public health research, price discovery)
- Overacquisition when agents acquire information to rent-seek or to positional-advantage others (zero-sum contexts)
- Subsidizing information acquisition (e.g., mandatory nutritional labels) can correct underacquisition but may induce information overload if attention is scarce

## Common Modeling Pitfalls
- Conflating the decision to acquire information (ex ante) with the decision given information (ex post)
- Assuming signals are always acquired (i.e., ignoring the endogenous acquisition margin)
- Treating signals as exogenous when their precision or informativeness is itself a choice variable
- Ignoring correlations among signals when computing joint informativeness

## How to Extend the Model
- **Sequential acquisition (Wald 1947):** agent draws signals one at a time and stops when the value of more information falls below the cost → optimal stopping problem
- **Rational Inattention (Sims 2003):** cost is mutual information (Shannon capacity); generates endogenous inattention even with zero direct cost
- **Strategic information acquisition:** multiple agents acquire information simultaneously; creates free-rider problems in information production
- **Verifiable information:** agent's acquired information is certifiable → connects to Disclosure / Persuasion models
- **Expert information:** decision-maker hires an expert to acquire and report signal → principal-agent problem over information

## Example Research Questions This Model Can Support
- When should a consumer choose to read a nutritional label before purchasing food, and how does the label's informativeness and the stakes (dietary risk) affect the decision?
- How much information does a voter optimally acquire about candidates given the low probability that a single vote is pivotal?
- What is the optimal test to commission (at what precision level) before making an irreversible investment decision?
- Do physicians order too many diagnostic tests? When is overacquisition relative to the social optimum likely?
- How does mandatory information disclosure (e.g., credit card fee disclosure) affect the quantity of information that consumers actually process?

## Closely Related Model Families
- **Search Models** (sequential acquisition from a known offer distribution — special case)
- **Rational Inattention** (Shannon mutual information cost — same framework, entropic cost)
- **Signaling** (informed party strategically reveals/conceals information — different direction of information flow)
- **Disclosure / Persuasion / Information Design** (designer chooses signal structure; acquirer is passive)
- **Moral Hazard** (agent's action is the acquisition of information when the principal cannot observe effort)

## When This Model Is Not Appropriate
- When information is freely available and costlessly processed by all agents
- When the primary distortion is strategic information transmission, not acquisition (use Signaling or Cheap Talk)
- When the agent faces moral hazard about actions (not information) after the decision (use Moral Hazard)
- When the question is purely about belief updating without any acquisition decision (use Bayesian updating)
