# Task-Based Production Framework of Acemoglu and Restrepo

## Model Family Name
Task-Based Production Framework (Acemoglu-Restrepo 2018, 2019, 2022)

## Canonical Economic Question
When production consists of a continuum of tasks that can be performed by different factors (labor, capital, robots), how does the allocation of tasks across factors determine factor shares, wages, and employment, and what are the aggregate effects of automation on wages, labor demand, and productivity?

## When to Use This Model
- When the primary question concerns the labor market consequences of automation, AI, or technology adoption
- When analyzing how technology changes the allocation of tasks between labor and capital, and the resulting effect on wages and employment
- When the question involves both displacement (automation replaces labor in some tasks) and reinstatement (new tasks are created that only labor can perform)
- When modeling the task-skill complementarity and the differential effects of technology on high-skill vs. low-skill workers

## Typical Primitives
- Continuum of tasks i ∈ [0, 1] indexed by their "complexity" or "productivity"
- Production technology: final output Y = ∫₀¹ y(i)^{(σ-1)/σ} di^{σ/(σ-1)} (CES aggregator over tasks)
- Task production: y(i) can be performed by:
  - Low-skill labor L: productively a_L(i) units of L per unit of task i
  - High-skill labor H: productively a_H(i) units of H per unit of task i
  - Capital (robots): productively a_K(i) units of K per unit of task i
- Comparative advantage: tasks [N-1, I] use low-skill labor; tasks [I, N] use high-skill labor; tasks [0, N-1] (below threshold) can be automated (use capital)
- Automation threshold: I (endogenous; determined by relative cost of automation vs. labor)

## Timing
(Static model of task allocation with comparative statics over technology):
1. Technology determines the productivity frontier a_L(i), a_H(i), a_K(i) for each task
2. Factor prices (wages w_L, w_H, r) determined in competitive equilibrium
3. Task allocation threshold I determined by cost-minimization: firms automate tasks where a_K(i)/r < a_L(i)/w_L
4. Factor demands and wages are jointly determined
5. Key comparative statics: what happens when automation technology improves (a_K rises for tasks near I)?

## Information Structure
- Competitive markets: all prices known to all agents; no information asymmetry in the standard model
- Technology is exogenous in the static model; made endogenous in directed technical change extensions

## Agent Heterogeneity
- Workers: differentiated by skill type (low-skill L vs. high-skill H); comparative advantage determines which tasks each type performs
- Automation extends the range of tasks performed by robots; displaces labor at the margin

## Choice Variables
- Firms: task allocation (which factor performs each task); no individual worker's choice per se in the aggregate model
- Workers: which labor-performed tasks to supply (in extended models with worker occupational choice)

## Constraints
- Cost minimization: firms allocate each task to the cheapest factor given factor prices
- Factor market clearing: aggregate demand for each factor (from task allocation) equals aggregate supply

## Equilibrium Concept or Solution Concept
- **Competitive equilibrium:** factor prices clear all markets; task allocation is cost-minimizing; equilibrium wages and factor shares are determined by technology parameters
- **Automation threshold I:** firms automate task i iff a_K(i)/r ≤ min(a_L(i)/w_L, a_H(i)/w_H); threshold determined simultaneously with factor prices
- **GE effects:** automation of tasks at the margin has two effects:
  1. **Displacement effect:** labor is replaced in automated tasks → labor demand ↓ ceteris paribus
  2. **Productivity effect:** automation raises Y for given labor input → factor demands ↑ (income effect)

## Main Mechanism
**Displacement vs. productivity effect of automation:**

When automation technology improves, it expands the set of tasks performed by capital [0, I] and contracts the set performed by labor [I, 1]. This has two opposing effects:
1. **Displacement:** for a given level of employment, automation replaces labor → labor share in output falls
2. **Productivity:** higher overall productivity raises aggregate income Y → labor demand may rise through the income effect

Whether wages rise or fall depends on which effect dominates. In the Acemoglu-Restrepo framework, automation alone (without new task creation) reduces labor's share of income. Task reinstatement — the creation of new tasks (I_new) where labor has comparative advantage — is the countervailing force that historically prevented permanent decline in labor's share.

**The reinstatement effect:** new tasks created by technology (e.g., new occupations like data analyst, social media manager) lie in a range where labor has comparative advantage over capital → expands [I, N] → increases labor demand.

