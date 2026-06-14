# Adverse Selection

## Model Family Name
Adverse Selection / Market Unraveling / Lemons Problem

## Canonical Economic Question
When buyers and sellers have asymmetric information about product quality, do market prices aggregate information correctly, and under what conditions does the market unravel (fail to trade), underprovide quality, or produce inefficient pooling?

## When to Use This Model
- When the key friction is that one side of a market has private information about quality or type, and prices cannot perfectly separate types
- When analyzing market failure due to information asymmetry at the market level (not the bilateral contracting level)
- When the question is about insurance markets, used goods markets, credit markets, or labor markets where quality is unobservable to buyers
- When the equilibrium involves pooling (low and high types trade at the same price) or unraveling (high types exit the market)

## Typical Primitives
- Sellers with quality type θ ∈ [θ_L, θ_H], distributed F(θ); seller's valuation = θ
- Buyers: do not observe θ; value a good of type θ at v(θ) > θ (gains from trade exist for all types)
- Price p: uniform (one price) or a schedule; set competitively or by strategic sellers
- Information: buyers observe only aggregate distribution F(θ); know that sellers' outside option is θ

## Timing
1. Seller observes own type θ; buyer observes only F(θ)
2. Price p is determined (posted by buyers, sellers, or by a Walrasian auctioneer)
3. Seller decides whether to sell (sell iff p ≥ θ)
4. If trade occurs, buyer receives good of type θ; expected quality of traded good = E[θ | θ ≤ p]
5. Equilibrium: price p* = v(E[θ | θ ≤ p*]) (competitive equilibrium condition)

## Information Structure
- Sellers: know own type θ (private information)
- Buyers: know distribution F(θ) but not individual θ; observe price p; update beliefs about quality of traded goods via Bayes' rule conditioning on seller's willingness to sell

## Agent Heterogeneity
- Sellers: heterogeneous in quality θ; the selection of who sells depends on the price
- Buyers: typically homogeneous with common value v(θ) for quality θ; may differ in risk preferences (insurance models)

## Choice Variables
- Sellers: whether to sell at the posted price
- Buyers: whether to buy at the posted price; in competitive models, the price itself
- In strategic models: sellers may also choose quality (endogenous quality)

## Constraints
- Seller participation: seller sells iff p ≥ θ (supply curve is the set {θ: θ ≤ p})
- Buyer rationality: buyer pays at most v(E[θ | sold]) for the good; rational expectations about selection

## Equilibrium Concept or Solution Concept
- **Competitive equilibrium with rational expectations:** p* satisfies p* = v(E[θ | θ ≤ p*])
- **Akerlof equilibrium:** no-trade equilibrium at p = θ_L is always an equilibrium when v(·) is not sufficiently above θ
- **Rothschild-Stiglitz (insurance):** competitive equilibrium with screening — firms offer a menu; pooling equilibrium may not exist; separating equilibrium features cross-subsidization
- **Wilson anticipatory equilibrium:** firms anticipate that competitors will undercut unprofitable pooling

## Main Mechanism
Because sellers know their type and buyers do not, only sellers with quality below the price willingly trade. As the price falls, the composition of sellers worsens (adverse selection in the market). This adverse selection creates a feedback: low prices attract low quality, which justifies low prices. The "lemons" equilibrium emerges when this feedback is strong enough that the only equilibrium price is at the bottom (θ_L), or the market unravels entirely. Even when trade survives, it occurs at inefficiently low prices and involves only low-quality goods.

## Common Propositions
- **Akerlof (1970) unraveling:** if v(θ) = (1+k)θ, k > 0, and F is uniform, the market unravels to trade only the lowest-quality good (complete market failure in the limit)
- **Market failure from adverse selection:** equilibrium quantity traded < first-best (even when gains from trade exist for all types)
- **Rothschild-Stiglitz (1976):** no pooling equilibrium exists in the competitive insurance market (any pooling contract can be profitably cream-skimmed); separating equilibrium exists but is constrained inefficient
- **Adverse selection in credit:** higher interest rates attract riskier borrowers → credit rationing can be optimal even with excess demand (Stiglitz-Weiss 1981)

## Comparative Statics Usually Available
- ↑ information asymmetry (higher variance of θ) → more severe adverse selection → lower equilibrium price / smaller traded quantity
- ↑ gains from trade Δv = v(θ) − θ → adverse selection less likely to cause full market unraveling
- ↑ fraction of high-quality types → milder adverse selection; market may survive
- Disclosure of quality information → adverse selection eliminated for disclosed types; residual pool worsens

## Welfare Implications
- Market outcome is constrained inefficient: positive gains from trade are not realized for some types
- First-best requires type revelation; cannot be achieved without some information mechanism (certification, signaling, screening)
- Mandatory pooling (e.g., community rating in insurance) redistributes surplus across types but avoids complete market unraveling
- Third-party certification, warranties, and reputation mechanisms all serve to reduce information asymmetry and restore trade

## Common Modeling Pitfalls
- Confusing adverse selection (market-level pooling/unraveling) with screening (bilateral mechanism design) — adverse selection is typically the equilibrium outcome when no mechanism is designed
- Ignoring the endogeneity of the market composition: who sells depends on the price, and this feedback is the core mechanism
- Treating the Akerlof model as the general case; whether the market unravels depends on F and v and is not guaranteed
- Not distinguishing between one-sided and two-sided information asymmetry

## How to Extend the Model
- **Signaling as a cure:** informed party uses costly signals to separate types (Spence)
- **Screening as a cure:** uninformed party designs a menu to separate types (Rothschild-Stiglitz, screening model)
- **Reputation and repeated interaction:** sellers invest in reputation to credibly signal quality across time
- **Certification and intermediaries:** third-party certifiers observe θ and communicate it to buyers
- **Dynamic adverse selection:** type is persistent; early periods reveal information → ratchet effects

## Example Research Questions This Model Can Support
- Why do used-car markets exhibit lower average quality than new-car markets despite theoretical gains from trade for all types?
- What is the effect of mandatory health insurance (community rating) on the quality composition of the insured pool?
- Why do banks use collateral and credit rationing rather than raising interest rates to clear excess demand?
- Does adverse selection explain the thin trading in certain derivative markets or the illiquidity of structured finance products?
- How does a product rating system (e.g., Yelp, Amazon reviews) reduce adverse selection in online marketplaces?

## Closely Related Model Families
- **Screening** (the active response to adverse selection: a mechanism designed to separate types)
- **Signaling** (the informed party's active response to adverse selection: choosing a costly signal)
- **Moral Hazard** (different private information: action is hidden, not type)
- **Disclosure / Persuasion** (informed party can verifiably reveal type; disclosure decision affects adverse selection)
- **Matching Models** (bilateral matching under private information about partner quality)

## When This Model Is Not Appropriate
- When quality is observable to buyers (no information asymmetry → competitive equilibrium is first-best)
- When there is a mechanism designer who can screen types (use Screening model)
- When the friction is not about quality uncertainty but about search costs (use Search Models)
- When the primary question is about intertemporal behavior rather than cross-sectional selection
