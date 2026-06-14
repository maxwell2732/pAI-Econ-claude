# Roy Model of Selection Across Sectors or Occupations

## Model Family Name
Roy Model (1951) — Self-Selection, Comparative Advantage, and Sector Choice

## Canonical Economic Question
When workers can choose among sectors or occupations and have comparative advantage in different activities, who selects into which sector, and how does this selection affect observed wages in each sector?

## When to Use This Model
- When the central question is about who chooses to work in a particular sector, occupation, or country (immigration, occupational choice, education)
- When observed wage differences across groups reflect selection rather than (or in addition to) treatment effects
- When analyzing how the returns to skills vary across sectors and how this shapes sorting patterns
- When deriving testable implications of comparative advantage in labor markets

## Typical Primitives
- Two sectors: S₁ and S₂ (e.g., skilled vs. unskilled occupation; sector A vs. sector B)
- Worker-specific skills: (π₁, π₂) — productivity if working in sector 1 or 2; pair (π₁, π₂) ∼ F(π₁, π₂), bivariate distribution (often log-normal)
- Worker chooses sector to maximize earnings: choose sector 1 iff π₁ > π₂ (or π₁/π₂ > price ratio in the basic model)
- Wages: w₁ = p₁π₁, w₂ = p₂π₂ where pᵢ is the price of skill in sector i (determined in equilibrium)
- The correlation ρ(π₁, π₂) is the key structural parameter governing selection patterns

## Timing
1. Worker is born with latent skill pair (π₁, π₂) — not directly observable to the econometrician
2. Worker observes own skills; chooses sector to maximize earnings
3. Wages in the chosen sector are observed; wages in the counterfactual sector are not

## Information Structure
- Worker has perfect information about own skills (π₁, π₂) and sector prices (p₁, p₂)
- Econometrician observes only: wages in the chosen sector, sector choice; not the counterfactual wage
- Selection problem: E[w₁ | chooses sector 1] ≠ E[w₁] — workers who enter sector 1 are not a random sample of the population

## Agent Heterogeneity
- Workers are heterogeneous in (π₁, π₂) — this is the entire substance of the model
- Correlation structure: ρ determines whether selection is positive (into both sectors simultaneously) or based on comparative advantage (inverse correlation → workers sort by relative, not absolute, advantage)

## Choice Variables
- Sector choice: d ∈ {1, 2} to maximize pₐπₐ where a is the chosen sector
- No continuous investment decision in the basic Roy model (add investment as in Becker/Ben-Porath)

## Constraints
- Worker can work in only one sector (exclusive sector choice)
- Wages are competitive: w_i = pᵢπᵢ

## Equilibrium Concept or Solution Concept
- Competitive labor market equilibrium: workers sort into sectors based on comparative advantage; sector prices (p₁, p₂) adjust to clear labor markets
- Equilibrium sorting condition: worker sorts into sector 1 iff π₁/π₂ > p₂/p₁ (relative skill advantage exceeds relative price)
- Selection-corrected wages (Heckman 1979): E[w₁ | chooses 1] = p₁E[π₁ | π₁ > (p₂/p₁)π₂]

## Main Mechanism
Workers sort across sectors based on comparative advantage. The selection pattern depends critically on the correlation ρ between sector-specific skills:
- **Positive selection (ρ > 0, high variance of π₁ relative to π₂):** workers with highest absolute ability in both sectors concentrate in sector 1; observed wages in sector 1 are above the population mean
- **Negative selection (ρ < 0):** comparative advantage drives sorting; workers who are relatively (not absolutely) best in sector 1 enter it; observed wages in sector 1 may be below the average of sector-2 workers' latent ability in sector 1
- **Immigration selection (Borjas 1987):** applies Roy model to migration; high-inequality sending countries generate negatively selected immigrants (those who do worse at home; comparative advantage in destination)