## Common Propositions
- **Automation without reinstatement → labor share ↓:** an improvement in automation technology that does not create new tasks reduces the labor share of income
- **Reinstatement counteracts displacement:** new task creation restores labor demand; whether net effect on wages is positive depends on the relative magnitude of the reinstatement effect
- **Excessive automation (Acemoglu-Restrepo 2022):** when automation is subsidized relative to labor (through capital tax advantages), firms automate beyond the social optimum, reducing wages below the efficient level
- **Wage polarization:** automation concentrates in middle-skill tasks (routine tasks); low-skill manual and high-skill cognitive tasks are less automatable; wages of routine workers fall while others rise
- **Long-run growth:** without reinstatement, automation reduces the effective labor input → GDP growth slows if labor has a diminishing marginal product relative to capital

## Comparative Statics Usually Available
- ↑ automation productivity a_K(i) in range [I-ε, I]: threshold I rises → more tasks automated → labor share ↓ (unless productivity effect is large)
- ↑ new task creation (∂I_new/∂technology ↑): expands labor-performed tasks → labor demand ↑, wages ↑
- ↑ capital price r (capital costlier): threshold I falls → fewer automated tasks → labor demand ↑
- ↑ labor supply: wages fall; automation threshold rises (labor is now cheaper → fewer tasks are worth automating)

## Welfare Implications
- Automation is socially efficient iff it equalizes marginal cost of automation and labor for each task at socially optimal prices; private equilibrium may over-automate when capital is tax-favored
- Workers bear the cost of displacement; firms and capital owners gain from productivity → distributional conflict
- Policy: labor-complementary R&D subsidies (subsidize new task creation); correct excessive automation subsidy through capital taxation; invest in human capital that complements new tasks
- Transition costs: workers in automated tasks face occupational displacement; retraining subsidies are needed if labor markets have search frictions

## Common Modeling Pitfalls
- Conflating "automation" with "any capital investment" — the task-based model specifically defines automation as capital performing tasks that labor previously performed; TFP-enhancing capital investment is different
- Ignoring the reinstatement effect — concluding that automation always reduces wages is incorrect; historically, reinstatement has offset displacement
- Applying the model without specifying which tasks are at the margin of automation — the threshold I is the key variable; broad claims without pinning down I are not testable
- Treating the model as predicting aggregate employment decline — the model predicts labor share changes and reallocation, not necessarily aggregate unemployment (aggregate employment is a GE outcome that depends on labor supply elasticity)

## How to Extend the Model
- **Directed technical change (Acemoglu 2002):** technology firms choose whether to develop automation or labor-complementary innovations; direction of technical change depends on factor prices and market size
- **Heterogeneous workers:** workers differ in their productivity across tasks; automation affects different worker groups differently → polarization
- **Search frictions (Acemoglu-Restrepo with unemployment):** workers cannot instantly reallocate across tasks when automation hits; transition unemployment is possible
- **Human capital and task adaptation:** workers invest in skills to remain on the comparative advantage frontier as automation expands → connects to human capital adaptation template
- **International trade + automation:** automation of tasks relocates from high-wage to low-wage countries simultaneously → compounded displacement effects

## Example Research Questions This Model Can Support
- How much of the observed decline in the US labor share since 1980 can be explained by displacement of routine tasks by automation?
- Does AI automation that improves performance on cognitive non-routine tasks have a different labor market impact than the automation of cognitive routine tasks?
- What is the efficient level of automation subsidy/tax from a social welfare perspective when labor and capital are imperfectly taxed?
- How should workers invest in their skills to remain on the comparative advantage side of the automation threshold as AI advances?
- Does the existence of a reinstatement effect (new task creation) imply that AI will have a smaller effect on employment than naive displacement estimates suggest?

## Closely Related Model Families
- **Directed Technical Change / SBTC** (technology direction is endogenous; closely related to the AR framework)
- **Automation, Displacement, Reinstatement, and New Task Creation** (see separate template — a companion to this one)
- **Occupational Choice and Comparative Advantage** (workers sort across tasks/occupations based on comparative advantage)
- **Human Capital Adaptation to Automation** (workers respond to automation by investing in complementary skills)
- **Roy Model** (comparative advantage sorting is the worker-side counterpart of the task allocation equilibrium)

## When This Model Is Not Appropriate
- When the question concerns aggregate TFP growth rather than the labor-capital allocation of tasks
- When task content of occupations is not measurable or the task concept does not apply to the setting
- When the research question is about short-run business cycle effects rather than long-run structural change
- When labor markets are not competitive and wage-setting by firms (monopsony) is the central friction
