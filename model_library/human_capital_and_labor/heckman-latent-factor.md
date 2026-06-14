# Heckman-Style Latent Factor Model for Unobserved Skills and Endowments

## Model Family Name
Latent Factor Model / Factor Model of Skills / Measurement System for Unobserved Heterogeneity

## Canonical Economic Question
When the skills or abilities that drive outcomes are not directly observed but multiple noisy measures (test scores, grades, behavioral assessments) are available, how can the underlying latent skill dimensions be identified, and how do they affect later outcomes?

## When to Use This Model
- When skills or abilities are multidimensional and not directly observable; only noisy proxies (test scores, survey measures) are available
- When the research question concerns the distinct effects of cognitive versus non-cognitive skills on labor market, health, or educational outcomes
- When the identification of causal skill effects requires controlling for the measurement error in observed test scores
- When multiple measurements of the same underlying skill can be used to construct a factor-analytic model of latent ability

## Typical Primitives
- Latent skill vector: θ = (θ₁, θ₂, ..., θ_K) — unobserved (e.g., cognitive ability, conscientiousness, executive function)
- Measurement equations (test scores, assessments): Mⱼ = αⱼ + Λⱼθ + ηⱼ for j = 1,...,J measures; ηⱼ is measurement error independent of θ
- Outcome equation: Y = Xβ + Γθ + ε where Y is a labor market or human development outcome; ε is uncorrelated with θ and X
- Factor loadings: Λⱼ identifies how each measurement loads on the latent factors; Γ identifies how latent factors affect the outcome

## Timing
1. Individual is born with latent skill endowment θ (determined by genetics, early environment, and initial investments)
2. During development, measurements Mⱼ are collected (test scores, teacher reports, behavioral ratings)
3. Later in life, outcome Y (earnings, employment, health) is realized
4. Econometrician uses measurements to identify θ and estimate the effect of θ on Y

## Information Structure
- Individual: has own latent skills θ; makes decisions partly based on θ (education choice, effort, job selection)
- Econometrician: observes measurements Mⱼ and outcome Y; does not directly observe θ
- Identification: requires that the measurement system identifies the latent factor distribution; typically requires J ≥ 2K measurements (two dedicated measurements per factor) and an independence assumption

## Agent Heterogeneity
- The entire model is built around heterogeneity: individuals differ in θ, and this determines outcomes
- Heterogeneity in factor loadings (Λⱼ) is typically not identified without additional structure

## Choice Variables
- Econometrician: specification of the factor model (number of factors K, structure of Λ, distributional assumptions)
- In policy models: interventions target components of θ or the measurements Mⱼ

## Constraints
- Identification: the factor model is not identified without normalization (e.g., set scale of θ by fixing one loading per factor; set location by fixing factor mean to zero)
- Independence of measurement errors: ηⱼ must be independent of each other conditional on θ (local independence assumption)
- Sufficient measurements: typically need at least 2 measurements per factor for identification (3 if factor covariance is freely estimated)

## Equilibrium Concept or Solution Concept
- **Statistical / econometric model** — the estimation procedure, not an economic equilibrium
- **Factor analysis / structural equation model:** identify factor loadings Λ and factor distribution P(θ) from the joint distribution of measurements
- **Two-step estimation:** Step 1: estimate the factor model from measurements; Step 2: use the identified factor distribution to estimate outcome equations and correct for measurement error
- **Bayesian approach:** treat θ as a latent variable with a prior; update posterior given measurements; compute posterior means as empirical Bayes estimates

## Main Mechanism
Measurement error in test scores biases OLS estimates of the effect of skills on outcomes toward zero (attenuation bias). By using multiple measurements of the same underlying skill — combined through a factor model — the researcher can "average out" the measurement errors and recover a consistent estimate of the latent skill's effect. The factor structure imposes restrictions (local independence, common factors) that identify the latent dimensions from the covariance structure of the measurements.

## Common Propositions
- **Attenuation bias correction:** OLS coefficient on a single noisy test score underestimates the true skill effect; factor model recovers the true coefficient
- **Identification under local independence:** if J ≥ 2K measurements satisfy local independence given θ, the factor loadings and factor distribution are identified (up to normalization)
- **Factor extraction:** the K latent factors explain the common variance in the J measurements; residuals (ηⱼ) are uncorrelated with each other conditional on θ
- **Non-cognitive skills matter:** Heckman-Stixrud-Urzua (2006) show that non-cognitive skills (conscientiousness, self-control) have substantial effects on wages and schooling, comparable to cognitive skills

## Comparative Statics Usually Available
- Conditional on cognitive factor: non-cognitive factor's marginal effect on wages; test for independence
- Interventions that shift the distribution of θ (early childhood programs): change the distribution of Y outcomes in a way predictable from the factor model
- Measurement quality (signal-to-noise ratio in Mⱼ): higher quality → less attenuation bias → less need for multiple measurements

## Welfare Implications
- The latent factor model identifies which skills matter most for economic outcomes → informs optimal investment targets for early childhood programs
- If non-cognitive skills are as important as cognitive skills but are more malleable (responsive to investment in early childhood), then programs targeting non-cognitive skills may have high returns
- Selection into programs: individuals with higher θ may be more likely to participate → need factor model to control for selection into treatment

## Common Modeling Pitfalls
- Assuming that the first principal component of test scores is "IQ" without validating the factor structure against external information
- Ignoring measurement error when using test scores as regressors — leads to attenuation bias in estimated skill effects
- Using too few measurements (J < 2K) and relying on untestable exclusion restrictions for identification
- Conflating latent skills θ with the test scores Mⱼ — the test scores are noisy proxies, not the skills themselves

## How to Extend the Model
- **Dynamic factor model (Cunha-Heckman-Schennach):** latent factors evolve over the life cycle according to the technology of skill formation; factors at different ages are linked dynamically
- **Mixture factor model:** discrete types instead of continuous latent factors; individuals are classified into latent types
- **Mediation analysis with factors:** interventions affect outcomes through changes in latent skills (mediated effects); decomposes total treatment effect into components through skill channels
- **Factor model with discrete outcomes:** latent factors affect binary outcomes (employment, crime, graduation) via probit/logit link functions

## Example Research Questions This Model Can Support
- How much of the wage premium for college graduates is explained by pre-existing differences in cognitive and non-cognitive skills?
- What are the distinct effects of cognitive ability and conscientiousness on adult earnings, controlling for measurement error in test scores?
- Does an early childhood program (e.g., Perry Preschool) improve outcomes through cognitive skills, non-cognitive skills, or both?
- How large is the attenuation bias in OLS estimates of the return to IQ, and what corrected estimate do multiple test scores yield?
- What share of the gender wage gap is explained by differences in the distribution of non-cognitive skills versus discrimination?

## Closely Related Model Families
- **Cunha-Heckman Skill Formation** (extends to dynamic factor models with endogenous parental investment)
- **Heckman Treatment Effect Framework** (factor model addresses selection bias when skills are unobserved)
- **Roy Model** (individuals sort into sectors based partly on latent skills θ; factor model identifies θ from measurements)
- **Rational Inattention** (agents may not observe their own skill endowments perfectly; limited self-knowledge)

## When This Model Is Not Appropriate
- When a single, directly measured outcome is sufficient (no measurement error problem)
- When the skill dimension is one-dimensional and a single validated test instrument exists
- When the research question is about causal effects of a well-defined intervention, not latent skill heterogeneity
- When the sample size is too small to reliably estimate a factor model (factor models require moderately large samples for stable estimates)
