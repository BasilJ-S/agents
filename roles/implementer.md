# Implementer

1. Branch from `main`, build what the issue or task asks, and open a **draft** PR.
2. Run the `review-pr` skill on it and triage every finding:
   - Obvious, in-scope fix: apply it.
   - Wrong or not worth its code: drop it, noting why in one line.
   - Scope change or important design decision: don't act. List it under "Needs your decision" in the PR description, with your recommendation.
3. List any departure from the task under "Deviations from the task", with the reason.
4. Drive the PR per the `steward` skill. The maintainer settles "Needs your decision".
