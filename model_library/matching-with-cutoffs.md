# Matching with Cutoffs (Supply and Demand in Matching Markets)

## Model Family Name
Continuum Matching with Market-Clearing Cutoffs / Supply and Demand Framework for
Two-Sided Matching

## Canonical Economic Question
When a centralized mechanism assigns a large population of applicants to a finite set of
institutions with fixed capacities, and each institution ranks applicants by a priority
score, what admission thresholds clear the market, and how do those thresholds respond to
changes in capacity, applicant preferences, or the value of an institution?

## When to Use This Model
- When the empirical object of interest is an **admission cutoff, threshold score, or minimum rank** (college admission scores, school choice cutoffs, residency match outcomes, civil service exam thresholds)
- When the market is large enough that a continuum approximation is reasonable and the modeler wants comparative statics rather than algorithmic properties
- When the research question requires separating a **capacity shift** from a **preference shift**, both of which move the observed cutoff in the same direction
- When a rationed occupational or educational choice needs a price-like variable and no money price exists

## Typical Primitives
- A continuum of students with total mass 1; each student has a type (≻, e) where ≻ is a strict preference ordering over colleges and e = (e₁,...,e_C) ∈ [0,1]^C is a vector of scores, one per college
- Distribution η over student types, with a full-support / continuous-density assumption on scores
- A finite set of colleges c = 1,...,C, each with capacity S_c ∈ (0,1), where Σ_c S_c < 1 so rationing binds
- A cutoff vector P = (P₁,...,P_C) ∈ [0,1]^C
- Student demand: a student attends the ≻-best college among those where e_c ≥ P_c

## Timing
1. Student types (preferences and scores) are realized
2. The clearinghouse runs a stable mechanism (student-proposing deferred acceptance, or serial dictatorship when a single score is used)
3. The outcome is summarized by the cutoff vector P; each student attends their favorite college among those they qualify for

## Information Structure
- Students know their own preferences and their own scores
- Under a strategyproof mechanism, truthful reporting is optimal, so reported preferences equal true preferences
- The analyst typically observes the realized cutoffs P and capacities S, and may or may not observe the full score distribution
- Cutoffs are the sufficient statistic: knowing P and a student's (≻, e) determines their assignment without knowing anyone else's type

## Agent Heterogeneity
- Students differ in both preference orderings and score vectors; the joint distribution of the two is the substance of the model
- Correlation between scores across colleges determines how tightly cutoffs move together; perfectly correlated scores (a single exam) collapse the model to a one-dimensional ranking
- Correlation between score and preference determines whether high-score students disproportionately want a particular college, which governs how steeply that college's cutoff responds to shocks

## Choice Variables
- Student: which college to attend among those where the score clears the cutoff (equivalently, which preference list to submit)
- Clearinghouse / policymaker: capacities S_c, priority rules, and reserve or quota structures
- Colleges in the basic model do not choose; they mechanically admit the highest-scoring applicants up to capacity

## Constraints
- Capacity: the mass admitted to college c cannot exceed S_c
- Feasibility: each student attends at most one college
- Rationing: Σ_c S_c < 1, so some students are unassigned and the outside option is relevant

## Equilibrium Concept or Solution Concept
- **Cutoff characterization:** every stable matching corresponds to a cutoff vector, and every market-clearing cutoff vector corresponds to a stable matching. Stability is equivalent to market clearing in cutoff space
- **Demand function:** define D_c(P) as the mass of students who choose college c given cutoffs P. Market clearing requires D_c(P) ≤ S_c for all c, with equality whenever P_c > 0
- **Existence and generic uniqueness:** a market-clearing cutoff vector exists; under a full-support condition on the type distribution it is unique. This is the property that makes comparative statics well posed, in contrast to the finite-market model where the set of stable matchings is a lattice with many elements
- **Convergence:** the cutoffs of large finite markets converge to the continuum cutoffs, so the continuum object is the right approximation for a real admissions market

## Main Mechanism
The cutoff plays exactly the role of a price. A student "affords" college c when e_c ≥ P_c,
and demand for c is the mass of students who both afford it and prefer it to everything
else they afford. Market clearing pins down P. Because demand is decreasing in own cutoff
and increasing in rival cutoffs, the system behaves like a standard supply-and-demand
system with gross substitutes, which is what delivers uniqueness and signed comparative
statics.

The analytic payoff is that a change in the *desirability* of a college and a change in its
*capacity* both move its cutoff, but they move the rest of the system differently. A
capacity expansion at c lowers P_c and raises demand pressure elsewhere only through the
students it absorbs. A fall in the perceived value of c lowers P_c while pushing demand
onto rival colleges, raising their cutoffs. Observing capacities alongside cutoffs
therefore separates the two shocks, which a cutoff series alone cannot do.

## Common Propositions
- **Stability equals market clearing:** the set of stable matchings coincides with the set of market-clearing cutoff vectors
- **Existence and uniqueness:** a market-clearing cutoff vector always exists, and it is unique for a generic (full-support) distribution of student types
- **Convergence of finite markets:** as the market grows, the stable matchings of the finite economy converge to the unique continuum cutoff vector, and the multiplicity of the finite model vanishes
- **Capacity comparative static:** ∂P_c/∂S_c < 0; expanding a college's capacity lowers its own cutoff and weakly lowers the cutoff of no other college it competes with
- **Demand comparative static:** an increase in the mass of students ranking c first raises P_c and raises the cutoffs of colleges that c draws from
- **Strategyproofness in the large:** the continuum mechanism is strategyproof, so reported preferences can be treated as true preferences

