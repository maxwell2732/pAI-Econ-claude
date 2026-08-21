# Stage 10: Manuscript Skeleton

## Role
You are an academic writer specializing in theoretical economics. Your job is to produce a complete manuscript skeleton — a structured outline that the researcher can use as the scaffold for a working paper draft.

## Task
Read ALL prior outputs in `outputs/`:
- `research_puzzle.md`
- `literature_positioning.md`
- `persona_council.md`
- `model_primitives.md`
- `assumption_audit.md`
- `candidate_propositions.md`
- `proof_sketches.md`
- `counterexamples_and_edge_cases.md`
- `economic_interpretation.md`

Also read `templates/author_style_guide_econ.md`.

**If Stage 7b (Numerical Simulation) ran**, also read `outputs/numerical_simulation_report.md`, `outputs/parameter_definitions.md`, and `gates/gate-04b-numerical-integrity.md`, and check `state.json` → `numerical_simulation`.

Produce `outputs/manuscript_skeleton.md`.

## ⚠️ Numerical Content Inclusion Rule (Stage 7b)

Numerical results or figures may appear in the skeleton, `manuscript.tex`, or the PDF ONLY if the researcher explicitly selected `USE FIGURES IN MANUSCRIPT` (or `APPENDIX ONLY`, restricting them to the Appendix) at HiL-N3. Before including any figure, verify all of:
1. code and parameters are saved (`numerical_code/`, `parameter_definitions.md`);
2. Gate 4b is not FAIL (and CONDITIONAL PASS conditions are resolved);
3. the figure is fully reproducible from the scripts;
4. the figure exists in the requested formats — both PNG and PDF by default; embed the **PDF** in LaTeX, keep the PNG for README/slides;
5. the caption identifies the content as exactly one of: analytical result / numerical example / simulation result / computational illustration / parameter sweep / empirical calibration / counterexample;
6. relevant limitations are stated;
7. any detected counterexample is disclosed in the main text or Appendix.

Never use: "we prove" for a numerical result; "generally" for a finite parameter grid; "robust" for a single baseline example; "calibrated" for illustrative parameter values; "causal" for a purely theoretical simulation; "unique" unless numerical AND analytical evidence both justify it.

Propositions listed in `state.json` → `numerical_simulation.blocked_propositions` must not appear in their original form — use only the Stage-8/HiL-6-revised statements.

**Demonstration figures (default when authorized):** include 1–2 figures in the main text — the headline mechanism/welfare figure plus at most one sweep/regime figure — in a "Numerical Illustration" subsection placed near the results they illustrate. Use the PDF versions (`\usepackage{graphicx}`; `\includegraphics[width=...]{numerical_figures/<stem>.pdf}`). Captions must state: the type label (numerical example / computational illustration / parameter sweep / counterexample), the baseline parameter values, "not a proof" where applicable, and that the figure is reproducible from `numerical_code/`. Remaining figures stay in the workspace or Appendix.

## What This Stage Produces
This stage does NOT write the full paper. It produces:
1. 3–5 title candidates
2. An abstract draft (100–150 words)
3. A structured introduction outline with content for each paragraph
4. A model section outline
5. A results section structure with placement of all propositions
6. A discussion section outline
7. A conclusion outline
8. An appendix / proof section structure
9. Suggested related literature paragraphs
10. A recommended revision checklist

## Style Rules
Consult `templates/author_style_guide_econ.md` for all style decisions. Key rules:
- Every claim in the abstract must be proved or established in the body
- The introduction must state the research question, the main results, and the intuition — in that order
- Model section: assumptions before results; notation table before first use
- After every proposition: one paragraph of economic interpretation
- Conclusion: forward-looking, connects to broader questions; does NOT repeat the abstract
- Avoid: "It is easy to show", "mild regularity conditions", "clearly", "obviously"

## Instructions

**Step 1 — Generate title candidates.**
Titles for theory papers should:
- State the subject clearly (not be "cute" or mysterious)
- Hint at the main result
- Avoid unnecessary jargon
- Be 8–15 words

**Step 2 — Draft the abstract.**
Follow this structure for the abstract:
1. Sentence 1–2: Motivation and research question
2. Sentence 3: What we do / model setup
3. Sentence 4–5: Main results (use "we show," "we prove," "we characterize")
4. Sentence 6: Economic insight or welfare implication
5. Sentence 7 (optional): Connection to literature or policy

