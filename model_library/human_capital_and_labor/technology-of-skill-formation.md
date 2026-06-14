# Technology of Skill Formation

## Model Family Name
Technology of Skill Formation (Cunha-Heckman 2007)

## Canonical Economic Question
What is the functional form governing how skills accumulate across developmental stages, and what restrictions on this function capture self-productivity, cross-productivity, and dynamic complementarity?

## When to Use This Model
- When the research requires a precise functional form for how skills θ_t at stage t transform into skills θ_{t+1} given investment I_t
- When estimating the substitutability between early and late investments in children's human capital
- When quantifying self-productivity (how current skills feed into future skills) and dynamic complementarity (whether returns to investment are higher for high-skill children)
- As the technological primitive in a broader model of parental investment, intergenerational transmission, or early childhood policy

## Typical Primitives
The technology of skill formation (CES aggregator form — Cunha, Heckman, Schennach 2010):

θ_{t+1} = A_t [γ_t θ_t^φ_t + (1−γ_t) I_t^φ_t]^{1/φ_t}

where:
- θ_t: current skill stock (scalar or vector)
- I_t: investment at stage t (scalar; parental time + money + school quality)
- A_t: total factor productivity of skill formation at stage t
- γ_t ∈ (0,1): weight on existing skills vs. investment
- φ_t ∈ (−∞, 1]: elasticity parameter; σ_t = 1/(1−φ_t) = elasticity of substitution between θ_t and I_t

**Multi-skill CES (with cognitive and non-cognitive skills θ_t^C, θ_t^N):**
θ_{t+1}^k = A_t^k [γ₁ₖ (θ_t^C)^φ_t + γ₂ₖ (θ_t^N)^φ_t + (1−γ₁ₖ−γ₂ₖ) I_t^φ_t]^{1/φ_t}

## Timing
- Embedded in a dynamic model: at each period t, given θ_t and I_t, the technology produces θ_{t+1}
- The function f(θ_t, I_t; A_t, γ_t, φ_t) governs the transition between stages
- In estimation: panel data on θ_t (via latent factor measurements) and I_t (parental inputs) identify A_t, γ_t, φ_t

## Information Structure
- The technology is observed by the social planner or researcher; in the parent's optimization problem, the technology is known to parents and determines their investment incentives
- Latent skill θ_t is measured with error (see Heckman Latent Factor template); econometric identification uses multiple measurements to separate θ from measurement error

## Agent Heterogeneity
- Children differ in initial endowment θ₁ (before any investment)
- Families differ in resources (ability to supply I_t)
- The technology parameters (A_t, γ_t, φ_t) may differ across children in extended models

## Choice Variables
- Investment I_t at each stage (endogenous in the broader model; the technology itself is an exogenous production function)
- In estimation: technology parameters are estimated, not chosen

## Constraints
- I_t ≥ 0 (non-negativity of investment)
- θ_t ≥ 0 (skill stock cannot be negative)
- Budget constraint (in the broader model): total investment across stages ≤ family wealth

## Equilibrium Concept or Solution Concept
- The technology is a structural production function, not an equilibrium concept
- Estimated by GMM or Bayesian methods using the latent factor identification strategy
- In the social planner's problem: the technology is the constraint; optimal investment {I_t*} maximizes adult skill θ_T subject to the technology and budget

## Main Mechanism
Three distinct properties of the technology:

1. **Self-productivity:** ∂θ_{t+1}/∂θ_t > 0 — higher current skills generate higher future skills, holding investment constant. Higher ability children grow into higher ability adults even without extra investment.

2. **Cross-productivity:** ∂θ_{t+1}^C/∂θ_t^N > 0 (and vice versa) — cognitive and non-cognitive skills reinforce each other's development.

3. **Dynamic complementarity:** ∂²θ_{t+1}/∂I_t ∂θ_t > 0 — investment is more productive when current skill stock is higher. This is the key parameter: when φ_t → 0, investment and skills are complementary (Cobb-Douglas); when φ_t < 0, they are gross complements; when φ_t → 1, they are perfect substitutes. Dynamic complementarity means that disadvantaged children (low θ_t) get less out of equal investment I_t than advantaged children.

