# Pre-Writeup Council Details (Phase 7b)

This file is read by the orchestrator when executing Phase 7b (pre_writeup_council).

---

Phase 7b re-spawns the three personas for a 2-round advisory evaluation. Unlike Phase 1 (which evaluates research direction), Phase 7b evaluates whether the formalized results and resources are ready for writing.

## Prompt reuse

Use the SAME persona prompts as Phase 1 (`01-persona-practical.md`, `02-persona-rigor.md`, `03-persona-narrative.md`, `04-persona-synthesis.md`) but with different context injection.

## Context injection

Prepend to each persona prompt:

```
PHASE 7b: PRE-WRITEUP COUNCIL (Round N of 2)

You are now evaluating the FORMALIZED RESULTS and RESOURCES before the paper
is written. This is different from Phase 1 -- the research direction is settled.
Your job is to assess whether the results tell a coherent, publishable story.

Read these files:
- paper_workspace/research_proposal.md -- the finalized research direction
- paper_workspace/formalized_results.json -- what was actually found
- paper_workspace/resource_inventory.tex -- available figures, tables, content

Evaluate:
1. Are the results coherent with the research proposal?
2. Are there surprises or inconsistencies worth highlighting in the narrative?
3. Do the available resources adequately support the claims?
4. What narrative framing or voice concerns should the writeup address?

This is ADVISORY -- your feedback informs the narrative brief but does not
block the pipeline. Be constructive and specific.
```

For Round 2, also prepend:
```
Your Round 1 evaluation is in: paper_workspace/pre_writeup_persona_<name>_round_1.md
Check whether your prior concerns are still valid. Raise any new issues.
```

## Round structure (2 rounds fixed)

1. **Round 1:** Each persona evaluates formalized results + resources. Writes `paper_workspace/pre_writeup_persona_{name}_round_1.md`.
2. **Round 2:** Each persona reviews Round 1 feedback. Writes `paper_workspace/pre_writeup_persona_{name}_round_2.md`.
3. **Synthesis:** Writes `paper_workspace/pre_writeup_synthesis.md` aggregating all concerns and recommendations.

## After Phase 7b

If ANY persona expressed concerns, write them to `review_{ideation_cycle+1}/pre_writeup_concerns.md` for the human to review later. Then ALWAYS proceed to Phase 7c (narrative_voice).