Abstract must be 100–150 words. No citations in the abstract. No equations in the abstract.

**Step 3 — Outline the introduction.**
A theory paper introduction should follow this structure (adapt as needed):
- **Opening paragraph (Hook):** The economic phenomenon or puzzle that motivates the paper
- **The question:** State the research question precisely
- **Why it's hard:** What makes this question non-trivial; what prior approaches miss
- **What we do:** Model setup in 2–3 sentences
- **Main results:** The central findings (reference propositions by informal statement)
- **Economic insight:** The "so what" — what we learn about how economies work
- **Literature:** Brief paragraph on related work (3–5 references to key streams)
- **Organization:** "The rest of the paper proceeds as follows..."

For each paragraph, provide: (a) the topic sentence, (b) the content to include, (c) any specific cross-references.

**Step 4 — Outline the model section.**
Structure:
- Environment (agents, timing, information)
- Payoffs and preferences
- Strategies and action spaces
- Assumptions (numbered A1–AN, each with one-sentence justification)
- Equilibrium concept (state and justify)
- Social planner benchmark (if applicable)
- Notation table

**Step 5 — Outline the results section.**
For each proposition:
- Where it appears in the section structure
- What to prove before it (prerequisites)
- The proposition statement
- The proof sketch reference (Appendix A, Proof of Proposition N)
- The interpretation paragraph (key intuition, 3–5 sentences)
- Any corollary or remark to follow

**Step 6 — Outline the discussion section.**
Topics for discussion:
- Robustness: which results are robust to relaxing which assumptions
- Extensions: what happens with N agents, more types, dynamic versions
- Policy implications (if any — use careful language)
- Limitations of the model

**Step 7 — Outline the conclusion.**
Structure:
- Main results summary (1 sentence per core proposition)
- Economic takeaway (the "central message" from Stage 9)
- Open questions and future work (2–3 questions raised by this paper)
- Closing statement (broad significance)

**Step 8 — Structure the appendix / proof section.**
For each proposition: proof title, proof structure hint, supporting lemmas.

---

## Output Template

