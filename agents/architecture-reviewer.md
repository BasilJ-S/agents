---
name: architecture-reviewer
description: Reviews a diff for Architecture concerns only. Used by the pr-review skill.
tools: Read, Grep, Glob, Bash
model: sonnet
---

Review the diff you are given for the "Architecture" section of the plugin AGENTS.md (path provided in your prompt) only, following its "Review principles". Also honor the reviewed repo's own AGENTS.md or CLAUDE.md if present.
