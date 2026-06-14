# Search Models

## Model Family Name
Sequential Search / Job Search / Price Search

## Canonical Economic Question
When information is costly to acquire and agents search sequentially, what is the optimal stopping rule, and what are the equilibrium implications for prices, wages, or match quality?

## When to Use This Model
- When the primary friction is that agents must actively acquire information about alternatives (prices, wages, quality, partners)
- When the question concerns reservation values, search duration, or the option value of continued search
- When explaining price dispersion, wage dispersion, or unemployment duration in equilibrium
- When agents face a sequential decision: sample one option at a time and decide to accept or search further

## Typical Primitives
- Searcher with payoff u(x) from match with value x (e.g., wage, price, quality)
- Distribution of offers F(x) — known to the searcher (standard assumption)
- Search cost c per round (fixed) or discount factor δ ∈ (0,1) per period
- Payoff from stopping: accept the current offer; payoff from continuing: draw a new offer and pay c

## Timing
1. Agent draws an offer x from F(x); observes x
2. Agent decides: ACCEPT x now (receive x forever / in this period) or REJECT (pay cost c, draw new offer next period)
3. Process repeats until agent accepts
4. Key: sampled offers are independent draws; previous rejections are not held (standard); can be recalled or not (with/without recall)

## Information Structure
- Agent knows the distribution F(x) and the cost c (full information about the environment)
- Agent does not know the value of the next offer before drawing it
- Sequential revelation: each sampled offer is observed after sampling, before the next draw

## Agent Heterogeneity
- Searchers may differ in search costs cᵢ or utility functions uᵢ — generates heterogeneous reservation wages
- On the other side of the market: firms (Mortensen-Pissarides) or sellers (Burdett-Judd) may also search and be heterogeneous

## Choice Variables
- Whether to accept or reject each sampled offer
- Optionally: search intensity (how hard to search per period) if costly search intensity is modeled

## Constraints
- Budget constraint if search is costly and the agent has finite resources (rare in simple models)
- Time horizon: finite or infinite horizon changes the reservation value calculation

## Equilibrium Concept or Solution Concept
- **Single-agent:** Bellman equation / optimal stopping rule; agent accepts iff x ≥ x* (reservation value)
- **Equilibrium search:** firms choose prices / wages taking searcher behavior as given; searchers take offer distribution F as given → F must be consistent with firm strategies → fixed-point equilibrium

## Main Mechanism
**Optimal stopping:** The reservation value x* equates the expected gain from continued search to the cost:
x* = u(x*) + [∫_{x*}^∞ (u(x) − u(x*)) dF(x)] / (1 + r) − c (stationary problem)

Higher search cost c → lower x* (agent settles for worse offers). Thicker markets (better F) → higher x*. The option value of continued search = expected value of draws exceeding current offer.

**Equilibrium price/wage dispersion (Diamond Paradox resolution):** With positive search costs, sellers can charge prices above marginal cost even with homogeneous goods; Burdett-Judd (1983) generates a non-degenerate price distribution in equilibrium.

## Common Propositions
- **Reservation value property:** Optimal policy is a threshold rule: accept iff x ≥ x* (under standard conditions)
- **Comparative statics of x*:** x* decreasing in c; x* increasing in E[x] and in the spread of F; x* decreasing in r (discount rate)
- **Duration:** E[search duration] = 1/[1 − F(x*)]; duration increasing in x* (pickier searchers search longer)
- **Wage/price dispersion:** Equilibrium dispersion requires heterogeneity in search costs or in number of offers per period (Stahl 1989, Burdett-Judd)

## Comparative Statics Usually Available
- Effect of c on x*, expected duration, expected match quality
- Effect of F's mean or variance on x* and welfare
- Effect of finite horizon: reservation value falls as deadline approaches
- Effect of recall: with perfect recall, x* rises (option to return to past offers is valuable)

## Welfare Implications
- Socially optimal search intensity (reservation value) internalizes the effect of one agent's search on the offers available to others
- In equilibrium, agents may search too little (Diamond 1982: hold-up problem) or too much (thick externality)
- Unemployment insurance affects reservation wages and search duration; trade-off between insurance and search efficiency

## Common Modeling Pitfalls
- Assuming agents know F perfectly (often the most important assumption to examine)
- Ignoring the recall / no-recall distinction, which affects the reservation value
- Forgetting that the reservation value is not the expected wage — it is the minimum acceptable wage
- In equilibrium models: assuming a fixed F when firms are strategic (F must be part of the equilibrium)

## How to Extend the Model
- **On-the-job search (Mortensen 1986):** employed workers also search; generates wage dynamics
- **Directed search (Montgomery 1991, Peters 1991):** searchers choose where to apply based on posted offers; different efficiency properties from random search
- **Two-sided search / matching:** both sides search simultaneously (see Matching Models template)
- **Non-stationary search:** offer distribution or cost changes over time (e.g., seasonal unemployment)
- **Endogenous search intensity:** agents choose how hard to search each period

## Example Research Questions This Model Can Support
- What is the welfare cost of menu cost price rigidity when consumers must search for prices?
- How does unemployment benefit generosity affect reservation wages and unemployment duration?
- When consumers search for nutritional information across food products, what is the optimal stopping rule and how does the cost of reading labels affect dietary choices?
- What is the equilibrium wage distribution in a labor market where firms post wages and workers search randomly?
- How does the introduction of price comparison websites (reducing search cost) affect equilibrium prices and consumer welfare?

## Closely Related Model Families
- **Costly Information Acquisition** (generalization: agent chooses what to learn, not just when to stop sampling)
- **Rational Inattention** (agent has a fixed information-processing budget; different cost structure)
- **Matching Models** (two-sided search with stable matching conditions)
- **Dynamic Optimization / Bellman** (search model is a special case of optimal stopping in a Bellman framework)

## When This Model Is Not Appropriate
- When all alternatives are observable simultaneously without cost (use standard consumer choice or discrete choice)
- When the primary friction is moral hazard or asymmetric information about quality (use Screening or Adverse Selection)
- When agents do not optimize — they sample heuristically without using a reservation value strategy
- When the market is thin enough that strategic interaction (bargaining) replaces competitive offers