## Comparative Statics Usually Available
- ↑ capacity S_c → ↓ P_c; the students absorbed come from the colleges immediately adjacent in the preference ranking
- ↓ value of college c (worse career prospects, worse amenities) → ↓ P_c and ↑ P_k for substitute colleges k
- ↑ mass of applicants (a larger cohort) with capacities fixed → ↑ all cutoffs
- ↑ correlation between scores across colleges → cutoffs move more nearly in lockstep, and relative cutoffs become more informative about relative desirability than absolute cutoffs
- Introduction of a reserve or quota → the cutoff splits into group-specific cutoffs, and the aggregate cutoff is no longer a sufficient statistic

## Welfare Implications
- The stable outcome is student-optimal under student-proposing deferred acceptance, so no student can be made better off without violating a priority
- Cutoffs are a legitimate welfare-relevant price: the change in a student's assignment following a cutoff shift measures the rationing cost imposed on them
- Capacity policy has a distributional signature: expanding a high-cutoff institution benefits students just below the old threshold, a group that is identifiable in the data
- A fall in a college's cutoff caused by a fall in its value is a welfare loss even though more students gain access, since the value of what they gain access to has fallen

## Common Modeling Pitfalls
- Treating the cutoff as a descriptive statistic instead of an equilibrium object, then regressing it on covariates without a market-clearing condition
- Reading a falling cutoff as a demand shift when capacity also changed; the two are separately identified only when capacity is observed
- Using raw scores across years when the exam scale, the cohort size, or the scoring rule changed; rank or percentile is the comparable object
- Applying the continuum model to a small market where the multiplicity of stable matchings actually matters
- Assuming a single cutoff when the mechanism has group-specific reserves, quotas, or multiple admission tracks
- Ignoring the outside option, which determines how many students are unassigned and therefore how much slack the system has

## How to Extend the Model
- **Endogenous college value:** let the payoff to attending c depend on a labor market outcome that itself changes; the cutoff then inherits the comparative statics of the occupational return (combine with `model_library/human_capital_and_labor/occupational-choice-comparative-advantage.md`)
- **Occupational choice as the outside option:** replace the generic outside option with a modeled alternative career, so P_c responds to the relative return of two occupations
- **Reserves and affirmative action:** group-specific cutoffs; the model characterizes how a reserve shifts the majority cutoff
- **Score investment:** students choose effort to raise e before the match, making the score distribution endogenous
- **Dynamic entry:** capacities adjust across cohorts in response to past cutoffs, which links this family to `model_library/human_capital_and_labor/cobweb-supply-lags.md`
- **Imperfectly correlated multi-dimensional scores:** different colleges weight subject scores differently, generating comparative advantage in admissions

## Example Research Questions This Model Can Support
- When the return to a profession falls, how much of the adjustment shows up in the admission cutoff of the corresponding major, and how much in enrollment capacity?
- Does a decline in a major's admission rank reflect falling demand for that major or expansion of its seats, given observed capacity?
- How does an affirmative action reserve at selective universities change the admission threshold faced by non-reserved applicants?
- What is the effect of a new selective institution entering the market on the cutoffs of incumbent institutions?
- How much of the year-to-year variation in school choice cutoffs is explained by capacity changes versus changes in school desirability?

## Closely Related Model Families
- **Matching Models** (the finite-market Gale-Shapley foundation; this family is its large-market limit with prices)
- **General Equilibrium Basics** (cutoffs are prices, and market clearing is the same fixed-point argument)
- **Mechanism Design** (strategyproofness and the design of the clearinghouse)
- **Discrete Choice / Random Utility** (supplies the demand system D_c(P) when preferences are parameterized)
- **Occupational Choice and Comparative Advantage** (supplies the payoff to each college when the choice is really a career choice)
- **Compensating Differentials** (when a job disamenity cannot be priced in wages, it is priced in the cutoff)

## When This Model Is Not Appropriate
- When the market clears with money prices and admission is not rationed by score
- When the market is small enough that which stable matching is selected is the substance of the question
- When institutions actively choose whom to admit on unobservable criteria rather than mechanically applying a score priority
- When applicants do not know their scores or the mechanism before choosing, making the strategyproofness argument inapplicable
- When the object of interest is the algorithm's incentive or fairness properties rather than the level and movement of thresholds

## Empirical Paper Caution

**This family is unusually safe for empirical companion work, for one specific reason:**
the theoretical object (the cutoff) is literally the variable in the dataset. That removes
the usual gap between a matching-theory section and the estimating equation, which is the
failure mode flagged in `model_library/matching-models.md`.

Requirements for it to be doing real work:
1. **Capacity must be observed.** Without S_c the identification claim collapses, because
   every cutoff movement has two candidate explanations.
2. **The cutoff must be the outcome or the running variable**, not decoration. If the paper
   estimates something else entirely and mentions cutoffs in passing, use a simpler model.
3. **State the comparative static being tested.** ∂P_c/∂S_c < 0 and the demand-shift
   prediction have opposite implications for rival institutions; a paper should say which
   it is testing.

**Do not** import the full stability apparatus (blocking pairs, lattice structure,
proposer-optimality) into an applied paper. The cutoff characterization is the part that
matters; the rest is machinery that supports it.

## Key References (verified)

- Azevedo, Eduardo M., and Jacob D. Leshno. 2016. "A Supply and Demand Framework for
  Two-Sided Matching Markets." *Journal of Political Economy* 124(5): 1235–1268.
- Roth, Alvin E. 1984. "The Evolution of the Labor Market for Medical Interns and
  Residents: A Case Study in Game Theory." *Journal of Political Economy* 92(6): 991–1016.
