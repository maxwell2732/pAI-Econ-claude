# Matching Models

## Model Family Name
Two-Sided Matching / Assignment Markets / Stable Matching

## Canonical Economic Question
When agents on two sides of a market (workers-firms, students-schools, men-women) must be matched and have preferences over potential partners, what matchings are stable (no pair would jointly deviate), and does a stable matching exist?

## When to Use This Model
- When the market has two distinct sides and each agent on one side is matched with an agent (or agents) on the other
- When prices alone do not clear the market (e.g., marriage, organ donation, school assignment, labor markets with preferences over partners)
- When analyzing market design for school choice, residency matching, or kidney exchange
- When the question involves stability, efficiency, or incentive properties of matching mechanisms

## Typical Primitives
- Two sides: set of workers W = {w₁,...,wₙ} and set of firms F = {f₁,...,fₘ}
- Each worker wᵢ has strict preference ordering Pᵢ over firms (and being unmatched)
- Each firm fⱼ has strict preference ordering P̃ⱼ over workers (and being unfilled)
- A matching μ: W ∪ F → W ∪ F is a bijection (one-to-one or many-to-one with quotas)

## Timing
1. Preferences are formed (possibly through type-based utility functions)
2. A central clearinghouse runs a matching algorithm (e.g., Deferred Acceptance) or decentralized matches form
3. Matches are finalized; no further negotiation

## Information Structure
- **Centralized mechanism:** all agents submit preference lists to the mechanism; mechanism applies an algorithm
- **Decentralized matching:** agents make offers and accept/reject based on preferences; standard in marriage market models
- **Private preferences:** agents know own preferences; may or may not know others' preferences
- **Transferable utility (TU) markets:** preferences are derived from match value function v(w, f) minus wage; price equilibrium exists (Becker 1973 assignment model)

## Agent Heterogeneity
- Workers and firms may have heterogeneous quality (vertical differentiation) or type (horizontal)
- TU case: v(wᵢ, fⱼ) = match surplus; wage clears markets; positive assortative matching if v is supermodular

## Choice Variables
- Workers: which firms to apply to (in decentralized models) or which preference list to report (in centralized mechanisms)
- Firms: which workers to accept or retain
- In market design: the mechanism designer chooses the algorithm

## Constraints
- Capacity constraints: each firm can hire up to q workers (many-to-one matching)
- Participation: agents can choose to remain unmatched if all matches are worse than the outside option

## Equilibrium Concept or Solution Concept
- **Stable matching (Gale-Shapley stability):** a matching μ is stable if no worker-firm pair (w, f) both prefer each other to their current match; every individually rational outcome in a stable matching
- **Deferred Acceptance (DA) algorithm:** produces a stable matching; worker-proposing DA is optimal for workers (Gale-Shapley 1962); firm-proposing DA is optimal for firms
- **TU assignment model (Shapley-Shubik):** a competitive equilibrium in wages exists; equilibrium is the unique stable matching when utility is transferable
- **Core:** the set of stable matchings equals the core of the cooperative game

## Main Mechanism
A matching is unstable if a blocking pair exists: a worker-firm pair who would both prefer to be matched together over their current partners. The DA algorithm eliminates blocking pairs by allowing each agent to "hold" the best offer received so far and reject all others, then rejected workers propose to the next firm on their list. This process terminates in a stable matching after finitely many steps. The resulting stable matching is optimal for the proposing side.

## Common Propositions
- **Gale-Shapley (1962):** a stable matching always exists; the DA algorithm finds one
- **Optimality:** worker-proposing DA gives every worker their best stable partner; firm-proposing DA gives every firm its best stable partner; these are Pareto-ranked stable matchings
- **Strategyproofness:** worker-proposing DA is strategy-proof for workers (reporting true preferences is a dominant strategy); firms have incentives to misreport
- **Impossibility:** no stable matching mechanism is strategyproof for both sides simultaneously (Roth 1982)
- **TU-positive assortative matching:** if match value v(θ_w, θ_f) is supermodular (high quality on both sides is complementary), positive assortative matching maximizes total surplus

