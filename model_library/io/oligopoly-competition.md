# Oligopoly Competition

## Model Family Name
Oligopoly Models — Cournot, Bertrand, Stackelberg

## Canonical Economic Question
When a small number of firms compete in the same market, what prices and quantities result, and how does the mode of competition (quantities vs. prices, simultaneous vs. sequential) determine market outcomes and welfare?

## When to Use This Model
- When the market has a small number of strategic firms whose individual decisions affect the market price
- When analyzing how market concentration affects markups, consumer surplus, and welfare
- When the question concerns strategic interaction: capacity choice, price-setting, order of moves
- When studying how entry barriers, mergers, or industry structure affect equilibrium outcomes
- When the research concerns conduct parameters, market power estimation, or merger simulation

## Typical Primitives
**Cournot:**
- N symmetric firms with cost function C(qi) = F + c·qi (fixed cost F, constant marginal cost c)
- Inverse demand P(Q) where Q = Σqi; P'(Q) < 0
- Each firm i chooses qi to maximize πi = P(Q)·qi − C(qi)

**Bertrand (homogeneous goods):**
- Same firms and costs; each firm i chooses price pi
- Consumers buy from the cheapest firm; ties split equally

**Bertrand (differentiated products):**
- Firm i faces demand Di(pi, p−i) with ∂Di/∂pi < 0, ∂Di/∂pj > 0
- Firms choose prices simultaneously

**Stackelberg:**
- Two firms; firm 1 (leader) chooses q1 first; firm 2 (follower) observes q1 and chooses q2
- Subgame perfect equilibrium: leader anticipates follower's best response

## Timing
**Cournot / Bertrand:** Simultaneous — all firms choose quantities (or prices) at the same time without observing rivals' choices.

**Stackelberg:**
1. Leader commits to output q1
2. Follower observes q1, chooses best-response q2(q1)
3. Market clears; profits realized

## Information Structure
- Complete information: all firms know rivals' cost functions and the demand function
- Private information extensions: firms may have private cost types (see Screening, Mechanism Design)

## Agent Heterogeneity
- Symmetric case: all firms have identical costs; primary heterogeneity is in market shares
- Asymmetric Cournot: firms differ in marginal costs; low-cost firms produce more and earn higher profit
- Stackelberg: heterogeneity in order of moves (strategic asymmetry even with symmetric costs)

## Choice Variables
- Cournot: output quantity qi ≥ 0
- Bertrand: price pi ≥ 0
- Stackelberg: leader chooses q1; follower chooses q2 as best response to q1

## Constraints
- Firms cannot produce negative quantities
- In Bertrand with homogeneous goods: firms cannot price below marginal cost in equilibrium
- Capacity constraints may bind (connecting Bertrand to Cournot: Kreps-Scheinkman result)

## Equilibrium Concept or Solution Concept
- **Cournot-Nash Equilibrium:** each firm's quantity is a best response to rivals' quantities simultaneously; FOC: P(Q*) + qi·P'(Q*) = C'(qi)
- **Bertrand-Nash Equilibrium (homogeneous):** pi = pj = MC (Bertrand paradox — zero profits with two firms)
- **Bertrand-Nash (differentiated):** pi solves ∂πi/∂pi = 0; markup depends on own-price elasticity and cross-price effects
- **Stackelberg Subgame Perfect Equilibrium:** q2*(q1) is follower's best response; leader maximizes π1(q1, q2*(q1))

## Main Mechanism

**Cournot:** Firms internalize that increasing their output depresses the market price. At equilibrium each firm equates MR (accounting for the price-depressing effect of its own output) to MC. With N symmetric firms, the markup equals (1/N)·(1/ε) where ε is demand elasticity — the Lerner index falls as N increases, converging to perfect competition as N → ∞.

**Bertrand paradox:** If goods are homogeneous and costs are equal, any firm can undercut a rival's price by ε and capture the whole market. This drives prices to MC. Two firms suffice to replicate the competitive outcome.

**Differentiated Bertrand:** Product differentiation insulates firms from full undercutting. Optimal price satisfies pi − MC = −Di/(∂Di/∂pi), a positive markup proportional to the inverse own-price elasticity.

**Stackelberg advantage:** The leader commits to a high quantity, forcing the follower onto a lower best-response curve. Leader profits exceed Cournot profits; follower profits fall below Cournot. Total output is higher and price is lower than Cournot.

## Common Propositions
- **Cournot markup:** (pi − MC)/pi = si/ε where si = qi/Q is market share and ε is demand elasticity; industry-level: (P − MC)/P = HHI/ε (Cowling-Waterson)
- **Convergence:** Symmetric Cournot with N firms → competitive equilibrium as N → ∞
- **Bertrand paradox (Bertrand 1883):** With homogeneous goods and equal costs, N ≥ 2 firms implies P = MC
- **Kreps-Scheinkman (1983):** Capacity choice followed by Bertrand price competition replicates Cournot outcome
- **Stackelberg first-mover advantage:** Leader earns more than Cournot profit; follower earns less; total output QS > QC > QM
- **Asymmetric Cournot:** Lower-cost firm has higher market share; industry output increases as cost asymmetry widens

