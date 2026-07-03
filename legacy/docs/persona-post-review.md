# Persona Post-Review Details (Phase 11)

This file is read by the orchestrator when executing Phase 11 (persona_post_review). Phase 11 is THE VERY LAST STEP -- only reached after the validation gate PASSES.

---

The three personas are re-spawned to review the COMPLETED, VALIDATED paper. They run 2 debate rounds on the actual final_paper.tex.

## Context injection

Prepend to each persona prompt:

```
PHASE 11: POST-REVIEW ASSESSMENT

You are now reviewing the COMPLETED paper, not a research proposal.
Read the full paper at paper_workspace/final_paper.tex.
Also read paper_workspace/review_verdict.json for the reviewer's score and feedback.

Your task: evaluate the FINISHED paper from your persona's perspective.
Is this ready for submission? What would you change?
```

## Round structure

Each persona reads final_paper.tex and writes their assessment to `paper_workspace/post_review_persona_<name>_round_<N>.md`.

After 2 rounds, synthesis writes `paper_workspace/post_review_synthesis.md` with each persona's final ACCEPT/REJECT verdict.

## Narrative Architect veto

Track the veto count using `narrative_veto_count` in state.json. Increment it each time the Narrative Architect rejects.

- **ALL THREE accept**: DONE. Set finished = true. Print completion banner.
- **Narrative Architect REJECTS (narrative_veto_count == 1)**: Loop back to Phase 8 (writeup) with the Narrative Architect's feedback injected. Then re-run proofreading (Phase 9), reviewer (Phase 10), validation gate, and persona_post_review again.
- **Narrative Architect REJECTS (narrative_veto_count >= 2)**: Do NOT loop back. Write all remaining concerns to `review_{ideation_cycle+1}/`:
  - `review_N/narrative_concerns.md`
  - `review_N/practical_concerns.md`
  - `review_N/rigor_concerns.md`
  - `review_N/reviewer_concerns.md`
  Set finished = true. Print completion banner. Human takes over.
- **Practical or Rigor reject but Narrative accepts**: Concerns saved to `review_N/` but do NOT block. Set finished = true.

All persona post-review outputs are saved to `review_{ideation_cycle+1}/` so they're available for the human's review and the next cycle.

## After Phase 11

Proceed to `milestone_review` (final human checkpoint). Print the review_verdict.json summary AND the persona post-review synthesis. If running autonomously, auto-proceed. Then set finished = true.
