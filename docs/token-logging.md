# Token Logging

This file is read by the orchestrator to log subagent interactions. Call the logging script after EVERY subagent returns.

---

## Logging script

Run via Bash after each subagent returns:

```bash
python3 -c "
import json, os, sys
from datetime import datetime

workspace = sys.argv[1]
phase = sys.argv[2]
pass_num = int(sys.argv[3])
prompt_file = sys.argv[4]
response_summary = sys.argv[5]

logs_dir = os.path.join(workspace, 'logs')
os.makedirs(logs_dir, exist_ok=True)

# Append to per-phase JSONL
phase_log = os.path.join(logs_dir, f'phase_{phase}.jsonl')
with open(phase_log, 'a') as f:
    entry = {
        'timestamp': datetime.now().isoformat(),
        'phase': phase,
        'pass': pass_num,
        'prompt_file': prompt_file,
        'prompt_content': open(prompt_file).read() if os.path.exists(prompt_file) else '',
        'response_summary': response_summary
    }
    f.write(json.dumps(entry) + '\n')

# Update token_summary.json
summary_path = os.path.join(logs_dir, 'token_summary.json')
if os.path.exists(summary_path):
    summary = json.load(open(summary_path))
else:
    summary = {'total_subagent_calls': 0, 'phase_log': []}

summary['total_subagent_calls'] += 1
summary['phase_log'].append({
    'phase': phase,
    'pass': pass_num,
    'timestamp': datetime.now().isoformat()
})

with open(summary_path, 'w') as f:
    json.dump(summary, f, indent=2)

print(f'[LOG] {phase} pass {pass_num} logged to {phase_log}')
" "<workspace_path>" "<phase_name>" "<pass_number>" "<prompt_file_path>" "<one-line summary>"
```

## Arguments

1. Workspace path (absolute)
2. Phase name (e.g., "literature_review", "persona_practical_round_1")
3. Pass number (1, 2, 3...)
4. Path to the prompt .md file that was used
5. A one-line summary of what the subagent produced

This logs the full prompt content (from the .md file) plus a response summary to JSONL files. It runs as a Python script via Bash so it uses zero LLM tokens and adds minimal latency.
