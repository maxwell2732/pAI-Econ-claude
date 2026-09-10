# Cobweb Dynamics and Occupational Supply with Training Lags

## Model Family Name
Cobweb Model of Occupational Supply / Recursive Adjustment with Long Training Lags

## Canonical Economic Question
When entering an occupation requires a training period of many years, entrants must decide
on the basis of conditions they observe today while earning the return that prevails a
decade later. How does entry respond to current conditions, and does the resulting supply
path converge, oscillate, or diverge?

## When to Use This Model
- When the occupation has a **long, irreversible training pipeline** (physicians, lawyers, engineers, PhD scientists, pilots, licensed trades)
- When entry cohorts visibly overshoot and undershoot, producing alternating shortages and gluts
- When the research question is whether an observed decline in entry is a one-time repricing or the downswing of a cycle, since the two have different policy implications
- When expectation formation is itself the object of study, and the analyst wants to test naive against rational expectations

## Typical Primitives
- Training lag T: years from the entry decision to labor market entry (for medicine, undergraduate years plus residency plus any subspecialty training)
- Entry cohort at date t: N_t, chosen at t and arriving at t + T
- Supply of new entrants: N_t = S(W^e_{t+T}), increasing in the expected wage at arrival
- Stock of practitioners: L_t = L_{t−1}(1 − δ) + N_{t−T}, with δ the exit/retirement rate
- Demand for practitioners: L_t = D(W_t), decreasing in the wage
- Expectation rule: W^e_{t+T} = W_t (naive/adaptive), or W^e_{t+T} = E_t[W_{t+T}] (rational)

## Timing
1. At date t, prospective entrants observe the current wage W_t and current working conditions
2. They form an expectation W^e_{t+T} of conditions at graduation
3. Cohort N_t enters training; the decision is largely irreversible because training is occupation-specific
4. At t + T the cohort enters the labor market; the wage W_{t+T} clears supply against demand
5. The realized wage feeds the expectations of the cohort deciding at t + T

## Information Structure
- **Naive/adaptive expectations:** entrants extrapolate current conditions, which is the classic cobweb assumption and the empirically motivated case when career information is salient but forecasts are not available
- **Rational expectations:** entrants solve the model and forecast the wage T years ahead; the cycle disappears and only unanticipated shocks move entry
- **Partial information:** entrants observe current wages precisely but current working conditions (hours, risk, training stipends) with noise, so the two components of the return have different pass-through to entry
- The distinction is testable: naive expectations imply entry responds to the *current* wage, rational expectations imply it responds to *forecastable components* of the future wage

## Agent Heterogeneity
- Prospective entrants differ in ability and in the value of the outside occupation; the marginal entrant is the one indifferent at the expected return
- Heterogeneous exit rates: cohorts that entered during a boom may exit faster when conditions deteriorate, damping or amplifying the cycle
- Heterogeneous information: better-informed applicants (those with family in the profession) behave closer to the rational benchmark, which supplies a within-cohort test

## Choice Variables
- Prospective entrant: enter training at t, or take the outside occupation
- Incumbent: remain in the occupation or exit
- Planner (extension): training capacity, which can be set counter-cyclically to damp the cycle

## Constraints
- Irreversibility: training investment is largely sunk and occupation-specific
- Capacity: training slots may be rationed, so realized entry is min(desired entry, capacity)
- Time-to-build: the lag T is technological and cannot be compressed without changing the credential

## Equilibrium Concept or Solution Concept
- **Temporary equilibrium with a lag:** the wage clears the market period by period given a predetermined stock, and the stock is determined by decisions made T periods earlier
- **Stability condition:** with naive expectations and linear supply and demand, the path converges if the ratio of the supply slope to the absolute demand slope is less than one; it oscillates with constant amplitude when the ratio equals one and diverges when it exceeds one
- **Rational expectations equilibrium:** the price path has no deterministic cycle; entry responds only to news, and the model's dynamics collapse to the response to unanticipated shocks
- **Damped cobweb with partial adjustment:** the empirically relevant intermediate case, where a fraction of entrants extrapolate and the rest forecast, producing damped oscillation

## Main Mechanism
A high wage today attracts a large cohort into training. That cohort arrives T years later
and depresses the wage, which discourages the cohort deciding at that moment, producing a
small cohort that arrives T years after that and drives the wage back up. The lag converts
a stable static market into a dynamic one whose stability depends on the relative
elasticities of supply and demand. When supply is elastic (many students are near
indifferent between medicine and a rival field) and demand is inelastic (the number of
positions is set administratively), the ratio is large and the model predicts large
oscillations rather than convergence.

The empirically important corollary is that current entry conveys information about
*current* conditions, not about the conditions the cohort will actually face. A sharp fall
in applications is consistent with two very different worlds: a permanent decline in the
occupation's return, or the trough of a cycle that will reverse. Distinguishing them
requires either a long enough series to see the periodicity or a direct measure of
expectations.

## Common Propositions
- **Cobweb oscillation:** with naive expectations and a training lag, entry and wages follow an oscillating path whose period is approximately 2T
- **Stability threshold:** convergence requires the supply elasticity to be smaller in magnitude than the demand elasticity; otherwise the oscillation is undamped or explosive
- **Overshooting:** the entry response to a permanent shock exceeds its long-run level on the first cycle, so the immediate decline in entry overstates the permanent effect
- **Rational expectations neutrality:** if entrants forecast correctly, the deterministic cycle vanishes and entry responds only to unanticipated changes; the presence of a regular cycle is therefore evidence against full rationality
- **Elasticity from cohort response:** the response of entry to the current wage identifies the supply elasticity under naive expectations, and identifies something else entirely under rational expectations, so the expectation rule must be settled before the elasticity is interpreted

