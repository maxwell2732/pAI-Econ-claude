# Self-Productivity and Dynamic Complementarity in Skill Formation

## Model Family Name
Self-Productivity and Dynamic Complementarity (Key Properties of the Technology of Skill Formation)

## Canonical Economic Question
Does a higher skill stock today make it easier to acquire skills tomorrow (self-productivity)? Does a higher skill stock today make the return to investment higher (dynamic complementarity)? Together, do these imply that early investment has a multiplier effect across the entire life cycle?

## When to Use This Model
- When deriving theoretical predictions about why early childhood investments have higher returns than remediation investments for older children
- When the model must generate an endogenous prediction about the optimal timing of investment across developmental stages
- When formalizing the intuition that "skills beget skills" and "investments beget investments" in a precise testable form
- When building theoretical microfoundations for the high long-run returns observed from early childhood programs (Perry Preschool, Abecedarian)

## Typical Primitives
Focus on a two-period version for clarity:
- Skills at period 1 (childhood): θ₁ (exogenous initial endowment)
- Investment at period 1: I₁
- Skills at period 2 (adolescence): θ₂ = f(θ₁, I₁)
- Investment at period 2: I₂
- Skills at period 3 (adulthood): θ₃ = g(θ₂, I₂)
- Outcome (wages): Y = h(θ₃)

**Self-productivity** at stage 1: ∂θ₂/∂θ₁ > 0 (holding I₁ fixed)
**Dynamic complementarity** at stage 1: ∂²θ₂/∂I₁∂θ₁ > 0 (investment is more productive when θ₁ is higher)
**Cross-period multiplier:** I₁ increases θ₂; higher θ₂ increases θ₃ (via self-productivity of period 2); θ₃ increases Y

## Timing
1. Period 1 (early childhood): endowment θ₁ given; investment I₁ chosen
2. Period 2 (adolescence): θ₂ = f(θ₁, I₁) realized; investment I₂ chosen
3. Period 3 (adulthood): θ₃ = g(θ₂, I₂) realized; outcome Y = h(θ₃) occurs

## Information Structure
- Social planner (or parents) observe θ₁ and θ₂; choose I₁ and I₂ sequentially
- In the stochastic version: shocks ε₁, ε₂ affect skill accumulation; planner observes shocks before choosing the next period's investment

## Agent Heterogeneity
- Children differ in θ₁ (initial endowment); dynamic complementarity implies that the marginal return to I₁ is higher for higher-θ₁ children — a force toward inequality (disadvantaged children benefit less from equal spending)

