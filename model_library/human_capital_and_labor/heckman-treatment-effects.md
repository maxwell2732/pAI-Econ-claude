# Heckman Treatment Effect Framework

## Model Family Name
Heckman Treatment Effects — Potential Outcomes, Selection into Treatment, Marginal Treatment Effects, Local Instrumental Variables

## Canonical Economic Question
What is the causal effect of a treatment (education, training, intervention) on outcomes (wages, health, crime) when individuals self-select into treatment based on unobservable gains, and how do treatment effects vary across individuals with different propensities to take up the treatment?

## When to Use This Model
- When treatment assignment is not random and individuals select based on unobservable heterogeneous gains (essential heterogeneity)
- When the research question requires distinguishing between average treatment effects for different subpopulations (ATE, ATT, ATU, LATE, MTE)
- When an instrumental variable (IV) is available but the treatment effect heterogeneity means the LATE may not generalize
- When the question concerns the policy-relevant treatment effect for a specific intervention or counterfactual

## Typical Primitives
- Potential outcomes: Y₁ (outcome if treated), Y₀ (outcome if not treated); only one is observed per individual
- Treatment indicator: D ∈ {0,1}; observed outcome Y = DY₁ + (1−D)Y₀
- Selection into treatment: D = 𝟙{μ_D(Z) − V ≥ 0} where Z are observed characteristics including instrument(s), V is an unobservable (resistance to treatment); P(Z) = P(D=1|Z) is the propensity score
- Instrument exclusion: Z contains an instrument that affects D but does not directly affect (Y₁, Y₀)
- Marginal Treatment Effect (MTE): MTE(x, u_D) = E[Y₁ − Y₀ | X=x, V=u_D] — treatment effect for a person with observed characteristics x who is indifferent at unobservable resistance level u_D

## Timing
1. Individual has latent unobserved resistance to treatment V and potential outcomes (Y₁, Y₀)
2. Individual observes instrument Z (and X), decides whether to take up treatment D based on μ_D(Z) − V
3. Outcome Y = DY₁ + (1−D)Y₀ is realized; only (D, Y, Z, X) are observed

## Information Structure
- Individual: knows own V and potential outcomes (at least implicitly through their selection decision)
- Econometrician: observes (Y, D, Z, X); does not observe V, Y₁ for D=0 individuals, or Y₀ for D=1 individuals
- Instrument Z: observed by econometrician; shifts the treatment probability; excluded from potential outcomes

## Agent Heterogeneity
- The core of the framework: individuals have heterogeneous treatment effects Y₁ᵢ − Y₀ᵢ
- Essential heterogeneity (Heckman-Urzua-Vytlacil): individuals' treatment choices are correlated with their own unobserved gains; this makes IV estimands policy-specific, not universal parameters

## Choice Variables
- Individual: treatment uptake D ∈ {0,1} (endogenous)
- Econometrician / policy-maker: which instrument to use; which estimand to target; which policy to evaluate

## Constraints
- Monotonicity (Imbens-Angrist): a stronger instrument induces more individuals to take up treatment; no individual switches from treated to untreated as the instrument strengthens — needed for LATE to be well-defined
- Exclusion restriction: instrument Z affects D but does not affect (Y₁, Y₀) directly
- Support: the propensity score P(Z) must have sufficient variation across individuals to identify MTE over a range of u_D

## Equilibrium Concept or Solution Concept
- **Statistical / structural model** — not a game equilibrium
- **IV estimand (Wald):** E[Y|Z=z₁] − E[Y|Z=z₀] / {E[D|Z=z₁] − E[D|Z=z₀]} = LATE for compliers (individuals induced by Z to change treatment status)
- **Local Average Treatment Effect (LATE, Imbens-Angrist 1994):** average effect for compliers — those who change D in response to the instrument; not the ATE or ATT for the whole population
- **Marginal Treatment Effect (MTE, Heckman-Vytlacil):** MTE(x, u_D) = ∂E[Y|X=x, P(Z)=p]/∂p evaluated at p = u_D; identifies the treatment effect at the margin of selection
- **Policy-relevant treatment effect (PRTE, Heckman-Vytlacil):** the effect of a specific policy change, as a weighted average of MTEs with policy-specific weights

## Main Mechanism
Different treatment effect estimands target different subpopulations:
- **ATE** = E[Y₁ − Y₀]: average effect for the whole population
- **ATT** = E[Y₁ − Y₀ | D=1]: average effect for the treated
- **ATU** = E[Y₁ − Y₀ | D=0]: average effect for the untreated
- **LATE** = E[Y₁ − Y₀ | complier]: average effect for those induced by the instrument to switch — instrument-specific; not a universal parameter
- **MTE(u_D)** = E[Y₁ − Y₀ | V = u_D]: treatment effect for individuals at exactly the margin of indifference when propensity score = u_D

