# Dynamic Optimization / Bellman Equation

## Model Family Name
Dynamic Programming / Bellman Equation / Optimal Control in Discrete or Continuous Time

## Canonical Economic Question
How does a forward-looking agent optimally allocate resources over time when today's choices constrain tomorrow's opportunities, and how does the value of the problem decompose recursively?

## When to Use This Model
- When the core tension is intertemporal: choices today affect the feasible set or payoffs in future periods
- As a template for any model where agents have a state variable that evolves over time based on their decisions
- When deriving optimal savings, investment, consumption, or effort paths
- When analyzing dynamic contracting, career decisions, or any sequential decision problem with a well-defined state

## Typical Primitives
- State variable sₜ ∈ S (e.g., wealth, capital stock, human capital, health)
- Action/control variable aₜ ∈ A(sₜ) (choice set may depend on current state)
- Transition law: sₜ₊₁ = f(sₜ, aₜ, εₜ₊₁) where εₜ₊₁ is a stochastic shock (or deterministic if no uncertainty)
- Period payoff: u(sₜ, aₜ)
- Discount factor β ∈ (0, 1) (discrete time) or discount rate r (continuous time)
- Objective: max E[Σₜ βᵗ u(sₜ, aₜ)] subject to the transition law and initial condition s₀

## Timing
(Each period t:)
1. Agent enters period t with state sₜ
2. Shock εₜ is realized (if stochastic)
3. Agent chooses action aₜ ∈ A(sₜ)
4. Period payoff u(sₜ, aₜ) is received
5. State transitions: sₜ₊₁ = f(sₜ, aₜ, εₜ₊₁)

## Information Structure
- **Perfect information:** agent observes own state sₜ exactly
- **Partial information:** agent observes a noisy signal of state (Kalman filtering or optimal control with hidden state)
- **Markovian:** optimal policy depends only on the current state sₜ, not on the history (key Bellman property)

## Agent Heterogeneity
- Agents may differ in initial state s₀, in preferences (discount factor β, utility u), or in the transition technology f
- Heterogeneous agent models: distribution of state variables across agents evolves as part of equilibrium (Huggett, Aiyagari models)

## Choice Variables
- Action aₜ chosen each period; in optimization, this generates a policy function σ(sₜ): state → action

## Constraints
- Feasibility: aₜ ∈ A(sₜ) (action set depends on state; often includes non-negativity or budget constraints)
- Transition law: state evolution is governed by f; the agent does not choose the next state directly
- Transversality condition (infinite horizon): lim_{T→∞} βᵀ V(sT) = 0 (no terminal debt or infinite asset accumulation)

## Equilibrium Concept or Solution Concept
- **Bellman equation (Value Function Iteration):**
  V(s) = max_{a ∈ A(s)} {u(s, a) + β E[V(f(s, a, ε'))]}
- The optimal policy function σ*(s) = argmax RHS of Bellman equation
- **Contraction Mapping Theorem:** the Bellman operator T is a contraction on the space of bounded continuous functions → unique fixed point V* exists; value function iteration converges
- **Policy function iteration:** alternative algorithm, often faster
- **Euler equation approach:** in smooth interior problems, first-order conditions across periods give an Euler equation characterizing the optimal path without directly solving for V

## Main Mechanism
The key insight: a multi-period optimization problem decomposes into a sequence of single-period problems via the value function. The value V(s) = the best achievable expected discounted utility starting from state s, under the optimal policy. Today's optimal action trades off current payoff against the continuation value. This recursive decomposition dramatically simplifies the problem: instead of choosing an infinite-dimensional path, the agent chooses a simple policy function.

## Common Propositions
- **Principle of Optimality (Bellman 1957):** the tail of an optimal policy is optimal for the tail problem — this justifies the recursive decomposition
- **Contraction of the Bellman operator:** V* is the unique fixed point; iteration from any starting guess converges
- **Monotone Value Function:** if u is increasing in s and A(s) is expanding in s (in the lattice sense), V* is increasing in s
- **Differentiability (Benveniste-Scheinkman):** under regularity conditions, V* is differentiable and ∂V*/∂s = ∂u/∂s along the optimal path (Envelope Theorem)
- **Euler Equation:** in consumption-savings model, u'(cₜ) = β(1+r) E[u'(cₜ₊₁)] characterizes optimal consumption without solving for V directly

## Comparative Statics Usually Available
- Higher β → more patient agent → more savings/investment today; smoother consumption path
- Higher r (discount rate) → more impatient; lower savings
- Higher income risk → precautionary savings (if u'' > 0, i.e., prudent preferences)
- Tighter borrowing constraint → consumption-smoothing reduced; precautionary motive stronger

## Welfare Implications
- Welfare = V*(s₀): the value function evaluated at the initial state is the measure of lifetime welfare
- Policy interventions can be evaluated by their effect on V*(s₀)
- Welfare costs of business cycles (Lucas 1987): measured as the consumption equivalent variation in V*
- Inequality: heterogeneous initial states s₀ → heterogeneous lifetime welfare V*(s₀)

## Common Modeling Pitfalls
- Ignoring the transversality condition in infinite-horizon problems: it rules out Ponzi schemes and non-optimal solutions that otherwise satisfy the Euler equation
- Conflating the policy function (which maps states to actions) with the value function (which maps states to utility levels)
- Applying value function iteration to a problem that is not well-defined (unbounded payoffs, no discount factor): the Contraction Mapping Theorem requires β < 1 and bounded u
- Forgetting that the Bellman approach requires the state variable to capture everything relevant for future payoffs — if the problem is not Markovian, the state space must be augmented

## How to Extend the Model
- **Continuous time (Hamilton-Jacobi-Bellman):** differential equation version; useful for GBM (geometric Brownian motion) state processes; option pricing as a control problem
- **Heterogeneous agents (Huggett-Aiyagari):** continuum of agents with idiosyncratic shocks; general equilibrium requires consistency between individual savings decisions and aggregate capital
- **Dynamic contracting:** the state variable is the agent's continuation utility; the principal designs the optimal dynamic contract as a Bellman equation
- **Search model as Bellman:** reservation value = fixed point of the Bellman equation for the search problem
- **Endogenous state evolution:** state variable is partially controlled (e.g., human capital as a choice, not just wage)

## Example Research Questions This Model Can Support
- What is the optimal consumption-savings path for a household facing uninsurable income risk, and how do borrowing constraints alter it?
- How does the introduction of a forced savings pension scheme affect lifecycle consumption and welfare?
- What is the optimal stopping time (retirement age) for a worker whose productivity declines with age?
- How does the dynamic complementarity of human capital investment across life stages affect the optimal investment path?
- What policy achieves the Ramsey optimal growth path, and how much does a suboptimal tax wedge distort the capital-labor ratio?

## Closely Related Model Families
- **Overlapping Generations / Life-Cycle Models** (dynamic optimization with a finite horizon and generational structure)
- **Search Models** (optimal stopping in a Bellman framework)
- **Ben-Porath Model** (human capital accumulation as a dynamic optimization — see human_capital_and_labor/ library)
- **Moral Hazard** (dynamic principal-agent model solved as a Bellman equation with agent's continuation utility as state)

## When This Model Is Not Appropriate
- When agents are not forward-looking (static models, myopic behavior, or behavioral models with present bias)
- When the state variable does not capture all relevant history (non-Markovian problems require a different framework)
- When the problem has no natural temporal structure (purely static decision problems)
- When computational tractability is not available and the state space is too large for numerical solution (dimensionality curse)
