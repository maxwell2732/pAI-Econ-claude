# Persona Council Details (Stage 3)

This file documents Stage 3 of the pipeline (Theory Persona Council). The authoritative execution instructions live in `prompts/03-persona-council.md`; this file exists for human readers who want to understand the design.

---

## Overview

Stage 3 convenes a **five-persona review council** that evaluates the research puzzle and literature positioning from five distinct expert perspectives. The council runs **two rounds** before producing a synthesis recommendation.

---

## The Five Personas

| Persona | Background | Mission |
|---------|-----------|---------|
| **Mechanism Theorist** | Senior researcher in contract theory, mechanism design, and information economics | Evaluate whether the mechanism or result is economically interesting and theoretically sound |
| **Mathematical Referee** | Associate editor at a top theory journal | Assess whether the research puzzle is likely to yield to formal analysis with existing mathematical tools |
| **Economic Intuition Referee** | Senior faculty known for strong economic judgment | Determine whether the proposed research will generate genuine economic insight |
| **Journal Positioning Referee** | Former area editor at Econometrica and AER | Assess what journal this paper could realistically target and what is needed to get there |
| **Brutal Skeptic** | Anonymous referee known for rigorous skepticism | Find every reason this research might fail, be wrong, or be uninteresting |

The **Brutal Skeptic's** role is not to support the project but to attack it. A REJECT from the Brutal Skeptic carries extra weight in the synthesis rules. An ACCEPT from the Brutal Skeptic is meaningful — it means the research passed the hardest test.

Each persona issues one of three verdicts: **ACCEPT | CONCERN | REJECT**.

---

## Round Structure (2 rounds)

### Round 1 — Independent Evaluation

Each persona evaluates the research puzzle independently, without seeing the other personas' assessments. Each produces:

- A paragraph-length assessment (3–5 sentences)
- A numbered list of 2–4 specific concerns or questions
- A verdict: ACCEPT / CONCERN / REJECT
- One concrete suggestion for strengthening the research

### Round 2 — Cross-Evaluation and Synthesis

Each persona reads all Round 1 verdicts and responds:

- If their own verdict is challenged by another persona, address the challenge directly
- If another persona raised a concern they missed, either endorse it or explain why they disagree
- Finalize their Round 2 verdict (may change from Round 1)

The **Synthesis** section then integrates the five Round 2 verdicts into a unified recommendation.

---

## Synthesis Rules

After Round 2:

- **4–5 personas ACCEPT → Strong Accept:** Proceed with high confidence
- **3 ACCEPT, rest CONCERN → Conditional Accept:** Proceed, but address concerns in Stage 4
- **2 ACCEPT → Weak Accept:** Proceed, but flag specific concerns as open risks
- **2+ REJECT → Reject:** Do NOT proceed to Stage 4 without researcher input; present the rejection with specific reasons; researcher must decide whether to revise the puzzle (go back to Stage 1) or override

The Brutal Skeptic's REJECT carries extra weight: a Brutal Skeptic REJECT combined with a CONCERN from another persona is treated as a "Weak Accept" rather than a normal acceptance.

---

## Artifacts Produced

- `outputs/persona_council.md` — full council transcript: Round 1 evaluations, Round 2 cross-evaluations, and final synthesis
- HiL-3 checkpoint follows Stage 3; see `SKILL.md` for the checkpoint format

---

## Human Checkpoint (HiL-3)

After Stage 3, the pipeline pauses for researcher review. The HiL-3 format presents a verdict summary for all five personas and the council synthesis, then asks the researcher to APPROVE, OVERRIDE a specific verdict, or REVISE the puzzle.

See `SKILL.md § HiL-3` for the exact checkpoint template.
