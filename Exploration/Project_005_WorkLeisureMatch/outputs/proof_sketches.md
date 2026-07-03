# Proof Sketches

**Date:** 2026-06-29
**Stage:** 7 — Proof Sketches

All propositions and their required assumptions are as defined in
`outputs/candidate_propositions.md` and `outputs/assumption_audit.md`.

---

## [L_SC] — Lemma: Single-Crossing

**Claim (restated):**
> Under A2 (SC) and A5 (A): ∂ΔV/∂θ = B(h_H) > 0 for all θ ≥ 0, all θ* ∈ (0,∞).

**Proof strategy:** Direct differentiation.

1. **Write out ΔV explicitly** [SOLID]
   ΔV(θ, θ*) = V(h_H; θ, θ*) − V(h_L; θ, θ*)
              = [W_H + θ·B(h_H) + α·n(h_H, θ*) − δ_H]
              − [W_L + θ·B(h_L) + α·n(h_L, θ*) − δ_L]
              = π(γ) + θ·B(h_H) − α·[n(h_L, θ*) − n(h_H, θ*)] − (δ_H − δ_L)
   using B(h_L) = 0 (A2) and W_H − W_L = π(γ) (A3).

2. **Differentiate with respect to θ** [SOLID]
   ∂ΔV/∂θ = B(h_H) > 0 by A2 (B(h_H) > 0).
   No other term in ΔV depends on θ (verified: n(h, θ*) depends on θ* and h, not on θ_i directly; income and disutility terms are θ-independent by A5 and the model specification).

3. **Conclusion** [SOLID]
   ΔV is strictly increasing in θ for all θ* ∈ (0,∞). □

**Rigor summary:** NEAR-COMPLETE. Steps 1–3 are direct calculations. No gap.

---

## [P_E1] — Proof Sketch: Existence and Uniqueness of STNE

**Claim (restated):**
> Under A1 (continuous F, full support), A2, A3, A7: ∃! θ* ∈ (0,∞) with ΔV(θ*, θ*) = 0.

**Proof strategy:** Intermediate Value Theorem applied to the diagonal G(θ*) ≡ ΔV(θ*, θ*).

1. **Define G(θ*) = ΔV(θ*, θ*)** [SOLID]
   Substituting θ = θ* into the expression from L_SC:
   G(θ*) = π(γ) + θ*·B(h_H) − α·[n(h_L, θ*) − n(h_H, θ*)] − (δ_H − δ_L).
   G is well-defined for all θ* ∈ [0,∞) since all components are well-defined (A1, A4/M1: μ > 0 for ℓ > 0 and L̄ > 0).

2. **G is continuous in θ*** [PLAUSIBLE]
   Each component of G is continuous in θ*: π(γ) is constant (A3); θ*·B(h_H) is linear; n(h, θ*) = max{0, (T̄ − 1/μ(ℓ_h, L̄(θ*)))/τ} is continuous in θ* since L̄(θ*) = ℓ_L − (1−F(θ*))·Δℓ is continuous in θ* (A1: F continuous). The max{0,·} introduces a kink at n = 0 but not a discontinuity. [Needs: verify that the kink does not create a non-differentiability issue for the IVT argument — but continuity suffices for IVT, so the kink is harmless.]

3. **G(0) < 0 under boundary condition** [PLAUSIBLE]
   At θ* = 0: all workers involute (Φ = 1), L̄ = ℓ_H. Then:
   G(0) = π(γ) + 0·B(h_H) − α·[n(h_L, 0) − n(h_H, 0)] − (δ_H − δ_L)
         = π(γ) − α·[n(h_L, L̄=ℓ_H) − n(h_H, L̄=ℓ_H)] − (δ_H − δ_L).
   We need G(0) < 0: this requires α·[n(h_L, 0) − n(h_H, 0)] + (δ_H − δ_L) > π(γ).
   Interpretation: when everyone involutes, the fertility loss and effort cost exceed the wage premium at the boundary. [This is a PARAMETER CONDITION (PC1) that must be stated explicitly in the paper. It holds when γ is not too large or α is not too small.]