## Comparative Statics Usually Available
- More agents on one side → that side's match quality falls; other side's improves
- Quotas ↑ at firms → workers better off (less rationing)
- Supermodularity of v → positive assortative matching; submodularity → negative assortative
- Adding transfer (wages): TU model → unique stable matching; pure preference model → multiple stable matchings

## Welfare Implications
- All stable matchings Pareto dominate unstable matchings (no stable matching is Pareto dominated by another outcome that is acceptable to all)
- Worker-optimal stable matching maximizes worker welfare among all stable matchings
- Efficiency vs. stability: stable matchings are not necessarily Pareto efficient; a Pareto improvement over a stable matching may be blocked
- Market design: DA is the standard benchmark for designing centralized clearinghouses (NRMP, school choice programs)

## Common Modeling Pitfalls
- Confusing stable matching with Pareto efficiency — they are different concepts
- Assuming DA is strategyproof for both sides — it is only strategyproof for the proposing side
- Applying TU matching results when utility is not freely transferable (e.g., workers value non-monetary job attributes)
- Ignoring the difference between one-to-one matching (marriage model) and many-to-one matching (college admissions)

## How to Extend the Model
- **Many-to-one with responsive preferences:** firms accept up to q workers; standard DA generalizes with quotas
- **Matching with contracts (Hatfield-Milgrom 2005):** contracts specify not just a match but a wage or other terms; DA generalizes under a substitutes condition
- **Dynamic matching:** agents arrive and depart over time; optimal dynamic algorithm; kidney exchange timing
- **Matching under uncertainty:** agents do not know match quality ex ante; learning about quality after matching
- **Networks and roommate problem:** not two-sided; Gale-Shapley does not apply; stable matchings may not exist

## Example Research Questions This Model Can Support
- What is the optimal school choice mechanism when students have preferences over schools and schools have priorities over students?
- Does kidney exchange benefit patients if chains of swaps are allowed? How large should chains be?
- Is positive assortative matching efficient when firms and workers have complementary skills and wages are negotiated rather than competitive?
- In a labor market with few employers (oligopsony), how does the degree of monopsony affect the stability and efficiency of matches?
- Can an online platform design a stable matching algorithm for its users when both sides have preferences?

## Closely Related Model Families
- **Mechanism Design** (matching mechanisms are a special case without transfers, or with contracts)
- **Search Models** (decentralized matching when agents search for partners)
- **Screening** (firms screen workers in a competitive labor market — combines matching with information)
- **General Equilibrium Basics** (TU matching is isomorphic to a competitive equilibrium in an assignment market)

## When This Model Is Not Appropriate
- When the market clears purely through prices with no preference over partners beyond their price (use competitive equilibrium)
- When agents do not have well-defined preferences over partners (use anonymous market models)
- When the matching is many-to-many and substitutes conditions fail (stability is complex or may not exist)
- When the primary question is about information asymmetry between partners rather than preference compatibility

## Empirical Paper Caution

**Use with caution in empirical paper settings.** Matching models carry a high
risk of producing either a trivially thin or excessively complex theoretical
section when combined with empirical analysis.

Two failure modes observed in practice:
1. **Too thin:** The mechanism reduces to "agents sort assortatively" or
   "match surplus is maximized." This adds nothing beyond labeling the OLS
   coefficient as a "matching equilibrium."
2. **Too complex:** A full Gale-Shapley stability analysis with blocking-pair
   conditions, proposer-optimality, and strategyproofness proofs has no
   counterpart in standard IV/DiD/RD identification — reviewers will ask what
   the theory is doing in the paper.

**Specific sub-model guidance:**
- *Assignment / TU matching (Becker 1973):* The most empirically tractable
  variant. Supermodularity of v(θ_w, θ_f) → positive assortative matching is a
  testable comparative static. Use this narrow formulation if the paper tests
  for sorting patterns.
- *Allocation / market design:* Requires data on a real centralized mechanism
  (school choice, residency match). Without this, the allocation mechanism
  floats free of the empirical analysis. **Do not use** unless the empirical
  setting IS the mechanism.

**AI execution risk:** AI systems tend to invoke matching vocabulary (stability,
DA algorithm, blocking pairs) without connecting these concepts to the specific
estimating equations in the paper. If invoked here, require an explicit bridge
statement in Stage 4 explaining which proposition maps to which reduced-form
coefficient.
