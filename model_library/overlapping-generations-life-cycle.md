# Overlapping Generations / Life-Cycle Models

## Model Family Name
Overlapping Generations (OLG) Model / Life-Cycle Model

## Canonical Economic Question
How do intergenerational transfers, capital accumulation, and welfare differ from the infinite-horizon model when agents have finite lives, and can competitive OLG equilibria be dynamically inefficient?

## When to Use This Model
- When the finite lifespan of agents is economically central: retirement saving, social security, bequests, intergenerational equity
- When analyzing dynamic inefficiency (overaccumulation of capital beyond the golden rule level)
- When studying how the age distribution of the population affects aggregate savings, capital, and interest rates
- When modeling policy questions that redistribute across generations (pay-as-you-go social security, public debt)

## Typical Primitives
- Each generation lives for T periods (T = 2 in the standard two-period OLG model)
- Generation born at time t: young with endowment or wage w_t; old in period t+1 with capital return
- Utility: U(c_y, c_o) = u(c_y) + β u(c_o) (two-period version)
- Capital market: young save k_{t+1}; old receive (1+r_{t+1})k_{t+1}; competitive firms use capital in production F(K, L)
- Market clearing: k_{t+1} = s(w_t, r_{t+1}) where s is the saving function of the young

## Timing
(Standard two-period OLG:)
1. Period t: generation t is born as young; earns wage w_t; saves k_{t+1} = w_t − c_y,t
2. Period t+1: generation t is old; receives (1+r_{t+1})k_{t+1}; consumes c_o,t = (1+r_{t+1})k_{t+1}
3. Meanwhile, generation t+1 is young in period t+1; earns w_{t+1}; saves k_{t+2}
4. Production: F(K_t, L_t) with competitive factor markets: w_t = F_L, r_t = F_K − δ

## Information Structure
- Full information: each generation observes current prices (w_t, r_t) and maximizes lifetime utility
- Expectations about future prices: typically assumed to be correct (perfect foresight) or static
- No aggregate uncertainty in baseline model; stochastic shocks can be added

## Agent Heterogeneity
- Generations differ in their lifecycle stage (young/old) but are identical within a generation in the standard model
- Extensions: within-generation heterogeneity in income or preferences; intergenerational heterogeneity in productivity (modelling skill change across cohorts)

## Choice Variables
- Young: saving s_t = w_t − c_y,t (equivalently, next-period capital k_{t+1})
- Old: consumption c_o,t = (1+r_{t+1})k_{t+1} (no choice after second period saving is determined)

## Constraints
- Young: c_y,t + s_t = w_t (budget constraint in youth)
- Old: c_o,t = (1+r_{t+1})s_t (budget constraint in old age)
- Non-negativity: c_y,t ≥ 0, c_o,t ≥ 0, s_t ≥ 0 (young cannot borrow against future income in basic model)

## Equilibrium Concept or Solution Concept
- **Competitive equilibrium:** capital market clears each period; factor prices determined by marginal products
- **Steady state:** a fixed point k* where k_{t+1} = k_t; most analysis focuses on steady-state equilibria
- **Dynamic equilibrium path:** sequence {k_t, w_t, r_t}_{t≥0} satisfying capital market clearing and individual optimization each period
- **Golden Rule:** k^{GR} maximizes per-capita consumption in steady state: F_K(k^{GR}) = δ (MPK = depreciation rate)

## Main Mechanism
Unlike the infinitely-lived representative agent, young agents in OLG cannot trade with unborn future generations. This market incompleteness means competitive equilibria can be dynamically inefficient: the capital stock may exceed the Golden Rule level (overaccumulation). When k* > k^{GR}, all generations can be made better off by reducing capital — but the market cannot achieve this because there is no mechanism for the current old to agree to sacrifice for unborn generations. Social security (pay-as-you-go) transfers resources from young to old, effectively reducing savings and potentially restoring efficiency.