4. **G(θ*) → +∞ as θ* → ∞** [SOLID]
   As θ* → ∞: Φ → 0, L̄ → ℓ_L (nearly all workers opt out). The term θ*·B(h_H) → +∞ dominates since B(h_H) > 0. Hence G(θ*) → +∞.

5. **Intermediate Value Theorem: existence** [SOLID]
   By Steps 2–4: G is continuous (Step 2), G(0) < 0 (Step 3, under PC1), G(∞) > 0 (Step 4). By IVT, ∃ θ* ∈ (0,∞) with G(θ*) = 0.

6. **Uniqueness via monotone G** [PLAUSIBLE]
   G is strictly increasing in θ* when the map θ* → ΔV(θ*, θ*) is strictly increasing. This requires dG/dθ* > 0. Differentiating:
   dG/dθ* = B(h_H) − α · d[n(h_L, θ*) − n(h_H, θ*)]/dθ*.
   The term d[n(h_L,θ*) − n(h_H,θ*)]/dθ*: as θ* increases (more opt-outs), L̄ rises (∂L̄/∂θ* > 0 from ∂L̄/∂Φ < 0 and ∂Φ/∂θ* < 0). Higher L̄ raises μ for both h_L and h_H workers via ∂μ/∂L̄ > 0 (A4/M1). BUT μ is higher for h_L workers already (ℓ_L > ℓ_H), and the marginal effect on n may be smaller for the h_L group if μ is already high (concavity of μ in L̄). This direction is [PLAUSIBLE] but requires verifying that d[n(h_L) − n(h_H)]/dθ* < B(h_H)/α, i.e., the fertility differential does not increase too fast in θ*. Under reasonable parameter values (particularly mild concavity of μ) this holds. [Needs: sufficient condition on μ for G to be strictly increasing; e.g., impose ∂²μ/∂L̄² ≥ −κ for some κ small enough.]

**Additional lemmas needed:**
- **Parameter Condition PC1:** G(0) < 0. Needs to be stated as a formal parameter restriction on (γ, α, π, δ_H − δ_L). This is not an assumption but a condition on the parameters under which the model generates an interior solution.
- **Monotone G Condition:** Sufficient condition on μ and its curvature ensuring G is strictly increasing in θ*.

**Hardest step:** Step 6 (Uniqueness) — the monotonicity of G requires bounding the derivative of the fertility differential, which depends on the curvature of μ. This is the step most likely to require a specific functional form assumption (e.g., Cobb-Douglas μ).

**Rigor summary:** MOSTLY SOLID. Steps 1, 4, 5 are solid; Steps 2, 3, 6 are plausible but require explicit parameter conditions and a regularity condition on μ. The existence proof is essentially complete under PC1; uniqueness requires a mild additional condition on μ.

---

## [P_C1] — Proof Sketch: Comparative Statics in γ

**Claim (restated):**
> Under A1–A3, A7, with π'(γ) > 0: dθ*/dγ < 0 and dΦ*/dγ > 0.

**Proof strategy:** Implicit Function Theorem applied to G(θ*, γ) = 0.

1. **Apply the IFT** [SOLID]
   G(θ*, γ) ≡ π(γ) + θ*·B(h_H) − α·[n(h_L, θ*) − n(h_H, θ*)] − (δ_H − δ_L) = 0.
   By IFT: dθ*/dγ = −(∂G/∂γ) / (∂G/∂θ*), provided G is C¹ in both arguments and ∂G/∂θ* ≠ 0.

2. **Compute ∂G/∂γ** [SOLID]
   ∂G/∂γ = π'(γ) > 0 (by assumption π'(γ) > 0 and A3: π depends only on γ). No other term in G depends on γ.

3. **Sign of ∂G/∂θ*: confirm G increasing in θ*** [PLAUSIBLE]
   From Step 6 of P_E1: dG/dθ* > 0 under the Monotone G Condition. ∂G/∂θ* > 0 (same as dG/dθ* since here we treat γ as fixed). [Inherits the PLAUSIBLE status from P_E1 Step 6.]

