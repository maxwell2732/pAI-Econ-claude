# Entry Deterrence and Strategic Entry

## Model Family Name
Entry Deterrence / Limit Pricing / Strategic Commitment (Bain 1956; Dixit 1980; Milgrom-Roberts 1982)

## Canonical Economic Question
When can an incumbent firm prevent entry by a potential rival, and what strategic actions — excess capacity, limit pricing, or other commitments — make the deterrence threat credible?

## When to Use This Model
- When the market has an incumbent and one or more potential entrants whose entry decision is endogenous
- When analyzing whether pre-entry investments (capacity, R&D, advertising) serve as commitment devices
- When the question concerns market structure as an equilibrium outcome (not an exogenous parameter)
- When studying why industries remain concentrated despite positive incumbent profits
- When the research involves asymmetric information about incumbent costs or demand (limit pricing as signaling)

## Typical Primitives
**Dixit (1980) capacity model:**
- Incumbent (I) and potential entrant (E); market inverse demand P(Q)
- Incumbent installs capacity k before E decides to enter; entry requires fixed cost fE
- Post-entry, I and E play Cournot (or Bertrand) with I's marginal cost reduced by k
- Incumbent's payoff depends on whether E enters or stays out

**Three regions (Bain's taxonomy):**
1. **Blockaded entry:** Monopoly output already deters entry (no strategic investment needed)
2. **Deterred entry:** Incumbent must invest beyond monopoly level to deter; deterrence is profitable
3. **Accommodated entry:** Deterrence is too costly; incumbent allows entry and plays duopoly

## Timing
**Dixit (1980) — complete information:**
1. Incumbent installs capacity k (irreversible investment)
2. Entrant observes k and decides: enter (pay fE) or stay out
3. If entry: incumbent and entrant compete (Cournot or Bertrand) given k
4. Profits realized

**Milgrom-Roberts (1982) — incomplete information:**
1. Incumbent privately observes its cost type θ (low or high cost)
2. Incumbent sets price p (observable to entrant)
3. Entrant updates belief about θ using p and decides whether to enter
4. If entry: duopoly competition

## Information Structure
- **Complete information (Dixit):** All primitives are common knowledge; deterrence works through pre-commitment
- **Incomplete information (Milgrom-Roberts):** Entrant does not know incumbent's cost; incumbent uses pricing to signal type; limit pricing emerges as a separating equilibrium

## Agent Heterogeneity
- Incumbent and entrant may differ in costs, installed capacity, or information
- In signaling models: incumbent has private type θ ∈ {θ_L, θ_H} (low-cost vs. high-cost)
- Entrant has outside option value normalized to 0; enters if expected post-entry profit ≥ fE

## Choice Variables
- Incumbent: capacity k (or price p in signaling version) prior to entry decision
- Entrant: binary entry decision e ∈ {0, 1}
- Post-entry: quantity (or price) in the duopoly subgame

## Constraints
- Capacity is irreversible: k chosen before entry cannot be reduced
- Entrant's participation constraint: enters iff expected post-entry profit ≥ fE
- In signaling model: incumbent's strategy must be sequentially rational (Perfect Bayesian Equilibrium)

## Equilibrium Concept or Solution Concept
- **Subgame Perfect Nash Equilibrium (complete information):** Incumbent's capacity choice is credible because it is sunk; backward induction determines outcome
- **Perfect Bayesian Equilibrium (incomplete information):** Entrant forms posterior belief about θ given observed price; separating or pooling equilibrium; Intuitive Criterion (Cho-Kreps) used to refine equilibria
- **Three equilibrium outcomes:** (i) blockaded entry — monopoly behavior suffices; (ii) deterred entry — incumbent overinvests relative to monopoly; (iii) accommodated entry — incumbent underinvests relative to commitment power

## Main Mechanism

**Commitment mechanism (Dixit):** A bare threat to produce a large quantity post-entry is not credible if the incumbent would prefer to accommodate. Pre-investing in capacity makes the threat credible by reducing the incumbent's marginal cost of production: given k, the incumbent's best response post-entry produces more output, making entry less profitable for the potential rival. The key is irreversibility — a sunk investment is a commitment device.

**Signaling mechanism (Milgrom-Roberts):** Under complete information, limit pricing is irrelevant (Bertrand-style argument: incumbent cannot affect entry decision by pricing below monopoly level if entrant can infer cost from equilibrium). Under incomplete information, a low-cost incumbent can use low prices to signal its type; a high-cost incumbent mimics only if the cost of doing so is sufficiently high (Spence-Mirrlees single-crossing). In the separating equilibrium, the low-cost type charges a price strictly below its complete-information monopoly price — genuine limit pricing.

## Common Propositions
- **Dixit (1980):** In the deterrence region, the incumbent installs excess capacity beyond the monopoly optimum; the equilibrium capacity equals the Stackelberg leader quantity (credibility via commitment)
- **Accommodation vs. deterrence:** Deterrence is chosen iff πM(deterrence) − investment cost > πD(incumbent duopoly profit)
- **Milgrom-Roberts (1982):** Under complete information, limit pricing is irrelevant to entry; limit pricing is a rational signaling strategy only under incomplete information
- **Folk theorem for entry:** If repeated interaction is possible and firms are patient enough, entry deterrence can be sustained through reputational effects even without capacity investment
- **Stackelberg-Cournot equivalence:** Pre-commitment to capacity makes the incumbent a de facto Stackelberg leader in the quantity subgame

## Comparative Statics Usually Available
- Higher entry cost fE → more industries have blockaded or deterred entry; incumbent invests less in deterrence
- Lower incumbent marginal cost (more efficient incumbent) → deterrence region expands; easier to make credible threat
- More inelastic demand → monopoly profit higher → deterrence more profitable relative to accommodation
- Better incumbent information advantage → stronger signaling distortion in limit pricing equilibrium
- More symmetric firms → accommodation becomes more likely (duopoly profits are higher for both)

## Welfare Implications
- Deterred entry is privately optimal for the incumbent but may reduce welfare: the market remains a monopoly with higher prices than duopoly would produce
- Excess capacity is socially wasteful: installed capacity that is never used in equilibrium destroys resources
- However, if the entrant is a less efficient firm, blockading its entry may increase welfare (productive efficiency argument)
- Signaling-based limit pricing: welfare depends on whether the entrant would have been efficient — limit pricing may wastefully exclude efficient entrants

## Common Modeling Pitfalls
- Assuming commitment without irreversibility — a strategy is only a credible threat if it is optimal to carry out post-entry
- Applying Milgrom-Roberts (incomplete information) conclusions to a complete-information setting — limit pricing is irrelevant under complete information
- Ignoring that deterrence is a costly strategy — the incumbent must compare deterrence payoff to accommodation payoff; deterrence is not always optimal
- Conflating blockaded entry (monopoly already deters) with deterred entry (incumbent must invest to deter)

## How to Extend the Model
- **Predatory pricing:** incumbent prices below cost post-entry to drive out entrant; requires deep pockets or reputation models
- **Reputation models (Kreps-Wilson 1982, Milgrom-Roberts 1982):** incumbent builds reputation for fighting entry in a chain-store game with multiple potential entrants
- **Patent racing and R&D as entry barrier:** incumbent invests in innovation to maintain technological advantage over potential entrants
- **Vertical foreclosure:** incumbent integrates upstream to foreclose downstream rivals; related deterrence mechanism
- **Bertrand with switching costs:** incumbent builds installed base to deter entry through customer lock-in

## Example Research Questions This Model Can Support
- Does an airline preemptively add flights on a route when a low-cost carrier announces entry plans?
- Under what conditions does an incumbent pharmaceutical firm maintain excess manufacturing capacity to deter biosimilar entry?
- How does the transparency of incumbent cost information affect whether limit pricing occurs in a regulated industry?
- When does an incumbent platform subsidize one market side aggressively to deter rival platform entry?
- Is observed below-cost pricing by a dominant firm predatory behavior or competitive pricing by an efficient producer?

## Closely Related Model Families
- **Oligopoly Competition** (post-entry competition is Cournot or Bertrand — the subgame of the entry game)
- **Signaling** (limit pricing under asymmetric information is a signaling model)
- **Principal-Agent** (deterrence can be interpreted as the incumbent committing to a punishment strategy)
- **Dynamic Optimization** (reputation models involve infinite-horizon games with discounting)
- **Mechanism Design** (optimal entry regulation is a mechanism design problem)

## When This Model Is Not Appropriate
- When entry is exogenously fixed (number of firms is given — use Cournot or Bertrand directly)
- When information is symmetric and no sunk investments are available (no credible commitment device exists — accommodation is the only equilibrium)
- When the entrant's entry cost is zero (blockaded entry is impossible; deterrence is too costly)
- When the market is contestable (Baumol-Panzar-Willig): hit-and-run entry makes deterrence impossible regardless of incumbent capacity

## Empirical Paper Caution

**Moderately tractable in empirical settings**, but commitment and credibility are difficult to identify directly.

Two failure modes observed in practice:
1. **Treating observed excess capacity as deterrence without showing it is sunk:** Capacity that can be quickly adjusted is not a commitment device; the theoretical mechanism requires irreversibility.
2. **Conflating limit pricing with low prices generally:** Low incumbent prices may reflect efficiency, demand shocks, or competition — not strategic deterrence. Identification requires counterfactual monopoly price and evidence of entry threat.

**When entry deterrence models are well-suited for empirical papers:**
- The paper exploits quasi-experimental variation in entry costs (e.g., regulatory changes, geographic barriers) to identify incumbent responses
- The paper studies announced entry threats (airline route announcements, patent expiry dates) and incumbent pre-emptive investment responses
- The paper tests between complete-information deterrence (capacity) and incomplete-information deterrence (pricing) using observable cost data

**AI execution risk:** AI may add an entry deterrence framework to justify why an incumbent firm has market power, without connecting the commitment mechanism to anything observable in the data. Require the model section to specify what the sunk commitment is and how its presence is identified in the empirical setting.
