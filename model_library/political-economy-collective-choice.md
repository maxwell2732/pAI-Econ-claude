# Political Economy / Collective Choice Basics

## Model Family Name
Political Economy / Collective Choice / Voting Models

## Canonical Economic Question
When groups of agents with heterogeneous preferences must make a collective decision (vote on a policy, elect a representative, or design institutions), what outcome results, and when does the collective choice reflect or distort individual preferences?

## When to Use This Model
- When policy outcomes are determined by votes, committees, or legislative bargaining rather than by a social planner
- When analyzing why certain policies persist despite being inefficient (political constraints)
- When studying electoral competition, lobbying, redistribution, or the endogenous formation of institutions
- When explaining why public policy deviates from the first-best recommendation of a benevolent planner

## Typical Primitives
- Set of voters N = {1,...,n} with single-peaked preferences over a one-dimensional policy x ∈ ℝ
- Each voter i has ideal point xᵢ* (preferred policy); utility U(x, xᵢ*) is maximized at xᵢ* and decreasing in |x − xᵢ*|
- Decision rule: majority voting, plurality rule, Condorcet competition, legislative bargaining
- Agenda: which alternatives are voted on; order of voting may matter

## Timing
**Median Voter / Majority Voting:**
1. Policy alternatives are proposed (exogenously or by competing candidates)
2. Agents vote sincerely or strategically
3. Policy is implemented based on the voting rule

**Electoral Competition (Hotelling-Downs):**
1. Two candidates simultaneously announce platforms x₁, x₂ ∈ ℝ
2. Each voter votes for the candidate with the preferred platform
3. The candidate with more votes wins and implements their platform

**Legislative Bargaining (Baron-Ferejohn 1989):**
1. One legislator is randomly selected to propose a division of a surplus
2. Legislators vote; majority rules
3. If proposal passes, it is implemented; otherwise, process repeats (with a cost/discount)

## Information Structure
- **Full information:** voters know all candidates' platforms and candidates know voter distribution
- **Political uncertainty:** candidates uncertain about median voter location; voters uncertain about candidates' types
- **Hidden politician type:** citizens elect representatives who may have private preferences → electoral accountability models

## Agent Heterogeneity
- Voters differ in ideal points xᵢ*; the distribution F(x*) is the key primitive driving the political equilibrium
- Candidates (in electoral models) may have fixed preferences or may be office-motivated
- In multidimensional models, preference heterogeneity over a vector (x₁, x₂, ...) — the Condorcet winner typically fails to exist

## Choice Variables
- Voters: which candidate or policy to vote for
- Candidates: platform xᵢ ∈ ℝ to announce (in Downsian model)
- Legislators: proposal or vote (in legislative bargaining)

## Constraints
- **Participation constraint for candidates:** candidates must be willing to run (platform must yield expected payoff ≥ outside option)
- **Majority rule:** a policy x defeats y if more than half the voters prefer x to y
- **Feasibility:** policy x ∈ X (budget balance, constitutional constraints)