## Comparative Statics Usually Available
- ↑ training lag T → longer cycle period (roughly 2T) and slower convergence
- ↑ supply elasticity → larger amplitude and a greater chance of divergence
- ↓ demand elasticity (administratively fixed positions) → larger amplitude
- ↑ share of entrants with rational expectations → damping
- Counter-cyclical training capacity → damping, since realized entry is capped when desired entry is high
- A permanent negative shock to the occupation's return → an initial decline in entry that overshoots the new steady state, then partial recovery

## Welfare Implications
- The cycle is a genuine efficiency loss: cohorts that entered during a boom are over-supplied at graduation and earn below the return they anticipated, while shortage periods leave demand unserved
- The loss is borne asymmetrically by the entrants, who make an irreversible investment on the basis of information that is systematically stale
- Policy: publishing credible forecasts of occupational conditions moves entrants toward the rational benchmark and damps the cycle at low cost; counter-cyclical capacity does the same by force
- Under-provision of information is the market failure, since a single entrant cannot internalize the effect of their entry on the cohort's realized wage

## Common Modeling Pitfalls
- Fitting a cobweb to a series that is too short to distinguish a cycle from a trend; with T around a decade, identifying a cycle requires many decades of data
- Assuming naive expectations without testing them, when the whole substance of the model is the expectation rule
- Ignoring the exit margin, which can absorb a shock that the entry margin would otherwise carry
- Treating capacity as unconstrained when training slots are rationed; realized entry then reflects capacity, not desired entry
- Confusing a permanent repricing with a cyclical trough, which is the substantive error the model exists to prevent

## How to Extend the Model
- **Occupational choice microfoundation:** replace the reduced-form supply curve with a Roy-style entry decision, so the marginal entrant and the selection pattern are explicit (combine with `model_library/human_capital_and_labor/roy-model.md`)
- **Rational expectations with uncertainty:** entrants forecast optimally but the future return is stochastic; entry then responds to the mean and, under risk aversion, to the variance
- **Option value:** the choice includes the option to switch out of training partway, which reduces the effective irreversibility and damps the response to bad news
- **Endogenous capacity:** the planner sets training slots as a function of observed conditions, which introduces a second lag and can destabilize the system if the policy rule is itself backward-looking
- **Cutoff-based rationing:** when entry is rationed by an admission threshold, the cycle appears in the cutoff rather than in the quantity of entrants (combine with `model_library/matching-with-cutoffs.md`)
- **Heterogeneous lags:** different specialties within an occupation have different T, so the cycles are out of phase and reallocation across specialties partially offsets the aggregate cycle

## Example Research Questions This Model Can Support
- Is a decline in applications to a profession the start of a permanent repricing or the downswing of a training-lag cycle, and which prediction does the data support?
- Do prospective entrants respond to current starting salaries or to forecastable future salaries, and does the answer differ for better-informed applicants?
- How much of the historical variation in engineering, law, or medical school entry is explained by a cobweb mechanism with a lag equal to the credential length?
- Would publishing official occupational outlook forecasts reduce the amplitude of entry cycles?
- When a policy lengthens the required training period, how does the transition path of entry differ from the new steady state?

## Closely Related Model Families
- **Roy Model** (microfoundation for who enters at the margin)
- **Occupational Choice and Comparative Advantage** (the static allocation this model puts a lag in front of)
- **Ben-Porath Lifecycle** (the present-value calculation the entrant performs, and the channel through which T enters)
- **Dynamic Optimization / Bellman** (the rational expectations version is a dynamic programming problem)
- **Matching with Cutoffs** (when entry is rationed, the cycle appears in the threshold)
- **OLG / Life-Cycle Models** (overlapping cohorts are the structure that generates the lag)

## When This Model Is Not Appropriate
- When training is short or reversible, so entry can adjust within the period and the lag is immaterial
- When entrants demonstrably forecast well, in which case the rational expectations version applies and the cobweb dynamics are absent
- When capacity rather than desired entry determines the cohort size in every period, since then supply is exogenous
- When the question concerns the level of the return rather than its dynamics
- When the available series is too short to identify a cycle of period 2T

## Empirical Paper Caution

**The central risk is over-claiming a cycle from a short series.** With T of eight to
eleven years, a full cycle is two decades, and three or four years of declining entry is
equally consistent with a permanent shift. A paper that labels a recent decline "cobweb
dynamics" without the series length to support it has asserted, not shown.

Use this family when:
1. **The series is long enough** to observe at least two turning points, or
2. **A direct measure of expectations exists** (surveys of applicants, stated salary
   expectations), which identifies the expectation rule without needing the full cycle, or
3. **The paper's claim is explicitly about the transition path** following a dated policy
   change to T, where the overshooting prediction is sharp and short-run.

If none of the three holds, model the phenomenon as a static repricing and note the
cyclical alternative as a threat to interpretation rather than as the mechanism.

## Key References (verified)

- Freeman, Richard B. 1976. "A Cobweb Model of the Supply and Starting Salary of New
  Engineers." *Industrial and Labor Relations Review* 29(2): 236–248.
- Siow, Aloysius. 1984. "Occupational Choice under Uncertainty." *Econometrica* 52(3):
  631–645.
- Zarkin, Gary A. 1985. "Occupational Choice: An Application to the Market for Public
  School Teachers." *Quarterly Journal of Economics* 100(2): 409–446.
