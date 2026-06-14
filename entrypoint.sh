#!/usr/bin/env bash
set -e

echo "$GOOGLE_CREDENTIALS_JSON" > /tmp/sa.json
export GOOGLE_APPLICATION_CREDENTIALS=/tmp/sa.json

npx -y supergateway \
  --stdio "pipx run analytics-mcp" \
  --outputTransport streamableHttp \
  --streamableHttpPath /mcp \
  --port 8080 \
  --cors