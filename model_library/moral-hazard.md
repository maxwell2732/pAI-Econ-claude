# Moral Hazard

## Model Family Name
Moral Hazard / Hidden Action Principal-Agent Model

## Canonical Economic Question
When a principal cannot observe an agent's effort (action), what is the optimal contract that incentivizes the agent to exert the desired effort level, and how does this second-best contract trade off risk and incentives?

## When to Use This Model
- When the central friction is unobservable effort or action (not unobservable type)
- When designing compensation schemes: employment contracts, insurance policies, credit contracts
- When the question involves the trade-off between risk sharing (principal bears risk) and incentives (agent bears risk to maintain effort)
- When analyzing why performance pay, deductibles, co-pays, or equity stakes exist

## Typical Primitives
- Principal (P): risk-neutral (standard); designs a wage contract w(y) contingent on observable output y
- Agent (A): risk-averse with utility u(w) − v(e) where u is concave, v is convex effort cost
- Output: y ∈ {y_L, y_H} or y = e + ε (continuous), where ε is noise; high output more likely with high effort
- Agent's outside option: Ū (reservation utility, IR constraint)
- First-best: principal can observe e → sets efficient effort e* and extracts all rents via fixed fee
- Second-best: e unobservable → contract must induce effort via output-contingent pay

## Timing
1. Principal offers contract w(y); agent accepts or rejects
2. Agent accepts iff expected utility ≥ Ū (IR constraint); if rejected, outside option Ū is received
3. Agent chooses effort e (unobservable to principal)
4. Output y is realized and publicly observed
5. Payment w(y) is made

## Information Structure
- Principal observes: contract offer, output y, and any verifiable signal correlated with output
- Agent observes: own effort e; output y (after realization)
- Key asymmetry: effort e is the agent's private information at the time of choice

## Agent Heterogeneity
- Standard model: single agent with utility u(w) − v(e)
- Extended: multiple agents → team production, relative performance evaluation, yardstick competition
- Heterogeneous types + hidden action: combined moral hazard and adverse selection

## Choice Variables
- Principal: wage schedule w(y) — maps realized output to payment
- Agent: effort e ∈ [0, ē] — chosen after contract is accepted, before output is realized

## Constraints
- **Individual Rationality (IR):** E[u(w(y)) | e] − v(e) ≥ Ū (agent participates)
- **Incentive Compatibility (IC) / Moral Hazard Constraint:** e ∈ argmax E[u(w(y)) | e'] − v(e') (agent optimizes over effort, taking w as given)
- First-order approach (FOA): replaces IC with agent's FOC; valid when distribution of y given e satisfies monotone likelihood ratio and convexity of the distribution function conditions

## Equilibrium Concept or Solution Concept
- **Constrained optimization (not a game equilibrium per se):** principal maximizes expected profit subject to IR and IC
- **First-order approach:** replace IC with the agent's FOC ∫ w(y) · f_e(y|e) dy = v'(e); yields tractable but approximate solution; valid under MLRP + CDFC
- **Holmstrom (1979) informativeness principle:** a signal s is useful to add to the contract iff s is not a sufficient statistic for e given y

## Main Mechanism
A risk-neutral principal can perfectly insure a risk-averse agent (first-best: flat wage). But with hidden action, a flat wage eliminates effort incentives. The second-best contract makes the agent's pay depend on output — exposing the agent to risk — to induce effort. The optimal contract balances: (i) the cost of risk imposition on the agent (risk premium) and (ii) the benefit of improved effort incentives. As the agent becomes less risk-averse, pay-for-performance becomes less costly and effort approaches the first-best level.

## Common Propositions
- **Holmstrom (1979):** In the first-order approach, optimal w(y) solves λ = μ f_e(y|e)/f(y|e) for constants λ, μ (Lagrange multipliers for IR and IC); w(y) is increasing in y iff MLRP holds
- **Informativeness principle:** any publicly observable signal that is informative about effort should be included in the contract, even if it is not a perfect measure of output
- **Second-best effort < first-best:** under risk aversion and effort aversion, second-best effort is less than the first-best that maximizes joint surplus
- **Risk-neutral agent: first-best attainable** via a fixed fee ("selling the firm"): agent pays P a fixed amount and is the residual claimant
- **MLRP and monotone contract:** if the likelihood ratio f_e(y|e)/f(y|e) is increasing in y, the optimal wage w(y) is non-decreasing in output

## Comparative Statics Usually Available
- More risk-averse agent → higher risk premium → more distortion away from first-best effort
- Higher output variance → harder to infer effort → larger distortion
- Better signal (more informative indicator of effort) → higher power incentives possible
- Principal's payoff (efficiency) ↑ as agent's outside option Ū ↓ (cheaper to induce participation)

## Welfare Implications
- Second-best is constrained Pareto inferior to first-best: risk imposition on agent is a pure welfare cost
- All social surplus in excess of agent's reservation utility can be captured by principal if agent is the only one who can bear risk
- If both principal and agent are risk-neutral, no efficiency loss: risk sharing is irrelevant and first-best effort is achievable

## Common Modeling Pitfalls
- Using the first-order approach without verifying MLRP and CDFC; FOA can fail in general
- Assuming the agent is risk-neutral when the whole tension in the model requires risk aversion
- Forgetting that the IR constraint typically binds at the optimum (rent extraction is maximal)
- Ignoring multi-task moral hazard: incentivizing one task may distort effort allocation across multiple tasks (Holmstrom-Milgrom 1991)

## How to Extend the Model
- **Multitask (Holmstrom-Milgrom 1991):** agent allocates effort across multiple tasks; strong incentives on one task divert effort from others
- **Team production (Holmstrom 1982):** multiple agents; free-riding; monitoring and group punishment schemes
- **Repeated moral hazard:** principal and agent interact over multiple periods; ratchet effect; long-term contracts
- **Moral hazard with adverse selection:** hidden action + hidden type; complex combined mechanism design
- **Supervisory models (Tirole):** add a supervisor with partial information about agent's effort

## Example Research Questions This Model Can Support
- What is the optimal physician compensation structure that balances cost containment incentives with patient care quality?
- When should a firm use piece-rate pay rather than flat salary, and how does output variability affect this choice?
- What is the optimal co-insurance rate in a health insurance contract given that patients take more care when they bear some cost?
- How does the introduction of automated monitoring of worker productivity affect the optimal wage structure?
- Under what conditions does performance pay for teachers improve student outcomes, and when does it generate harmful distortions?

## Closely Related Model Families
- **Screening** (hidden type rather than hidden action — same principal-agent family, different private information)
- **Adverse Selection** (market-level version; agent hides type, not action)
- **Signaling** (agent has private information and moves first to communicate it)
- **Principal-Agent Models** (the general family; moral hazard is the hidden-action specialization)
- **Mechanism Design** (moral hazard as a problem of designing the optimal contract under IC)

## When This Model Is Not Appropriate
- When effort is observable and verifiable (standard procurement / employment without moral hazard)
- When the primary friction is the agent's private information about type (use Screening)
- When there is no risk (both agents are risk-neutral and there are no external shocks): first-best is achievable trivially
- When the agent faces multiple principals with conflicting incentives (use Common Agency or Multi-Principal models)
