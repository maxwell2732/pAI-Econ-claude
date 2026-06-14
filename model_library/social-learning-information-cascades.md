# Social Learning / Information Cascades

## Model Family Name
Social Learning / Herding / Information Cascades (Bikhchandani-Hirshleifer-Welch 1992, Banerjee 1992)

## Canonical Economic Question
When agents make decisions sequentially and can observe the actions (but not beliefs) of predecessors, do their actions efficiently aggregate private information, and under what conditions do all agents herd on a single action regardless of their own private signal?

## When to Use This Model
- When agents make sequential decisions and learn from observing predecessors' choices
- When the question concerns information aggregation in markets, adoption decisions, or social norms
- When analyzing why fashions, technological standards, or investment frenzies spread even when individual signals are mixed
- When distinguishing between informational herding (rational cascade) and payoff externalities (strategic complementarities)

## Typical Primitives
- Binary state: θ ∈ {G, B} (good, bad); prior P(θ = G) = p₀
- n agents making binary decisions in sequence (or simultaneously in extended models): dᵢ ∈ {0, 1}
- Private signal sᵢ ∈ {g, b}: accuracy q = P(sᵢ = g | θ = G) = P(sᵢ = b | θ = B) > 1/2
- Each agent observes the sequence of all prior actions (d₁,...,dᵢ₋₁) but not predecessors' signals
- Agent i chooses dᵢ to maximize P(θ = G | public history, sᵢ)

## Timing
1. Nature draws θ ∈ {G, B}
2. Each agent i = 1, 2, ... in sequence:
   a. Observes public action history Hᵢ = (d₁,...,dᵢ₋₁)
   b. Receives private signal sᵢ
   c. Forms posterior P(θ = G | Hᵢ, sᵢ) and takes action dᵢ*(Hᵢ, sᵢ)
3. Once a cascade starts, all subsequent agents take the same action regardless of private signal

## Information Structure
- Private information: sᵢ is agent i's private signal (unobservable to others)
- Public information: action history Hᵢ is fully observable to all later agents
- Critical asymmetry: agents observe actions, not signals; this prevents full information aggregation

## Agent Heterogeneity
- Standard model: homogeneous agents with identical signal accuracy q
- Extended: heterogeneous signal accuracy qᵢ; heterogeneous decision thresholds; continuous action spaces

## Choice Variables
- Each agent: binary decision dᵢ ∈ {0, 1} (adopt/reject, invest/abstain, buy/sell)

## Constraints
- Bayesian rationality: each agent updates beliefs using Bayes' rule
- Sequential rationality: each agent is forward-looking but treats the game as a decision problem (not a strategic game in the standard cascade model — each agent takes prior actions as given data)

## Equilibrium Concept or Solution Concept
- **Rational cascade equilibrium (Bikhchandani et al.):** agents use Bayes' rule; cascade occurs when the public belief is so strong in one direction that the private signal is overridden
- **Cascade condition:** a cascade starts when the public likelihood ratio exceeds q/(1−q) (signal accuracy threshold) in either direction — private signal cannot shift the decision
- Once a cascade starts, all private information becomes irrelevant; the social learning process stops
- **Bayesian herding:** herding is rational at the individual level; it is informationally inefficient at the social level

## Main Mechanism
Early agents act on both their private signal and the public history. If the first few agents coincidentally receive the same signal, the public history becomes so informative that later agents ignore their private signals. A cascade then forms: all remaining agents take the same action, regardless of their private information. This cascade is fragile: a public signal that contradicts the cascade belief can reverse it. The cascade is informationally inefficient: private signals of agents in the cascade are never revealed, so the social belief can be wrong even when the majority of private signals point to the correct state.

## Common Propositions
- **Cascade existence (Bikhchandani et al.):** almost surely, a cascade forms in finite time; the cascade may be on the wrong action with positive probability
- **Social inefficiency:** cascade actions are not sufficient statistics for the state; social learning halts before all private information is revealed
- **Fragility:** cascades break upon observation of a single non-conforming public signal or a single sufficiently informative agent
- **Speed of learning:** with iid signals, learning rate = O(1/n) only until the cascade; faster with more accurate signals but never reaches full information
- **Threshold structure:** agent i adopts iff P(G | Hᵢ, sᵢ) ≥ 1/2; cascade begins when the threshold is crossed by the public belief alone

## Comparative Statics Usually Available
- Higher signal accuracy q → cascade forms faster but is more likely to be correct
- Larger n → higher probability of cascade on correct state (with sufficient initial heterogeneity)
- Public signal released mid-sequence → breaks the cascade; resets the learning process
- With continuous signals and actions (Smith-Sørensen 2000): complete learning is possible (no cascade) if signal distributions have full support and unbounded likelihood ratios

## Welfare Implications
- Individual rationality ≠ collective rationality: rational herding is collectively suboptimal
- Market designer can improve welfare by aggregating some private signals publicly (e.g., polls, clinical trial results)
- Cascades can persist even when the cascade action is collectively wrong — coordination failure embedded in the information structure
- Policy implications: delaying individual decisions until public information accumulates can improve learning; staggered release of information reduces cascade speed

## Common Modeling Pitfalls
- Confusing informational herding with payoff externalities (strategic complementarities) — they look similar empirically but have different theoretical foundations and different policy implications
- Assuming all herding is irrational; in this model, herding is fully rational given the information available
- Forgetting that cascades depend on signal accuracy — very accurate signals prevent cascades; very inaccurate signals generate correct cascades with lower probability
- Applying the cascade model when agents observe signals, not actions (then full learning occurs trivially)

## How to Extend the Model
- **Continuous signals (Smith-Sørensen 2000):** complete learning when signal distributions have full support; shows the binary model's cascade is a fragility of discreteness
- **Simultaneous social learning:** agents observe a random sample of past actions (network models); learning speed depends on network structure
- **Endogenous timing:** agents choose when to act; option value of waiting creates strategic delay
- **Strategic herding:** agents have incentives to conform for reputational reasons, not just informational ones (Scharfstein-Stein)
- **Networks:** agents observe the actions of neighbors on a graph; cascade dynamics depend on network topology

## Example Research Questions This Model Can Support
- Why do new restaurants cluster in success or failure waves even when individual diners have independent assessments?
- Can the rapid adoption of a new technology by early users rationally cause later users to adopt even without direct evidence of quality?
- Does the sequential release of pharmaceutical clinical trial results create informational cascades that distort medical practice?
- How does social media amplify or dampen informational cascades in financial markets?
- When should a government release information about a public health intervention to maximize behavioral learning and minimize cascade-driven mistakes?

## Closely Related Model Families
- **Costly Information Acquisition** (agent decides whether to acquire a private signal before acting; in cascade model, signal is free but ignored)
- **Rational Inattention** (agent ignores some dimensions of available information; cascade model ignores private signal due to strong public belief)
- **Disclosure / Persuasion** (a designer chooses the public signal structure; connects to optimal cascade management)
- **Search Models** (agent learns about alternatives sequentially; cascade model is about learning from social behavior, not from direct sampling)

## When This Model Is Not Appropriate
- When agents can observe others' private signals or beliefs directly (full information aggregation)
- When agents act simultaneously (no social learning from prior actions in the standard simultaneous case)
- When the question is about strategic manipulation of information for private gain (use Signaling or Cheap Talk)
- When network structure is the primary driver of learning dynamics (use network formation and diffusion models)
