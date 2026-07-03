# Research Puzzle

**Date:** 2026-06-23
**Stage:** 1 — Puzzle Refinement

---

## Central Research Question

When a public insurer introduces centralized volume-based procurement (VBP) that drives down the regulated drug price, how does the resulting moral hazard amplification interact with the firm participation constraint to determine whether insurance expenditure rises or falls, whether originator drugs exit the market, and whether social welfare improves or deteriorates compared to the pre-VBP equilibrium?

---

## Central Tension

**Tension:** VBP is designed to lower drug prices and thus relieve fiscal pressure on public health insurance — but insurance coverage creates a moral hazard wedge that causes patients to over-consume when prices fall, potentially *increasing* total insurance expenditure. Simultaneously, VBP prices may fall below the participation threshold of originator manufacturers, inducing market exit that reduces product variety and long-run innovation.

**Why neither side obviously wins:**
Lower prices unambiguously benefit uninsured or cost-sharing patients through increased access. But for fully or near-fully insured patients, the relevant price is not the VBP price but the residual out-of-pocket cost — which may already be near zero, so the demand stimulus is small and welfare gains are modest. Meanwhile, the participation constraint for originators is determined by global rather than China-only revenues, so exit probability depends on a ratio of China market share to global fixed costs that is not pinned down a priori. The sign of the net welfare effect thus depends on several structural parameters whose values cannot be determined without a formal model.

---

## Core Mechanism

**Causal chain (Moral Hazard Channel):**
VBP lowers list price p → insurer's cost-per-unit falls → patient's residual out-of-pocket cost (1−λ)p also falls (where λ is the coinsurance complement) → patient demand rises above the socially optimal quantity → moral hazard deadweight loss grows → total insurer expenditure λ·p·D[(1−λ)p] may increase even though per-unit cost fell.

**Causal chain (Participation Constraint Channel):**
VBP price p_VBP set by competitive bidding → generic manufacturers' marginal-cost firms price at or near cost → originator fixed cost F cannot be recovered at p_VBP → originator profit π(p_VBP) < 0 → originator exits or declines to submit bid → market becomes generic-only → variety falls, and ex ante innovation investment is distorted.

**Expanded description:**
The two channels operate simultaneously. The moral hazard channel is a demand-side effect: because insurance insulates patients from the full marginal cost, a lower VBP price raises consumption above the efficient level, possibly leaving total insurance outlays higher than before VBP. The participation constraint channel is a supply-side effect: originators and high-quality generics face fixed costs that VBP prices may not cover, producing a sorting-out-of-market result that reduces therapeutic variety and may reduce long-run drug innovation. The welfare comparison requires trading off consumer surplus gains (lower prices for both insured and uninsured patients), insurer fiscal effects (ambiguous sign), and social losses from reduced variety and distorted innovation.

---

## What a Complete Answer Requires

A complete paper addressing this question would need to establish:

1. **Demand response:** Derive the patient demand response to a VBP-induced price reduction under an insurance contract with coinsurance rate (1−λ), and characterize when total insurer expenditure is increasing or decreasing in the VBP price — i.e., when demand elasticity exceeds or falls below a threshold related to λ.

2. **Participation constraint:** Characterize the minimum VBP price p̄ below which an originator firm exits the market (or declines to bid), as a function of fixed costs F, marginal cost c, and market size N.

3. **Welfare decomposition:** Decompose social welfare into: (i) consumer surplus at the distorted equilibrium quantity, (ii) producer surplus net of fixed costs, (iii) moral hazard deadweight loss (gap between social and private demand), and (iv) insurance fiscal balance — and sign each component as the VBP price falls.

4. **Policy trade-off:** Identify the price level p* that maximizes social welfare, and compare it to the VBP price chosen by a cost-minimizing insurer, characterizing whether the insurer sets p_VBP ≷ p*.

---

## Welfare Dimension

**Is there a conflict between private incentives and social optimality?**
Yes — two distinct conflicts. (1) Insured patients treat the out-of-pocket price (1−λ)p as the marginal cost of drug consumption, not the social cost p, so they over-consume — standard moral hazard. (2) The VBP-setting insurer minimizes its own expenditure, which does not fully internalize consumer surplus of uninsured patients, dynamic innovation incentives, or product variety value.

