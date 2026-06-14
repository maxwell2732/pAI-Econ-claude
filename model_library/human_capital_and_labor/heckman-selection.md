# Heckman Selection Model

## Model Family Name
Heckman Two-Step Selection Correction (1979) — Sample Selection Bias

## Canonical Economic Question
When the sample of observed outcomes is not a random draw from the population because selection into the sample is correlated with the unobservables that determine the outcome, how should the outcome equation be estimated to recover unbiased parameters?

## When to Use This Model
- When the dependent variable (e.g., wage, test score, output) is observed only for a selected subsample (e.g., workers who are employed, students who attend school, firms that survive)
- When the selection into the observed sample is correlated with unobservables in the outcome equation
- When a structural correction for selection bias is preferred over excluding the problem by assumption
- When deriving bounds or corrections for attrition, truncation, or endogenous participation in surveys and experiments

## Typical Primitives
- Outcome equation: y₁ᵢ = Xᵢβ + εᵢ (e.g., log wage)
- Selection equation: y₂ᵢ* = Zᵢγ + uᵢ; observed iff y₂ᵢ* > 0 (e.g., individual is employed)
- Selection indicator: dᵢ = 𝟙{y₂ᵢ* > 0} = 𝟙{Zᵢγ + uᵢ > 0}
- Error structure: (εᵢ, uᵢ) ∼ bivariate normal with correlation ρ and normalized σᵤ = 1
- Key: E[εᵢ | dᵢ = 1] = ρσ_ε · λ(Zᵢγ) ≠ 0 when ρ ≠ 0, where λ(·) is the inverse Mills ratio

## Timing
1. Latent selection score y₂ᵢ* = Zᵢγ + uᵢ is realized
2. Individual is selected (dᵢ = 1) iff y₂ᵢ* > 0
3. Outcome y₁ᵢ is observed only for dᵢ = 1

## Information Structure
- The econometrician observes: X, Z, y₁ᵢ (for dᵢ = 1), dᵢ for all i
- The econometrician does not observe: latent y₁ᵢ for non-selected observations; the latent index y₂ᵢ*
- Exclusion restriction: at least one variable in Z is not in X (Zᵢ\Xᵢ ≠ ∅ for identification beyond functional form)

## Agent Heterogeneity
- Individuals differ in observable X, Z characteristics and in unobservable (εᵢ, uᵢ)
- The correlation ρ between ε (outcome unobservable) and u (selection unobservable) is the source of selection bias

## Choice Variables
- In the structural interpretation, the individual chooses to participate (dᵢ = 1) based on y₂ᵢ* (rational participation decision)
- The econometrician chooses the estimation procedure

## Constraints
- Bivariate normality: the standard Heckman correction requires (ε, u) ∼ bivariate normal; semiparametric extensions relax this
- Exclusion restriction: for identification without functional form dependence, Z must contain a variable excluded from X (an instrument for selection)

## Equilibrium Concept or Solution Concept
- **Statistical / Econometric model** (not an economic equilibrium concept)
- **Heckman two-step (Heckit):**
  - Step 1: Estimate the selection equation by probit; obtain predicted propensity score Φ(Zᵢγ̂) and inverse Mills ratio λ(Zᵢγ̂)
  - Step 2: Estimate the outcome equation by OLS on the selected sample, including λ(Zᵢγ̂) as an additional regressor; coefficient on λ = ρσ_ε
- **MLE (Heckman 1979):** estimate jointly by maximum likelihood; more efficient but more sensitive to distributional assumptions
- Coefficient interpretation: β in the corrected equation is the effect of X on y₁ for the population, not just the selected subsample

## Main Mechanism
OLS on the selected sample is biased because E[εᵢ | dᵢ = 1, Xᵢ] = ρσ_ε · λ(Zᵢγ) ≠ 0 whenever selection and outcome errors are correlated (ρ ≠ 0). The inverse Mills ratio λ(Zᵢγ) = φ(Zᵢγ)/Φ(Zᵢγ) is the expected value of the selection error conditional on selection, and including it as a regressor removes the omitted variable bias caused by selection. The direction of bias:
- ρ > 0: positive selection → OLS overestimates β (better unobservables → more likely selected; wage equation overestimates returns to X)
- ρ < 0: negative selection → OLS underestimates β