## Comparative Statics Usually Available
- More firms (N↑) → lower markup, lower price, higher consumer surplus, higher total welfare
- More inelastic demand (|ε|↓) → higher markup for given N
- Higher marginal cost → lower output, higher price; asymmetric cost → reallocation toward lower-cost firm
- More product differentiation in Bertrand → higher equilibrium price (softer competition)
- Leader commits to higher quantity in Stackelberg → lower market price vs. Cournot

## Welfare Implications
- All oligopoly equilibria lie between monopoly (minimum welfare) and perfect competition (maximum welfare)
- Cournot welfare increases with N; deadweight loss = ½·(P−MC)²·|∂Q/∂P| approximately
- Bertrand with homogeneous goods: first-best welfare even with only two firms
- Stackelberg: higher total output than Cournot → closer to social optimum, but distributional effects (follower may exit if leader commits aggressively)
- Mergers: merger to monopoly typically welfare-reducing; efficiency defense requires large cost savings

## Common Modeling Pitfalls
- Applying Bertrand paradox to differentiated products — paradox requires homogeneous goods and equal costs
- Treating Cournot and Bertrand as the same model — they predict very different outcomes and require different data moments to identify
- Ignoring that Stackelberg requires credible commitment — without irreversibility, the threat to produce q1 is not credible
- Using symmetric Cournot when firms have very different cost structures — asymmetric model gives qualitatively different predictions

## How to Extend the Model
- **Collusion / repeated Cournot (Folk theorem):** firms can sustain prices above Nash level if they interact repeatedly with sufficient patience; grim trigger, optimal punishment (Abreu 1986)
- **Capacity then price (Kreps-Scheinkman 1983):** two-stage game replicates Cournot from Bertrand-like price competition
- **R&D competition:** firms invest in cost reduction before competing in output; strategic substitutes or complements depending on spillovers
- **Multimarket contact:** firms compete in multiple markets simultaneously; higher aggregate profits → collusion easier to sustain
- **Entry with oligopoly:** free entry → zero profit condition pins down N (Mankiw-Whinston 1986 — excess entry theorem)

## Example Research Questions This Model Can Support
- Does a merger between two of three symmetric Cournot firms increase prices, and by how much?
- When does Stackelberg leadership require an irreversible capacity investment to be credible?
- How does the number of firms in a local banking market affect loan rates and consumer welfare?
- Under what conditions does product differentiation allow firms to sustain positive profits in a price-setting game?
- Can excess capacity serve as a deterrent to entry in a Cournot market?

## Closely Related Model Families
- **Entry Deterrence** (strategic pre-commitment to deter entry — extends Stackelberg)
- **Mechanism Design / Auctions** (procurement with strategic suppliers is a Cournot-like problem)
- **Hotelling / Product Differentiation** (differentiated Bertrand is the pricing stage of a Hotelling location game)
- **Repeated Games** (collusion among Cournot or Bertrand firms)
- **General Equilibrium** (Cournot with free entry approximates monopolistic competition)

## When This Model Is Not Appropriate
- When the market has many small price-taking firms (use competitive equilibrium)
- When there is only one firm (use monopoly / price discrimination)
- When the strategic interaction is primarily about information asymmetry between firms (use signaling, screening)
- When the question is about platform markets with indirect network effects (use Two-Sided Markets)

## Empirical Paper Caution

**Generally tractable in empirical settings**, but the choice of conduct assumption (Cournot vs. Bertrand vs. collusion) is a modeling decision that must be justified.

Two failure modes observed in practice:
1. **Unjustified conduct assumption:** Paper asserts "firms compete à la Cournot" without theoretical or empirical justification. Cournot and Bertrand predict very different markups; the choice materially affects counterfactuals.
2. **Markup = HHI/ε used as identity, not prediction:** The Cournot markup formula is an equilibrium prediction under specific assumptions. Using it as a definition of market power bypasses the model's content.

**When oligopoly models are well-suited for empirical papers:**
- The paper estimates conduct parameters (Berry 1994, BLP 1995) — distinguishing Cournot from Bertrand from collusion using demand variation
- The paper studies a merger or entry event that changes N, using the Cournot model to predict price effects
- The paper uses market structure variation (number of firms, HHI) as a reduced-form proxy for competition intensity with the oligopoly model as structural background

**AI execution risk:** AI may default to "assume Cournot competition" as a generic modeling choice without connecting it to the specific identification in the empirical paper. Require the model section to explain which observable moment in the data identifies the equilibrium concept.