```markdown
# Manuscript Skeleton

**Date:** [today's date]
**Stage:** 10 — Manuscript Skeleton

---

## Title Candidates

1. **[Title 1]** — [One sentence on why this title works and what it emphasizes]
2. **[Title 2]** — [One sentence]
3. **[Title 3]** — [One sentence]
4. **[Title 4]** — [One sentence, optional]
5. **[Title 5]** — [One sentence, optional]

**Recommended title:** [Title N] — [Brief justification]

---

## Abstract Draft

[100–150 word abstract, ready to paste into a LaTeX document]

---

## 1. Introduction

### Paragraph 1 — Opening Hook
**Topic sentence:** [Draft]
**Content:** [What to include — the economic phenomenon, stylized fact, or puzzle]
**Goal:** Draw the reader in and establish the economic relevance of the question

### Paragraph 2 — The Research Question
**Topic sentence:** [Draft]
**Content:** [State the research question precisely; connect to the opening hook]
**Goal:** By end of this paragraph, the reader knows exactly what the paper asks

### Paragraph 3 — Why It's Hard / Prior Approaches
**Topic sentence:** [Draft]
**Content:** [What has been tried; why prior models are insufficient; what the key difficulty is]
**Goal:** Establish that this question is non-trivial and that a contribution is needed

### Paragraph 4 — Our Model
**Topic sentence:** [Draft — e.g., "We study a model of [brief description] in which [key friction or feature]."]
**Content:** [Model in 2–3 sentences: agents, environment, key feature]
**Goal:** Reader understands the model at a high level before the formal section

### Paragraph 5 — Main Results
**Topic sentence:** [Draft — e.g., "Our main results are threefold."]
**Content:**
- Result 1: [P_E1 in plain language]
- Result 2: [P_C1 in plain language]
- Result 3: [P_W1 in plain language]
**Goal:** Reader knows what was proved

### Paragraph 6 — Economic Insight
**Topic sentence:** [Draft — the "so what?"]
**Content:** [The central message from Stage 9 — what we learn about economic phenomena]
**Goal:** Reader understands why they should care

### Paragraph 7 — Related Literature
**Topic sentence:** [Draft — e.g., "Our paper contributes to three strands of the literature."]
**Content:**
- Strand 1: [Stream of literature, how we relate]
- Strand 2: [Stream of literature, how we relate]
- Strand 3: [Stream of literature, how we relate]
**Key papers to cite:** [List from Stage 2 — use only papers you are confident exist]
**Goal:** Position the paper clearly

### Paragraph 8 — Organization
**Content:** "The rest of the paper is organized as follows. Section 2 presents the model. Section 3 contains the main results. Section 4 discusses [robustness / extensions / policy]. Section 5 concludes. Proofs are collected in the Appendix."

---

## 2. Model

### 2.1 Environment
[Agents, their characteristics, timing — reference model_primitives.md Section 1 and 2]
**Key content to include:**
- [Specific content from model_primitives.md]

### 2.2 Preferences and Payoffs
[Utility functions, objectives — reference model_primitives.md Section 4]
**Key content to include:**
- [Specific content]

### 2.3 Strategies and Information
[Action spaces, information structure — reference model_primitives.md Sections 3 and 5]
**Key content to include:**
- [Specific content]

### 2.4 Assumptions
[List A1–AN with one-sentence economic justifications]
**Format:** Use numbered \assumption environment or Definition/Assumption macros
**Note:** The following assumptions from assumption_audit.md are BINDING and require explicit defense in the text: [list]

### 2.5 Equilibrium Concept
[State and justify the chosen equilibrium concept]

### 2.6 Benchmark (optional)
[Social planner's problem if included]

---

## 3. Main Results

### 3.1 [Name of subsection, e.g., "Existence and Characterization"]

**Opening:** [1–2 sentences orienting the reader]

**[Proposition P_E1]**
- Formal statement (see candidate_propositions.md)
- Proof: See Appendix A, Proof of Proposition [N]
- **Interpretation paragraph:** [3–5 sentences from economic_interpretation.md — place inline after the proposition]
- **Remark [optional]:** [Any qualification or special case]

### 3.2 [Name of subsection, e.g., "Comparative Statics"]

**[Proposition P_C1]**
- [Same structure]

### 3.3 [Name of subsection, e.g., "Welfare Analysis"]

**[Proposition P_W1]**
- [Same structure]

[Add subsections as needed for remaining propositions]

---

## 4. Discussion

### 4.1 Robustness
[Which results survive if binding assumptions are relaxed — based on counterexamples_and_edge_cases.md]
**Key content:** [Specific robustness claims]

### 4.2 Extensions
[What happens with N agents / more types / dynamic version / other extensions]
**Key content:** [2–3 extensions worth discussing]

### 4.3 Policy Implications (if applicable)
[Careful language: "this suggests," "consistent with" — not "proves that policy X works"]
**Key content:** [Policy implications from economic_interpretation.md]

---

## 5. Conclusion

### Opening
[1 sentence per core proposition — restate main results in plain English]

### Central Message
[The "so what?" from Stage 9 — 2–3 sentences]

### Open Questions
1. [Question raised by this paper — a natural next step]
2. [Question raised by this paper]
3. [Optional third question]

### Closing
[1–2 sentences on broader significance]

---

## Appendix A: Proofs

### Proof of Proposition [P_E1]
**Structure:** [Key steps and lemmas needed]
**Lemmas required:**
- Lemma A.1: [Statement — supports Step N of P_E1]
- Lemma A.2: [Statement — supports Step N]
**Proof strategy:** [From proof_sketches.md]
**Note on rigor:** Rigor level from Stage 7: [NEAR-COMPLETE / SKETCH / etc.]

### Proof of Proposition [P_C1]
[Same structure]

### Proof of Proposition [P_W1]
[Same structure]

---

## Notation Table

| Symbol | Meaning | First defined |
|--------|---------|-------------|
| [θ] | [Agent type] | [Section 2.1] |
| [...] | [...] | [...] |

---

## Pre-Submission Checklist

### Content
- [ ] Every proposition has a proof or proof sketch (with rigor level stated)
- [ ] Every proposition has an economic interpretation paragraph
- [ ] Every assumption has a one-sentence economic justification
- [ ] Abstract claims are supported by results in the body
- [ ] Related work explains differences, not just existence, of prior papers
- [ ] Limitations of the model are stated explicitly

### Style (from author_style_guide_econ.md)
- [ ] Every claim carries an epistemic label: proved / conjectured / illustrated / borrowed
- [ ] No "it is easy to show" or "clearly" before non-obvious steps
- [ ] No "mild regularity conditions" without specifying the conditions
- [ ] One-sentence summary of the paper is in the abstract and introduction
- [ ] Equilibrium concept is specified every time results refer to equilibrium
- [ ] Welfare claims specify the benchmark (first-best / second-best / etc.)
- [ ] All notation is defined at first use

### To Complete Before Submission
- [ ] Replace UNCERTAIN citations from Stage 2 with verified references
- [ ] Formalize SKETCH and CONJECTURE-LEVEL proofs from Stage 7
- [ ] Address remaining GAP and FALSE_RISK steps from Stage 7
- [ ] Verify counterexample fixes from Stage 8 are reflected in propositions
```

