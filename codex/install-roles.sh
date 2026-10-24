#!/bin/sh
# Writes a Codex agent role (~/.codex/agents/<role>.toml) for each roles/*.md.
# Description comes from the matching Claude agent; a role whose Claude agent
# disallows Write runs read-only.
set -eu
kit=$(cd "$(dirname "$0")/.." && pwd)
out="${CODEX_HOME:-$HOME/.codex}/agents"
mkdir -p "$out"
for role in "$kit"/roles/*.md; do
  name=$(basename "$role" .md)
  agent="$kit/agents/$name.md"
  desc=$(sed -n 's/^description: //p' "$agent")
  {
    printf 'name = "%s"\ndescription = "%s"\n' "$name" "$desc"
    grep -q '^disallowedTools:.*Write' "$agent" && printf 'sandbox_mode = "read-only"\n'
    printf "developer_instructions = '''\n%s\n'''\n" "$(cat "$role")"
  } > "$out/$name.toml"
  echo "wrote $out/$name.toml"
done
