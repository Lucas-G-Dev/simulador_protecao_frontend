#!/bin/sh
set -eu

API_BASE="${SIMULADOR_API_BASE:-${API_BASE:-}}"

cat >/usr/share/nginx/html/env.js <<EOF
window.__ENV = {
  API_BASE: "$(printf '%s' "$API_BASE" | sed 's/\\/\\\\/g; s/"/\\"/g')"
};
EOF

exec nginx -g 'daemon off;'