## Common Propositions
- **Roy (1951):** in a two-sector competitive equilibrium with free selection, sorting is determined by comparative advantage; average wages in each sector overestimate the returns to that sector for the population as a whole
- **Selection sign (Borjas 1987):** immigrants are positively selected from low-inequality countries and negatively selected from high-inequality countries
- **OLS bias in returns:** OLS regression of wages on sector dummy yields a biased estimate of the wage premium; direction of bias depends on ρ
- **Efficiency of sorting:** the Roy model outcome is efficient (absent externalities) — workers locate where they have comparative advantage

## Comparative Statics Usually Available
- ↑ sector wage premium (p₁/p₂ ↑) → more workers enter sector 1; average quality in sector 1 falls (selection bias changes)
- ↑ skill variance σ₁ → more high-skill workers in sector 1; higher average wage in sector 1 from selection
- ↑ correlation ρ → selection becomes more positive; both sectors attract workers of similar ability type
- Technology shock that raises returns to specific skills → resorting of workers across sectors

## Welfare Implications
- Sorting is efficient in the Roy model: workers maximize earnings by choosing sectors where they have comparative advantage; this maximizes total output
- Welfare loss enters when: (1) workers do not observe true sector-specific skills ex ante (mismatch), (2) search frictions prevent optimal sorting, or (3) credit constraints prevent workers from acquiring needed skills
- Policy implications: interventions that improve information about comparative advantage (career counseling, aptitude testing) can improve sorting efficiency

## Common Modeling Pitfalls
- Treating the Roy model as only about self-selection bias in wages; it is also a complete model of occupational sorting and wage determination
- Ignoring the endogeneity of sector prices (p₁, p₂); in a large economy, sector choices collectively determine prices
- Applying the binary Roy model to multi-sector settings without generalizing the sorting condition
- Confusing comparative advantage (Roy) with absolute advantage (who is most productive regardless of alternative)

## How to Extend the Model
- **Multi-sector Roy (Heckman-Sedlacek 1985):** more than two sectors; generalized selection correction
- **Roy model with investment:** workers invest in sector-specific skills before choosing (Becker + Roy); creates occupational lock-in
- **Dynamic Roy model:** workers can switch sectors over the career at a cost; equilibrium sorting evolves over the lifecycle
- **Roy model as potential outcomes framework:** sector choice = treatment assignment; latent wages in both sectors = potential outcomes; connects to treatment effect literature (see Heckman Treatment Effect template)
- **Roy model with social interactions:** a worker's sector choice affects others' productivities (peer effects, network effects)

## Example Research Questions This Model Can Support
- Are workers who choose to work with AI tools positively selected on skills that are complementary to AI, and does this bias estimates of AI's productivity effects?
- Do immigrants to the United States from high-inequality countries have lower skills than average immigrants from low-inequality countries?
- Who among today's workers has comparative advantage in the tasks that remain after AI automation, and who is most exposed to displacement?
- Does the observed gender gap in STEM careers reflect comparative disadvantage or discrimination?
- What share of the wage premium for college graduates reflects selection (more able workers attend college) versus a causal effect of education?

## Closely Related Model Families
- **Heckman Selection Model** (econometric implementation of selection correction for Roy-style self-selection)
- **Heckman Treatment Effect Framework** (potential outcomes interpretation of Roy model; marginal treatment effects)
- **Mincer Earnings Function** (Roy model generates selection bias in Mincer returns — needs correction)
- **Occupational Choice and Comparative Advantage** (multi-sector extension — see separate template)
- **Task-Based Production (Acemoglu-Restrepo)** (automation changes the relative returns to sectors → changes Roy sorting)

## When This Model Is Not Appropriate
- When there is no element of worker choice (involuntary assignment to sectors)
- When sector productivity is not idiosyncratic to the worker (no comparative advantage — all workers equally productive in all sectors)
- When search frictions prevent sorting and the equilibrium is not determined by comparative advantage alone
- When the research question concerns treatment effects for a randomly assigned intervention (Roy model applies to endogenous, not random, assignment)
