---
name: issue
description: Write or update a GitHub issue in the standard format - what, scope, EARS requirements, steps, lessons learned. Use when creating, updating or closing an issue.
---

Every issue has these sections, in order:

```markdown
## What
North star: one line on the outcome.
The problem or goal, in a few sentences.

## Scope
In scope and out of scope, as bullets.

## Requirements
EARS, one per line, numbered so PRs can cite them. Together they are the definition of done:
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

Keep the issue body current: it always states the latest design, so edit it whenever a decision changes it. Record each decision as a comment of a few sentences at most: the decision, the options considered, and why.

Before closing an issue, fill in "Lessons learned" and open a PR that adds each lesson to the skill or `AGENTS.md` it names.
