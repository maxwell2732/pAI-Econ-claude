# Rational Inattention

## Model Family Name
Rational Inattention (RI) — Sims (2003, 2010)

## Canonical Economic Question
When an agent has a limited capacity to process information (measured in bits), how does the agent optimally allocate attention across signals, and what decision rules and response patterns result?

## When to Use This Model
- When the core phenomenon is that agents respond sluggishly, imprecisely, or selectively to available information — not because they lack access to it, but because processing it is costly
- When explaining inertia, price stickiness, delayed response to shocks, or heterogeneous updating
- When the question concerns which dimensions of a problem agents choose to pay attention to
- When a unified theory of both the choice of what to learn and the distribution of actions given learning is required

## Typical Primitives
- State θ ∈ ℝ (often: state of the world, product quality, price level) with prior θ ∼ N(μ₀, σ₀²)
- Action a ∈ ℝ; loss function L(a, θ) — typically quadratic: L(a, θ) = (a − θ)²
- Information capacity κ ≥ 0 bits (the agent's attention budget)
- Mutual information cost: I(θ; s) = H(θ) − H(θ|s), where H is Shannon entropy
- Agent chooses a signal structure (channel) P(s|θ) subject to I(θ; s) ≤ κ, then observes s and takes action a*(s)

## Timing
1. Agent is endowed with attention budget κ
2. Agent chooses a channel (signal structure) P(s|θ) with I(θ; s) ≤ κ
3. Nature draws θ; channel produces signal s ∼ P(·|θ)
4. Agent observes s, forms posterior μ(θ|s), and takes action a*(μ)
5. Loss L(a*(s), θ) is realized

## Information Structure
- Prior: θ ∼ μ₀ (known to the agent before attention is allocated)
- Signal: s is an endogenous object — the agent designs the channel P(s|θ)
- Fundamental distinction from exogenous information: the agent chooses *what* to observe, not just *whether* to observe it
- Under Gaussian prior and quadratic loss: optimal channel is also Gaussian → closed-form solutions

## Agent Heterogeneity
- Agents differ in attention budget κ: high-κ agents are nearly fully informed; low-κ agents respond only to the most important signal dimensions
- Agents may differ in loss functions (stakes): high-stakes agents allocate more attention even at the same κ

## Choice Variables
- Channel P(s|θ) — the mapping from states to signal distributions (the primary choice)
- Action a as a function of observed signal s

## Constraints
- Information capacity: I(θ; s) ≤ κ
- Under multiple states (multivariate θ): agent allocates attention across dimensions of θ subject to total capacity ≤ κ

## Equilibrium Concept or Solution Concept
- Single-agent: choose P(s|θ) and decision rule a(s) to minimize E[L(a, θ)] subject to I(θ; s) ≤ κ
- Gaussian-quadratic case: optimal posterior variance σ_a² = σ₀² · 2^{-2κ} (capacity reduces posterior variance by 2^{2κ}); residual uncertainty is irreducible
- Multi-agent / pricing context: firms or agents may have strategic incentives to direct others' attention (connects to information design)

## Main Mechanism
With finite attention capacity, agents cannot track all dimensions of θ precisely. The optimal channel concentrates attention on the dimension with the highest payoff-relevant uncertainty. Under quadratic loss, this means: pay most attention to the highest-variance components of the state; ignore dimensions where prior uncertainty is low relative to their impact on the loss function. As a result, actions are *noisy* — identical agents observing the same state will take different actions due to heterogeneous private signals drawn from the designed channel.

## Common Propositions
- **Inattention reduces responsiveness:** Action responds to state θ with coefficient ρ = 1 − σ_a²/σ₀² < 1 (partial adjustment)
- **Gaussian solution under quadratic loss:** Optimal channel is Gaussian with precision proportional to capacity
- **Stochastic choice from RI:** Optimal choice is a random function of the state; distribution of actions is bell-shaped around the optimal action
- **Salience of stakes:** As the loss from wrong action rises, agent optimally allocates more attention to the decision → RI predicts state-dependent attentiveness
- **Categorical perception:** Under discrete action space, RI generates coarse partitioning of the state space — agent responds only when the signal crosses a category boundary

## Comparative Statics Usually Available
- Higher κ → lower posterior variance → actions track state more closely
- Higher prior variance σ₀² → more information value → agent may pay more attention (if κ is endogenous)
- Higher stakes (loss coefficient) → more attention allocated to this decision; other decisions neglected
- More dimensions of θ: attention spread thinner → each dimension tracked less precisely

## Welfare Implications
- Information costs are borne by the agent; externalities arise when actions of inattentive agents affect others (e.g., price-setters who ignore macro shocks cause real rigidities)
- Social planner with attention subsidies can improve welfare by directing agents to attend to high-externality signals
- Overabundance of signals (information overload) can lower welfare if agents cannot identify which signals deserve attention

## Common Modeling Pitfalls
- Assuming the attention budget κ is fixed and exogenous when the question concerns its determinants
- Applying RI to a setting where Shannon mutual information is not the natural cost (e.g., when agents literally cannot see signals, not just choose not to process them)
- Ignoring that under RI, *all* posterior distributions are endogenous — the analyst cannot assume a fixed signal structure and call it rational inattention
- Treating RI as equivalent to having an exogenous noisy signal; in RI, the noise structure is itself a choice

## How to Extend the Model
- **Endogenous capacity:** κ is chosen by the agent at cost C(κ) — where to invest in attention overall
- **Dynamic RI (Steiner-Stewart-Matejka):** agent tracks a changing state θₜ; attention capacity limits how quickly beliefs update
- **RI in games:** players have limited attention for tracking opponents' strategies; creates strategic complementarity in inattention
- **RI with discrete actions (Matejka-McKay 2015):** optimal stochastic choice follows a logit-like rule (connects RI to discrete choice / multinomial logit)
- **Menu effects / salience:** items on a menu affect what agents attend to — firm can manipulate attention allocation

## Example Research Questions This Model Can Support
- Why do consumers fail to respond fully to prominent nutritional information even when it is displayed on the front of a package?
- What share of wage rigidity can be explained by employers' rational inattention to productivity shocks?
- How does the structure of an insurance plan (number of options, complexity of pricing) affect how well consumers match plans to their health needs?
- Can RI explain the excess sensitivity of consumption to income surprises?
- How should a regulator design disclosure policy when consumers have limited capacity to process product disclosures?

## Closely Related Model Families
- **Costly Information Acquisition** (more general: cost function need not be mutual information; acquisition choice may be sequential)
- **Search Models** (sequential acquisition from a distribution; different cost structure than Shannon capacity)
- **Disclosure / Persuasion / Information Design** (the signal structure is chosen by a sender with strategic interests, not by the receiver)
- **Discrete Choice / Random Utility** (Matejka-McKay: RI with discrete actions generates a logit-like choice rule)

## When This Model Is Not Appropriate
- When agents have abundant attention and fail to process information for other reasons (limited memory, motivated reasoning, overconfidence)
- When the primary friction is strategic information transmission (one informed party communicating with an uninformed party)
- When information is literally inaccessible (not just costly to process) — use Search Models or exogenous information structure
- When the attention cost is not naturally measured in bits (e.g., physical effort or financial cost of acquiring data)

## Empirical Paper Caution

**High risk of superficial use in empirical papers.** Rational Inattention is
technically demanding (Shannon mutual information, endogenous signal structure)
and its empirical predictions are often observationally equivalent to simpler
bounded-rationality or noisy-signal models.

Two failure modes observed in practice:
1. **Concept only, no structure:** The "model" amounts to: "let κ be an
   attention capacity; agents with low κ respond less." This uses RI language
   but contains none of the information-theoretic content (no endogenous channel
   choice, no stochastic choice result). It does not constitute a Sims RI model
   and should not cite Sims (2003).
2. **Gaussian machinery with no empirical bridge:** Full RI generates predictions
   about the *joint distribution* of actions and states. Standard empirical
   designs estimate conditional means (OLS/IV). The mapping is rarely made
   explicit.

**When RI is defensible in an empirical paper:**
- The paper directly estimates an agent's information capacity (e.g., via
  structural estimation of the posterior variance)
- The paper's identifying variation is specifically about *selective* attention
  (which dimensions agents choose to track), not just imperfect response
- The paper uses a Matejka-McKay (2015) discrete-choice RI formulation, which
  has a clean logit-like empirical counterpart

**AI execution risk:** AI will default to "add a κ ≤ κ̄ constraint" and call it
rational inattention. Unless the research question is specifically about the
structure of attention allocation (not just "agents don't respond fully"), prefer
**Costly Information Acquisition** (more general, easier to connect to empirics)
or simply model imperfect information with an exogenous noise term.
