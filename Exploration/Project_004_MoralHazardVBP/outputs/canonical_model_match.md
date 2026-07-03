# Canonical Model Match

**Date:** 2026-06-23
**Stage:** 3b — Canonical Model Matching

---

## 1. Research Puzzle Summary

The central question is: when a public insurer sets the VBP drug price p (through competitive procurement), how do (i) demand-side moral hazard amplification and (ii) supply-side originator firm exit jointly determine whether insurance expenditure rises or falls, whether originator drugs leave the market, and whether social welfare is higher or lower than before VBP? The key mechanism has two channels: lowering p reduces the patient's out-of-pocket cost (1−λ)p, expanding demand beyond the socially efficient level (moral hazard); and simultaneously, if p falls below the originator's average cost floor, the originator exits, reducing product variety. The paper seeks a welfare characterization of the optimal VBP price p* and comparison to the cost-minimizing procurement price chosen by the insurer.

---

## 2. Candidate Families

### Candidate 1: Moral Hazard / Hidden Action (PRIMARY — HIGH FIT)

- **Fit rationale:** The moral hazard template's "Canonical Economic Question" is "when a principal cannot observe an agent's effort (action), what contract balances risk and incentives?" The template's "When to Use" condition: "when analyzing why performance pay, deductibles, co-pays, or equity stakes exist." The coinsurance rate λ in China's BMI is exactly the deductible/co-pay tool that manages drug demand moral hazard. The model's "Example Research Questions" lists directly: "What is the optimal co-insurance rate in a health insurance contract given that patients take more care when they bear some cost?" — the proposed research is a specific instantiation of this family.
- **Key structural match:** Patient = Agent (hidden action: drug quantity demanded); Insurer = Principal (observes total spending, not individual patient choices); Coinsurance rate λ = incentive instrument (analogous to wage schedule); VBP price p = exogenous price to the patient (in the canonical analog: exogenous output price); Moral hazard DWL = gap between social and private demand at the coinsurance-subsidized price (1−λ)p.
- **Potential gap:** The canonical moral hazard template has one principal and one agent, with the principal designing the contract (λ). In this paper, λ is fixed (given by the BMI structure) and the policy variable is p (the VBP price), which affects the patient's effective price through the coinsurance structure. Additionally, the template does not include a supply-side participation constraint for the drug producer — this must be added as a new element.
- **Closest canonical ancestor:** Zeckhauser (1970) — "Medical Insurance: A Case Study of the Tradeoffs between Risk Spreading and Appropriate Incentives," which explicitly models the coinsurance rate as the tradeoff between risk sharing and moral hazard demand distortion. Pauly (1968) is the simplest instantiation: patient demand D(cp) where c = (1−λ) is the cost-sharing rate.

---

### Candidate 2: Principal-Agent (General Framework — HIGH FIT)

- **Fit rationale:** The principal-agent template's "Canonical Economic Question" covers any delegation relationship with information asymmetry. The template's "Example Research Questions" lists: "What is the optimal regulatory tariff for a public utility with private cost information and a moral hazard problem in cost reduction?" — structurally analogous to the VBP price-setting problem where the regulator (insurer) sets p to manage the firm's participation and the patient's demand distortion simultaneously. The "Two relationships" in this model (insurer-patient and insurer-firm) both fit within the principal-agent umbrella.
- **Key structural match:** The insurer is the principal in two distinct relationships: (a) with patients (moral hazard — hidden demand action), and (b) with pharmaceutical firms (participation constraint — IR constraint for the firm). The general P-A framework subsumes both.
- **Potential gap:** The P-A framework in the template is centered on optimal contract design (choosing the incentive scheme). In this paper, the contract (λ) is fixed; the design variable is the regulated price p. The model is therefore closer to a regulatory design problem (Laffont-Tirole style) than to a standard wage contract design problem. The "Welfare Implications" section of the template notes: "Regulatory applications: the regulator (principal) regulates a firm (agent) with private information about costs" — this is the relevant sub-case.
- **Closest canonical ancestor:** Laffont and Tirole (1993) — procurement regulation with adverse selection and participation constraints. The VBP model inherits the regulated-price-setting structure and the IR constraint for the regulated firm.

---

### Candidate 3: Mechanism Design (MODERATE FIT)

