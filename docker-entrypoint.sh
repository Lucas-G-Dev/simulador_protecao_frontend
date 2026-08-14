#!/bin/sh
set -eu

API_BASE="${SIMULADOR_API_BASE:-${API_BASE:-}}"
N8N_WEBHOOK_URL="${SIMULADOR_WEBHOOK_URL:-${N8N_WEBHOOK_URL:-}}"
APP_SCRIPT_URL="${SIMULADOR_APPS_SCRIPT_URL:-${APP_SCRIPT_URL:-${SIMULADOR_SHEET_URL:-}}}"

cat >/usr/share/nginx/html/env.js <<EOF
window.__ENV = {
  API_BASE: "$(printf '%s' "$API_BASE" | sed 's/\\/\\\\/g; s/"/\\"/g')",
  N8N_WEBHOOK_URL: "$(printf '%s' "$N8N_WEBHOOK_URL" | sed 's/\\/\\\\/g; s/"/\\"/g')",
  APP_SCRIPT_URL: "$(printf '%s' "$APP_SCRIPT_URL" | sed 's/\\/\\\\/g; s/"/\\"/g')"
};
EOF

exec nginx -g 'daemon off;'
