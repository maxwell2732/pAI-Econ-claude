# Disclosure / Persuasion / Information Design

## Model Family Name
Information Design / Bayesian Persuasion / Voluntary Disclosure

## Canonical Economic Question
When an informed party can choose which information to reveal (or how to structure signals), what is the optimal disclosure strategy, and how does the receiver's equilibrium action compare to the full-information and no-information benchmarks?

## When to Use This Model
- When a sender (firm, regulator, expert) chooses a signal structure or disclosure policy to influence the beliefs and decisions of a receiver
- When the question is about the design of ratings, disclosures, certifications, or public announcements
- When analyzing media persuasion, political communication, or stress tests of financial institutions
- When the sender has the ability to commit to a disclosure rule before observing the state (Bayesian Persuasion) or has already observed the state and chooses what to reveal (voluntary disclosure)

## Typical Primitives
- State θ ∈ Θ drawn from prior μ₀ (known to both parties in Bayesian persuasion; known only to sender in voluntary disclosure)
- Sender S has utility Uₛ(a, θ); receiver R has utility Uᵣ(a, θ)
- Receiver takes action a ∈ A = argmax Uᵣ(a, E[θ|s]) in response to signal s
- Signal structure (experiment): π: Θ → Δ(S) — a mapping from states to distributions over signals; sender commits to π before state is realized
- Sender's problem: choose π* to maximize E[Uₛ(a*(s), θ)] subject to receiver's optimal response

## Timing
**Bayesian Persuasion (Kamenica-Gentzkow 2011):**
1. Sender commits to signal structure π (before observing θ)
2. Nature draws θ ∼ μ₀; signal s ∼ π(·|θ) is realized
3. Both parties observe s; receiver takes action a*(s) = argmax_a E[Uᵣ(a, θ) | s]
4. Payoffs realized

**Voluntary Disclosure (Milgrom-Roberts):**
1. Seller observes quality θ
2. Seller chooses which verifiable information to disclose (disclosure must be truthful)
3. Buyer updates beliefs; price or trade occurs
4. Payoffs realized

## Information Structure
- Prior μ₀ is common knowledge
- State θ: known to sender; unknown to receiver until signal is observed
- Signal s is verifiable (hard information in disclosure models) or soft (cheap talk) or structured (Bayesian persuasion)
- Key distinction: in Bayesian Persuasion, sender commits to π before seeing θ; in voluntary disclosure, sender sees θ and then decides whether to reveal it

## Agent Heterogeneity
- Multiple receivers: sender broadcasts a single signal; heterogeneous receivers interpret it differently (receivers may differ in priors or in action sets)
- Multiple senders: competing persuaders with conflicting interests

## Choice Variables
- Sender: signal structure π: Θ → Δ(S); equivalently, the distribution over posteriors (Bayesian persuasion)
- Receiver: action a(s) as a best response to signal s

## Constraints
- **Bayes plausibility:** the distribution over posteriors induced by π must have mean equal to the prior μ₀ (information cannot change the average belief — only redistribute it)
- **Truthfulness (disclosure models):** revealed information must be verifiable; sender cannot lie
- **Receiver rationality:** receiver best-responds to the signal, taking the sender's strategy as given

## Equilibrium Concept or Solution Concept
- **Bayesian Persuasion:** sender maximizes E[Vₛ(μ)] where Vₛ(μ) is the sender's value when the receiver holds belief μ; the feasible set is all distributions over posteriors with mean μ₀ (Bayes plausibility); optimal solution = concavification of Vₛ(μ) evaluated at μ₀
- **Voluntary Disclosure (Milgrom 1981, Grossman 1981):** full unraveling — if disclosure is costless and verifiable, all types disclose in equilibrium because withholding is interpreted as having the worst type
- **Cheap talk (Crawford-Sobel):** sender sends non-verifiable message; only partial communication possible if sender's interests differ from receiver's; equilibrium involves coarse partitions

