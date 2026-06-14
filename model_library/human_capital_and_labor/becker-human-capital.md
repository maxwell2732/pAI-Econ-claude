# Becker Human Capital Investment Model

## Model Family Name
Becker Human Capital Theory (General and Specific Human Capital)

## Canonical Economic Question
How much do workers and firms invest in human capital, how is the cost shared between them, and what determines the equilibrium wage and tenure profile when human capital has general versus firm-specific value?

## When to Use This Model
- When the central question concerns training decisions in the labor market: who pays, how much, and why
- When analyzing the wage-tenure relationship and why wages rise with experience
- When distinguishing between skills that are portable across employers (general human capital) versus skills specific to a single employer (specific human capital)
- When studying the economics of education investment, on-the-job training, or apprenticeship programs

## Typical Primitives
- Worker with initial productivity w₀; invests in training that raises future productivity to w₁ > w₀
- Cost of training: C (paid by worker, firm, or shared)
- Time horizon: T periods; discount rate r
- **General human capital:** skill is equally valued at all firms; competitive labor market pins wage to marginal product
- **Specific human capital:** skill is valued only at the current employer; creates a bilateral monopoly problem

## Timing
**General HC:**
1. Worker or firm pays training cost C in period 0
2. Worker's productivity rises to w₁ for all future employers
3. Competition: wage in period 1 = w₁ (firm earns zero profit from trained worker)
4. Implication: worker bears all training costs; worker earns lower wage while training (paid training = wage reduction)

**Specific HC:**
1. Firm and/or worker pay training cost C in period 0
2. Worker's productivity at current firm = w₁; at any other firm = w₀ (same as before training)
3. Ex post bilateral monopoly: any wage w₀ ≤ w ≤ w₁ is individually rational for both parties
4. Equilibrium: cost sharing → wage sharing; worker earns w₀ < w* < w₁ during training period; rises to w* > w₀ after training

## Information Structure
- Perfect information about training costs, productivity before and after training
- No information asymmetry in the basic model (extensions: firm has private information about worker productivity, generating adverse selection in the labor market)
- Workers and firms correctly anticipate future wages and productivity

## Agent Heterogeneity
- Workers differ in ability: innate ability affects the return to human capital investment
- Workers and firms differ in specific human capital match quality — some worker-firm matches generate more specific capital surplus

## Choice Variables
- Worker: how much to invest in training (and implicitly, which job to take)
- Firm: how much training to provide and at what wage schedule
- In specific HC: both parties choose cost shares

## Constraints
- Budget constraint for worker: must finance training costs, possibly through wage reduction
- Participation constraints: worker prefers training to no training; firm prefers trained worker to untrained
- Competition: in general HC market, wage must equal marginal product after training (zero profit for firm)

## Equilibrium Concept or Solution Concept
- Competitive equilibrium (general HC): workers receive full return to general training; wages = marginal product
- Nash bargaining or bilateral monopoly (specific HC): cost and benefit sharing; equilibrium wage between w₀ and w₁
- Long-run: no rents in equilibrium for general HC; positive rents for specific HC (both parties gain from the match)

## Main Mechanism
**General HC:** Competition forces firms to pay trained workers their marginal product. Anticipating this, firms will not pay for general training — workers will leave. Workers pay for their own training through lower wages during training. The equilibrium is efficient.

**Specific HC:** Post-training, the worker is worth w₁ to the current employer and w₀ elsewhere. The firm has an incentive to retain the worker; the worker has an incentive to stay. Cost and wage sharing generates a quasi-rent that both parties gain from the ongoing relationship. This creates wage-tenure profiles and turnover costs.

## Common Propositions
- **General HC:** firms pay zero training costs in equilibrium; workers pay for all general training
- **Specific HC:** training costs and returns are shared between worker and firm; equilibrium involves wage compression (w₀ < w* < w₁)
- **Wage-tenure profile:** wages rise with tenure (especially for specific HC); reflects rising human capital stock
- **Turnover:** specific HC reduces turnover incentive for both worker and firm; creates labor market attachment
- **Returns to education (reduced form):** the Mincer earnings function is the reduced-form implication of the Becker framework (see Mincer template)

## Comparative Statics Usually Available
- Higher returns to training (larger w₁ − w₀) → more investment; higher wage-tenure slope
- Shorter expected tenure → less specific HC investment (shorter amortization horizon)
- Higher outside wages for workers → less specific HC in equilibrium (worker bargaining power ↑)
- Credit constraints on workers → underinvestment in general HC (workers cannot finance training if wages cannot go negative)

## Welfare Implications
- General HC: first-best investment levels if workers can finance training; credit constraints generate underinvestment
- Specific HC: first-best investment levels given the bilateral structure; no market failure within the match but match dissolution is inefficient (specific HC is lost)
- Policy: subsidizing general training may be efficient when credit constraints prevent optimal private investment; subsidizing specific training is typically redundant (firms already have incentive)

## Common Modeling Pitfalls
- Confusing general and specific human capital; the distinction drives the entire financing and wage-setting logic
- Ignoring credit constraints on workers when applying general HC theory (workers may not be able to pay for training through wage reductions if wages cannot go below zero)
- Applying specific HC theory in a market where all firms value the skill equally (→ general HC, different predictions)
- Assuming that on-the-job training is always specific; in practice, most training has a mix of general and specific components

## How to Extend the Model
- **Imperfect competition in labor markets (monopsony):** firms can pay less than marginal product for general training → firms share training costs even for general HC
- **Credit-constrained workers:** workers cannot reduce wages below zero to pay for training → underinvestment relative to first-best
- **General-specific complementarities:** skills have both a general and a specific component; more realistic models have a continuum
- **Multi-period career dynamics:** see Ben-Porath model for optimal lifecycle human capital accumulation
- **Signaling vs. screening:** education may signal pre-existing ability rather than building HC (see Signaling template)

## Example Research Questions This Model Can Support
- Why do large firms provide more training to their workers than small firms?
- Does the decline in long-term employment relationships reduce investment in specific human capital?
- How do minimum wage laws affect firms' willingness to finance on-the-job training?
- When credit markets are imperfect, can income-share agreements (ISAs) restore optimal investment in general human capital?
- Does the monopsony power of large employers allow them to capture some returns from general training?

## Closely Related Model Families
- **Ben-Porath Life-Cycle Model** (dynamic, continuous-time, optimal HC investment path)
- **Mincer Earnings Function** (reduced-form empirical counterpart to Becker's theory)
- **Signaling (Spence)** (education as signal rather than HC investment — competing hypothesis)
- **Moral Hazard** (worker's training effort is unobservable — extends Becker to hidden action)

## When This Model Is Not Appropriate
- When training is purely a signal with no productivity effect (use Spence Signaling model)
- When the question is about the aggregate growth consequences of human capital accumulation (use Barro-Lee or Romer-style growth models)
- When the labor market is not competitive and monopsony power is the central friction (requires modified Becker with market power)
- When the human capital is not embodied in the worker but is an organizational capability (use organizational capital / firm-specific knowledge models)
