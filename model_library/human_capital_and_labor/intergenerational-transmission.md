# Intergenerational Transmission of Human Capital

## Model Family Name
Intergenerational Transmission of Human Capital and Earnings

## Canonical Economic Question
How much of a child's human capital and lifetime earnings is determined by parental characteristics (education, income, skills), and what mechanisms drive intergenerational persistence — genes, parental investment, school quality, or neighborhood effects?

## When to Use This Model
- When the research question concerns the persistence of economic status across generations (intergenerational income mobility)
- When decomposing the intergenerational correlation into channels: genetic endowment transmission, parental investment, and environmental inputs
- When analyzing the long-run implications of early childhood policy on the distribution of skills and earnings two or more generations forward
- When the question involves optimal policy to reduce intergenerational inequality

## Typical Primitives
- Parent g: income y_g, human capital H_g, unobserved genetic endowment θ_g (heritable)
- Child g+1: endowment θ_{g+1} = αθ_g + ε (with heritability α ∈ (0,1) and i.i.d. innovation ε)
- Parental investment: I_g chosen by parent g to maximize dynastic utility U(c_g) + δV(H_{g+1})
- Child's HC technology: H_{g+1} = f(θ_{g+1}, I_g, E_g) where E_g = educational environment (school quality, peers)
- Adult income: y_{g+1} = w · H_{g+1} (competitive labor market)
- Intergenerational income correlation: ρ = Cov(y_g, y_{g+1})/σ_y² — target moment for empirical calibration

## Timing
1. Parent observes own income y_g; chooses consumption c_g and investment I_g in child
2. Child is born with endowment θ_{g+1} (partly inherited, partly random)
3. Child's HC forms: H_{g+1} = f(θ_{g+1}, I_g, E_g)
4. Child enters labor market; income y_{g+1} = wH_{g+1} realized
5. The cycle repeats for the next generation

## Information Structure
- Parent: knows own income and can partially observe child's endowment θ_{g+1}; chooses I_g optimally given this information
- Econometrician: observes income y_g and y_{g+1} across generations; uses intergenerational elasticity (IGE) = β in y_{g+1} = α + βy_g + ε to measure persistence
- Key challenge: separating genetic transmission from investment transmission and environmental transmission

## Agent Heterogeneity
- Parents differ in: income y_g, genetic endowment θ_g, and tastes for child investment δ
- Children differ in: realized endowment θ_{g+1} (which correlates with parental θ_g via heritability)
- Society: the joint distribution of (y_g, y_{g+1}) determines the degree of mobility in the economy

## Choice Variables
- Parent: I_g (investment in child) and c_g (own consumption); implicitly, number of children (quality-quantity trade-off in extended models)
- Planner: public investment G_g, school quality E_g, program eligibility

## Constraints
- Parent budget: c_g + p·I_g ≤ y_g (no intergenerational borrowing / lending in basic model)
- Credit constraint: I_g ≤ y_g / p — parent cannot invest more than current income allows
- Bequests: if parents care about children's income (altruism), may also leave financial bequest B_g

## Equilibrium Concept or Solution Concept
- **Competitive equilibrium:** factor prices are determined by aggregate HC stock; individual optimization is consistent with market clearing
- **Steady state distribution:** the distribution of y_g converges to a stationary distribution as t → ∞; the intergenerational income elasticity determines how quickly convergence occurs
- **Social planner:** maximizes a dynastic or Rawlsian social welfare function subject to the technology and aggregate budget

## Main Mechanism
Two forces drive intergenerational persistence:
1. **Genetic endowment transmission:** child inherits a fraction α of parental endowment → contributes αρ to IGE
2. **Investment transmission:** higher-income parents invest more in children (due to budget and credit constraints) → amplifies genetic advantage
3. **Environmental transmission:** high-income families live in better school districts, neighborhoods → further amplifies advantage

Under credit constraints, the investment transmission channel is particularly strong: low-income families cannot borrow to invest optimally in children even when the return exceeds the interest rate. This wedge between optimal and actual investment generates intergenerational correlation beyond what genes alone predict.

