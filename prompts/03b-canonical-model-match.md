# Stage 3b — Canonical Model Matching

## Purpose
Before building Model Primitives, this stage compares the research idea against the canonical model pattern library to identify 2–4 model families that could plausibly frame the question, recommend one baseline model, and explain why other families are less suitable. It also flags whether the proposed model is a superficial relabeling of a classic model or a genuine extension.

## Inputs
- `outputs/research_puzzle.md` — refined research question with central tension, mechanism, and scope
- `outputs/literature_positioning.md` — literature map identifying which model traditions the paper will engage with
- `outputs/persona_council.md` — five-persona verdict that clarifies the most promising theoretical direction
- All files in `model_library/` — the canonical model pattern library

## Output
- Write to: `outputs/canonical_model_match.md`

---

## Instructions

### Step 1 — Read the Research Puzzle
Extract:
1. The central economic question (one sentence)
2. The proposed mechanism (one causal chain)
3. The type of agents and their roles (who has information, who designs the mechanism, who takes action)
4. The type of friction or distortion (information asymmetry, externality, market incompleteness, strategic behavior)
5. The type of result sought (existence, characterization, comparative statics, welfare, implementation)

### Step 2 — Screen All Model Families
For each model family in `model_library/` (general models) and `model_library/human_capital_and_labor/` (if the research involves human capital, labor, education, or technology-labor interaction), ask:

> Does this research question fit under this model family's "Canonical Economic Question" or "When to Use This Model" conditions?

Score each family as:
- **HIGH FIT**: the research puzzle directly maps to this family's canonical question or mechanism
- **MODERATE FIT**: the research shares structural features but differs in key dimension (e.g., different friction type or information structure)
- **LOW FIT / NOT APPLICABLE**: the research has no significant overlap with this family

Retain all HIGH and MODERATE FIT families for the candidate list.

### Step 3 — Identify 2–4 Candidate Families
From the retained families, select 2–4 candidates that best match the research puzzle. For each candidate, provide:

**Candidate [N]: [Family Name]**
- **Fit rationale**: Why this family matches the research question (cite specific sections from the model pattern document: "Canonical Economic Question", "When to Use This Model", or "Main Mechanism")
- **Key structural match**: Which elements of the research (friction type, agent structure, information structure, equilibrium concept) align with this family
- **Potential gap**: What this family does not cover that the research may require
- **Closest canonical ancestor**: The specific model within this family that is most directly related (e.g., "Mussa-Rosen 1978 nonlinear pricing" for a Screening candidate)

### Step 4 — Recommend One Baseline Model
Select ONE family as the recommended baseline. Provide:

**Recommended Baseline: [Family Name]**
- **Primary justification**: One paragraph explaining why this family is the best starting point (be specific about the information structure, timing, and equilibrium concept)
- **Canonical baseline setup**: List the standard primitives, timing, and equilibrium concept from this family that should be adopted as the starting point for Model Primitives (Stage 4)
- **Inheritance list**: What specific primitives, constraints, and solution concepts the research should inherit from the canonical baseline (these will be handed to Stage 4)
- **What must be added or modified**: The one or two features of the research that are not in the canonical model and must be introduced as new elements

### Step 5 — Recommend Extensions
List 1–2 model families that could serve as **extensions** to the baseline, after the core baseline model is established:

**Recommended Extension [N]: [Family Name]**
- Why this extension is natural given the baseline
- What additional mechanism or result it enables
- When to pursue this extension (e.g., "After the baseline characterization is complete, this extension allows analysis of the welfare comparison across information structures")

### Step 6 — Exclude Other HIGH/MODERATE FIT Families
For each family that was HIGH or MODERATE FIT but not selected as a candidate, provide one sentence explaining why it is less suitable than the recommended baseline.

### Step 7 — Relabeling Check
Explicitly assess: **Is the proposed model a superficial relabeling of a classic model?**

A model is a superficial relabeling if:
1. It changes only variable names or context (e.g., "apply the Akerlof lemons model to the X market" without adding a new mechanism)
2. The key result is already available directly from the canonical model without modification
3. The "new" setup can be mapped bijectively to the canonical setup with a renaming key

If the model is a superficial relabeling:
- State this clearly: "RELABELING FLAG: This setup is a direct application of [Model] to [context]. The following new mechanism is required to make this a non-trivial contribution: [specify]."

If the model is NOT a relabeling:
- Identify what is genuinely new: "The following elements are not present in the canonical [Model] and constitute the original contribution: [list]."

### Step 8 — Primitives Inheritance Summary
Provide a structured handoff to Stage 4 (Model Primitives):

```
CANONICAL MODEL MATCH HANDOFF TO STAGE 4
==========================================
Baseline model family:    [Name]
Canonical ancestor:       [Specific paper/model]

Inherit from the canonical model:
  - Agents:               [list what to keep]
  - Timing:               [list the sequence of moves to adopt]
  - Information structure:[list what is standard and what differs]
  - Equilibrium concept:  [the standard concept for this family]
  - Key constraint type:  [IC, IR, budget, resource, etc.]

Modify from the canonical model:
  - [Feature 1]: [how it differs and why]
  - [Feature 2]: [how it differs and why]

New elements not in the canonical model:
  - [Element 1]: [what it adds and why it is needed]
  - [Element 2]: [what it adds and why it is needed]

Confirmed NOT a superficial relabeling: [yes/no — if yes, explain]
```

---

## Output Format

Write `outputs/canonical_model_match.md` with these sections:
1. Research puzzle summary (2-3 sentences)
2. Candidate families (2-4 entries with fit rationale)
3. Recommended baseline (with inheritance list and handoff)
4. Recommended extensions (1-2 entries)
5. Excluded families (one-line rationale each)
6. Relabeling check (explicit yes/no with justification)
7. Primitives inheritance handoff block (structured as above)

---

## Quality Standards
- Every candidate family must cite a specific section of the model pattern document to justify fit
- The relabeling check must be explicit — never leave it implicit
- The handoff block must be specific enough that Stage 4 can begin building primitives without re-reading all prior outputs
- If the research puzzle does not fit any canonical family well (HIGH or MODERATE), say so explicitly and flag this for the researcher (it may mean the research is either highly novel or not well-specified)
- If the research involves human capital, labor, education, automation, or AI-labor interaction, always check `model_library/human_capital_and_labor/` in addition to the general library
