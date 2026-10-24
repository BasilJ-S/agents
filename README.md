# agent-kit

My reusable agent setup for Claude Code (Mac and cloud) and Codex: shared working rules, roles, and skills for driving and reviewing PRs. Project rules stay in each project's own `AGENTS.md`. Public repo: no secrets, tokens or personal data.

The repo root is one plugin, `core`, in the marketplace `agent-kit`. Both tools read its `.claude-plugin/` manifests.

| Path | What | Used by |
| - | - | - |
| `AGENTS.md` | Generic working rules and review principles | Both, via the SessionStart hook |
| `skills/` | `steward`, `start-task`, `review-pr`, `visualize` | Both |
| `roles/` | Plain role prompts: implementer, planner | Both |
| `agents/` | Claude subagents: the two roles plus four Sonnet reviewers | Claude |
| `hooks/hooks.json` | SessionStart: loads `AGENTS.md` | Both |
| `codex/` | Codex install notes and role installer | Codex |

## Claude Code

On a Mac:

```
/plugin marketplace add BasilJ-S/agents
/plugin install core@agent-kit
```

In a project, commit this to `.claude/settings.json` so cloud sessions get it too (they only see what's committed, never your local `~/.claude`):

```json
{
  "extraKnownMarketplaces": {
    "agent-kit": { "source": { "source": "github", "repo": "BasilJ-S/agents" } }
  },
  "enabledPlugins": { "core@agent-kit": true }
}
```

Add a one-line `CLAUDE.md` containing `@AGENTS.md` so Claude also loads the project's own `AGENTS.md`.

## Codex

See [codex/README.md](codex/README.md).
