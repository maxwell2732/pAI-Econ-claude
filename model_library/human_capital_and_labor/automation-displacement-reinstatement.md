# Automation, Task Displacement, Reinstatement, and New Task Creation

## Model Family Name
Automation, Displacement, Reinstatement, and New Task Creation (Acemoglu-Restrepo 2018, 2019)

## Canonical Economic Question
When automation displaces labor from tasks, under what conditions does new task creation (reinstatement) restore labor demand and wages, and what determines whether the net effect of technological progress on workers is positive or negative?

## When to Use This Model
- When the research question requires a precise decomposition of the aggregate wage and employment effect of automation into displacement and reinstatement components
- When analyzing the historical record of technological change to explain why wages and employment did not collapse despite repeated automation shocks
- When the question concerns the conditions under which AI-driven automation has a different impact from past waves of automation
- When studying the optimal pace of automation and task creation, and whether markets over-automate relative to the social optimum

## Typical Primitives
- (Build on the task-based production framework — see companion template)
- Three forces:
  1. **Automation** (displacement): robot/AI replaces labor in tasks i ∈ [I-Δ, I] → automation pushes the margin I rightward
  2. **New task creation** (reinstatement): new tasks i ∈ [N, N+Ν_new] are created where labor has comparative advantage → new tasks push the upper bound of labor's domain rightward
  3. **Productivity effect**: automation raises total factor productivity → raises aggregate income → increases demand for all factors including labor
- Net effect: Δ(labor share) = reinstatement effect − displacement effect + productivity effect × labor share

## Timing
(Comparative statics between steady states — a flow model of task innovation):
1. At time 0: automation threshold at I; labor performs tasks [I, N]; capital performs [0, I]
2. Automation wave: improves capital productivity in [I-Δ, I]; threshold shifts to I' = I+Δ (displacement)
3. Simultaneously or subsequently: new tasks in [N, N+Ν_new] are created (reinstatement)
4. New threshold and new labor domain [I', N'] determine the new steady-state wages and employment

## Information Structure
- Competitive markets with full information; no information asymmetry
- Technology is exogenous in the partial equilibrium model; directed technical change endogenizes the race between automation and reinstatement

## Agent Heterogeneity
- Workers: low-skill and high-skill; automation primarily hits low-skill routine tasks; reinstatement may create high-skill non-routine tasks → polarization
- Technology firms (in the directed TC extension): choose whether to innovate in automation or new task creation

## Choice Variables
- Technology firms (in directed TC): direction of R&D investment (automation vs. new task creation)
- Firms: which tasks to automate given factor prices
- Workers: which tasks to supply labor to (or which occupations to enter)

## Constraints
- R&D budget for technology firms: determines the rate of automation and new task creation
- Factor markets clear: for each task category, supply = demand

## Equilibrium Concept or Solution Concept
- **Competitive equilibrium with task allocation:** same as in the task-based framework; augmented with innovation dynamics
- **Steady-state growth:** the economy converges to balanced growth if automation and new task creation grow at the same pace
- **Balanced growth path (BGP) condition:** the rate of new task creation equals the rate of automation; on the BGP, labor's share is constant; deviations generate rising or falling labor share
- **Over-automation:** if automation is subsidized (e.g., capital gains tax advantages) and new task creation is not, the private equilibrium has too much automation relative to the social optimum

## Main Mechanism
**Decomposition of the wage effect of automation:**

Total wage effect = productivity effect + composition effect

where:
- **Productivity effect:** automation raises Y → higher demand for labor at every task → positive wage effect
- **Composition effect:** automation changes the mix of tasks performed by labor → if tasks moved into automation (low-productivity labor tasks) are replaced by new tasks (high-productivity tasks), wages rise; if not, wages fall

The critical condition: the composition (or "task content") effect is negative when automation moves labor out of tasks where it was productive, without compensating reinstatement. The productivity effect may not be large enough to offset this.

**Historical interpretation (Acemoglu-Restrepo 2019):** the 20th century was characterized by roughly balanced automation and reinstatement (new occupations like mechanic, programmer, nurse expanded employment even as factories automated). The concern about AI is that it may automate tasks in which labor had comparative advantage (non-routine cognitive tasks) without creating new tasks where labor has a comparable advantage.