Under essential heterogeneity, LATE ≠ ATE ≠ ATT. Different instruments (compulsory schooling law vs. distance to school) target different complier populations and identify different LATEs. The MTE unifies all estimands: every IV estimand is a weighted average of MTEs, with instrument-specific weights.

## Common Propositions
- **Vytlacil (2002) equivalence:** the LATE model (Imbens-Angrist) and the threshold-crossing latent index model (Heckman) are formally equivalent given monotonicity
- **IV identifies LATE, not ATE:** under essential heterogeneity, IV with a valid instrument identifies the treatment effect only for the instrument's compliers
- **MTE integrates to ATE:** ATE = ∫₀¹ MTE(u_D) du_D; ATT = ∫₀^{P(Z)} MTE(u_D)/P(Z) du_D (with appropriate weighting)
- **Extrapolation problem:** without further structure, LATE from one instrument (e.g., compulsory schooling) cannot be extrapolated to a different policy change (e.g., college subsidy)
- **Policy-relevant treatment effect:** for a policy that shifts the distribution of P(Z) from p to p', the PRTE is a weighted integral of MTE over the range of P affected

## Comparative Statics Usually Available
- Stronger instrument (larger variation in P(Z)) → identifies MTE over a wider range of u_D
- Policy change that shifts propensity score from p to p' affects welfare by ∫_{p}^{p'} MTE(u_D) du_D (the marginal individuals induced)
- If MTE is decreasing in u_D: low-resistance individuals have high gains; infra-marginal individuals (already treated) benefit more than marginal individuals
- If MTE is increasing in u_D: marginal individuals have higher gains than average → LATE > ATT; policies that expand treatment could be especially beneficial

## Welfare Implications
- Policy evaluation requires specifying which estimand is relevant; the correct estimand depends on the counterfactual policy
- Cost-benefit analysis of a marginal expansion of a program requires the MTE at the current margin, not the ATE or LATE from a historical IV
- Extrapolation from LATE to the full population requires either constant treatment effects (no heterogeneity) or knowledge of the MTE function

## Common Modeling Pitfalls
- Treating the IV estimand as the ATE when essential heterogeneity is likely (the two differ whenever unobserved gains correlate with treatment choice)
- Using IV to recover a "causal effect" without specifying for whom: LATE is a parameter for compliers, which varies by instrument
- Ignoring the monotonicity assumption for IV validity — if some individuals are defiers (they take up treatment when the instrument is weak), the Wald estimator is not the LATE
- Conflating the MTE with the marginal cost of treatment to derive cost-benefit conclusions (need to specify the policy counterfactual carefully)

## How to Extend the Model
- **Semi-parametric MTE estimation (Heckman-Vytlacil; Carneiro-Heckman-Vytlacil):** estimate MTE using local IV (derivative of E[Y|X, P(Z)] with respect to P(Z))
- **Dynamic treatment effects:** treatment is taken up at a discrete age; effects vary by age of treatment → generalization to duration models and sequential treatment
- **Multi-valued treatment:** D ∈ {0, 1, 2, ..., K}; generalized Roy model; separate MTE for each margin
- **Network effects in treatment:** treatment of one individual affects others' outcomes (spillovers) → SUTVA violation; requires network IV designs
- **Selection on gains in panel data:** within-person variation in treatment status used to identify treatment effects; fixed effects control for permanent unobserved heterogeneity

## Example Research Questions This Model Can Support
- What is the return to college education at the margin of attendance, and does it differ from the average return for college graduates?
- Who benefits most from a job training program — individuals who are most likely to participate anyway, or those who are marginally induced to participate?
- Does the effect of early childhood intervention on adult outcomes differ for children who are most versus least likely to receive the intervention without the program?
- What is the marginal treatment effect of attending a higher-ranked school, and for which students is the effect largest?
- For workers at the margin of adapting their skills to AI, what is the wage return to human capital investment in AI-complementary skills?

## Closely Related Model Families
- **Roy Model** (structural foundation: each sector = treated/untreated; wage in each sector = Y₁/Y₀)
- **Heckman Selection Model** (selection correction; MTE framework generalizes the selection correction to heterogeneous effects)
- **Matching Models** (propensity score matching assumes conditional independence; MTE relaxes this)
- **Instrumental Variables** (IV identifies LATE; MTE unifies LATE, ATT, ATE as weighted averages of MTEs)
- **Cunha-Heckman Skill Formation** (treatment is early childhood investment; effects are heterogeneous across skill types)

## When This Model Is Not Appropriate
- When treatment is truly randomly assigned (no selection problem; OLS is consistent; MTE is a constant)
- When there is no valid instrument available and essential heterogeneity cannot be addressed
- When the treatment effect does not vary across individuals (homogeneous treatment effects → LATE = ATE = ATT)
- When the monotonicity assumption fails (defiers exist in large numbers) and no alternative identification strategy is available
