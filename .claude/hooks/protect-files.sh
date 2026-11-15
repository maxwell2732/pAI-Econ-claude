#!/usr/bin/env bash
# PreToolUse hook on Edit|Write for pAI-Econ-claude.
#
# Enforces two rules the skill states but previously had no way to enforce:
#   1. `initial_context/hypothesis.md` is never modified after it is written
#      (SKILL.md, Implementation Notes).
#   2. Stage 7b simulation code never overwrites a human-authored file or an
#      earlier pipeline artifact (prompts/07b-numerical-simulation.md, §4 req. 11).
#
# Protocol: reads the tool call as JSON on stdin. Exit 0 allows the call.
# Exit 2 blocks it and returns stderr to the model as feedback.
#
# Fails open on anything it cannot parse. A hook that blocks the pipeline
# because it could not read its own input is worse than no hook.

set -uo pipefail

payload="$(cat 2>/dev/null || true)"
[ -z "$payload" ] && exit 0

# Extract the target path. Prefer jq; fall back to a narrow grep.
if command -v jq >/dev/null 2>&1; then
  target="$(printf '%s' "$payload" | jq -r '.tool_input.file_path // empty' 2>/dev/null || true)"
else
  target="$(printf '%s' "$payload" | tr ',' '\n' \
            | grep -o '"file_path"[[:space:]]*:[[:space:]]*"[^"]*"' \
            | head -1 | sed 's/.*"file_path"[[:space:]]*:[[:space:]]*"//; s/"$//')"
fi
[ -z "$target" ] && exit 0

# Normalize separators so Windows and POSIX paths compare alike.
norm="$(printf '%s' "$target" | tr '\\' '/')"

block() {
  printf 'BLOCKED by .claude/hooks/protect-files.sh\n\n%s\n\n%s\n' "$1" "$2" >&2
  exit 2
}

# ---- Rule 1: the raw hypothesis is immutable ----------------------------------
case "$norm" in
  */initial_context/hypothesis.md)
    if [ -f "$target" ]; then
      block "initial_context/hypothesis.md already exists and is never modified after it is written." \
            "If the research input needs to change, record the change in logs/stage-log.md and in the relevant stage output. The verbatim user input stays as it is."
    fi
    ;;
esac

# ---- Rule 2: verification evidence is append-and-amend, never rewritten -------
# A derivation or counterexample artifact that already exists is evidence of what
# was checked. Replacing one silently rewrites the audit trail.
case "$norm" in
  */verification/derivations/*|*/verification/counterexamples/*|*/verification/numerical/*)
    if [ -f "$target" ]; then
      block "This verification artifact already exists: $norm" \
            "Verification evidence is append-and-amend. Add a dated section to the existing file, or write a new file with a distinct name. Do not replace a recorded derivation."
    fi
    ;;
esac

# Deliberately NOT enforced here: a guard against whole-file Write over a
# completed stage artifact such as candidate_propositions.md. A gate failure
# with LOOP BACK TO STAGE 6 legitimately re-runs that stage and rewrites its
# output, so such a guard would block normal operation. The record of what
# changed is kept by git and by verification_record.json, where a rewritten
# claim's status resets to NOT VERIFIED on its claim_text_sha256.

exit 0
