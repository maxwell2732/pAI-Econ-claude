Run the **theoretical-economics-claude-skill** pipeline in an explicitly selected mode.

Parse `$ARGUMENTS` as follows:

1. The **first whitespace-delimited token** is the mode name. Accepted values:
   - `empirical-companion` (or `empirical_companion`)
   - `theory-development` (or `theory_development`, `full`, `full_pipeline`)
2. Everything after that token is the **research input**. It may be:
   - a free-text research brief, or
   - `--task <path>` — read the research input from that file, or
   - `--resume <workspace>` — resume an existing workspace (the mode is read back from
     that workspace's `state.json` and this argument's mode token is ignored).
3. If the first token is not a recognized mode name, do NOT guess. Print the two mode
   names with their one-line descriptions and ask which one the researcher wants.
4. If a mode name is given with no research input, ask for the research input before
   proceeding.

Then read the file `SKILL.md` at the root of this project and follow every instruction in
it exactly, treating the parsed mode as the resolved pipeline mode (see the
`## Mode Routing` section of `SKILL.md`).

Mode: (first token of $ARGUMENTS)

Research input: (remainder of $ARGUMENTS)