## Main Mechanism
**Bayesian Persuasion:** The sender can do no better than generating any distribution of posteriors that is consistent with Bayes' law. But within this feasibility constraint, the sender can design the signal to induce the posteriors most favorable to the sender's objective. The key tool is concavification: the sender achieves the value equal to the concave envelope of their value function evaluated at the prior. Pooling states together (reducing information) can be optimal if the receiver's action changes sharply at certain belief thresholds.

**Voluntary Disclosure unraveling:** If a high-type seller withholds information, the buyer infers the seller has a below-average type. This inference harms the high-type seller, inducing them to disclose. This logic unravels all the way down: full disclosure is the unique equilibrium when disclosure is costless and verifiable.

## Common Propositions
- **Kamenica-Gentzkow:** optimal signal structure = concavification of the sender's value function; sender is better off the larger the gap between the concavified and actual value
- **Persuasion is valuable to the sender iff Vₛ is not concave** at μ₀ (sender gains from information if their value function has convex regions)
- **Milgrom (1981) full unraveling:** under costless verifiable disclosure and no uncertainty about the state, full disclosure is the unique equilibrium outcome
- **Cheap talk partitions (Crawford-Sobel):** the coarseness of the equilibrium partition increases with the conflict of interest between sender and receiver

## Comparative Statics Usually Available
- Sender value increases as the receiver's action space A becomes richer (more persuasion leverage)
- Effect of prior μ₀ on the sender's equilibrium value (shifts the concavification evaluation point)
- Disclosure costs: partial disclosure equilibria emerge when disclosure is costly
- Multiple senders with conflicting interests: competition can lead to more or less information revelation depending on the structure

## Welfare Implications
- Bayesian persuasion is sender-optimal but can harm receiver and reduce total welfare relative to full information
- Voluntary disclosure is typically welfare-enhancing (relative to no disclosure) but may still leave some private information unrevealed when disclosure is costly
- Mandatory disclosure (regulation): first-best when disclosure is verifiable and costless; but mandating unverifiable information can reduce welfare if senders respond strategically

## Common Modeling Pitfalls
- Confusing Bayesian persuasion (commitment to a signal structure before observing θ) with voluntary disclosure (decides after seeing θ)
- Forgetting the Bayes plausibility constraint — any experiment must satisfy this
- Treating concavification as just a computational tool; it is the characterization of all achievable sender payoffs — it is the substance of the result
- Ignoring off-path beliefs in cheap talk games (without them, equilibria are not pinned down)

## How to Extend the Model
- **Sequential persuasion:** sender and receiver interact repeatedly; sender learns from receiver's early actions
- **Robust persuasion:** sender's signal design is robust to uncertainty about the receiver's utility
- **Delegated persuasion:** an intermediary (media, analyst) both acquires and transmits information; dual moral hazard
- **Competition in persuasion:** multiple senders target the same receiver with conflicting interests
- **Mechanism design + information design (Myerson 1982):** principal designs both the mechanism and the information structure simultaneously

## Example Research Questions This Model Can Support
- What is the optimal stress test design (what information to reveal about bank health) to maximize financial stability while maintaining market confidence?
- How should a government structure environmental disclosures about firms to maximize consumer pressure for environmental compliance?
- When does a firm benefit from disclosing its product's ingredients, and when does withholding maximize profit?
- What is the persuasion value of a biased media outlet, and how does ideological commitment of the outlet affect the optimal reporting strategy?
- Can a creditor-friendly court ruling be explained by a judge who designs disclosure procedures to favor lenders over borrowers?

## Closely Related Model Families
- **Signaling** (informed party sends a costly signal to reveal type; here, the sender designs the signal structure itself)
- **Cheap Talk** (no commitment to signal structure; costless messages; coarser equilibria)
- **Costly Information Acquisition** (receiver acquires signals at cost; here, sender provides the signal for free)
- **Mechanism Design** (extends to joint design of the mechanism and information structure)

## When This Model Is Not Appropriate
- When the sender cannot commit to a signal structure (use cheap talk or voluntary disclosure instead)
- When the sender's information is not verifiable and the receiver cannot check claims (use cheap talk)
- When the primary friction is about incentives to act (effort, investment) rather than information transmission
- When the sender and receiver have identical preferences (no value to strategic communication; full disclosure is trivially optimal)
