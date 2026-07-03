# Model Primitives

**Date:** 2026-06-23
**Stage:** 4 — Model Primitives

---

## Model Overview

This is a static partial-equilibrium model of a single therapeutically homogeneous drug category under a public health insurance system with centralized volume-based procurement (VBP). The insurer (or the VBP-setting government, treated as one entity) announces a regulated price p at which drugs will be procured and distributed to insured patients. An originator pharmaceutical firm — which has higher marginal cost c_o and positive fixed costs F — decides ex ante whether to supply the drug at price p or exit the market. A competitive generic industry, with marginal cost c_g < c_o and no fixed costs, always supplies at price p whenever p ≥ c_g. Patients, who are fully covered by insurance at coinsurance rate λ, observe the effective out-of-pocket price (1−λ)p and demand accordingly. The model characterizes: (i) when the originator's participation constraint binds (the exit threshold p̄); (ii) how total insurer expenditure responds to a fall in p; and (iii) whether the cost-minimizing VBP price chosen by the insurer coincides with the social welfare-maximizing price. The key findings are a welfare function with a kink at p̄ and a systematic divergence between the insurer's cost-minimizing price and the social welfare-maximizing price.

---

## 1. Agents

| Label | Name | Count | Characteristics |
|-------|------|-------|----------------|
| I | Insurer / VBP Setter | 1 | Sets VBP price p ∈ [c_g, ∞); minimizes total expenditure or maximizes social welfare (two distinct objectives analyzed) |
| O | Originator Firm | 1 | Marginal cost c_o, fixed cost F > 0; price-taker at p; decides to supply or exit |
| G | Generic Industry | Competitive fringe | Marginal cost c_g < c_o; zero fixed costs; always supplies at any p ≥ c_g |
| A | Representative Patient (Insured) | N identical patients | Demands D((1−λ)p) at OOP price (1−λ)p; risk-neutral with quasi-linear utility |

*Note on supply structure:* Under VBP, the insurer awards all hospital formulary procurement to the winning bidder at price p. The originator firm participates in the VBP market only if its profit (p − c_o)·N·D((1−λ)p) − F ≥ 0. If it exits, the entire market is supplied by the generic industry at price p ≥ c_g with zero profit (competition drives generic surplus to zero at the regulated price — treated as a price-taking competitive sector).

---

## 2. Timing

1. **Nature** sets all parameters (c_g, c_o, F, N, λ, U, V_o) — common knowledge.
2. **Insurer** announces VBP price p ∈ [c_g, ∞). The insurer is the Stackelberg leader: it correctly anticipates the originator's participation decision and patients' demand response.
3. **Originator firm** observes p and decides to participate (supply at price p) or exit (leave the VBP market entirely). Decision: supply iff π_o(p) = (p − c_o)·N·D((1−λ)p) − F ≥ 0.
4. **Generic industry** observes p and supplies any demanded quantity at p ≥ c_g (always participates).
5. **Each patient** observes effective out-of-pocket price (1−λ)p and demands q_i = D((1−λ)p) units.
6. **Transfers**: insurer pays p per unit to the supplying firm(s); insurer's total expenditure = λ·p·N·D((1−λ)p). Originator's profit (if in market) = (p − c_o)·N·D((1−λ)p) − F. Patients receive utility U(D((1−λ)p)) and pay (1−λ)p per unit.

**Game type:** Static (one-shot; no repetition)
**Commitment:** The insurer commits to p at Stage 2 (VBP contract binds until the next procurement round); the originator commits at Stage 3 (exit decision is irreversible within the contract period).

---

## 3. Information Structure

**Complete information:** All primitives — c_g, c_o, F, N, λ, U(·), D(·), V_o — are common knowledge among all agents.

**Private information:** None in the baseline model. The originator's fixed cost F and marginal cost c_o are publicly observable (or equivalently, the insurer knows them and sets p accordingly).

*Note:* This is a deliberately simplifying assumption. An extension with c_o as the originator's private information (adverse selection) would require the Laffont-Tirole mechanism design framework. The baseline treats the participation threshold p̄ as known to the insurer, so the analysis is purely about the optimal regulatory choice, not mechanism design under asymmetric information.

