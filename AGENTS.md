# AGENTS.md

Shared principles for the agents and skills in this plugin. Agents and skills reference sections here; do not restate them elsewhere.

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