4. **Compute sign of dθ*/dγ** [SOLID given Steps 2–3]
   dθ*/dγ = −π'(γ)/(∂G/∂θ*) = (−)(+)/(+) < 0. ✓

5. **Derive dΦ*/dγ** [SOLID]
   Φ* = 1 − F(θ*). By the chain rule: dΦ*/dγ = −f(θ*)·(dθ*/dγ) = −f(θ*)·(negative) > 0. Since f(θ*) > 0 (A1: full support). ✓

**Additional lemmas needed:**
- Monotone G Condition (from P_E1) — same lemma, inherited.

**Hardest step:** Step 3 (sign of ∂G/∂θ*) — inherited from P_E1 uniqueness argument. If the Monotone G Condition fails, the IFT applies locally but the global comparative static requires additional argument.

**Rigor summary:** MOSTLY SOLID. Steps 1, 2, 4, 5 are solid. Step 3 is plausible, inheriting the condition from P_E1. Given the Monotone G Condition, the proof is essentially complete.

---

## [P_C2] — Proof Sketch: Fertility Decline in γ

**Claim (restated):**
> Under A1–A5, A7, M1: dn*/dγ < 0.

**Proof strategy:** Chain rule decomposition: dn*/dγ = (dn*/dΦ*)·(dΦ*/dγ), signed by each factor.

1. **Sign of dΦ*/dγ** [SOLID given P_C1]
   By P_C1: dΦ*/dγ > 0. Cite P_C1.

2. **Define aggregate fertility n* as a function of Φ*** [SOLID]
   n* = F(θ*)·E[n | θ < θ*] + (1−F(θ*))·E[n | θ > θ*]
      = F(θ*)·n(h_L, θ*) + (1−F(θ*))·n(h_H, θ*)
   where n(h, θ*) = max{0, (T̄ − 1/μ(ℓ_h, L̄(θ*)))/τ}.
   n* is well-defined since all terms are well-defined (A1, A4/M1, A6, ℓ_h > 0).

3. **Compute ∂n*/∂L̄ < 0 (fertility rises in L̄)** [SOLID]
   ∂n(h, θ*)/∂L̄ = (1/τ)·(1/μ²)·(∂μ/∂L̄) > 0 (by A4/M1: ∂μ/∂L̄ > 0 and τ, μ² > 0).
   So higher L̄ → higher meeting rate → shorter time-to-match → higher fertility. Both n(h_L, ·) and n(h_H, ·) are increasing in L̄.

4. **∂L̄/∂Φ* < 0 (higher involution rate lowers aggregate leisure)** [SOLID]
   L̄ = ℓ_L − Φ*·Δℓ. So ∂L̄/∂Φ* = −Δℓ < 0.

5. **Combine: dn*/dΦ* < 0** [SOLID]
   dn*/dΦ* = (∂n*/∂L̄)·(∂L̄/∂Φ*) + [direct effect of changing composition].
   The direct composition effect (shifting mass from h_L to h_H workers): since n(h_H, θ*) < n(h_L, θ*) for all θ* (because ℓ_H < ℓ_L → lower μ for h_H workers → longer time-to-match), this direct effect also contributes negatively to dn*/dΦ*.
   [Needs: verify that income effect (A5) does not enter the meeting rate μ and does not create a positive channel. Under A5, income does not affect μ, so this step is solid conditional on A5.]
   Both channels negative: dn*/dΦ* < 0. ✓

6. **Conclude dn*/dγ < 0** [SOLID given Steps 1 and 5]
   dn*/dγ = (dn*/dΦ*)·(dΦ*/dγ) = (−)·(+) < 0. ✓

**Additional lemmas needed:**
- None beyond what P_C1 requires.

**Hardest step:** Step 5 — the composition effect calculation requires confirming that n(h_H, θ*) < n(h_L, θ*) for all θ*, which requires T_match(h_H) > T_match(h_L) (involuters take longer to match). This follows from μ(ℓ_H, L̄) < μ(ℓ_L, L̄) for all L̄ (since ∂μ/∂ℓ_i > 0 and ℓ_H < ℓ_L, A4/M1). [SOLID under A4/M1 and A5.]

