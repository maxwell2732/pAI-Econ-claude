# Compensating Wage Differentials and Hedonic Labor Market Equilibrium

## Model Family Name
Compensating (Equalizing) Differentials / Hedonic Labor Market Equilibrium

## Canonical Economic Question
When jobs differ in non-wage attributes that workers care about (risk of injury or
death, hours, location, prestige, autonomy), how must wages differ across jobs to make
workers willing to supply labor to each, and what does the observed wage-attribute
gradient identify?

## When to Use This Model
- When a disliked job attribute changes exogenously and the question is how the labor market adjusts
- When the research question involves occupational risk, disamenities, or other non-pecuniary job characteristics
- When wages are administratively set or otherwise constrained, so the compensating differential cannot be paid in wages and adjustment must occur on another margin (entry, quality of entrants, vacancy duration, turnover)
- When an observed wage-risk gradient must be interpreted as an equilibrium object rather than a preference parameter

## Typical Primitives
- Workers indexed by type θ with utility U(w, a; θ) over wage w and job attribute a (risk, hours, disamenity)
- Marginal rate of substitution MRS(w, a; θ) = −(∂U/∂a)/(∂U/∂w) > 0 for a disamenity, heterogeneous in θ
- Worker bid function φ(a; θ, u): the wage that leaves type θ at utility level u when the attribute is a
- Firm offer function ψ(a; π): the wage the firm can pay at attribute level a while earning π; reducing a is costly, so ψ is increasing in a
- Equilibrium hedonic wage function w = W(a)
- Outside option ū(θ), typically increasing in θ

## Timing
1. Firms choose the attribute level a they will operate at and the wage attached to it
2. Workers observe the menu of (w, a) bundles and choose a job, or take the outside option
3. The hedonic wage function W(a) adjusts until the labor market at each attribute level clears

## Information Structure
- Workers know the attribute level a of each job and their own preferences over it
- The econometrician observes (w, a) pairs; identifying W(a) requires that unobserved worker productivity be uncorrelated with a, otherwise the estimated gradient mixes compensation with sorting
- Extension: workers systematically underestimate a, which flattens the observed gradient relative to the true differential

## Agent Heterogeneity
- Workers differ in distaste for the attribute; low-MRS (risk-tolerant) workers sort into high-a jobs
- Firms differ in the cost of reducing a; low-cost firms supply the safe end of the market
- The equilibrium locus W(a) is the envelope of worker bid functions and firm offer functions, so it traces neither preferences nor technology alone

## Choice Variables
- Worker: which (w, a) bundle to accept, or whether to leave the occupation entirely
- Firm: the attribute level a it offers and the wage attached to it
- Regulator (extension): a cap on a, or a constraint on w

## Constraints
- Worker participation: U(W(a), a; θ) ≥ ū(θ)
- Firm profit maximization, or zero profit under free entry
- **Regulated-wage constraint (the extension that gives this family its bite in administered labor markets):** w ≤ w̄, so the hedonic wage function cannot rise to clear the market

## Equilibrium Concept or Solution Concept
- **Hedonic equilibrium:** a wage function W(a) such that every worker chooses a utility-maximizing bundle, every firm chooses a profit-maximizing bundle, and each attribute submarket clears
- **Tangency conditions:** W′(a) = MRS(W(a), a; θ*(a)) = the marginal cost of attribute reduction for the firm supplying a; the gradient equals the *marginal* worker's willingness to accept, not the average worker's
- **Constrained equilibrium:** under a binding wage cap the tangency condition fails; the shadow price of the constraint measures the unpaid compensating differential, and the market clears on a quantity or quality margin instead

## Main Mechanism
Workers dislike attribute a, so a job with a higher a must pay more to attract anyone.
Competition on both sides produces an equilibrium wage function with W′(a) > 0. When a
rises exogenously, the flexible-wage response is a rise in W(a): the differential is paid
in wages, and the allocation of workers across jobs is largely preserved.

The mechanism of interest in regulated labor markets is what happens when W cannot rise.
With the wage fixed at w̄, an increase in a makes participation fail for a set of types.
The market clears by shedding workers. If entry into the occupation is rationed by a
quality index (an exam score, a credential, an admission rank), the marginal entrant's
quality falls, and the compensating differential is paid in quality rather than in wages.
The size of that quality adjustment rises with the tightness of the wage constraint, which
yields a cross-sectional test wherever the degree of wage regulation varies.

## Common Propositions
- **Envelope result:** the equilibrium wage function is the envelope of bid and offer functions; W′(a) identifies the marginal worker's MRS and the marginal firm's cost simultaneously, so the gradient alone identifies neither preferences nor technology
- **Value of a statistical life:** the wage-fatality-risk gradient recovers a value of life for the marginal worker in risky occupations; the estimate is specific to the selected sample, since risk-tolerant workers sort into risky jobs
- **Selection attenuation:** because workers with the least distaste for a sort into high-a jobs, the observed W′(a) is a lower bound on the population average willingness to pay for attribute reduction
- **Regulated-wage transmission:** if w is fixed and a rises, the entire adjustment falls on the participation margin; the elasticity of entry with respect to a rises as wage flexibility falls
- **Non-identification under uniform pay:** if every job pays the same regulated wage regardless of a, the measured wage-attribute gradient is zero even though the compensating differential is strictly positive in preferences

