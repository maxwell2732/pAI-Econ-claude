# Mincer Earnings Function

## Model Family Name
Mincer Earnings Equation / Human Capital Earnings Function

## Canonical Economic Question
What is the reduced-form relationship between earnings, years of schooling, and post-school experience, and can the coefficient on schooling be interpreted as the rate of return to education?

## When to Use This Model
- When the research question concerns the relationship between education and earnings in a reduced-form or structural framework
- When computing the private rate of return to schooling as an empirical benchmark
- When the earnings function is a reduced-form representation needed to calibrate or validate a structural human capital model
- When analyzing the wage effects of additional years of schooling or experience within a simple tractable framework

## Typical Primitives
- Log wage equation (basic Mincer): ln w = α₀ + α₁S + α₂X + α₃X² + ε
  - S = years of schooling (or highest grade completed)
  - X = years of post-school experience (or age − schooling − 6)
  - X² = experience squared (to capture concavity of earnings profile)
  - ε = error term (unobservable individual characteristics)
- Theoretical derivation (Mincer 1974): under perfect competition and equal ability, the log wage is linear in S if individuals are compensated for the opportunity cost of schooling at a constant rate of return r:
  ln w(S) = ln w(0) + rS (the "no ability bias" version requires strong assumptions)

## Timing
- Static cross-sectional model (no dynamic structure per se)
- The lifecycle content is captured implicitly through the quadratic experience term

## Information Structure
- In the pure reduced form: no information structure — it is a statistical summary of wages
- In the structural interpretation (Mincer 1974): individuals know the return to schooling and optimize; the econometrician observes wages and schooling choices

## Agent Heterogeneity
- Basic form assumes homogeneous returns (α₁ is constant across individuals)
- Extended form: heterogeneous returns — individuals differ in ability to benefit from schooling (Card 2001)
- Observed heterogeneity in ε: includes unobservable ability, non-cognitive skills, family background

## Choice Variables
- Implicit in the structural model: individual chooses years of schooling S* to maximize present discounted value of lifetime earnings; S* = argmax over S of PV earnings net of costs

## Constraints
- Budget / credit: the individual can finance schooling only through foregone earnings (no credit markets for human capital in the basic model)
- Time: total career length T is fixed; total years working = T − S

## Equilibrium Concept or Solution Concept
- **Competitive labor market equilibrium:** wages equal marginal products; the earnings function reflects the market equilibrium wage schedule
- **Individual optimization:** individual chooses S* equating marginal cost (foregone earnings) to marginal benefit (PV of higher future wages); internal rate of return = r
- **OLS estimate of α₁:** consistent only if schooling is exogenous (no ability bias); IV estimates (Angrist-Krueger, Card) address endogeneity

## Main Mechanism
If individuals are compensated in the labor market for the opportunity cost of remaining in school (foregone earnings) at a constant rate of return r, then:
PV earnings at age a = w(0) · e^{r·S} · e^{r·(a−S)} → after simplification, ln w(S, X) = constant + rS + f(X).

The quadratic experience term captures the Ben-Porath prediction: earnings rise fast early (rapid HC accumulation on the job) then slow (depreciation dominates). The coefficient α₁ ≈ r (rate of return to a year of schooling) under the assumptions of the model.

## Common Propositions
- **Mincer (1974):** log earnings are linear in years of schooling if the rate of return is constant and markets are competitive; coefficient α₁ ≈ r (private return to schooling)
- **Concave experience profile:** α₂ > 0, α₃ < 0 is the prediction from Ben-Porath (HC investment declines with age)
- **OVB (ability bias):** OLS estimate of α₁ is biased upward if higher-ability individuals both earn more and attend more school
- **Sheepskin effects:** discontinuous jumps in α₁ at degree-completion years (12, 16) suggest signaling or credentialing beyond continuous HC accumulation
- **Return heterogeneity (Card 2001):** individuals with higher marginal returns are more likely to attend college; IV estimand identifies a Local Average Treatment Effect (LATE) for marginal students

## Comparative Statics Usually Available
- α₁ ↑ in periods of high skill premium (SBTC); used to track the relative return to education over time
- Return to experience α₂ ↑ for occupations with steeper HC accumulation profiles
- Within-education-group wage variance ↑ as unobservable skills become more important (1980s–2000s trends)
- Gender gap in returns: women have historically had similar α₁ but lower labor market experience accumulation → earnings gap widens with experience

## Welfare Implications
- If α₁ estimates the private return r, comparing r to the social rate of return (which includes externalities) informs the optimal education subsidy
- Underinvestment if α₁ < social return (positive externalities: spillovers from educated workforce)
- Overinvestment if education is partly signaling (private return includes signaling premium that is zero-sum across workers)
- The Mincer return provides a benchmark: education policies that increase schooling are efficient if α₁ > r_social (opportunity cost of public funds)

## Common Modeling Pitfalls
- Interpreting OLS α₁ as a causal rate of return without addressing selection bias (endogeneity of schooling)
- Applying the linear log-wage model when returns to schooling are non-linear or heterogeneous across groups
- Forgetting that the Mincer equation is a reduced form; structural interpretation requires the full Ben-Porath assumptions (constant returns, equal opportunity costs, no signaling)
- Using age instead of experience X in the earnings function — age and experience have different theoretical interpretations

## How to Extend the Model
- **Nonlinear and spline specifications:** allow α₁ to vary by schooling level; capture sheepskin effects and non-linear returns
- **Heterogeneous returns (Heckman-Robb; Card 2001):** α₁ is a random coefficient; correlated with schooling choice → IV needed for causal identification
- **Panel data models:** control for time-invariant unobservables (ability) using within-person variation in wages and schooling
- **Skill-biased technical change:** add time trend in α₁ to track how the return to schooling has changed with technology
- **Quality-adjusted schooling:** replace S with an index of school quality (spending, peer effects, curriculum) to estimate returns to schooling quality

## Example Research Questions This Model Can Support
- What is the private return to a year of college education for students at the margin of attendance?
- How has the return to education changed over time in response to computerization and automation?
- Does the gender wage gap vary with experience, and does this reflect differential on-the-job human capital accumulation?
- Can variation in compulsory schooling laws (as instruments) identify a causal return to years of schooling?
- Is the return to vocational training comparable to the return to academic education for non-college-bound workers?

## Closely Related Model Families
- **Becker Human Capital** (the theoretical foundation for the Mincer equation)
- **Ben-Porath Life-Cycle Model** (delivers the concave experience profile)
- **Roy Model** (selection into education is a Roy-type self-selection problem)
- **Heckman Selection Model** (corrects for selection bias in returns to schooling estimation)
- **Signaling (Spence)** (alternative interpretation: education signals pre-existing ability rather than building HC)

## When This Model Is Not Appropriate
- When the research question requires a full structural model of education and career choices (use dynamic discrete choice or Ben-Porath)
- When the labor market is not competitive or wages do not reflect marginal products (use bargaining or monopsony models)
- When the question concerns the social return to education rather than the private return (requires GE analysis of externalities)
- When the education decision is a discrete, sequential choice with forward-looking agents (use discrete choice models of schooling)