**Public information:**
- Price p (announced publicly by insurer)
- Originator participation decision (observable; originator's presence or absence in the hospital formulary is publicly known)
- All demand and cost parameters

**Common knowledge:** All of the above; rationality of all agents.

---

## 4. Preferences

### Insurer / VBP Setter (I)

Two objective functions are analyzed:

**(a) Cost-minimizing insurer:**
$$\min_{p \geq c_g} \quad E_I(p) = \lambda \cdot p \cdot N \cdot D((1-\lambda)p)$$

Minimizes total insurance expenditure (premium outlays) taking patient demand as given.

**(b) Social welfare-maximizing planner:**
$$\max_{p \geq c_g} \quad W(p) = N \cdot \left[U\!\left(D((1-\lambda)p)\right) - c(p) \cdot D((1-\lambda)p)\right] - F \cdot \mathbf{1}[p \geq \bar{p}] + N \cdot V_o \cdot \mathbf{1}[p \geq \bar{p}]$$

where $c(p) = c_o$ if $p \geq \bar{p}$ (originator serves the market) and $c(p) = c_g$ if $p < \bar{p}$ (generic only), and $\mathbf{1}[\cdot]$ is the indicator function. The planner internalizes consumer surplus, social supply cost, originator fixed costs, and the variety value $N \cdot V_o$.

*Interpretation:* The moral hazard distortion is implicit in this objective — patients demand $D((1-\lambda)p) > D(c)$ (where $D(c)$ is the socially optimal quantity). The DWL from moral hazard is:
$$\text{DWL}(p) = N \cdot \left[U(D(c)) - c \cdot D(c)\right] - N \cdot \left[U(D((1-\lambda)p)) - c \cdot D((1-\lambda)p)\right] \geq 0$$
where the inequality holds because $D(c)$ maximizes the net social surplus $U(q) - c \cdot q$.

### Originator Firm (O)

$$\Pi_O(p) = (p - c_o) \cdot N \cdot D((1-\lambda)p) - F$$

Profit-maximizing, risk-neutral. Participates iff $\Pi_O(p) \geq 0$; exits otherwise (outside option = 0).

*Note on market share:* The originator is assumed to serve the entire market when it participates (β = 1). This is a tractability simplification; an extension with β ∈ (0,1) (originator and generic splitting the market) yields qualitatively identical results for the participation constraint but introduces an additional parameter.

### Generic Industry (G)

$$\Pi_G(p) = (p - c_g) \cdot N \cdot D((1-\lambda)p) \geq 0 \quad \text{for } p \geq c_g$$

Competitive; earns zero economic profit in equilibrium (competitive bidding drives generic firms to bid p → c_g; the insurer's minimum acceptable bid price is p, so generic profit = $(p - c_g) \cdot N \cdot D((1-\lambda)p)$ at the regulated price p). In the social welfare calculation, generic profits are a transfer within the economy and do not affect the welfare comparison (they are redistributed to the insurer via future bid competition or treated as a transfer to generic firm shareholders).

### Representative Patient (A)

Each patient $i$ has quasi-linear utility over drug consumption $q_i$ and a numeraire good $x_i$:
$$u_i(q_i, x_i) = U(q_i) + x_i$$

Subject to budget constraint: $(1-\lambda)p \cdot q_i + x_i = m_i$, where $m_i$ is patient income (sufficient to purchase desired quantity). Patients are risk-neutral with respect to drug quantity (risk aversion over wealth could be added as an extension).

Optimal demand: $q_i^* = D((1-\lambda)p)$ where $U'(D(s)) = s$ defines the inverse demand function (i.e., $D$ is the inverse of the marginal utility function $U'$).

---

## 5. Action and Strategy Spaces

### Insurer / VBP Setter (I)
- **Action space:** $p \in [c_g, \infty)$ — the minimum acceptable bid price for VBP procurement
- **Strategy:** $p^*(c_g, c_o, F, N, \lambda, U, V_o)$ — a function of all model parameters, chosen to minimize $E_I(p)$ or maximize $W(p)$
- **Constraint:** $p \geq c_g$ (must procure at or above generic marginal cost to ensure supply)

### Originator Firm (O)
- **Action space:** $\{$participate, exit$\}$
- **Strategy:** participate iff $\Pi_O(p) \geq 0$, i.e., iff $p \geq \bar{p}$
- **Constraint:** Outside option = 0 (exit and earn zero profit)

### Generic Industry (G)
- **Action space:** Supply any quantity demanded at price $p \geq c_g$
- **Strategy:** Always supply $Q_g = N \cdot D((1-\lambda)p)$ at price $p$ (competitive equilibrium)
- **Constraint:** $p \geq c_g$ (otherwise does not cover marginal cost)

### Representative Patient (A)
- **Action space:** $q_i \in [0, \infty)$
- **Strategy:** $q_i^* = D((1-\lambda)p)$ (utility-maximizing demand at the subsidized price)
- **Constraint:** Budget constraint $(1-\lambda)p \cdot q_i \leq m_i$ (non-binding by assumption — income sufficient)

---

## 6. State Variables and Outcome Space

**State variables:**
- $p \in [c_g, \infty)$: VBP price (controlled by insurer)
- $\lambda \in [0,1)$: insurance coinsurance complement (fixed parameter, not a choice variable in the baseline)
- $c_g, c_o$: marginal costs ($0 < c_g < c_o$)
- $F > 0$: originator fixed cost (irreducibility condition)
- $N > 0$: number of patients (market size)
- $V_o > 0$: per-patient variety value from originator participation

**Outcome space:**
- Drug quantity demanded per patient: $q = D((1-\lambda)p) \in (0, D(0)]$
- Originator participation: $\mathbf{1}[p \geq \bar{p}] \in \{0, 1\}$
- Total insurer expenditure: $E_I = \lambda \cdot p \cdot N \cdot D((1-\lambda)p)$
- Social welfare: $W(p)$ as defined above
- Originator profit: $\Pi_O(p) = (p - c_o) \cdot N \cdot D((1-\lambda)p) - F$ if $p \geq \bar{p}$; 0 otherwise

**Outcome function:**
Given the insurer's choice $p$, outcomes are determined as follows:
1. Originator's profit function $\Pi_O(p)$ determines participation (Step 3 of timing)
2. Patient demand $q^* = D((1-\lambda)p)$ (Step 5)
3. Social welfare $W(p)$ and insurer expenditure $E_I(p)$ are computed from the realized quantity and participation decision

---

## 7. Equilibrium Concept Candidates

### Candidate A: Constrained Optimization with Rational Expectations (Stackelberg with Insurer as Leader)
- **When appropriate:** The insurer moves first, setting p; all other agents respond optimally. The insurer correctly anticipates the demand response $D((1-\lambda)p)$ and the participation threshold $\bar{p}$. No strategic interaction among agents (patients don't interact with each other; the originator takes p as given).
- **What it requires:** The insurer solves $\max_p / \min_p$ its objective, subject to the constraints that $q^* = D((1-\lambda)p)$ (patient best response) and $\Pi_O(p) \geq 0$ (originator participation constraint, binding at $p = \bar{p}$).
- **Potential issues:** The welfare function $W(p)$ has a kink at $\bar{p}$; existence of an optimal $p^*$ requires $W(p)$ to be bounded above, which holds under standard conditions on $U$ (e.g., $U'(0) < \infty$ or demand finite for all prices). Uniqueness requires quasi-concavity of $W$ on each segment, which must be verified under the chosen functional form.

### Candidate B: Social Planner Benchmark (Full-Information First-Best)
- **When appropriate:** As a welfare benchmark. The planner observes all costs, chooses both $p$ and $\lambda$ optimally, and internalizes all externalities including the moral hazard DWL.
- **What it requires:** Solve $\max_{p, \lambda} W(p, \lambda)$ subject to $\lambda \in [0,1]$, $p \geq c_g$. The first-best would set $(1-\lambda)p = c$ (no moral hazard DWL) and $p \geq \bar{p}$ (keep originator in market if $N \cdot V_o > F$).
- **Potential issues:** This benchmark is used for comparison only; it does not characterize an equilibrium but a planning optimum.

### Candidate C: Competitive Equilibrium (No Insurer, No VBP)
- **When appropriate:** As a pre-VBP baseline. The originator sets its profit-maximizing price $p_M$ (monopoly or regulated markup), and patients pay $(1-\lambda)p_M$ out-of-pocket.
- **What it requires:** Originator maximizes $\Pi_O(p) = (p - c_o) \cdot N \cdot D((1-\lambda)p) - F$ over $p$. The resulting monopoly price $p_M > p_{\text{VBP}}$ characterizes the pre-VBP regime.
- **Potential issues:** Under China's pre-VBP regime, prices were not purely monopoly — there were government-regulated markups; the pre-VBP "competitive equilibrium" is itself a regulated regime. This baseline requires care in empirical interpretation.

### ★ Recommended equilibrium concept: Constrained Optimization with Rational Expectations (Candidate A)

**Justification:** The insurer is the only strategic agent who makes a design choice (setting p); patients and the originator firm are price-takers. There is no strategic game among agents — patients cannot coordinate, and the originator does not take strategic actions against patients or the insurer. The Stackelberg leadership structure is natural: the insurer announces p before the originator decides to participate, and before patients demand. Rational expectations means the insurer correctly predicts both downstream responses. The equilibrium is a price $p^*$ that solves the insurer's optimization problem under these correctly-anticipated constraints.

---

## 8. Social Planner Benchmarks

### First-Best (Unconstrained Welfare Maximum)

The benevolent social planner maximizes $W(p, \lambda)$ over both $p$ and $\lambda$:
$$\max_{p \geq c_g, \, \lambda \in [0,1)} N \cdot \left[U(D((1-\lambda)p)) - c \cdot D((1-\lambda)p)\right] - F \cdot \mathbf{1}[p \geq \bar{p}] + N \cdot V_o \cdot \mathbf{1}[p \geq \bar{p}]$$

First-order condition with respect to $\lambda$ and $p$ (jointly): $U'(q) = c$ at optimum, i.e., patients consume the socially efficient quantity. This requires $(1-\lambda)p = c$ at the optimum, which pins down the ratio $\lambda/p$. Additionally, the planner keeps the originator in the market iff $N \cdot V_o - F > 0$ (positive variety value net of fixed costs).

**First-best result:** $p^{FB} = c_o / (1-\lambda^{FB})$ with $\lambda^{FB}$ chosen to make patients indifferent between generic and originator drug access (both efficiently consumed). If $N \cdot V_o > F$: originator stays; if $N \cdot V_o < F$: originator exits even at first-best.

### Second-Best (Constrained Optimum: λ Fixed, p Variable)

Given that $\lambda$ is institutionally fixed at $\lambda_0 \in (0,1)$ (the BMI coinsurance rate), the planner maximizes over $p$ only:
$$\max_{p \geq c_g} \quad W(p; \lambda_0) = N \cdot \left[U(D((1-\lambda_0)p)) - c(p) \cdot D((1-\lambda_0)p)\right] - F \cdot \mathbf{1}[p \geq \bar{p}] + N \cdot V_o \cdot \mathbf{1}[p \geq \bar{p}]$$

The second-best optimum $p^{SB}$ satisfies:
- If optimum is interior on $[p̄, \infty)$: $(1-\lambda_0)p^{SB} = c_o$, so $p^{SB} = c_o / (1-\lambda_0)$
- If optimum is interior on $[c_g, \bar{p})$: $(1-\lambda_0)p^{SB} = c_g$, so $p^{SB} = c_g / (1-\lambda_0)$
- If $p^{SB}$ is at the kink ($p^{SB} = \bar{p}$): compare left and right limits of $W$

The second-best optimum is the main focus of the paper's welfare analysis. The comparison between $p^{SB}$ and the cost-minimizing insurer's choice $p^{cost*}$ is the key policy result.

### Cost-Minimizing Insurer's Optimum

The insurer minimizes $E_I(p) = \lambda_0 \cdot p \cdot N \cdot D((1-\lambda_0)p)$. Let $R(p) = p \cdot D((1-\lambda_0)p)$ (insurer "revenue" from the drug, weighted by $\lambda_0$). Then:

FOC: $\frac{dR}{dp} = D((1-\lambda_0)p) + p \cdot D'((1-\lambda_0)p) \cdot (1-\lambda_0) = 0$

$$\Leftrightarrow \quad 1 - (1-\lambda_0) \cdot \left|\varepsilon((1-\lambda_0)p)\right| = 0 \quad \Leftrightarrow \quad |\varepsilon| = \frac{1}{1-\lambda_0}$$

where $\varepsilon(s) = -s \cdot D'(s) / D(s)$ is the demand elasticity at subsidized price $s = (1-\lambda_0)p$.

The cost-minimizing price $p^{cost*}$ satisfies $|\varepsilon((1-\lambda_0)p^{cost*})| = 1/(1-\lambda_0) > 1$ — the insurer pushes the price down until demand becomes elastic enough (elasticity exceeds $1/(1-\lambda_0)$), which occurs at a lower price than the social optimum $p^{SB} = c_o/(1-\lambda_0)$.

---

## 9. Internal Consistency Check

| Check | Status | Notes |
|-------|--------|-------|
| All variables defined before use | ✓ | All symbols defined in Sections 1–6; notation summary below |
| Equilibrium concept compatible with action/information space | ✓ | Constrained optimization with Stackelberg structure; information is complete; no hidden type or action in the baseline |
| Budget/resource constraints consistent across agents | ✓ | Insurer budget = $N \cdot \lambda \cdot p \cdot D((1-\lambda)p)$; patient budget constraint holds by assumption (income sufficient); originator IR: $\Pi_O \geq 0$ |
| Timing internally consistent | ✓ | Insurer sets p before originator decides participation (Stage 2 before Stage 3); originator decides before patients demand (Stage 3 before Stage 5); no agent conditions on events that haven't occurred |
| Model generates the tension from Stage 1 | ✓ | Moral hazard channel: $D((1-\lambda)p) > D(c)$ generates DWL. Participation constraint channel: $\Pi_O(p) < 0$ for $p < \bar{p}$ generates exit. Both channels operate through the same $p$, creating the central tension. |

**Outstanding issues:** None in the baseline. Two issues to address in Stage 5 (Assumption Audit):
- The β = 1 assumption (originator serves all demand when in market) should be audited; the key results hold for β < 1 under mild conditions, but this should be verified.
- The homogeneity of patients (all facing the same λ) should be audited against the empirical evidence that λ varies across facility types.

---

## Notation Summary

| Symbol | Meaning | Domain |
|--------|---------|--------|
| $p$ | VBP regulated drug price | $[c_g, \infty)$ |
| $\lambda$ | Insurance coinsurance complement (fraction of cost covered by insurer) | $(0, 1)$ |
| $c_g$ | Generic firm marginal cost | $(0, c_o)$ |
| $c_o$ | Originator firm marginal cost | $(c_g, \infty)$ |
| $F$ | Originator fixed cost (R&D, brand maintenance) | $(0, \infty)$ |
| $N$ | Number of patients (market size) | $(0, \infty)$ |
| $V_o$ | Per-patient welfare value of originator drug variety | $(0, \infty)$ |
| $D(s)$ | Per-patient drug demand at effective price $s$ | $D: \mathbb{R}_+ \to \mathbb{R}_+$; $D' < 0$, $D'' \leq 0$ |
| $U(q)$ | Per-patient utility from drug consumption $q$ | $U: \mathbb{R}_+ \to \mathbb{R}$; $U' > 0$, $U'' < 0$; $U' = D^{-1}$ |
| $\varepsilon(s)$ | Demand price elasticity at price $s$: $-s D'(s)/D(s)$ | $[0, \infty)$ |
| $\bar{p}$ | Originator exit threshold: $(p̄ - c_o) \cdot N \cdot D((1-\lambda)\bar{p}) = F$ | $(c_g, \infty)$; defined implicitly |
| $\Pi_O(p)$ | Originator profit: $(p - c_o) \cdot N \cdot D((1-\lambda)p) - F$ | $\mathbb{R}$ |
| $E_I(p)$ | Insurer expenditure: $\lambda \cdot p \cdot N \cdot D((1-\lambda)p)$ | $\mathbb{R}_+$ |
| $W(p)$ | Social welfare: as defined in Section 4 | $\mathbb{R}$ |
| $p^{SB}$ | Second-best welfare-maximizing VBP price (social planner, $\lambda$ fixed) | $[c_g, \infty)$ |
| $p^{cost*}$ | Cost-minimizing insurer's optimal VBP price | $[c_g, \infty)$ |
| $\mathbf{1}[\cdot]$ | Indicator function: 1 if condition holds, 0 otherwise | $\{0, 1\}$ |
| $c(p)$ | Marginal cost of drug supply at price $p$: $c_o$ if $p \geq \bar{p}$; $c_g$ if $p < \bar{p}$ | $\{c_g, c_o\}$ |