**The normative question:**
The comparison is between: (a) first-best allocation (drugs consumed up to the point where willingness-to-pay equals social marginal cost p); (b) second-best VBP equilibrium (price regulated, insurance distorts demand); and (c) pre-VBP status quo (higher price, smaller moral hazard wedge, originators remain). The paper asks whether VBP moves the economy closer to or further from the first-best, and whether the welfare gain from better access outweighs the welfare loss from moral hazard amplification plus reduced variety.

---

## Primary Economic Phenomenon

This paper illuminates a general phenomenon in public insurance plus price regulation systems: the interaction between a supply-side price floor (participation constraint) and a demand-side distortion (moral hazard) means that an ostensibly pro-competitive price reduction can simultaneously increase insurer fiscal pressure, reduce market variety, and generate ambiguous welfare effects. This logic applies beyond drugs — it applies to any publicly insured commodity with inelastic socially-optimal demand and where product providers face fixed costs. The China VBP setting makes the phenomenon policy-relevant and empirically grounded because the program operates at massive scale (1.3 billion insured) and the observed originator exit from hospital formularies provides direct institutional evidence of the participation-constraint channel.

---

## Main Difficulty

**The hardest part of answering this question:**
The interaction of moral hazard and the participation constraint creates a non-monotone welfare function in the VBP price: as p_VBP falls, consumer surplus rises, moral hazard loss rises, and at some threshold p̄ the originator exits — causing a discrete drop in variety value. Characterizing the global welfare maximum requires tracking a welfare function with a kink at p̄ and a potentially non-convex shape. The tractability problem is that closed-form solutions require specific functional forms for the demand function and the welfare loss from variety reduction, and the sign of the optimal deviation from marginal cost pricing depends on model parameters. The key difficulty is therefore one of **characterization**: proving existence of the welfare-maximizing price, signing comparative statics in structural parameters, and showing that the socially optimal price may lie above or below the cost-minimizing procurement price.

---

## Triviality Check

**Would the answer be trivially yes or no without a model?**
No. The direction of the total insurance expenditure response is non-trivial: if demand is very inelastic, total spending falls as p falls (standard); but if demand is elastic and moral hazard is large (the coinsurance rate λ is near 1), total spending can rise. The originator exit risk is non-trivial because it depends on the ratio of China-specific variable profit to global fixed cost recovery, which is not directly observable. The welfare sign is non-trivial because it requires comparing the consumer surplus gain (access) against the moral hazard loss (over-consumption) and the variety loss (originator exit). A model is necessary to sign these trade-offs.

---

## Refined Hypothesis

**The paper's working hypothesis (to be confirmed or refuted by the model):**
When the public insurer's coinsurance complement (λ) is sufficiently high and the originator's fixed-cost-to-market-size ratio is above a critical threshold, a VBP-induced reduction in the regulated drug price below the originator's participation threshold increases total insurance expenditure, reduces product variety, and produces a net welfare loss relative to a price set marginally above the participation threshold — even though VBP unambiguously benefits patients on the margin of drug access.

---

## Scope Boundaries

**What this paper IS about:**
- Static partial equilibrium model of a single drug category under public insurance with moral hazard
- Two firm types: generic (marginal-cost pricing under VBP) and originator (fixed-cost recovery constraint)
- Welfare comparison between VBP equilibrium, pre-VBP equilibrium, and social optimum
- Policy implications for optimal VBP price design (floor price vs. minimum participation price)

**What this paper is NOT about (to prevent scope creep):**
- Dynamic innovation incentives or multi-period R&D models (beyond noting that participation constraint reduction is the static analog of reduced innovation incentives)
- Hospital-physician demand incentives or kickback elimination (a separate channel in China's drug procurement reform)
- General equilibrium effects on wages, health capital, or other sectors
- Empirical calibration or regression analysis of the VBP effect
- Multi-drug, multi-market oligopolistic competition among generic manufacturers (treated as price-taking under VBP)