IGE ≈ α (heritability) × heritability of income + β_invest (investment elasticity w.r.t. income) × income persistence

## Common Propositions
- **Becker-Tomes (1986) without credit constraints:** optimal bequests equalize returns to investment; IGE = heritability of endowment α
- **Becker-Tomes with credit constraints:** IGE > α (investment transmission amplifies genetic advantage); the gap between constrained and unconstrained IGE = the cost of credit constraints
- **Mobility and inequality trade-off:** societies with high inequality have high IGE; the cross-country relationship between Gini and IGE is the "Great Gatsby curve" (Miles Corak)
- **Public investment and IGE:** universal public education reduces the investment transmission channel → lowers IGE without affecting the genetic channel

## Comparative Statics Usually Available
- Higher credit market imperfection → higher IGE (investment more tightly linked to current income)
- Higher heritability α → higher IGE from genetic channel alone
- Higher skill premium (wage gap between H and L skills) → higher IGE if parental income is more correlated with skill
- Expansion of public education → lowers IGE; magnitude depends on crowding-out of private investment

## Welfare Implications
- High IGE represents restricted opportunity: a child's life outcomes are heavily determined by parental income, not own ability or effort
- The optimal policy reduces IGE through: (1) reducing credit constraints (credit for education, income-contingent loans), (2) public investment in education that substitutes for private investment, (3) cash transfers to low-income families
- The steady-state Gini is increasing in IGE: societies with high intergenerational persistence also have persistent inequality

## Common Modeling Pitfalls
- Interpreting the IGE as a structural parameter when it is an equilibrium outcome of the technology, preferences, and credit market structure
- Ignoring the genetic channel — assuming all intergenerational correlation is due to investment (overstates the policy-controllable component of persistence)
- Using income IGE as if it were the same as human capital IGE — income fluctuations (transitory shocks) reduce measured IGE relative to human capital IGE
- Applying a single-skill model when the transmission of non-cognitive skills has a different path (less driven by formal education)

## How to Extend the Model
- **Multi-dimensional skill transmission:** separate IGE for cognitive and non-cognitive skills; connect to Cunha-Heckman skill formation
- **Quality-quantity trade-off (Becker-Lewis):** parents choose the number of children; more children → less investment per child → higher IGE in low-fertility societies (less dilution of investment per child)
- **Assortative mating:** parents with similar skills marry → amplifies skill concentration; raises IGE
- **Geographic mobility:** intergenerational transmission is mediated by neighborhood; geographic mobility opens access to better environments
- **Causal impact of income:** disentangle whether income directly buys investment vs. whether the income gradient reflects genetic transmission

## Example Research Questions This Model Can Support
- How much of the intergenerational income elasticity in the US is driven by differential investment in children's HC versus genetic transmission?
- Does universal Pre-K reduce intergenerational earnings persistence by equalizing early childhood investment?
- How does assortative mating by educational attainment affect the distribution of child endowments across families?
- What is the long-run effect of a cash transfer to low-income families on their children's and grandchildren's earnings, through the investment channel?
- Can the "Great Gatsby curve" (cross-country correlation between inequality and IGE) be quantitatively explained by the credit constraint channel?

## Closely Related Model Families
- **Cunha-Heckman Skill Formation** (the production function for H_{g+1} from θ_{g+1} and I_g)
- **Early Childhood Investment Model** (the policy application of investment to reduce intergenerational persistence)
- **Ben-Porath Life-Cycle Model** (the within-generation HC accumulation that determines y given H)
- **Roy Model** (selection into education is a Roy-type problem; the intergenerational IGE is partly driven by self-selection)
- **OLG / Life-Cycle Models** (intergenerational transmission is the mechanism that generates the long-run income distribution in an OLG model)

## When This Model Is Not Appropriate
- When the research focuses on within-generation mobility rather than intergenerational persistence
- When the transmission channel is purely genetic (no investment channel) — then the policy question vanishes
- When the time horizon is too short to observe intergenerational outcomes (cross-sectional study of one cohort)
- When the primary question is about business-cycle fluctuations rather than long-run trends in inequality