## Common Propositions
- **Displacement exceeds reinstatement → labor share ↓:** if automation outpaces new task creation, labor's share of income falls
- **Net employment effect depends on reinstatement:** automation alone decreases employment; new task creation raises employment; the net effect on total hours worked depends on which dominates
- **Wages may fall even when output rises:** the composition effect can reduce wages even when the productivity effect raises GDP per capita — technology can be bad for workers while being good for aggregate productivity
- **Over-automation:** if the marginal task is not worth automating at social cost (labor is not paid its marginal product due to wedges), private equilibrium involves excessive automation
- **AI as different from past automation:** if AI automates not just routine but also non-routine cognitive tasks, the pool of tasks where labor retains comparative advantage shrinks → reinstatement must create entirely new task categories, which historically has been slower

## Comparative Statics Usually Available
- Δ_automation ↑ (more displacement) → labor share ↓; wages ↓ unless productivity effect is large
- N_new ↑ (more new task creation) → labor share ↑; wages ↑
- If Δ_automation = N_new: labor share unchanged (balanced technological progress)
- Capital tax ↓ (automation subsidy): more automation than is socially optimal → wages below socially optimal level

## Welfare Implications
- Automation increases aggregate surplus but may redistribute it from labor to capital owners; distributional policy is needed to share the gains
- Over-automation wastes resources on capital replacing labor in tasks where labor is socially cheaper
- Policy: (1) subsidize new task creation (R&D tax credits for labor-complementary technologies); (2) reduce the implicit subsidy to automation (leveling the capital-labor tax playing field); (3) invest in human capital for tasks where labor retains comparative advantage
- International dimension: automation in rich countries may create new tasks in low-wage countries (offshoring) → displacement in rich countries may not be offset by reinstatement locally

## Common Modeling Pitfalls
- Treating all technological progress as equivalent — the task-based model distinguishes between TFP-improving innovations (raise wages for all) and automation (displacement + productivity effects)
- Concluding from historical evidence that future automation will also generate reinstatement — if AI automates a qualitatively different set of tasks than previous technologies, reinstatement may be slower
- Ignoring transition dynamics — even if long-run equilibrium restores wages, the transition involves real welfare losses for displaced workers
- Applying the model to short-run employment fluctuations — it is a structural long-run model, not a business cycle model

## How to Extend the Model
- **Endogenous direction of technical change:** technology firms choose between automation R&D and new task creation R&D; price signals guide direction; possibility of "automation trap" where automation is persistently profitable
- **Worker heterogeneity in adaptability:** some workers are better at learning new tasks; costly retraining generates heterogeneous adjustment paths
- **International trade:** task automation and new task creation have different geographic distributions → countries specialize
- **Social contract (Acemoglu-Johnson 2023):** broader historical model of how technology and institutions interact to determine whether workers benefit from innovation

## Example Research Questions This Model Can Support
- What is the ratio of displaced to reinstated tasks from recent AI adoption, and does it differ from historical automation waves?
- Can the post-1980 stagnation of median wages in the US be explained by a divergence between automation and new task creation rates?
- What is the welfare cost to workers of over-automation when capital income is under-taxed relative to labor income?
- Does AI that automates cognitive non-routine tasks (previously thought to be safe) have a different wage effect than automation of routine tasks?
- How much new task creation would be needed to offset the displacement from a hypothetical automation wave affecting 20% of tasks currently performed by workers?

## Closely Related Model Families
- **Task-Based Production Framework (Acemoglu-Restrepo)** (the underlying model — this template focuses on the displacement/reinstatement dynamics)
- **Directed Technical Change / SBTC** (endogenizes the direction of technology; determines whether automation or reinstatement is more profitable)
- **Human Capital Adaptation to Automation** (workers' response to displacement)
- **Occupational Choice and Comparative Advantage** (worker-side sorting that interacts with task-level automation)
- **General Equilibrium Basics** (the aggregate effects of automation require a GE model to determine equilibrium factor prices)

## When This Model Is Not Appropriate
- When the research question concerns short-run employment effects (business cycles, demand shocks) rather than structural long-run changes
- When the task concept does not map well to the specific industry or occupation studied
- When there are strong labor market institutions (minimum wages, unions) that prevent wage adjustment in response to automation
- When the focus is on a single firm's automation decision rather than aggregate market-level effects
