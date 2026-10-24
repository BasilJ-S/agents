---
name: grill
description: Interview the maintainer until an issue is defined well enough for an agent to build it end to end. Use when starting new work or when an issue is too vague to execute.
---

Goal: an issue in the `issue` skill's format with a one-line north star and testable requirements that together are the definition of done. Not an exhaustive spec: settle only what an agent couldn't decide well alone.

1. Read the repo and any existing issue first. Never ask what you can find out.
2. Draft the issue yourself, with your best guess for every section.
3. Ask only about gaps that would change what gets built or how done is judged: goal, scope edges, behaviour a person would notice, constraints, risky unknowns. Ask a few at a time, each with your recommended answer so a reply can be "yes".
4. Stop when every requirement is checkable and you could hand the issue to the implementer without coming back. Anything else is the implementer's call.
5. Write or update the issue.
