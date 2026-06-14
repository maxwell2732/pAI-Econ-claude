# Occupational Choice and Comparative Advantage

## Model Family Name
Multi-Sector Occupational Choice / Comparative Advantage in Labor Markets

## Canonical Economic Question
When workers have heterogeneous skill vectors and occupations reward different skill combinations, how do workers sort across occupations, what is the wage structure in equilibrium, and does the market achieve an efficient allocation of workers to occupations?

## When to Use This Model
- When the key question is which workers move into which occupations, and why, given heterogeneous skills and occupational skill requirements
- When analyzing how changes in the skill premium or technological change affect occupational sorting
- When the question concerns wage polarization (hollowing out of middle-skill occupations) and its connection to task content
- When the Roy model needs to be extended to more than two sectors with a richer skill-task mapping

## Typical Primitives
- Workers: characterized by skill vector s = (s₁, s₂, ..., s_K) (e.g., cognitive, manual, interpersonal skills)
- Occupations: j = 1,...,J each with a production function F_j(s) that assigns a value to the worker's skill vector in occupation j
- Earnings: worker with skills s in occupation j earns w_j = p_j · F_j(s) where p_j is the equilibrium price of occupation j's output
- Worker's problem: choose occupation j to maximize earnings w_j(s) = max_j p_j F_j(s)
- Market equilibrium: supply of workers in each occupation = demand for workers in that occupation (competitive labor market)

## Timing
1. Workers are born with exogenous skill vectors s (or skills are accumulated per Ben-Porath/Becker)
2. Workers observe occupational wages w_j(s) for all j; choose occupation j* = argmax_j p_j F_j(s)
3. Labor market clears: aggregate supply in each occupation equals derived demand from firms
4. Equilibrium prices p_j adjust to clear occupational labor markets

## Information Structure
- Workers: know own skill vector s; know occupational wage schedules w_j(s) for all j
- Firms: know skill requirements of each occupation; do not observe s directly (if screening is imperfect) → extension adds screening
- Econometrician: observes wages and occupational choices; does not directly observe s

## Agent Heterogeneity
- Workers differ in skill vectors s; the joint distribution of (s₁,...,s_K) determines the entire occupational allocation
- Log-supermodularity of F_j(s) in (s, j) generates positive assortative matching between high skills and high-productivity occupations
- With two skill types (cognitive θ_C, manual θ_M): comparative advantage determines sorting — workers go to the occupation where their relative skill is highest, not where their absolute skill is highest

## Choice Variables
- Worker: occupation j ∈ {1,...,J}
- (Implicitly) firms: demand for workers in each occupation given technology and output prices

## Constraints
- Worker: must choose exactly one occupation
- Labor market: aggregate supply = aggregate demand in each occupation

## Equilibrium Concept or Solution Concept
- **Competitive equilibrium:** workers self-select based on comparative advantage; occupational prices p_j adjust to clear markets
- **Sorting condition (Roy multi-sector):** worker goes to j* = argmax_j p_j F_j(s); equilibrium is a partition of the skill space into occupational regions
- **Log-supermodularity → positive sorting:** if ln F_j(s) is supermodular in (j, s) (higher-indexed occupations reward higher skills more), equilibrium sorting is positive assortative
- **Wage structure:** equilibrium wages w_j*(s) depend on both skills and equilibrium occupational prices; wages reflect comparative advantage, not just absolute skill level

## Main Mechanism
Workers sort across occupations based on comparative advantage in their skill vector. In a two-skill, two-occupation model with the Roy structure: workers go to the occupation that rewards their relative skill advantage. In the general multi-skill, multi-occupation case (Heckman-Sedlacek 1985): equilibrium generates a partition of the skill space into occupational regions; within each region, all workers choose the same occupation. Changes in occupational prices p_j (e.g., from technological change or trade) shift the boundary between regions, inducing workers to switch occupations — this is the mechanism behind labor market polarization.