## Common Propositions
- **Self-productivity (empirical finding):** confirmed by longitudinal data — childhood cognitive skills predict adult cognitive skills holding investment constant
- **Dynamic complementarity (empirical finding):** investment at early ages is more productive because it compounds through self-productivity and complementarity at later stages
- **Optimal investment profile:** given dynamic complementarity, front-loading investment in early stages is optimal; equal spending across stages is inefficient
- **Sensitivity period:** Stage 1 (early childhood) is the sensitive period for investment; the technology is most responsive to investment when φ_1 is low (strong complementarity)
- **Substitutability varies by stage (Cunha-Heckman-Schennach 2010 finding):** σ_1 < σ_2 in the data — early investment is less substitutable for later investment than late investment is for earlier investment; this makes early deficits hard to remedy

## Comparative Statics Usually Available
- φ_t ↓ (stronger complementarity) → investment at stage t is more valuable (less substitutable with later investment); early advantage compounds more
- A_t ↑ → all investment at stage t more productive; total skill accumulation rises
- γ_t ↑ → skills more important relative to investment in producing future skills; high-endowment children need less investment to achieve same outcome
- σ_t (elasticity of substitution between stages): σ_1 < σ_2 (from Cunha-Heckman-Schennach) → early investments are less easily compensated for by late investments

## Welfare Implications
- The technology determines the efficiency frontier for childhood investments; optimal public policy must match the technology
- When φ_t is low (strong complementarity): a unit of investment at stage 1 has a large multiplier effect through all later stages; optimal subsidy for early childhood is high
- Credit constraints that reduce early investment have especially large long-run costs when complementarity is strong
- Remediation programs for adolescents are expensive relative to early programs because the technology at late stages has higher substitutability (σ_2 > σ_1)

## Common Modeling Pitfalls
- Using a linear technology (φ_t → 1, perfect substitution) when the empirical evidence supports dynamic complementarity
- Conflating the technology with the reduced-form relationship between early investment and adult outcomes (the technology is a structural primitive; the reduced-form relationship is an equilibrium outcome of the full dynamic model)
- Imposing the same technology across developmental stages when the evidence suggests A_t and φ_t vary by stage
- Ignoring cross-skill production: treating cognitive and non-cognitive skills as independent when they are co-produced and mutually reinforcing

## How to Extend the Model
- **Multiple inputs beyond parental investment:** school quality, peer quality, neighborhood effects each enter as inputs to the technology
- **Stochastic technology:** shocks ε_t affect skill accumulation; parents invest more under uncertainty when the technology has high variance
- **Heterogeneous technology parameters:** A_t varies by child type (learning disabilities, gifted children); φ_t varies by family type
- **Connection to neuroscience:** the timing of sensitive periods in the technology maps to the neuroscience of brain development (early windows for language, executive function)
- **Automation and skill formation:** if the adult labor market shifts demand toward non-cognitive skills (creativity, adaptability), the cross-productivity terms change the optimal childhood skill mix to invest in

## Example Research Questions This Model Can Support
- What is the substitutability parameter φ_t for early childhood cognitive investment, and does it differ from the parameter for adolescent investment?
- How does the degree of dynamic complementarity (φ_t) affect the relative cost-effectiveness of early versus late childhood intervention programs?
- Can the technology of skill formation explain the intergenerational persistence of cognitive test scores across generations?
- How should the optimal investment profile change if the labor market shifts to reward non-cognitive skills more highly than cognitive skills?
- What is the return to a dollar of Head Start investment relative to a dollar of K-12 investment, given the estimated technology parameters?

## Closely Related Model Families
- **Cunha-Heckman Skill Formation** (the complete model that embeds the technology in a dynamic optimization problem)
- **Self-Productivity and Dynamic Complementarity** (see separate template for just these two properties)
- **Ben-Porath Life-Cycle Model** (adult HC accumulation; the technology of skill formation is the childhood analogue)
- **Early Childhood Investment Model** (policy application — see separate template)
- **Intergenerational Transmission of Human Capital** (parental skills enter the technology as a productivity shifter)

## When This Model Is Not Appropriate
- When the research question concerns adult HC investment (use Ben-Porath)
- When a single-stage, static model of educational production is sufficient
- When the data do not allow estimation of a latent factor model for skills (the technology cannot be identified without longitudinal latent skill measurements)
- When the investment good is public (peer quality, school quality) rather than private parental investment — requires modification of the household budget constraint and aggregation