- **Fit rationale:** The mechanism design template's "When to Use" condition includes: "When designing auctions, voting rules, public good provision schemes, or regulatory mechanisms." China's VBP is a competitive bidding mechanism — the government designs a bid-price-plus-volume contract that determines which firms participate. The template's welfare comparison (efficient mechanism vs. revenue-maximizing mechanism) maps directly onto the paper's comparison (social welfare-maximizing price p* vs. cost-minimizing procurement price p_VBP).
- **Key structural match:** The VBP is a procurement mechanism where the designer (insurer/government) chooses the minimum bid price; firms (pharmaceutical companies) decide to participate or not; patients (downstream consumers) have demand distorted by insurance. The mechanism design IR constraint for firms = the paper's participation constraint for originators.
- **Potential gap:** The standard mechanism design template focuses on hidden type (adverse selection), not hidden action (moral hazard). In this paper, the firms' types (costs) are assumed known (or at least the originator's cost floor p̄ is a deterministic threshold), so the hidden-type IC constraint is not the central feature. The demand-side moral hazard is the central distortion, which falls under moral hazard, not standard mechanism design. Mechanism design is a useful organizational lens for the insurer's optimization problem but not the best baseline for the model primitives.
- **Closest canonical ancestor:** Shleifer (1985) yardstick competition — the VBP bid price is structurally identical to a yardstick price: the regulator sets p = lowest-cost generic bid, which is the analog of Shleifer's best-practice cost benchmark.

---

### Candidate 4: Consumer Choice (MODERATE FIT — as building block)

- **Fit rationale:** The consumer choice template's "When to Use" condition: "when analyzing tax incidence, subsidies, or rationing on household welfare." The patient's drug demand problem is a consumer choice problem: maximize U(q, x) subject to (1−λ)p·q + x ≤ m, where q is drug quantity and x is numeraire. The "How to Extend" section explicitly notes: "Add uncertainty: expected utility over state-contingent consumption bundles" — the moral hazard extension to this baseline is exactly the standard model in the health insurance literature.
- **Key structural match:** Patient demand D((1−λ)p) is derived from the consumer choice model. The consumer surplus calculation and Marshallian demand are direct outputs of the consumer choice optimization.
- **Potential gap:** The consumer choice template is a single-agent model with no information asymmetry and no strategic interaction. It is the demand-side building block of the proposed model, not the organizing framework. The consumer choice model must be embedded within the moral hazard framework to generate the key friction.
- **Closest canonical ancestor:** The Arrow (1963) formulation of medical care demand under uncertainty — a consumer choice model with state-contingent consumption and insurance.

---

## 3. Recommended Baseline

### Recommended Baseline: Moral Hazard / Hidden Action (Pauly 1968 / Zeckhauser 1970 variant)

**Primary justification:**
The defining friction of the proposed model is that insured patients' drug consumption decisions are not observable by (or contractible with) the insurer — the classic hidden action / moral hazard structure. The insurer cannot set individual patient quotas; it can only adjust the per-unit cost-sharing via λ, which is taken as given. When the VBP price p falls, each patient responds by demanding more drugs at their private marginal cost (1−λ)p — the hidden action generates over-consumption relative to the social optimum. The Pauly (1968) and Zeckhauser (1970) formulation of this problem is the canonical ancestor: consumer demand D(cp) where c = 1−λ is the cost-sharing parameter. This baseline is simple, tractable (implicit function theorem applies everywhere), and directly generates the key demand-side results. The supply-side (originator participation constraint) and the insurer's optimization problem are added as new elements on top of this baseline, not by modifying its core structure.

**Canonical baseline setup:**
- **Agents:** One representative patient with quasi-linear utility U(q) − (1−λ)p·q, where U is strictly concave; one public insurer; one originator firm and N_g ≥ 1 generic firms.
- **Timing:** (0) VBP mechanism sets p ∈ [c_g, ∞). (1) Originator observes p and decides to participate (q_o) or exit (not supply). (2) Generic firms supply at competitive marginal cost c_g ≤ p (assuming competitive bid). (3) Patient observes effective out-of-pocket price (1−λ)p and demands q* = D((1−λ)p). (4) Insurer pays λ·p·q* per patient; originator receives p·q_o − c_o·q_o − F if participating.
- **Information structure:** Patient observes (1−λ)p; does not observe insurer's total cost. Insurer observes aggregate demand (total prescription volume) but not each patient's demand decision ex ante. Originator observes p and its own cost (c_o, F). Social planner observes all parameters.
- **Equilibrium concept:** The patient takes (1−λ)p as given and solves a standard consumer choice problem. The originator takes p as given and solves a participation decision (π(p) ≥ 0). The insurer/social planner chooses p to minimize cost (insurer problem) or maximize welfare (social planner problem). The equilibrium is a price-quantity pair (p*, q*) satisfying all participation constraints.
- **Key constraint type:** (a) Patient IR + moral hazard: q* = D((1−λ)p) (patient demand is a best response to the subsidized price — this is the moral hazard constraint written in reduced form). (b) Originator IR (participation constraint): π_o(p) = (p − c_o)·D((1−λ)p) − F ≥ 0, defining the exit threshold p̄.

