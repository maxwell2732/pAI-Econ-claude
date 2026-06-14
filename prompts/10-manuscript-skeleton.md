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

Produce `outputs/manuscript_skeleton.md`.

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
