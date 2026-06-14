# Cunha-Heckman Skill Formation Framework

## Model Family Name
Cunha-Heckman Skill Formation Model (2007, 2008) / Technology of Skill Formation

## Canonical Economic Question
How do multiple skill types (cognitive and non-cognitive) accumulate across developmental periods, how does investment at one stage affect the return to investment at later stages (dynamic complementarity), and what is the optimal sequence of investments in children's human capital?

## When to Use This Model
- When the research question concerns investment in children's human capital across multiple developmental stages
- When analyzing why early childhood investments have high returns relative to later investments
- When the key mechanism involves dynamic complementarity: early investments raise the productivity of later investments
- When modeling the role of parental investment, school quality, and public programs in shaping the distribution of adult skills

## Typical Primitives
- Multiple skill types: θ_t = (θ_t^C, θ_t^N) — cognitive (C) and non-cognitive (N) skills at stage t
- Stage t ∈ {1, ..., T}: corresponds to developmental periods (early childhood, middle childhood, adolescence)
- Investment I_t ≥ 0 at each stage (parental time, educational spending, program participation)
- Initial endowment: θ₁ ∼ μ₁(θ₁) — given by genetics and early environment (not chosen by parents)
- Skill formation technology (CES aggregator, multi-input):
  θ_{t+1}^k = f^k(θ_t, I_t, θ_t^{parent}, ε_t) for k ∈ {C, N}
  where the functional form captures self-productivity and cross-productivity
- Parental investment: I_t chosen by parents to maximize expected adult skills or earnings, subject to budget constraint

## Timing
1. t=0: child is born with initial endowment θ₁ (latent)
2. t=1,...,T: at each stage, parents observe θ_t, choose investment I_t; skills update to θ_{t+1} via technology
3. t=T+1: adult enters labor market; earnings and other outcomes determined by adult skills θ_T
4. Parental investment I_t is chosen to maximize E[V(θ_T)] subject to intertemporal budget constraint

## Information Structure
- Parents observe current skill level θ_t (or a noisy measure); econometrician observes noisy measurements Mⱼ(θ_t) (see Heckman Latent Factor template)
- Parents do not observe future shocks ε_{t+1}; they make investments under uncertainty about how skills will evolve
- Econometrician uses panel data on children's test scores across ages to estimate the technology parameters

## Agent Heterogeneity
- Children differ in initial endowment θ₁ — exogenous, determined by genetics and very early environment
- Families differ in parental resources, parental skills θ_t^{parent}, and information about optimal investment strategies
- The endowment distribution and family resource distribution jointly determine the distribution of adult skills

## Choice Variables
- Parents: investment I_t at each stage t; implicitly, the allocation of time and money between own consumption and children's development
- Policy-maker: when and how much to invest in public programs (Head Start, school quality, after-school programs)

## Constraints
- Budget constraint: Σ_t p_t I_t ≤ W (total parental wealth devoted to child investment; may differ by period)
- Technology: skills update according to f^k(·); the functional form determines how substitutable investments are across stages and skill types
- Non-negativity: I_t ≥ 0; cannot disinvest in skills once acquired (irreversibility)

