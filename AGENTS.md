# AGENTS.md (agent-kit)

Generic working rules, loaded into every session by this kit's SessionStart hook. Project rules live in each project's own `AGENTS.md` and win on conflict. Skills, roles and agents reference sections here; do not restate them.

## Working rules

- Work on a branch and open a **draft** pull request. Never push to `main`.
- Nobody merges their own work. Only the maintainer merges, squashing unless asked otherwise, and deletes the branch.
- Do not commit, push or merge without the maintainer's go-ahead for that change.
- Fix warnings and failing checks; never silence or skip them.
- Commit messages: imperative one-line summary, body explains why.
- This repo is public. Never commit secrets, tokens or personal data.

## Roles

- **Implementer**: `roles/implementer.md`
- **Planner**: `roles/planner.md`
- **Maintainer**: the human. Merges.

## Review principles

Report only real problems, with `file:line`, a one-line why, and a concrete fix. No praise, no summaries of the diff.

### Verbosity
Less code and fewer words for the same behaviour. Flag dead code, needless abstraction, defensive checks for impossible cases, and comments or docs that restate the code.

### Architecture
Code lives where it belongs and depends in the right direction. Flag leaky boundaries, misplaced logic, and changes that fight the existing structure.

### DRY
One source of truth. Flag duplicated logic, constants, or docs, including duplication of something that already exists elsewhere in the repo.

### Correctness
It does what it claims. Flag bugs, unhandled edge cases, broken invariants, and missing tests for changed behaviour. Trace a real path to each failure.