## Comparative Statics Usually Available
- ↑ a → ↑ W(a) under wage flexibility; ↓ entry and ↓ marginal entrant quality under a binding wage cap
- ↑ dispersion of risk tolerance in the population → flatter hedonic locus, since more workers accept high a at small premia
- ↑ cost of safety or security technology → firms operate at higher a; the equilibrium premium rises
- ↑ degree of wage regulation ρ ∈ [0,1] → |∂W/∂a| falls toward zero and |∂(entry)/∂a| rises monotonically
- Improved information about a → workers revise beliefs upward → the gradient steepens, or entry falls further under regulation

## Welfare Implications
- Hedonic equilibrium is efficient absent externalities and with correct risk perception: workers who accept the disamenity are compensated at their own reservation price
- Efficiency fails when workers misperceive a, when the disamenity imposes external costs, or when wages cannot adjust
- Under a binding wage cap the inefficiency has a specific shape: those who exit are selected by the outside option rather than by distaste for a, so the workers who leave are the ones with the best alternatives, not the ones who suffer the disamenity most
- Three policy instruments are available: raise the regulated wage, reduce a directly (safety or security investment), or compensate in kind; their ranking depends on the cost of attribute reduction relative to the shadow price of the wage constraint

## Common Modeling Pitfalls
- Reading W′(a) as a preference parameter, when it is an equilibrium envelope reflecting both sides of the market
- Assuming the compensating differential must appear in wages; in regulated or rationed markets it can appear in queue length, entry rates, vacancy duration, or entrant quality
- Ignoring sorting when interpreting a wage-risk gradient estimated across workers
- Treating a as exogenous to the firm, when in the full model firms choose a jointly with w
- Applying the model when the disamenity is unobserved at the time of choice; that is a learning or adverse-selection problem, and the differential is not paid at all

## How to Extend the Model
- **Administered pay scale:** impose w ≤ w̄ and study the multiplier on the constraint, which measures the unpaid differential in wage units
- **Rationed entry with a quality cutoff:** combine with `model_library/matching-with-cutoffs.md` so the participation margin is a score threshold; the compensating differential is then denominated in score units and is directly observable
- **Intrinsic motivation:** add a vocation or altruism term κ to utility; as a rises, the composition of entrants shifts toward high-κ types, which can move mean ability and mean motivation in opposite directions
- **Dynamic risk and learning:** a is learned over the career; entry responds to beliefs and exit responds to realizations (combine with `model_library/human_capital_and_labor/ben-porath-lifecycle.md`)
- **Firm-side heterogeneity in protective investment:** employers differ in the cost of reducing a, generating a within-occupation joint distribution of risk and pay

## Example Research Questions This Model Can Support
- When violence against clinicians rises but physician pay is set by an administrative scale, does the compensating differential appear in the quality of entrants rather than in wages?
- How much of the occupational wage premium for police, mining, or long-haul trucking is a compensating differential rather than a skill return?
- Does mandatory safety regulation raise or lower worker welfare when the wage premium for risk falls by more than the risk itself?
- Do teachers accept lower annual wages in exchange for shorter working years, and does the implied MRS match the observed hedonic gradient?
- When a public-sector pay scale compresses wages across risk levels, which occupations suffer the largest declines in applicant quality?

## Closely Related Model Families
- **Roy Model** (sorting on comparative advantage; here the sorting is on distaste for the attribute)
- **Occupational Choice and Comparative Advantage** (the participation margin in this model is an occupational choice)
- **Matching with Cutoffs** (supplies the rationing device when entry is limited by a score threshold)
- **Hotelling / Product Differentiation** (hedonic pricing of characteristics on the product side)
- **Discrete Choice / Random Utility** (empirical implementation of the job-choice margin)
- **Search Models** (when the disamenity is discovered through search rather than posted)

## When This Model Is Not Appropriate
- When the job attribute is unknown to workers at the time of choice (use learning or adverse selection)
- When wages are fully flexible and the question concerns quantities only; a standard labor supply model then suffices and the hedonic structure adds nothing
- When there is a single job type, so no attribute variation exists to price
- When all workers value the attribute identically, since the differential is then a constant and the model has no sorting content

## Empirical Paper Caution

**High risk of a trivially thin theory section.** "Risky jobs pay more" needs no model, and
a paper that reports a wage-risk gradient and labels it a compensating differential has
not used theory.

The model earns its place in an empirical paper when one of the following holds:

1. **Wages cannot adjust.** The setting has administered pay, a binding scale, or a
   regulated price, so the theory delivers a non-obvious prediction: the differential is
   paid on a different margin. The paper must name that margin, explain why it is the one
   that moves, and measure it.
2. **Identification depends on the envelope.** The estimate is interpreted as the marginal
   worker's MRS, and the model pins down which worker is marginal.
3. **Sorting drives the sign.** The paper documents a gradient with the counterintuitive
   sign, and the model shows that selection generates it.

**Do not** pair this model with a reduced-form wage regression and claim the coefficient
"is" the compensating differential without addressing sorting. That is precisely the
failure the envelope result warns against.

**AI execution risk:** AI systems reach for the phrase "compensating differential" whenever
a job attribute appears, without checking whether wages in the setting are free to move. If
this family is invoked, require an explicit statement in Stage 4 of whether the wage is
flexible, and if it is not, which margin absorbs the adjustment.

## Key References (verified)

- Rosen, Sherwin. 1986. "The Theory of Equalizing Differences." In O. Ashenfelter and
  R. Layard (eds.), *Handbook of Labor Economics*, Volume 1, Chapter 12, pp. 641–692.
  Amsterdam: North-Holland.
- Thaler, Richard, and Sherwin Rosen. 1976. "The Value of Saving a Life: Evidence from the
  Labor Market." In N. E. Terleckyj (ed.), *Household Production and Consumption*,
  pp. 265–302. NBER.