## Equilibrium Concept or Solution Concept
- **Optimal control / Dynamic programming:** parents solve a finite-horizon Bellman equation with θ_t as the state variable and I_t as the control
- **Pareto frontier (planner's problem):** social planner maximizes E[Σ_i u(θ_{T,i})] subject to aggregate budget ΣI_t ≤ B
- **Identification of the technology:** the CES parameters of f^k are estimated from longitudinal data on skills and investments using the latent factor approach of Cunha-Heckman-Schennach (2010)

## Main Mechanism
**Self-productivity:** current skills enhance future skills: ∂f^k/∂θ_t^k > 0 (higher current cognitive skills → higher future cognitive skills, holding investment constant)

**Cross-productivity:** cognitive skills enhance non-cognitive skill formation and vice versa: ∂f^C/∂θ_t^N > 0

**Dynamic complementarity:** the marginal return to investment at stage t is increasing in prior skill stock: ∂²f^k/∂I_t∂θ_t^k > 0 — the key result that explains the high return to early investment. Children with higher skills benefit more from investment. This implies that disadvantaged children who enter school behind do not catch up easily with compensatory investment: investment in already-developed skills (older children, high-ability children) yields higher returns than investment in less-developed skills.

## Common Propositions
- **Dynamic complementarity:** the marginal return to investment is increasing in prior skill stock → early investment has a multiplier effect on later investments
- **High return to early investment:** because early skills are self-productive and complement later investments, early childhood programs yield high returns; the return to later adolescent programs is lower
- **Irreversibility / remediation cost:** it is more costly to remediate skill deficits in later periods than to build skills in earlier periods when the technology is most productive
- **Complementarity between cognitive and non-cognitive skills:** non-cognitive skills enhance the return to cognitive skill investment (and vice versa); programs that target only one skill type are less effective than programs that address both

## Comparative Statics Usually Available
- Higher initial endowment θ₁ → steeper investment returns at all stages (complementarity with endowment)
- Higher family resources → more investment at all stages; greater adult skills; amplifies initial endowment advantage
- Public program at stage t = 1 → larger long-run effect than equal-cost program at t = T (dynamic complementarity)
- Degree of complementarity (CES parameter): as complementarity rises, early investment advantage grows

## Welfare Implications
- Social planner's optimal investment profile is front-loaded: concentrate resources in early periods when returns are highest
- Private investment is suboptimal when parents face credit constraints, information failures (do not know optimal investment sequence), or when skills have positive externalities
- Remediation is expensive: investing in older disadvantaged children to "catch up" is less effective and more costly than early prevention
- Optimal public policy redistributes investment toward disadvantaged children in early periods; equal-spending rules across age groups are generally inefficient

## Common Modeling Pitfalls
- Treating all investments as substitutes across time; the model's key implication is that investments at different stages are complements, not substitutes
- Assuming that a single skill type captures all human capital; the multi-dimensionality of skills and their cross-productivity are central to the model
- Estimating returns to early childhood programs without accounting for the dynamic multiplier (counting only the immediate effect understates the true return)
- Applying the model without distinguishing between self-productivity (own type on own type) and cross-productivity (other type on own type)

## How to Extend the Model
- **Full structural model with dynamic latent factors:** combine skill formation technology with the latent factor model; estimate technology parameters and skill distributions simultaneously
- **Parental investment under uncertainty:** add uncertainty about the evolution of θ; stochastic control problem; precautionary investment motive
- **Teacher and school quality as inputs:** I_t includes school quality as a separate input; estimates teacher value-added as part of the technology
- **Intergenerational model:** parental skills θ_{t}^{parent} are themselves the outcome of their own parents' investment → multi-generational model of skill formation
- **AI and automation effects on skill formation:** if AI changes the returns to different skill types, the optimal investment profile (which skills to develop in children) also changes → connection to task-based production

## Example Research Questions This Model Can Support
- What is the long-run return to the Perry Preschool program, accounting for dynamic complementarity between early and later investments?
- Is it more effective to invest public resources in early childhood programs or in adolescent training programs for disadvantaged youth?
- How much of the intergenerational persistence of economic status can be attributed to the heritability of initial endowments versus differential parental investment?
- What is the optimal age-profile of public investment in children's skills when credit-constrained families underinvest in early childhood?
- As AI changes the labor market return to non-cognitive skills (adaptability, creativity), how should the skill formation technology be recalibrated for policy?

## Closely Related Model Families
- **Technology of Skill Formation** (the core building block — see separate template for the precise CES function)
- **Ben-Porath Life-Cycle Model** (adult human capital investment; Cunha-Heckman extends to childhood)
- **Heckman Latent Factor Model** (estimation method for identifying θ_t from noisy measurements)
- **Intergenerational Transmission of Human Capital** (long-run model — see separate template)
- **Early Childhood Investment Model** (policy application of the technology — see separate template)

## When This Model Is Not Appropriate
- When the question concerns adult human capital investment only (use Ben-Porath)
- When a single skill type is sufficient to characterize the research question
- When data limitations prevent estimation of a dynamic factor model (requires longitudinal panel with multiple measures per age)
- When the intervention being analyzed occurs at a single age and downstream effects are not the focus