**Inheritance list:**
- Demand function D(·) derived from patient's consumer choice optimization; D is strictly decreasing, twice differentiable
- Coinsurance structure: patient faces price (1−λ)p; insurer pays λ·p per unit
- Moral hazard DWL: welfare loss = ∫_{p*(1−λ)}^{p_social*} D(t) dt — the area between the socially optimal consumption and the distorted consumption
- Consumer surplus: CS(p) = ∫_0^{D((1−λ)p)} U'(q) dq − (1−λ)p·D((1−λ)p)
- IR constraint for the agent (originator firm): exact structure as above

**What must be added or modified:**
- **New element 1: Supply-side with originator participation constraint.** The canonical moral hazard model has a competitive supply side; this model adds an originator with fixed costs F and marginal cost c_o > c_g. The participation constraint π_o(p) ≥ 0 defines the exit threshold p̄ = c_o + F/D((1−λ)p̄). This is a fixed-point equation; existence and uniqueness of p̄ must be verified.
- **New element 2: Insurer's optimization problem and comparison to social welfare maximum.** The canonical model treats λ as the design variable; this model treats p as the design variable and λ as fixed. The insurer's objective is min_p λ·p·D((1−λ)p); the social planner's objective is max_p W(p) where W includes CS + PS − DWL − fixed costs. The divergence between these two objectives is the paper's policy message.

---

## 4. Recommended Extensions

### Recommended Extension 1: Mechanism Design / Procurement Regulation Framework
- **Why natural:** After establishing the baseline welfare comparison (insurer vs. social planner objective), the paper can extend to ask: what is the optimal procurement mechanism — i.e., what contract (p, volume guarantee V) maximizes social welfare subject to firm participation and patient moral hazard? This is a mechanism design problem with two constraints (firm IR and patient moral hazard IC).
- **What it enables:** A characterization of the second-best optimal VBP contract (price + volume guarantee), which may involve a floor price above the competitive generic price to ensure originator participation plus a volume guarantee to compensate for lower price. This is directly policy-relevant.
- **When to pursue:** After the baseline model characterization (Stage 6–7 propositions) is complete.

### Recommended Extension 2: Consumer Choice with Heterogeneous λ
- **Why natural:** The baseline treats all patients as having the same coinsurance complement λ. The empirical reality check confirmed that λ varies substantially (0.3 at large urban hospitals to 0.7–0.8 at rural clinics). Extending to a distribution of λ-types yields a richer welfare analysis: VBP benefits low-λ (high OOP cost) patients more than high-λ patients, and the moral hazard amplification is concentrated among high-λ patients.
- **What it enables:** A proposition that the social welfare gain from VBP is increasing in the share of low-λ (uninsured or under-insured) patients — a result with direct implications for optimal VBP targeting (focus on drugs predominantly consumed by under-insured populations).
- **When to pursue:** As a "robustness extension" after the main propositions are established.

---

## 5. Excluded Families

- **Screening (hidden type):** The proposed model's primary friction is hidden demand (hidden action), not hidden type. Patients are ex ante homogeneous; the moral hazard is a post-insurance demand distortion. Screening applies when patient types (e.g., severity of illness) are unobservable ex ante — that is adverse selection, a distinct and separately addressable channel explicitly excluded from the research scope.
- **Entry Deterrence:** Originator exit in this model is driven by a price that falls below average cost — a participation constraint failure, not a strategic commitment problem. There is no strategic deterrence mechanism (the originator does not invest to deter generic entry; if anything, the VBP mechanism reverses the roles). Entry deterrence is structurally inappropriate.
- **Signaling:** No party in this model uses price or action to signal private information to another party. The moral hazard here is demand amplification, not adverse selection or signaling. Signaling applies when the informed party moves first to reveal type; that does not describe any element of the VBP-insurance framework.
- **Matching Models:** No bilateral matching between agents; patients receive drugs from a market mechanism, not a deferred acceptance or stable matching algorithm. Not applicable.
- **Search Models:** The model assumes full information about the drug price (patients observe p and thus (1−λ)p immediately). Search frictions would add a separate friction that is out of scope.

---

## 6. Relabeling Check

**Is the proposed model a superficial relabeling of a classic model?**

NOT a superficial relabeling. Three features distinguish this model from the canonical moral hazard baseline:

1. **The policy variable is the product price (p), not the insurance contract (λ).** The canonical health insurance moral hazard model (Pauly 1968, Zeckhauser 1970) takes the market price as exogenous and analyzes the optimal coinsurance rate. This model takes λ as fixed (institutionally given by BMI) and analyzes the welfare effects of a centrally-set VBP price p. The optimization problem is structurally different: the insurer is not designing an insurance contract but a procurement mechanism.

2. **The supply-side participation constraint creates a welfare kink absent from all prior moral hazard models.** Adding a fixed-cost originator with exit threshold p̄ generates a welfare function that is kinked at p̄: W(p) is smooth for p > p̄ (originator in market, variety intact) and has a different functional form for p < p̄ (generic-only market, variety lost). This kink, and the comparison of W(p̄⁺) to W(p̄⁻), cannot be derived from any one-sided model.

3. **The comparison between the cost-minimizing insurer's optimal price and the social welfare-maximizing price produces a novel policy result.** The canonical model's "social planner" designs the contract to maximize welfare. Here, the insurer is modeled as a cost-minimizer (not a welfare-maximizer), and the divergence between these objectives generates a systematic underprovision of product variety — a result that requires both the supply-side participation constraint and the demand-side moral hazard to be present simultaneously.

The following elements are NOT present in the canonical Pauly (1968) / Zeckhauser (1970) model and constitute the original contribution:
- The originator participation constraint and exit threshold p̄
- The welfare kink at p̄ and the welfare comparison across the kink
- The insurer's cost-minimization problem and its divergence from the social welfare maximum
- The comparative statics ∂p̄/∂λ (how originator exit threshold changes with insurance generosity)

---

## 7. Primitives Inheritance Handoff to Stage 4

```
CANONICAL MODEL MATCH HANDOFF TO STAGE 4
==========================================
Baseline model family:    Moral Hazard / Hidden Action (Health Insurance variant)
Canonical ancestor:       Pauly (1968) AER 58(3); Zeckhauser (1970) JET 2(1)

Inherit from the canonical model:
  - Agents:               One representative patient with quasi-linear utility;
                          one public insurer (the principal in the moral hazard
                          relationship)
  - Timing:               (0) Insurer sets or observes p (VBP price);
                          (1) Originator decides to participate (ex ante, before
                          patients demand); (2) Patients observe (1−λ)p and demand
                          q* = D((1−λ)p); (3) Insurer pays λ·p·q*; originator
                          (if in market) receives per-unit profit
  - Information structure: Patient observes effective price (1−λ)p and chooses
                          demand as a best response — the moral hazard constraint
                          is the patient's demand function D((1−λ)p); insurer
                          observes aggregate demand but cannot control individual
                          patient consumption
  - Equilibrium concept:  Partial equilibrium: each agent optimizes taking prices
                          as given; insurer/planner optimizes p taking the demand
                          response D((1−λ)p) and firm participation decision as
                          constraints. No strategic game among patients (they are
                          price-takers in a large market).
  - Key constraint type:  (a) Moral hazard constraint (reduced form): q = D((1−λ)p)
                          — this replaces the standard IC with the demand function.
                          (b) Originator IR / participation constraint:
                          π_o(p) = (p − c_o)·D((1−λ)p) − F ≥ 0.

Modify from the canonical model:
  - λ is FIXED (not the design variable): the insurer cannot change the
    coinsurance rate; it chooses p instead. This is a departure from
    Zeckhauser (1970) where λ is the design variable.
  - The "agent" in the moral hazard is the patient (demand is hidden action),
    but the second "agent" in the participation constraint is the originator
    firm. The model has two IR constraints, one for each type of agent.

New elements not in the canonical model:
  - Originator firm with fixed cost F and marginal cost c_o > c_g:
    this generates the participation constraint and exit threshold p̄.
    Introduces the welfare kink — welfare has different functional forms
    on either side of p̄.
  - Insurer's cost-minimization problem: min_p λ·p·D((1−λ)p), contrasted
    with social planner's max_p W(p). The gap between these objectives
    is the model's core policy result.
  - Social welfare function: W(p) = CS(p) + π_o(p)·1[p≥p̄] + π_g(p) − DWL(p)
    where DWL(p) is the moral hazard deadweight loss (area between social
    and private demand) and 1[p≥p̄] is the indicator that the originator
    participates.

Confirmed NOT a superficial relabeling: YES — three genuinely new elements
  (originator participation constraint, welfare kink at p̄, insurer cost-
  minimization divergence from social optimum) are not present in any cited
  prior model.
```