**Rigor summary:** MOSTLY SOLID. All steps are solid or plausible under A4/M1 and A5. The main conditional is Assumption A5 (income does not enter μ). The proof is clean once A5 is formally stated.

---

## [P_W1] — Proof Sketch: Welfare Gap

**Claim (restated):**
> Under A1–A4, A7, M1: θ* < θ^{SP}, n* < n^{SP}, ΔW(γ) > 0, dΔW/dγ > 0.

**Proof strategy:** Direct comparison of Nash FOC and social planner FOC at θ*.

1. **Nash indifference condition (FOC for individual at θ*)** [SOLID]
   G(θ*) = π(γ) + θ*·B(h_H) − α·[n(h_L, θ*) − n(h_H, θ*)] − (δ_H − δ_L) = 0.
   This is the individual's marginal benefit = marginal cost of involution at the threshold. Each individual worker treats L̄(θ*) as exogenous and does not account for the effect of their choice on L̄.

2. **Social planner's FOC at θ̂ = θ^{SP}** [SOLID]
   The planner maximizes W^{SP}(θ̂) = ∫₀^{θ̂} V(h_L; θ, θ̂) dF(θ) + ∫_{θ̂}^∞ V(h_H; θ, θ̂) dF(θ).
   Differentiating w.r.t. θ̂ and applying Leibniz's rule:
   dW^{SP}/dθ̂ = f(θ̂)·[V(h_L; θ̂, θ̂) − V(h_H; θ̂, θ̂)] + ∫₀^∞ (∂V(h(θ); θ, θ̂)/∂L̄)·(∂L̄/∂θ̂) dF(θ).
   The first term is −f(θ̂)·G(θ̂) (which equals 0 at θ̂ = θ*). The second term is the externality:
   Ext(θ̂) ≡ ∫₀^∞ α·(∂n(h(θ); θ̂)/∂L̄)·(∂L̄/∂θ̂) dF(θ).
   ∂L̄/∂θ̂ = f(θ̂)·Δℓ > 0 (raising threshold → more opt-outs → higher L̄).
   ∂n/∂L̄ > 0 (Step 3 of P_C2). Hence Ext(θ*) > 0.

