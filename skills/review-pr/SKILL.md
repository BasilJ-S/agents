---
name: review-pr
description: Planner-style PR review against the plan and task acceptance criteria, with verbosity, architecture, DRY and correctness passes.
---

1. Get the PR diff, its task in `docs/tasks/` and `docs/PLAN.md` if present.
2. Run the four "Review principles" passes from this kit's `AGENTS.md` (two folders above this skill). If you can launch subagents, run `verbosity-reviewer`, `architecture-reviewer`, `dry-reviewer` and `correctness-reviewer` in parallel; otherwise do each pass yourself.
3. Check the diff against each acceptance criterion.
4. Drop duplicates and anything you can't verify. Write one review: **Must change before merge**, then **Accepted as written**. Post it as a PR comment when asked to, else return it.