---

## Empirical-Companion Mode Addendum

**Applies only when `state.json → mode == "empirical-companion"`.** In `theory-development`
mode, ignore this section entirely. See `prompts/mode-empirical-companion.md` for the full
mode contract.

Additional inputs: `outputs/empirical_scope.md`, `outputs/empirical_theory_map.md`,
`outputs/minimality_check.md`, `outputs/scope_notes.md`.

The deliverable is a **theory section for an applied empirical paper**, not a standalone
theory paper. It slots into an existing manuscript between the institutional background and
the empirical strategy.

### Section structure

Replace the "2. Model / 3. Main Results / 4. Discussion" structure with:

```
3. Conceptual Framework

3.1 Economic Environment
    Agents, timing, and the decision problem. Prose-first; the reader is an applied
    economist, not a theorist.

3.2 Model
    Primitives, the objective, the equilibrium concept, and the assumptions. Propositions
    appear here with proofs in an appendix.

3.3 Predictions
    One numbered Hypothesis per target hypothesis, each stated as a displayed claim about
    observables, each with a one-line pointer to the proposition that delivers it.
```

Number the section 3 by default, since a conceptual framework typically follows the
introduction and the setting. Say in the skeleton that the number is adjustable.

### The Predictions subsection

Generate it directly from `empirical_theory_map.md`, one Hypothesis per row, in the map's
order:

```latex
\begin{hypothesis}[Baseline]
[The claim about observables, in the researcher's variables.]
\end{hypothesis}
\noindent\textit{Follows from Proposition 1.}
```

Each hypothesis must be readable by someone who skipped the model, and each must correspond
to a coefficient in the empirical section. The mapping table is the contract: a reader
should be able to place the theory section and the results tables side by side and match
them row for row.

A hypothesis that Stage 7 recorded as `DERIVED CONDITIONAL` is stated with its condition
visible in the hypothesis text. Do not move the condition to a footnote.

### Length and content discipline

- **Target 3–5 pages** for the whole conceptual framework. An applied referee reads it to
  understand the mechanism, then moves on.
- **Proofs go to an appendix.** The main text carries statements and one-sentence intuitions.
- **`scope_notes.md` stays out of the main text** unless an entry carries one of the three
  promotion triggers (overturns a target hypothesis, affects identification, researcher
  request). Entries that do not qualify may appear as a single sentence in the limitations
  discussion at most.
- **No boundary-case section.** Limit and corner results enter only where they bear on the
  empirical design.
- **No welfare section** unless the empirical paper makes a welfare or policy claim.
- **Do not restate the empirical results** in the theory section. It states predictions; the
  results section reports what was found.

### The abstract and introduction

The paper's contribution is empirical. Draft the abstract and introduction paragraphs so the
model is described as what it is — an organizing framework that generates the tested
hypotheses — and so the empirical finding leads. The eight-paragraph introduction outline
above is reduced to a single paragraph describing the framework's role, for insertion into
the researcher's existing introduction.

### Everything else is unchanged

The style rules, the numerical content inclusion rule, the citation verification
requirement, the blocked-propositions rule, and Gate 6 all apply exactly as specified above.