## Equilibrium Concept or Solution Concept
- **Condorcet winner:** a policy x* that defeats any other policy in pairwise majority voting; exists if voter preferences are single-peaked (Black's theorem)
- **Median Voter Theorem:** the Condorcet winner is the ideal point of the median voter xₘ; both candidates converge to xₘ in Downsian competition
- **Subgame Perfect Nash Equilibrium:** in legislative bargaining, proposers make minimum winning coalitions
- **Political Equilibrium:** policy outcome x* ∈ X that is consistent with the collective choice process (varies by model)

## Main Mechanism
**Median Voter Theorem:** Under majority rule with single-peaked preferences on a single dimension, the median voter's ideal point is a Condorcet winner. Any policy other than xₘ can be defeated by a proposal that moves toward xₘ. In Downsian electoral competition, candidates converge to xₘ in equilibrium.

**Failure modes:** In multiple dimensions, Condorcet winners generically fail to exist (McKelvey chaos theorem). In legislative bargaining, the agenda-setter can extract a large share of the surplus by exploiting majority rule.

## Common Propositions
- **Black's theorem:** with single-peaked preferences on a single dimension, the median voter ideal point is the unique Condorcet winner
- **Median Voter Theorem (Downs):** two office-motivated candidates converge to the median voter's ideal point in equilibrium
- **Chaos in multiple dimensions (McKelvey):** with two or more policy dimensions and sincere majority voting, any outcome can be reached from any starting point via a sequence of votes (global cycling)
- **Baron-Ferejohn:** the proposer extracts surplus proportional to the continuation value; minimum winning coalition is formed; inefficiency possible when delay occurs
- **Meltzer-Richard (1981):** in a model with income taxation, the equilibrium tax rate is increasing in the gap between mean and median income

## Comparative Statics Usually Available
- Higher income inequality (mean > median income ratio ↑) → higher equilibrium tax rate (Meltzer-Richard)
- More heterogeneous voter preferences → policy convergence less likely; platform polarization possible
- Stronger incumbency advantage → policy further from median voter; accountability reduced
- More parties (multiparty system) → median voter theorem fails; equilibrium involves coalition bargaining

## Welfare Implications
- The median voter outcome is Condorcet-efficient but may be far from the utilitarian social optimum when the median voter differs from the mean voter
- Redistribution in political equilibrium may be excessive (Meltzer-Richard) or insufficient (if high-income voters have disproportionate political influence)
- Political distortions generate a divergence between the political equilibrium and the economic optimum — a central topic in political economy

## Common Modeling Pitfalls
- Applying the Median Voter Theorem in multidimensional policy spaces — it fails generically
- Assuming sincere voting when strategic voting changes the outcome
- Ignoring candidate valence differences (intrinsic qualities unrelated to platform) when they affect election outcomes
- Treating voting as the only channel of political influence while ignoring lobbying, campaign finance, or information provision

## How to Extend the Model
- **Probabilistic voting:** candidates are uncertain about voter preferences; platforms are not exactly at the median
- **Citizen candidates (Osborne-Slivinski, Besley-Coate):** citizens decide to run; platforms reflect candidates' own preferences, not the median
- **Special interest groups / lobbying:** organized groups provide resources to candidates in exchange for favorable policies
- **Incomplete information models:** voters must screen politicians on type; electoral accountability under adverse selection
- **Constitutional choice (Buchanan-Tullock):** agents choose voting rules behind a veil of ignorance; majority rule vs. supermajority vs. unanimity

## Example Research Questions This Model Can Support
- Does the Meltzer-Richard model predict the cross-country variation in redistribution and top marginal tax rates?
- How does electoral competition between two candidates change when candidates have private information about their competence?
- What is the equilibrium policy when a legislature votes on a public good, and legislators differ in how much they benefit from it?
- Can the persistence of inefficient agricultural subsidies be explained by the political geography of rural voters in a spatial voting model?
- When does a lobbying group achieve more influence through campaign contributions versus through information provision to legislators?

## Closely Related Model Families
- **Mechanism Design** (collective choice rule = a mechanism; political constraints are the IC constraints on the voters/politicians)
- **Signaling** (politicians signal competence or type to voters; electoral signaling models)
- **Disclosure / Persuasion** (politicians and media design information structures to influence voter beliefs)
- **Hotelling / Product Differentiation** (Downsian electoral competition is a political analogue of Hotelling location choice)

## When This Model Is Not Appropriate
- When decisions are made by a single decision-maker (use individual optimization or principal-agent)
- When the primary friction is information asymmetry within the collective (voters don't know each other's preferences) rather than aggregation of known preferences
- When the question concerns market outcomes rather than political decisions (use market competition models)
- When the policy space is genuinely multidimensional and single-dimensionality cannot be defended (Median Voter Theorem does not apply)

## Empirical Paper Caution

**Limited empirical connectors in most applied economics settings.** Political
economy models require a collective decision-making channel as a first-order
object of analysis. If the paper does not directly study voting behavior,
electoral outcomes, redistribution policy, or institutional design, the political
economy frame will be an orphan.

Two failure modes observed in practice:
1. **Median voter as policy justification:** The paper needs a reason why some
   policy variable is what it is. AI adds "the policy is set by a median voter"
   as a theoretical foundation. Unless the paper can test or exploit variation in
   the political equilibrium (e.g., using electoral data or quasi-experiments on
   political constraints), this adds no empirical traction.
2. **Meltzer-Richard without distributional data:** The paper studies inequality
   and policy; AI models it as Meltzer-Richard (higher mean/median income ratio →
   higher redistribution). Without data on voter income distributions and policy
   outcomes across comparable jurisdictions, the mechanism is untestable.

**When Political Economy is defensible in an empirical paper:**
- The paper directly studies the effect of political variables (election results,
  legislative composition, voter turnout) on economic outcomes
- The identification strategy exploits exogenous variation in political
  constraints (e.g., close elections, term limits, electoral district boundaries)
- The paper is about institutional design and the political process is the
  mechanism of interest

**AI execution risk:** AI has a strong prior toward adding a median voter
theorem whenever "government" appears in the research question. Unless the
collective decision-making process IS the phenomenon under study, exclude this
model family from consideration.