## Common Propositions
- **Comparative advantage determines sorting:** workers sort by the ratio of their skills, not their absolute levels; if F_j^C/F_j^M is higher for occupation j than for k, workers with high θ_C/θ_M ratios sort into j
- **Log-supermodularity → monotone sorting:** high-s workers sort into high-j occupations; wage inequality between occupations amplifies skill inequality
- **Wage polarization:** if middle-skill occupations are more automatable (task-based argument), p_{mid} falls → middle-skill workers shift to low- or high-skill occupations; wages of middle-skill workers fall
- **Efficiency of sorting:** the market allocation is efficient (maximizes total output) under full information and competitive wages; inefficiency enters when skills are unobservable (adverse selection) or when there are externalities

## Comparative Statics Usually Available
- Skill-biased technical change (↑ p_high) → high-skill workers earn more; some middle-skill workers switch to high occupation (upward mobility possible)
- Routine task automation (↓ p_routine_middle) → routine workers switch to non-routine tasks; wage polarization
- Education expansion (↑ average θ_C in the population) → shifts the occupational mix toward cognitive-intensive occupations; relative price p_cognitive falls if demand is inelastic

## Welfare Implications
- Competitive occupational sorting is efficient absent externalities or information frictions
- Automation-driven resorting creates transition costs: workers who have invested in occupation-specific HC must retrain when their occupation's price falls
- Distributional implications: wage polarization harms routine workers who lack transferable skills; benefits high-skill non-routine workers
- Policy: wage subsidies for low-skill workers in a polarized labor market; retraining subsidies for displaced routine workers; human capital investment to enable upward sorting

## Common Modeling Pitfalls
- Applying Roy (2-sector) when there are multiple occupations with different skill requirements — needs a multi-sector extension with a richer sorting structure
- Assuming skills are fixed and ignoring endogenous skill acquisition in response to occupational price changes
- Treating occupational wage differences as pure rent rather than equilibrium returns to comparative advantage
- Ignoring the adjustment costs of switching occupations — the static model shows where workers will end up but not how long or how costly the transition is

## How to Extend the Model
- **Task-based framework (Acemoglu-Restrepo):** define tasks (not occupations) as the unit; automation affects the task content of occupations → see task-based production templates
- **Endogenous skill formation:** workers choose skills anticipating future occupational prices → equilibrium skill distribution is endogenous
- **Search with occupational choice:** workers search for jobs within occupations; search frictions slow the reallocation following a demand shock
- **General equilibrium with goods market:** occupational wages are endogenous in GE; changes in one sector affect wages in all occupations through goods and factor market feedback

## Example Research Questions This Model Can Support
- How does the introduction of AI tools that automate cognitive routine tasks change the sorting of workers across cognitive non-routine vs. cognitive routine occupations?
- What fraction of wage polarization in the US since 1980 can be explained by the fall in the relative price of routine middle-skill occupations?
- Do workers with complementary non-cognitive and cognitive skills earn higher wages due to comparative advantage in the occupations that reward both?
- Who benefits from expanded post-secondary education when the labor market has limited demand for high-skill workers (general equilibrium price effect)?
- Does offshore outsourcing of manufacturing tasks shift the comparative advantage of high-income country workers toward services?

## Closely Related Model Families
- **Roy Model** (2-sector foundation; multi-sector occupational choice is its generalization)
- **Task-Based Production (Acemoglu-Restrepo)** (tasks are the unit of analysis; occupational sorting follows task comparative advantage)
- **Becker Human Capital / Ben-Porath** (skills are acquired, not fixed; endogenous skill supply responds to occupational wages)
- **Matching Models** (worker-firm matching in the labor market; occupational choice is part of the matching process)
- **Directed Technical Change / SBTC** (technology changes which occupations are well-compensated)

## When This Model Is Not Appropriate
- When workers are homogeneous (no comparative advantage → no meaningful sorting)
- When occupations are not the relevant unit (fine-grained task content is more appropriate)
- When adjustment costs are so large that the static sorting model has no predictive power for transitions
- When labor market institutions (unions, minimum wages) override the comparative advantage allocation
