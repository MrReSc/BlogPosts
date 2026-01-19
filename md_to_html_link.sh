#!/bin/bash
set -euo pipefail

lua_filter="$(mktemp)"
trap 'rm -f "$lua_filter"' EXIT

cat >"$lua_filter" <<'LUA'
function Link(el)
  el.attributes = el.attributes or {}
  el.attributes.target = "_blank"
  el.attributes.rel = "noopener noreferrer"
  return el
end
LUA

find . -type f -name "*.md" -exec pandoc --lua-filter="$lua_filter" -o "{}".html "{}" \;
