---
name: issue
description: Write or update a GitHub issue in the standard format - what, scope, EARS requirements, steps, lessons learned. Use when creating, updating or closing an issue.
---

Every issue has these sections, in order:

```markdown
## What
The problem or goal, in a few sentences.

## Scope
In scope and out of scope, as bullets.

## Requirements
EARS, one per line, numbered so PRs can cite them:
- R1. The <system> shall <response>.
- R2. When <trigger>, the <system> shall <response>.
- R3. While <state>, the <system> shall <response>.
- R4. Where <feature is included>, the <system> shall <response>.
- R5. If <unwanted condition>, then the <system> shall <response>.

## Steps
- [ ] Ordered checklist; tick as you go.

## Lessons learned
What surprised us or went wrong, and the skill or AGENTS.md line it should become.
```

Before closing an issue, fill in "Lessons learned" and open a PR that adds each lesson to the skill or `AGENTS.md` it names.
