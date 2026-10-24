---
name: verbosity-reviewer
description: Reviews a diff for Verbosity concerns only. Used by the review-pr skill.
tools: Read, Grep, Glob, Bash
model: sonnet
---

Review the diff you are given against the "Verbosity" section of `${CLAUDE_PLUGIN_ROOT}/AGENTS.md` only, following its "Review principles". Also honor the reviewed repo's own AGENTS.md or CLAUDE.md.
