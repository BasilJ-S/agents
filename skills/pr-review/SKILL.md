---
name: pr-review
description: Review a PR or the current diff with four parallel reviewers (verbosity, architecture, DRY, correctness).
---

1. Get the diff: the PR named in the arguments, else the current branch against its base.
2. In one message, launch the `verbosity-reviewer`, `architecture-reviewer`, `dry-reviewer` and `correctness-reviewer` agents in parallel. Give each the diff (or how to get it) and the absolute path of this plugin's `AGENTS.md` (two directories up from this skill's base directory).
3. Merge their findings, drop duplicates and anything you can't verify, and report them grouped by reviewer, most severe first.