## Choice Variables
- Investments I₁, I₂ chosen sequentially (or simultaneously in the planner's problem)
- In the household problem: total resources W = I₁ + I₂/(1+r) are allocated across periods

## Constraints
- Budget: p₁I₁ + p₂I₂/(1+r) ≤ W
- Technology: θ₂ = f(θ₁, I₁), θ₃ = g(θ₂, I₂) (with the specific functional forms determining the strength of the properties)

## Equilibrium Concept or Solution Concept
- **Optimal dynamic investment:** social planner maximizes E[h(θ₃)] subject to the budget and technology; first-order conditions balance marginal returns across periods
- **Comparing early vs. late investment:** compare dh(θ₃)/dI₁ vs. dh(θ₃)/dI₂ — if dh/dI₁ > dh/dI₂, early investment is more productive
- Dynamic complementarity makes this comparison depend on θ₁: for high-θ₁ children, I₁ is particularly productive; for low-θ₁ children, I₂ may be relatively more valuable

## Main Mechanism
**Why early investment has a multiplier effect:**

The chain of effects from I₁:
1. I₁ → ↑θ₂ (direct production of skills)
2. ↑θ₂ → ↑∂θ₃/∂I₂ (higher second-period skills raise the return to second-period investment, via dynamic complementarity at period 2)
3. ↑θ₂ → ↑θ₃ even without extra I₂ (self-productivity)
4. ↑θ₃ → ↑Y (outcome)

The multiplier from I₁ is: dY/dI₁ = (∂h/∂θ₃) × [(∂g/∂θ₂)(∂f/∂I₁) + (∂g/∂I₂)(∂²g/∂θ₂∂I₂)(∂f/∂I₁) × dI₂*/dθ₂]

The second term involves dI₂*/dθ₂ > 0 (optimal I₂ rises when θ₂ is higher, because dynamic complementarity makes I₂ more productive) — this is the multiplier.

## Common Propositions
- **Self-productivity implies persistence:** early skill deficits persist without intervention because low θ₁ generates low θ₂ generates low θ₃
- **Dynamic complementarity implies efficiency of early investment:** the multiplier through self-productivity and complementarity makes early I₁ more valuable than late I₂ when all three properties hold
- **Remediation cost:** for a disadvantaged child (low θ₁), correcting the deficit at period 2 requires I₂ >> I₁ because complementarity is lower (low θ₁ → low θ₂ → lower marginal return to I₂)
- **Inequality amplification:** if complementarity is strong, skill gaps widen over the lifecycle; early disadvantage compounds

## Comparative Statics Usually Available
- Stronger dynamic complementarity → larger multiplier from early investment → larger advantage of early over late programs
- Stronger self-productivity → more persistence of early deficits or advantages → remediation more costly
- Higher budget W for disadvantaged children: concentrated in period 1 (early) if complementarity is high; split between periods if complementarity is low

## Welfare Implications
- Social planner with a redistributive objective should concentrate resources in the early periods for disadvantaged children — both efficiency (high multiplier) and equity (reduces persistence of disadvantage) goals are served
- Market fails when parents are credit-constrained: they cannot borrow against future child earnings to finance early investment; public investment in early childhood is justified even without externalities
- The optimal public program is not simply "Head Start" vs. "after-school programs" — the social planner's problem dictates an optimal sequence, which depends on the technology parameters

## Common Modeling Pitfalls
- Assuming additive separability in the skill formation technology (θ_{t+1} = f(θ_t) + g(I_t)) — this eliminates dynamic complementarity by construction and gives the wrong predictions
- Interpreting self-productivity as "ability is fixed" — self-productivity is about the transmission from period t to t+1 given optimal investment, not about the absence of investment effects
- Applying the model without two periods of investment — need at least two stages to operationalize "dynamic complementarity" as a cross-partial derivative
- Conflating dynamic complementarity with income effects — richer families may invest more in both periods, but dynamic complementarity is about the technology, not budget constraints

## How to Extend the Model
- **Stochastic shocks to the technology:** shocks at each stage generate heterogeneity in θ₂ for children with the same θ₁ and I₁; optimal investment responds to realized shocks
- **Parental information:** if parents do not know the technology parameters, they under- or over-invest relative to the optimal sequence → information provision as a policy tool
- **Peer effects as inputs:** peers' skill levels enter the production function as a positive externality; neighborhood and school composition affect skill formation
- **Neural plasticity connection:** the sensitive period for skill formation maps to the biological concept of neural plasticity — the technology's φ parameter captures the degree of plasticity

## Example Research Questions This Model Can Support
- How much of the return to the Perry Preschool program is attributable to dynamic complementarity (higher second-period return to investment for treated children)?
- Does the self-productivity of early skills justify a higher rate of return on early childhood programs relative to elementary school programs?
- What are the long-run consequences of school closures (reduction in I₁) during a pandemic for children's adult outcomes, accounting for multiplier effects?
- How does the gradient in parental income's effect on early skill formation contribute to adult inequality?
- Can a short-duration early childhood program (2 years of preschool) have long-run wage effects comparable to a longer program, through the multiplier?

## Closely Related Model Families
- **Technology of Skill Formation** (the broader CES production function that contains these properties as special cases)
- **Cunha-Heckman Skill Formation** (the complete dynamic optimization model)
- **Early Childhood Investment Model** (policy application)
- **Ben-Porath Life-Cycle Model** (adult version: self-productivity of adult skills is built into the HC accumulation equation)

## When This Model Is Not Appropriate
- When the research question concerns the absolute level of human capital, not the timing of investment
- When a single-period model is sufficient (no multi-stage timing → no dynamic complementarity)
- When the focus is on peer effects or school quality as determinants of skills, rather than on the timing of parental investment
- When the skill formation technology is linear in investment (perfect substitution between stages — dynamic complementarity fails)
