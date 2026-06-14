# Signaling

## Model Family Name
Signaling / Spence Signaling Game

## Canonical Economic Question
When one party has private information and the other side conditions actions on observable signals, can costly signaling credibly communicate type, and what is the structure of the resulting equilibrium?

## When to Use This Model
- When an informed party (sender) wants to communicate type to an uninformed party (receiver) who then takes an action
- When the question concerns whether equilibria are separating (type revealed), pooling (no information transmitted), or semi-separating
- When the signal has a cost differential across types (the "single-crossing" property is key)
- When analyzing education as signaling, advertising as quality signal, warranties, or credit ratings

## Typical Primitives
- Sender S with private type θ ∈ {θ_L, θ_H} (or continuum); prior μ₀ over types
- Signal e ∈ ℝ₊ chosen by sender (e.g., education); cost c(e, θ) with c_θ < 0 (high type has lower marginal cost)
- Receiver R observes signal e, forms belief μ(θ|e), takes action a(μ) (e.g., wage = expected type given e)
- Sender payoff: b(a, θ) − c(e, θ); receiver payoff: v(a, θ) (e.g., match value minus wage)

## Timing
1. Nature draws sender's type θ; sender observes θ, receiver does not
2. Sender chooses signal e ∈ ℝ₊
3. Receiver observes e, forms posterior belief μ(θ|e), takes best response a*(μ)
4. Payoffs realized

## Information Structure
- Sender has private information: knows θ
- Receiver observes signal e but not type θ directly
- Receiver uses Bayes' rule on equilibrium path; off-path beliefs determine whether deviations are profitable

## Agent Heterogeneity
- Two types (L and H): the fundamental heterogeneity driving the model
- Continuum extension: type θ ∼ F on [θ_L, θ_H]; single-crossing implies separating equilibrium with e*(θ) strictly increasing in θ

## Choice Variables
- Sender: signal level e
- Receiver: action a (typically wage or price) as a function of observed signal

## Constraints
- Sender: e ≥ 0; may have a minimum signal level or a maximum (finite action space)
- Receiver: a must be a best response given beliefs μ(θ|e)
- Incentive compatibility: in separating equilibrium, each type must prefer its own signal to any deviation

## Equilibrium Concept or Solution Concept
- **Perfect Bayesian Equilibrium (PBE):** strategies are sequentially rational given beliefs; beliefs formed by Bayes' rule on equilibrium path; off-path beliefs specified
- **Separating PBE:** e_H ≠ e_L; receiver perfectly infers type; a continuum of separating equilibria exists; Cho-Kreps D1 / Intuitive Criterion selects the least-cost separating equilibrium
- **Pooling PBE:** e_H = e_L; receiver learns nothing; sustained by pessimistic off-path beliefs
- **Refinements:** Cho-Kreps Intuitive Criterion eliminates pooling equilibria where high type wants to deviate

## Main Mechanism
High types have lower marginal cost of signaling. In a separating equilibrium, the high type signals enough that the low type does not want to mimic: c(e_H, θ_L) − c(0, θ_L) ≥ Δa (the cost of acquiring the high signal exceeds the wage gain for the low type). The key single-crossing condition: ∂²[c(e,θ)] / ∂e∂θ < 0 ensures that iso-payoff curves of different types cross exactly once in (e, a) space — the crucial condition for separating equilibria to exist.

## Common Propositions
- **Existence of separating PBE** (under single-crossing): a continuum of separating equilibria exists; Cho-Kreps selects the Riley (least-cost separating) equilibrium
- **Existence of pooling PBE:** always exists; sustained by off-path beliefs that any deviation signals the low type
- **Efficiency loss:** the least-cost separating equilibrium is inefficient (signal is pure cost with no direct value); total surplus is lower than under full information
- **Zero-profit condition in competitive equilibria:** if receivers are competitive firms, each type earns its type-specific value net of signaling cost

## Comparative Statics Usually Available
- Signal level in least-cost separating equilibrium: e* is increasing in type spread Δθ and in the wage premium
- Effect of cost reduction c → more signaling; e* ↑ or ↓ depending on whose cost falls
- Entry of informed senders: affects equilibrium signal level if pooling is possible

## Welfare Implications
- Signaling equilibria are generically inefficient: resources spent on signals (education, advertising) are partly social waste
- Mandatory minimum signal requirement can Pareto-improve on the private equilibrium if it reduces wasteful signaling
- Banning the signal (no education as credential) can leave both types better off if the signal has no intrinsic value — but destroys information transmission

## Common Modeling Pitfalls
- Forgetting to specify off-path beliefs; without specifying these, many PBEs exist and results are not pinned down
- Treating all PBEs as equivalent; refinements (Cho-Kreps, D1) are often necessary for sharp predictions
- Applying signaling when the informed party has no control over the signal (signal is not strategically chosen) — use Screening instead
- Confusing signaling (sender moves first, chooses signal) with cheap talk (sender sends costless message — very different predictions)

## How to Extend the Model
- **Multiple signals:** sender can use multiple instruments (e.g., education + work experience); redundancy can collapse equilibria
- **Dynamic signaling:** sender's type changes over time; repeated signaling interactions
- **Competitive signaling:** multiple senders compete for the same receiver (e.g., firms advertising quality)
- **Noisy signals:** receiver cannot perfectly observe e; equilibrium becomes partially revealing
- **Combined signaling-screening:** sender signals and receiver also uses a mechanism to screen (hybrid models)

## Example Research Questions This Model Can Support
- Does college attendance signal productivity rather than build human capital, and how would a tuition subsidy affect signaling equilibria?
- Under what conditions does a firm's advertising expenditure credibly signal product quality?
- Can a worker credibly communicate high effort (e.g., by working long hours visibly) even when effort is not contractible?
- When does mandating the publication of environmental certificates credibly communicate firm quality?
- Can a government credibly signal its fiscal discipline through the choice of debt maturity structure?

## Closely Related Model Families
- **Screening** (receiver designs the mechanism; informed party self-selects — roles reversed)
- **Adverse Selection** (asymmetric information in a market; no active signaling — pooling problem)
- **Disclosure / Persuasion** (sender can credibly reveal verifiable information — related to hard information signaling)
- **Cheap Talk** (sender sends costless message; no separating equilibrium unless sender's interests align with receiver's)

## When This Model Is Not Appropriate
- When the signal cannot be strategically chosen by the sender (exogenous signal → use screening)
- When the sender and receiver have identical interests (cheap talk suffices; costly signaling is wasteful)
- When the primary friction is about what action to take given information, not how to communicate the information
- When there is no private information — the model degenerates to a standard optimization problem
