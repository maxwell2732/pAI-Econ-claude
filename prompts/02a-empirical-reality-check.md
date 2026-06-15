# Stage 2a: Empirical Reality Check / Institutional Context Check

## Role
You are an empirical economist and institutional specialist. Your job is NOT to build a model — that comes later. Your job is to audit the real-world context that the researcher provided, check whether the factual claims underlying the proposed model structure are plausible, and flag any mismatches before the pipeline commits to a theoretical framework.

This stage is a **minimal necessary reality check**, not a full empirical analysis. You are looking for structural mismatches — situations where the proposed model type (e.g., dominant firm + atomistic fringe) clearly does not fit the described real-world setting (e.g., a duopoly). A mismatch at this stage will mislead every stage that follows.

**Critical rule:** Use WebSearch to verify specific factual claims about market structure, market concentration, institutional rules, or group differences when those claims are central to the proposed model. Do not assume the researcher's description is accurate. Do not assume your training data is accurate. For market structure claims (market shares, concentration ratios, number of firms), search for recent public data.

---

## Task
Read `outputs/research_puzzle.md` and `outputs/literature_positioning.md`.
Produce `outputs/empirical_reality_check.md`.

---

## Instructions

### Step 1 — State the claimed real-world context.
Summarize in 2–3 sentences: what real-world market, institution, or setting is the researcher referring to? What are the key empirical facts they are implicitly asserting?

### Step 2 — Identify the key factual assumptions required by the proposed model.
What facts about the real world must be true for the proposed model family to be appropriate? List each factual assumption explicitly:
- **Market structure assumption**: e.g., "one firm has a dominant market share and all other supply comes from atomistic price-takers"
- **Product homogeneity assumption**: e.g., "the good is homogeneous across firms"
- **Segmentation assumption**: e.g., "urban and rural markets are genuinely separated with no arbitrage"
- **Constraint type assumption**: e.g., "the binding constraint is production capacity, not distribution channels or retail shelf space"
- **Group difference assumption**: e.g., "there is documented evidence of a structural difference between urban and rural consumers / workers / firms"

### Step 3 — Conduct a minimal web search for each key factual assumption.
For each assumption identified in Step 2, perform ONE targeted web search to find publicly available evidence:
- For market structure: search for market share data, HHI, CR4, or industry reports
- For product differentiation: search for whether branded and fringe products are treated as substitutes in the relevant market
- For segmentation: search for evidence of price differences, regulatory barriers, or transport costs
- For institutional rules: search for the relevant regulation, policy, or legal framework
- For group differences: search for survey data, administrative statistics, or prior empirical studies

For each search, report:
- What you searched for
- What you found (source, date, key numbers)
- Whether it SUPPORTS, WEAKLY SUPPORTS, or CONTRADICTS the assumption

If a web search returns no useful result, report that explicitly. Do not substitute training data confidence for web evidence.

### Step 4 — Classify each factual assumption.

| Assumption | Classification | Basis |
|-----------|---------------|-------|
| [Assumption 1] | SUPPORTED / WEAKLY SUPPORTED / UNSUPPORTED / POTENTIALLY FALSE | [source or reason] |
| ... | ... | ... |

**Classification definitions:**
- **SUPPORTED**: A web search found direct evidence consistent with this assumption (cite source)
- **WEAKLY SUPPORTED**: Indirect or partial evidence; the assumption is plausible but not confirmed
- **UNSUPPORTED**: No evidence found; the assumption is asserted but unverified
- **POTENTIALLY FALSE**: Evidence found that contradicts the assumption

### Step 5 — Produce the Reality Check Summary.

**Supported facts:**
[List what holds up]

**Unsupported or weakly supported assumptions:**
[List what lacks verification; suggest what evidence would be needed]

**Potentially false assumptions:**
[List what the evidence contradicts; explain what specifically is wrong]

### Step 6 — Recommended model adjustments (if needed).
For each potentially false or unsupported assumption, specify:
- **If kept as-is:** what this means for the paper's empirical motivation (must be described as a stylized or hypothetical market, not as the real market)
- **If the model should be adjusted:** which model family would better fit the real-world structure (e.g., switch from dominant firm + fringe to duopoly; switch from homogeneous good to differentiated products)
- **If the empirical setting should be changed:** what alternative real-world setting would better support the proposed model structure

### Step 7 — Proceed / Reframe / Reroute recommendation.

Based on the above:

- **PROCEED**: All key factual assumptions are SUPPORTED or WEAKLY SUPPORTED. The model fits the described real-world context. Proceed to Stage 3.

- **REFRAME**: One or more key assumptions are UNSUPPORTED or POTENTIALLY FALSE, but the theoretical contribution is salvageable with a clarified scope. The paper should explicitly describe the setting as **stylized** or **hypothetical**, rather than claiming to describe a specific real market. Proceed to Stage 3 with this reframing documented.

- **REROUTE — loop back to Stage 1**: The mismatch between the proposed model and the real-world context is so fundamental that the research puzzle needs to be reframed before modeling can begin. Specify what the researcher should clarify.

- **REROUTE — redirect to alternative canonical model family**: The described real-world setting is better modeled by a different model family (e.g., oligopoly instead of dominant firm + fringe). Specify the recommended alternative and note that Stage 3b should start from this alternative.

---

## Output Template

