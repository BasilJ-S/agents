# Codex

Checked against codex-cli 0.164.0. Codex reads this repo's `.claude-plugin/` marketplace and plugin manifests as they are. `../bootstrap.sh` runs all of the steps below.

```
codex plugin marketplace add BasilJ-S/agents
codex plugin add core@agent-kit
```

- **Skills** load from the plugin as `core:review-pr`, `core:steward`, and so on.
- **Shared `AGENTS.md`** loads through the plugin's SessionStart hook once you trust it in Codex (`/hooks`). If you'd rather not, run `ln -s <clone>/AGENTS.md ~/.codex/AGENTS.md` instead; don't do both.
- **Roles**: Codex roles are TOML files in `~/.codex/agents/` and don't come from plugins. Generate them from `roles/*.md`:

  ```
  git clone https://github.com/BasilJ-S/agents ~/agent-kit
  ~/agent-kit/codex/install-roles.sh
  ```

  The planner runs with `sandbox_mode = "read-only"`, so it returns its review rather than posting it.
- **Claude subagents** (`agents/*.md`, including the four reviewers) are Claude-only. In Codex, `review-pr` does the four passes itself.
- **Permissions and other hooks** are Codex config (`~/.codex/config.toml`) and aren't shared here.
