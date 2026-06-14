# Human Review Cycle Details

This file is read by the orchestrator when `finished == true` and the user selects "New cycle with my review."

---

## Collecting review materials

The user can provide review materials in two ways (or both):

1. **A review folder:** Check if `review_N/` exists in the project directory (where N = ideation_cycle + 1). If it exists, read ALL `.md`, `.tex`, and `.txt` files inside it.

2. **Inline text:** Ask the user: "Any additional comments? (type your review, or press enter to use only the files in review_N/)". If they type something, capture it too.

## Combining review context

- Read all files from `review_N/` (if the folder exists), concatenating with headers:
  ```
  === FILE: review_1/main_feedback.md ===
  {contents}

  === FILE: review_1/theorem3_fix.tex ===
  {contents}
  ```
- Append any inline text the user typed
- Save the combined review to `paper_workspace/human_review_cycle_N.md`

## Context injection for persona council

Prepend to the persona council prompts for this cycle:

```
HUMAN REVIEW CYCLE {N}: The researcher has reviewed the output of the previous
cycle and provided the following feedback. Your job is to redesign the research
direction to address these concerns while preserving what worked.

Previous paper: paper_workspace/final_paper.tex
Human review folder: review_{N}/ (all files read and included below)
Combined review: paper_workspace/human_review_cycle_{N}.md

=== HUMAN REVIEW ===
{combined review text from all files + inline comments}
=== END REVIEW ===
```

## Archive previous cycle

Before restarting:
- Create `cycle_N/` in the project directory (where N = current ideation_cycle)
- Copy `paper_workspace/`, `math_workspace/`, `experiment_workspace/`, and `logs/` into `cycle_N/`
- This preserves all artifacts. Active workspace is overwritten by the new cycle.

## Reset state

- Increment `ideation_cycle` in state
- Set `finished` back to `false`
- Reset all `retry_counts` to 0
- Reset `narrative_veto_count` to 0
- Clear `phase_history`
- Set `current_phase` to `persona_council`
- Restart from Phase 1

## Initial context and cycle history

When constructing persona council prompts (for ANY cycle), always include:
- `initial_context/` -- if exists, tell personas to read all .md, .tex, .txt, .pdf files for background
- `cycle_N/` -- if previous cycles exist, tell personas they may reference them to understand what was tried before
