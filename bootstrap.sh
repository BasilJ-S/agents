#!/bin/sh
# One-time agent-kit setup for whichever of Claude Code and Codex is installed.
# Safe to re-run. Use as a cloud environment setup script:
#   curl -fsSL https://raw.githubusercontent.com/BasilJ-S/agents/main/bootstrap.sh | sh
set -eu
repo=BasilJ-S/agents
ref="${AGENT_KIT_REF:-main}"

if command -v claude >/dev/null 2>&1; then
  claude plugin marketplace add "$repo#$ref"
  claude plugin install core@agent-kit
fi

if command -v codex >/dev/null 2>&1; then
  kit="${AGENT_KIT_DIR:-$HOME/agent-kit}"
  if [ -d "$kit/.git" ]; then git -C "$kit" pull -q --ff-only
  else git clone -q --depth 1 --branch "$ref" "https://github.com/$repo" "$kit"; fi
  codex plugin marketplace add "$repo" --ref "$ref" || true  # errors if already added
  codex plugin add core@agent-kit
  "$kit/codex/install-roles.sh"
fi