## Common Propositions
- **Existence of steady state:** under standard conditions on F and U, a steady state k* exists (Diamond 1965)
- **Dynamic inefficiency possibility:** k* > k^{GR} is possible in OLG; impossible in the Ramsey infinite-horizon model
- **Pareto improvement from social security:** when k* > k^{GR}, a PAYG social security that reduces savings can Pareto-improve all generations
- **National debt crowding out:** government debt that is held by the young crowds out private capital accumulation; reduces steady-state k*
- **Golden Rule under centralized planner:** a social planner maximizing the welfare of all generations chooses k^{GR}

## Comparative Statics Usually Available
- Higher β (more patient young) → higher savings → higher steady-state k*
- Higher population growth n → higher savings needed to maintain k per worker; affects golden rule k^{GR}
- Social security tax τ → reduces private savings by roughly τ; if k* > k^{GR}, reduces inefficiency
- Increased longevity (longer retirement) → higher precautionary savings → higher k*; may reverse dynamic inefficiency

## Welfare Implications
- OLG equilibrium is Pareto optimal iff k* ≤ k^{GR} (in the efficient range)
- Social security can be a Pareto improvement when the economy is dynamically inefficient — rare case where a government program benefits all without strict costs
- Redistribution across generations: government deficit shifts resources from future to current generations; may be beneficial or harmful depending on dynamic efficiency

## Common Modeling Pitfalls
- Assuming that OLG equilibria are always Pareto optimal (they are not when k* > k^{GR})
- Forgetting that the two-period model compresses the entire life cycle into two periods — many empirical features (lifecycle income hump) require richer T-period models
- Ignoring that social security's Pareto-improving property requires dynamic inefficiency, which is empirically debated
- Not distinguishing between PAYG social security (no capital accumulation) and funded social security (private savings with public management)

## How to Extend the Model
- **Multi-period life cycle (70+ period models):** allows calibration to actual age-earnings profiles, demographic change
- **Stochastic OLG:** add aggregate shocks; generational risk sharing becomes possible
- **Within-generation heterogeneity (Huggett-Aiyagari meets OLG):** generations are born heterogeneous; life-cycle model with incomplete markets
- **Endogenous growth in OLG:** human capital accumulation across generations; intergenerational spillovers → see human_capital_and_labor/ library
- **Altruism and bequests:** Barro (1974): with dynastic altruism, OLG is equivalent to the infinite-horizon model (Ricardian equivalence)

## Example Research Questions This Model Can Support
- Does the US economy exhibit dynamic inefficiency, and does this imply a potential Pareto improvement from Social Security reform?
- How does demographic aging (rising old-age dependency ratio) affect steady-state capital, wages, and interest rates?
- What is the optimal intergenerational risk-sharing rule when aggregate productivity shocks affect different generations differently?
- How does the transition from a PAYG to a funded pension system affect welfare across transitional generations?
- Can an OLG model explain the secular decline in real interest rates as a consequence of rising savings by aging populations?

## Closely Related Model Families
- **Dynamic Optimization / Bellman** (OLG replaces the infinite horizon with finite lives; each generation solves a finite-horizon DP)
- **Life-Cycle Human Capital (Ben-Porath)** (see human_capital_and_labor/ library; combines OLG timing with human capital investment)
- **General Equilibrium Basics** (OLG embeds individual optimization in a general equilibrium with endogenous factor prices)
- **Matching Models** (in models with marriage and fertility, OLG timing interacts with matching across generations)

## When This Model Is Not Appropriate
- When the finite lifespan is not economically relevant (agents behave as if infinitely lived due to strong altruism)
- When the central question is about business cycle fluctuations (OLG provides poor short-run dynamics; use DSGE)
- When the focus is on intra-generational distribution without lifecycle considerations (use static heterogeneous agent models)
- When computing the model requires continuous-time methods that the OLG discrete-time structure does not accommodate easily