## Common Propositions
- **Heckman (1979):** E[y₁ | d=1, X, Z] = Xβ + ρσ_ε λ(Zγ); OLS on this equation yields consistent estimates of β if λ(Zγ) is included
- **Sign of selection bias:** positive correlation between ε and u implies positive selection; OLS on selected sample yields upward-biased β
- **Collinearity when Z = X:** without an exclusion restriction, identification relies solely on the non-linearity of λ(·); this is fragile and may produce very imprecise estimates
- **Test for selection:** t-test on the inverse Mills ratio coefficient; ρ = 0 implies no selection bias → OLS is consistent

## Comparative Statics Usually Available
- As ρ → 0: selection correction term → 0; Heckman estimator → OLS (consistent when ρ = 0)
- As selection probability → 1: λ(Zγ) → 0; all observations are in the sample; no selection bias
- As selection probability → 0: λ(Zγ) → very large; selection bias is severe; correction becomes imprecise
- Exclusion restriction strength ↑: better instrument for selection → more precisely estimated correction

## Welfare Implications
- Primarily a statistical correction, not a welfare model per se
- In policy applications: correctly estimating treatment effects (e.g., returns to training programs) requires selection correction when assignment is endogenous
- Underestimating selection bias leads to incorrect conclusions about the effectiveness of policies that targeted workers with unobserved advantages

## Common Modeling Pitfalls
- Relying on functional form (bivariate normality) for identification without a valid exclusion restriction — estimates may be driven entirely by the functional form assumption
- Interpreting the corrected β as the average treatment effect (ATE) — it is the ATE for the population; the effect for the selected subsample (ATT) is different
- Assuming the exclusion restriction is valid when the excluded variable directly affects the outcome (Z must truly be excluded from the outcome equation)
- Failing to account for the fact that the two-step estimator underestimates standard errors unless they are corrected (bootstrap or analytical correction needed)

## How to Extend the Model
- **Semiparametric selection correction (Powell; Newey 2009):** relax bivariate normality; use series expansion or kernel methods for λ(·)
- **Panel data selection correction (Wooldridge):** use correlated random effects to handle selection with unobserved heterogeneity
- **Dynamic selection:** selection at multiple periods (rotating panel); Wooldridge's (1995) extension
- **Endogenous switching regression:** two outcome equations (one per sector); generalization of Heckman to Roy model — each worker has a latent wage in both sectors
- **Regression discontinuity + Heckman:** exploit a discontinuity in selection probability as an exclusion restriction

## Example Research Questions This Model Can Support
- What is the wage of women in the labor market, accounting for the fact that women who work are not a random sample of all women?
- What is the true return to job training programs when program participants self-select based on unobservable motivation?
- Do college graduates earn more than high school graduates because of the education itself, or because more able students go to college?
- What is the health outcome of patients who choose to undergo elective surgery, accounting for patient self-selection into treatment?
- Does publication bias in academic journals (selection of statistically significant results) affect meta-analytic estimates of effect sizes?

## Closely Related Model Families
- **Roy Model** (the structural model of which Heckman is the econometric implementation)
- **Heckman Treatment Effect Framework** (extends to LATE, MTE, treatment heterogeneity)
- **Moral Hazard** (when selection is driven by agent's response to a contract or incentive, not just unobservables)
- **Regression Discontinuity** (alternative identification strategy for selection; exploits discontinuity in selection probability)

## When This Model Is Not Appropriate
- When selection is random (randomized experiment) and there is no correlation between selection and outcomes
- When the selection is based only on observables (not unobservables) — then OLS controlling for X is sufficient
- When bivariate normality is implausible and no valid exclusion restriction is available — estimates are not credible
- When the question is about dynamic selection over multiple periods (use dynamic panel methods or structural dynamic discrete choice)
