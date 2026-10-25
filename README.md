# agent-kit

My reusable agent setup for Claude Code (Mac and cloud) and Codex: shared working rules, roles, and skills for driving and reviewing PRs. Project rules stay in each project's own `AGENTS.md`. Public repo: no secrets, tokens or personal data.

The repo root is one plugin, `core`, in the marketplace `agent-kit`. Both tools read its `.claude-plugin/` manifests.

| Path | What | Used by |
| - | - | - |
| `AGENTS.md` | Generic working rules and review principles | Both, via the SessionStart hook |
| `skills/` | `grill`, `issue`, `steward`, `start-task`, `review-pr`, `visualize` | Both |
| `roles/` | Plain role prompts: implementer, planner | Both |
| `agents/` | Claude subagents: the two roles plus four Sonnet reviewers | Claude |
| `hooks/hooks.json` | SessionStart: loads `AGENTS.md` | Both |
| `codex/` | Codex install notes and role installer | Codex |

## Install

Once per machine or cloud environment, not per session. On your Mac, or as a cloud environment's setup script (Claude at claude.ai/code, Codex in its environment settings):

```
curl -fsSL https://raw.githubusercontent.com/BasilJ-S/agents/main/bootstrap.sh | sh
```

It installs the plugin for whichever of Claude Code and Codex is present, plus the Codex roles. Re-running is safe. Set `AGENT_KIT_REF=<branch>` to install from a branch.

A repo's `.claude/settings.json` `enabledPlugins` does not install plugins in Claude cloud sessions, so use the setup script there.

Add a one-line `CLAUDE.md` containing `@AGENTS.md` to a project so Claude also loads the project's own `AGENTS.md`.

## Codex

See [codex/README.md](codex/README.md).
