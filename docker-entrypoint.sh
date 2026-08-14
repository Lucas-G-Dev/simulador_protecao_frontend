#!/bin/sh
set -eu

HTML_DIR="/usr/share/nginx/html"
ENV_FILE="$HTML_DIR/env.js"

cat > "$ENV_FILE" <<EOF
window.__ENV__ = {
  API_BASE: "${API_BASE:-}",
  N8N_WEBHOOK_URL: "${N8N_WEBHOOK_URL:-}",
  APP_SCRIPT_URL: "${APP_SCRIPT_URL:-}"
};
EOF

exec nginx -g 'daemon off;'