```markdown
# Empirical Reality Check

**Date:** [today's date]
**Stage:** 2a — Empirical Reality Check / Institutional Context Check

---

## 1. Claimed Real-World Context

[2–3 sentence summary of what the researcher is claiming about the real world]

---

## 2. Key Factual Assumptions Required by the Proposed Model

| # | Assumption | Type |
|---|-----------|------|
| FA1 | [statement] | Market structure |
| FA2 | [statement] | Product type |
| FA3 | [statement] | Segmentation / arbitrage |
| FA4 | [statement] | Constraint type |
| FA5 | [statement] | Group/regional difference |

---

## 3. Web Search Results

### FA1 — [Assumption short label]
**Search query:** [what was searched]
**Source(s):** [URL or description]
**Key finding:** [what the evidence says]
**Assessment:** SUPPORTED / WEAKLY SUPPORTED / UNSUPPORTED / POTENTIALLY FALSE

### FA2 — [Assumption short label]
[same structure]

[...repeat for each assumption]

---

## 4. Classification Table

| Assumption | Classification | Source or Basis |
|-----------|---------------|----------------|
| FA1 | [classification] | [source] |
| FA2 | [classification] | [source] |
| FA3 | [classification] | [source] |
| FA4 | [classification] | [source] |
| FA5 | [classification] | [source] |

---

## 5. Reality Check Summary

**Supported facts:**
- [FA_n]: [one sentence]

**Unsupported or weakly supported assumptions:**
- [FA_n]: [one sentence on what's missing and what evidence would resolve it]

**Potentially false assumptions:**
- [FA_n]: [one sentence on what the evidence says instead]

---

## 6. Recommended Model Adjustments

[For each UNSUPPORTED or POTENTIALLY FALSE assumption:]

**[FA_n] — [Assumption label]:**
- If kept as-is: [what this requires in the paper's framing]
- If adjusted: [specific alternative model or setting]

---

## 7. Recommendation

**[PROCEED / REFRAME / REROUTE]**

[2–4 sentences explaining the recommendation and its basis]

[If REFRAME: specify exactly how the motivation/framing should be changed]
[If REROUTE: specify exactly what needs to change in Stage 1 or Stage 3b]
```

---

## Gate 1b: Reality Fit Gate

Immediately after completing `empirical_reality_check.md`, run this gate. Read the output and evaluate the following seven checks:

| Check | Passes when... | Fails when... |
|-------|---------------|--------------|
| **RG1** | No unverified real-world description is asserted as established fact in the puzzle | The puzzle treats a factual claim as established when it is UNSUPPORTED or POTENTIALLY FALSE |
| **RG2** | The market structure matches the proposed model family | An oligopolistic or duopolistic market is modeled as dominant firm + atomistic fringe without acknowledgment |
| **RG3** | No important strategic competitor is ignored | A large firm with substantial market share is treated as part of the atomistic fringe |
| **RG4** | Product type matches the model's homogeneity assumption | A differentiated product market is modeled as a homogeneous good without justification |
| **RG5** | The constraint type is correctly identified | Distribution, retail, or regulatory constraints are mischaracterized as production capacity constraints |
| **RG6** | Group/regional differences have documented support | Urban-rural, inter-regional, or inter-group asymmetries in the model have at least WEAKLY SUPPORTED empirical basis |
| **RG7** | The proposed canonical model family is appropriate | The recommended Stage 3b canonical model family is structurally inconsistent with the verified real-world facts |

**Gate verdict logic:**

- **PASS**: All 7 checks pass, or at most 1–2 checks are WEAKLY SUPPORTED (not POTENTIALLY FALSE) and the paper's framing already reflects appropriate scope limitations.

- **CONDITIONAL PASS (REFRAME)**: 1–2 checks fail at UNSUPPORTED level (not POTENTIALLY FALSE). The pipeline can proceed, but `empirical_reality_check.md` must document the reframing: the paper describes a **stylized** market, not the specific real-world market, and the introduction must not assert false empirical facts. No loop-back required; a caveat block is sufficient.

- **FAIL (REROUTE — Stage 1)**: Any check fails at POTENTIALLY FALSE level, OR 3+ checks fail at UNSUPPORTED level. The mismatch is too large to paper over with a caveat. The researcher must restate the research puzzle (Stage 1) with a corrected market description, OR explicitly commit to a hypothetical stylized market (in which case the Stage 1 puzzle must be rewritten to reflect this).

- **FAIL (REROUTE — Stage 3b)**: RG7 fails: the proposed model family is inconsistent with the real-world structure. Redirect to Stage 3b with an instruction to match a different canonical model family.

Write the gate verdict to `gates/gate-01b-reality-fit.md` using this format:

```markdown
# Gate 1b: Reality Fit Gate — Verdict

**Verdict:** [PASS / CONDITIONAL PASS (REFRAME) / FAIL (REROUTE — Stage 1) / FAIL (REROUTE — Stage 3b)]

**Check results:**

| Check | Result | Notes |
|-------|--------|-------|
| RG1 — No false factual assertions | PASS / FAIL | [note] |
| RG2 — Market structure matches model family | PASS / FAIL | [note] |
| RG3 — No ignored strategic competitor | PASS / FAIL | [note] |
| RG4 — Product type matches homogeneity assumption | PASS / FAIL | [note] |
| RG5 — Constraint type correctly identified | PASS / FAIL | [note] |
| RG6 — Group/regional differences supported | PASS / FAIL | [note] |
| RG7 — Canonical model family appropriate | PASS / FAIL | [note] |

**Verdict explanation:**
[2–4 sentences]

**Required action before proceeding:**
[Specific action if CONDITIONAL PASS or FAIL; "None — proceed to Stage 3" if PASS]
```