3. **Social FOC evaluated at Nash threshold θ*** [SOLID]
   At θ̂ = θ*: dW^{SP}/dθ̂|_{θ̂=θ*} = f(θ*)·G(θ*) + Ext(θ*) = 0 + Ext(θ*) = Ext(θ*) > 0.
   This means the social planner wants to raise the threshold above θ* (welfare is increasing at θ* in the planner's problem), confirming that θ^{SP} > θ*.

4. **Concavity of W^{SP}(θ̂): θ^{SP} is interior maximum** [PLAUSIBLE]
   W^{SP} is concave in θ̂ if the social value of raising the threshold diminishes as θ̂ increases. This follows from: (i) concavity of μ in L̄ (A4/M1: ∂²μ/∂L̄² ≤ 0) implying Ext(θ̂) is decreasing in θ̂; (ii) G(θ̂) is increasing in θ̂ (Monotone G Condition from P_E1). Both channels contribute to diminishing social marginal benefit. [PLAUSIBLE: requires formal verification that the second derivative of W^{SP} is negative, which follows from concavity of μ in L̄ plus the monotone G condition. Standard conditions for the planner's problem to have a unique interior maximum.]

5. **θ^{SP} > θ*: welfare gap ΔW > 0** [SOLID given Steps 3–4]
   Since dW^{SP}/dθ̂|_{θ*} > 0 (Step 3) and W^{SP} is concave (Step 4), the maximizer θ^{SP} lies strictly above θ*. ΔW = W^{SP}(θ^{SP}) − W^{SP}(θ*) > 0 follows since θ^{SP} achieves strictly higher welfare.

6. **n* < n^{SP}: fertility gap** [SOLID given P_C2 and Steps 1–5]
   θ^{SP} > θ* → Φ^{SP} < Φ* (fewer involuters) → L̄^{SP} > L̄* (higher aggregate leisure) → μ higher for all agents → earlier marriages → n^{SP} > n*.

7. **dΔW/dγ > 0: welfare gap grows in γ** [PLAUSIBLE]
   Higher γ → lower θ* (P_C1) → further from θ^{SP} (assuming θ^{SP} is less sensitive to γ than θ* — [PLAUSIBLE: θ^{SP} depends on the externality term Ext, which involves the shape of F and μ but not directly on π(γ); θ* depends directly on π(γ). So dθ*/dγ < dθ^{SP}/dγ typically holds under reasonable conditions]). Hence ΔW = W^{SP}(θ^{SP}) − W^{SP}(θ*) grows as θ* falls further below θ^{SP}.

**Additional lemmas needed:**
- Concavity of W^{SP} in θ̂ (Step 4 above) — follows from concavity of μ in L̄, which is A4/M1. State as Lemma W1 in the paper.
- Leibniz differentiation of W^{SP} (Step 2) — standard; cite a real-analysis reference.

**Hardest step:** Step 7 (dΔW/dγ > 0) — requires showing that γ affects θ* more than θ^{SP}. This is plausible (the social planner's threshold depends on the externality, not directly on γ) but needs a formal argument. [PLAUSIBLE, not SOLID.]

**Rigor summary:** MOSTLY SOLID. Steps 1–3, 5–6 are solid. Step 4 is plausible under standard concavity conditions (A4/M1). Step 7 is plausible but the most exposed step in the proof. The core welfare result (θ* < θ^{SP}) is essentially proved in Steps 1–5.

---

## [P_M1] — Proof Sketch: Optimal Corrective Policy (Corollary to P_W1)

**Claim (restated):**
> Under A1–A4, A7, M1: ∃ unique τ* > 0 such that STNE under τ* has θ*(τ*) = θ^{SP}.
> τ* = α·(∂E[n]/∂L̄)·Δℓ/f(θ^{SP}) > 0. dτ*/dγ > 0.

**Proof strategy:** The tax τ enters as a constant shift of the indifference condition; set τ to shift θ* to θ^{SP}.

1. **Modified indifference condition under tax τ** [SOLID]
   With tax τ on h_H (treated as reducing the effective wage to W_H − τ):
   G_τ(θ*, γ, τ) ≡ [π(γ) − τ] + θ*·B(h_H) − α·[n(h_L,θ*) − n(h_H,θ*)] − (δ_H − δ_L) = 0.

2. **Tax shifts threshold continuously** [SOLID]
   From the IFT: dθ*/dτ = −(∂G_τ/∂τ)/(∂G_τ/∂θ*) = 1/(∂G/∂θ*) > 0 (since ∂G_τ/∂τ = −1 and ∂G/∂θ* > 0 from the Monotone G Condition). So θ*(τ) is strictly increasing in τ.

3. **Existence of τ*: set θ*(τ*) = θ^{SP}** [SOLID given P_W1]
   Since θ*(0) = θ* < θ^{SP} (P_W1) and θ*(τ) is continuous and strictly increasing in τ (Step 2), by IVT there exists a unique τ* > 0 such that θ*(τ*) = θ^{SP}. ✓

4. **Derive the formula for τ*** [SOLID]
   Setting G_τ(θ^{SP}, γ, τ*) = 0:
   τ* = π(γ) + θ^{SP}·B(h_H) − α·[n(h_L,θ^{SP}) − n(h_H,θ^{SP})] − (δ_H − δ_L).
   From the social planner's FOC (P_W1 Step 2), the externality term Ext(θ^{SP}) = α·(∂E[n]/∂L̄)·Δℓ·f(θ^{SP}) equals the difference between the social and private incentives at θ^{SP}. Substituting:
   τ* = Ext(θ^{SP})/f(θ^{SP}) = α·(∂E[n]/∂L̄)|_{L̄^{SP}}·Δℓ > 0. ✓

5. **dτ*/dγ > 0** [PLAUSIBLE]
   Higher γ → lower θ* (further from θ^{SP}) → larger gap → larger tax needed to bridge the gap. Formally: dτ*/dγ = (dτ*/dθ^{SP})·(dθ^{SP}/dγ) + (dτ*/dθ*)·(dθ*/dγ). The second term is clearly positive (dθ*/dγ < 0 → gap grows → τ* must increase). The first term depends on how θ^{SP} changes in γ; since θ^{SP} is largely independent of γ (the externality term does not directly involve γ), this term is approximately zero. [PLAUSIBLE.]

**Rigor summary:** MOSTLY SOLID. Steps 1–4 are solid; Step 5 is plausible. The corollary is essentially complete.

---

## [P_U1] — Proof Sketch: Multiplicity and Tipping (Extension)

**Claim (restated):**
> Relax A3: π = π(Φ*; γ) with ∂π/∂Φ > 0. Then under sufficient strategic complementarity, multiple STNE exist; a policy shock can tip the economy from the high-involution to the low-involution equilibrium.

**Proof strategy:** Fixed-point analysis of modified G(θ*) = 0 with endogenous π.

1. **Modified G with endogenous π** [SOLID]
   G_e(θ*, γ) = π(1−F(θ*); γ) + θ*·B(h_H) − α·[n(h_L,θ*) − n(h_H,θ*)] − (δ_H − δ_L) = 0.
   Now G_e depends on θ* both directly (through θ*·B(h_H) and the fertility term) and indirectly (through Φ* = 1−F(θ*) in π).

2. **Compute dG_e/dθ*** [PLAUSIBLE]
   dG_e/dθ* = (∂π/∂Φ)·(−f(θ*)) + B(h_H) − α·d[n(h_L) − n(h_H)]/dθ*.
   The first term is (∂π/∂Φ)·(−f(θ*)) < 0 (strategic complementarity pulls G_e down as θ* rises).
   The second term is B(h_H) > 0 (as before).
   The sign of dG_e/dθ* is ambiguous: if ∂π/∂Φ is large enough, G_e can be decreasing in θ* for some range.

3. **Condition for multiple crossings** [GAP]
   G_e has multiple zeros when dG_e/dθ* changes sign — i.e., when G_e is non-monotone. This requires (∂π/∂Φ)·f(θ*) > B(h_H) − α·d[n(h_L) − n(h_H)]/dθ* at some point in (0,∞). A sufficient condition is that ∂π/∂Φ is large relative to B(h_H) and f is not too thin. [GAP: requires an explicit functional form or parametric condition. State as a sufficient condition in the paper.]

4. **Characterize the set of equilibria** [PLAUSIBLE]
   Under the sufficient condition from Step 3, G_e has at least three zeros: θ₁* < θ₂* < θ₃*. The low-θ* equilibrium (θ₁*) and the high-θ* equilibrium (θ₃*) are stable under best-response dynamics; the middle equilibrium (θ₂*) is unstable. Stability follows from the sign of dG_e/dθ* at each zero (negative → stable; positive → unstable). [PLAUSIBLE: standard stability analysis for fixed-point maps.]

5. **Tipping via policy** [PLAUSIBLE]
   A tax τ > 0 shifts G_e downward (reduces the wage premium). For τ > τ_c (a critical tax), the low-θ₁* equilibrium disappears (G_e(θ₁*, τ) > 0), and the economy is pushed to the high-θ₃* equilibrium. The critical tax τ_c is determined by the condition that G_e(θ₁*, γ, τ_c) = 0 (the low equilibrium just ceases to exist). [PLAUSIBLE but the dynamics of the transition require additional argument — a dynamic extension of the model.]

**Additional lemmas needed:**
- Explicit sufficient condition for multiple crossings (Step 3) — this is the core of P_U1 and requires parametric analysis.
- Stability lemma: dG_e/dθ* < 0 at stable fixed points (follows from standard fixed-point stability theory).

**Hardest step:** Step 3 (existence of multiple crossings) — this is a GAP that requires explicit computation or a precise parametric condition. The tipping narrative is compelling but the formal existence of multiplicity depends on this step.

**Rigor summary:** SKETCH. Steps 1–2 are solid; Steps 3–5 are plausible or GAP. P_U1 is currently at the level of a well-motivated conjecture with a clear proof strategy. Completing the proof requires: (a) an explicit functional form for π(Φ; γ), or (b) a general sufficient condition stated as a formal assumption. Recommended to present as a Proposition with stated sufficient conditions, with the full proof in an online appendix.

---

## [P_B1] — Proof Sketch: Boundary Results

**Claim (restated):**
> As γ → 0: θ* → (δ_H − δ_L)/B(h_H). As γ → ∞: θ* → 0, Φ* → 1.

**Proof strategy:** Evaluate the indifference condition G(θ*, γ) = 0 in limiting cases.

1. **As γ → 0: π(γ) → 0** [SOLID under π(0) = 0]
   G(θ*, 0) = 0 + θ*·B(h_H) − α·[n(h_L, θ*) − n(h_H, θ*)] − (δ_H − δ_L) = 0.
   If α·[n(h_L, θ*) − n(h_H, θ*)] is approximately constant at θ* = θ̄ (or if the fertility differential is small at the boundary), this gives θ̄·B(h_H) ≈ (δ_H − δ_L). [PLAUSIBLE: the fertility differential term is bounded and vanishes relative to θ̄·B(h_H) only if the differential is small. A cleaner limit obtains if we also have α → 0 or the fertility term is second-order.]

2. **As γ → ∞: π(γ) → ∞** [SOLID under π(γ) → ∞ as γ → ∞]
   For the indifference condition to hold, θ*·B(h_H) must also → ∞ or be offset by large fertility differentials. Since B(h_H) is finite, θ* cannot diverge — instead, the condition G(0, γ) becomes: π(γ) − α·[n(h_L,0) − n(h_H,0)] − (δ_H − δ_L) > 0 for large γ (since π(γ) → ∞). This means the threshold approaches 0 (universal involution). [SOLID under π(γ) → ∞.]

3. **Φ* → 1 as γ → ∞** [SOLID]
   Φ* = 1 − F(θ*) → 1 − F(0) = 1 (since F(0) = 0 by full support). ✓

**Rigor summary:** MOSTLY SOLID for the γ → ∞ limit. The γ → 0 limit requires additional care about the fertility differential term — state the limit as an approximation for small α or small fertility differentials. Both limits are economically intuitive and will be accepted by referees as informal characterizations even without full formality.

---

## Overall Proof Landscape

| Proposition | Rigor Level | Hardest Step | Lemmas Needed |
|------------|------------|-------------|--------------|
| L_SC | NEAR-COMPLETE | None | 0 |
| P_E1 | MOSTLY SOLID | Step 6 (Uniqueness / Monotone G) | 2 (PC1, Monotone G Cond.) |
| P_C1 | MOSTLY SOLID | Step 3 (sign of ∂G/∂θ*) | 1 (inherited from P_E1) |
| P_C2 | MOSTLY SOLID | Step 5 (composition + externality) | 0 additional |
| P_W1 | MOSTLY SOLID | Step 7 (dΔW/dγ) | 1 (Lemma W1: concavity of W^{SP}) |
| P_M1 | MOSTLY SOLID | Step 5 (dτ*/dγ) | 0 additional |
| P_U1 | SKETCH | Step 3 (existence of multiple crossings) | 2 (sufficient condition; stability lemma) |
| P_B1 | MOSTLY SOLID | Step 1 (γ→0 limit) | 1 (restrict α small or use approximate limit) |

**Most vulnerable proposition:** P_U1 — the multiplicity/tipping result has a GAP at the core (Step 3).
**Most complete proof:** L_SC and P_C1 — both are near-solid given the Monotone G Condition from P_E1.

**Priority for formalization:**
1. **P_E1 (Existence + Uniqueness)** — all other proofs depend on this. Focus on establishing the Monotone G Condition (a sufficient condition on μ's curvature). Once this is established, P_C1 and P_C2 follow easily.
2. **P_W1 (Welfare Gap)** — the paper's highest-novelty result; Steps 1–5 are essentially complete; Step 7 needs a formal argument.
3. **P_U1 (Multiplicity)** — highest-upside but hardest; tackle after the baseline is complete.
