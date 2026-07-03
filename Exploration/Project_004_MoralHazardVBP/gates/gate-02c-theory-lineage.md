# Gate 2c: Theory Lineage Gate — Verdict

**Date:** 2026-06-23
**Stage:** 3b — Canonical Model Matching

---

## Theory Lineage Statement

```
THEORY LINEAGE STATEMENT
========================
Closest canonical ancestor:
  Pauly (1968): "The Economics of Moral Hazard: Comment." AER 58(3): 531–537.
  Zeckhauser (1970): "Medical Insurance: A Case Study of the Tradeoffs between
    Risk Spreading and Appropriate Incentives." JET 2(1): 10–26.

What is inherited from the ancestor:
  1. Patient demand function D(cp) where c = (1−λ) is the cost-sharing rate and
     λ is the insurance coinsurance complement; demand is derived from consumer
     optimization and is decreasing in the effective price cp = (1−λ)p.
  2. Moral hazard in reduced form: the patient's demand equals D((1−λ)p), which
     exceeds the socially optimal demand D(p*) because (1−λ)p < p* whenever
     λ > 0. This demand overstatement is the moral hazard distortion.
  3. Moral hazard deadweight loss: the welfare loss from over-consumption is
     ∫_{(1−λ)p}^{p*} D(t) dt, the area between the private and social demand
     curves — standard from Pauly (1968).
  4. Coinsurance structure: insurer pays λ per unit, patient pays (1−λ) per unit;
     total expenditure = λ·p·D((1−λ)p).
  5. Comparative statics of demand with respect to insurance generosity: ↑λ →
     ↓(1−λ)p → ↑D → ↑ moral hazard loss. This is directly inherited from
     the Pauly-Zeckhauser tradition.

What is changed from the ancestor:
  1. The policy variable shifts from λ (the coinsurance rate, which is the
     design variable in Zeckhauser 1970) to p (the regulated VBP drug price,
     which is the design variable in this paper). λ is taken as institutionally
     fixed by China's BMI structure; the paper analyzes welfare as a function
     of p holding λ constant. This is a substantive structural change: it
     replaces an insurance design problem with a procurement price design problem.
  2. The supply side is made explicit: in Pauly (1968) and Zeckhauser (1970),
     supply is competitive and price = marginal cost (or price is exogenous).
     This paper adds an originator firm with fixed cost F and marginal cost
     c_o > c_g (generic marginal cost), whose participation decision is
     endogenous. Supply is no longer a passive backdrop.
  3. The insurer's objective function is made explicit as cost minimization
     (min_p λ·p·D((1−λ)p)), contrasted with the social welfare maximum
     (max_p W(p)). The ancestor models do not compare these two objectives —
     they either assume the planner maximizes welfare or that market equilibrium
     prevails.

What new economic mechanism is added:
  The originator firm's participation constraint creates an exit threshold p̄,
  defined by: π_o(p̄) = (p̄ − c_o)·D((1−λ)p̄) − F = 0. When the VBP sets p
  below p̄, the originator exits and the market becomes generic-only. This
  creates a welfare kink at p̄: for p ≥ p̄, the welfare function W(p) is
  smooth and balances the moral hazard DWL against consumer surplus; for
  p < p̄, W(p) drops discretely by the welfare value of originator variety
  and must be evaluated on a different functional form. The new mechanism
  generates the following causal chain: VBP price p < p̄ → originator
  participation constraint violated → originator exits → product variety
  falls (discrete welfare loss from variety reduction) → welfare function
  has a kink at p̄, making the global welfare maximum W(p*) potentially lie
  at p* = p̄ (a corner solution at the exit threshold), not in the interior.
  Additionally, the comparative statics ∂p̄/∂λ < 0 — a more generous
  insurance (higher λ) lowers the exit threshold (originators can sustain
  participation at lower prices, because their demand D((1−λ)p̄) is higher
  when patients pay less out of pocket). This is a counterintuitive result:
  more generous public insurance makes aggressive VBP procurement less
  likely to trigger originator exit.

Where the novelty lies (select all that apply):
  [x] New primitives (agents, action spaces, goods not in the ancestor)
      — originator firm with fixed cost F and exit threshold p̄
  [ ] Modified information structure (who knows what, when)
  [ ] Different equilibrium concept (e.g., SPE instead of Nash)
  [x] New comparative statics direction or method
      — ∂p̄/∂λ < 0: counterintuitive interaction between insurance generosity
        and originator participation
  [x] New welfare implication (different benchmark, planner comparison)
      — comparison of cost-minimizing insurer price to social welfare-maximizing
        price; welfare kink at p̄
  [x] New policy interpretation (connects to a policy not addressed by the ancestor)
      — optimal VBP minimum price to prevent welfare-reducing originator exit

This paper would NOT reduce to the ancestor model if:
  F > 0 (the originator has strictly positive fixed costs). If F = 0, the
  originator's participation constraint is always satisfied for any p ≥ c_o,
  and the exit threshold p̄ = c_o is independent of λ and D. In that case,
  setting p = c_o is always welfare-improving (eliminating monopoly markup),
  the welfare function is smooth everywhere, and the paper collapses to the
  standard competitive market with moral hazard — fully covered by the ancestor.
  The irreducibility condition F > 0 is the key condition: without positive
  originator fixed costs, there is no participation constraint, no exit
  threshold, no welfare kink, and no divergence between the cost-minimizing
  and welfare-maximizing price.
```

---

## Check-by-Check Results

| Check | Verdict | Reason |
|-------|---------|--------|
| Check 1 — Ancestor Identification | PASS | Specific papers named: Pauly (1968) AER 58(3) and Zeckhauser (1970) JET 2(1). Both are verified citations with full journal details. Identification is credible — these are the foundational papers for health insurance moral hazard. |
| Check 2 — Inheritance Completeness | PASS | Five specific inherited elements listed: demand function D(cp), moral hazard in reduced form, DWL formula, coinsurance structure, and comparative statics of demand with λ. Each is specific enough that a referee can verify what is standard vs. novel. |
| Check 3 — Genuine Change | PASS | Change 1 (λ → p as design variable) is substantive: it replaces an insurance contract design problem with a procurement price design problem, which changes the constraint set and the planner's objective. Change 2 (explicit supply side with fixed-cost originator) and Change 3 (insurer objective contrast) are both structural, not notational. |
| Check 4 — New Mechanism Specificity | PASS | Causal chain stated precisely: [p < p̄] → [originator participation constraint violated] → [originator exits, variety falls] → [welfare kink at p̄, potential corner solution at p* = p̄]. The comparative statics mechanism is also stated: [↑λ] → [↑D((1−λ)p̄)] → [originator sustainable at lower p] → [∂p̄/∂λ < 0]. Both are complete causal chains. |
| Check 5 — Irreducibility | PASS | Non-trivial irreducibility condition stated: F > 0 (strictly positive originator fixed costs). The paper collapses to the ancestor if F = 0; the condition is not trivially always true — F = 0 is a meaningful special case (generic competition only, no originator with fixed costs). |

---

## Overall Gate Verdict: PASS

Theory lineage is fully established. The paper's intellectual position is clear: it extends Pauly (1968) and Zeckhauser (1970) by adding an originator firm with fixed costs (F > 0) and making the regulated price p (not the coinsurance rate λ) the policy variable. The new mechanism — welfare kink at the exit threshold p̄ and the counterintuitive ∂p̄/∂λ < 0 comparative statics — is specified with a complete causal chain and cannot be collapsed to the ancestor under the irreducibility condition F > 0.

Stage 4 (Model Primitives) may proceed with this lineage established.
