#!/usr/bin/env bash
set -e

export GOOGLE_APPLICATION_CREDENTIALS=/app/sa.json

npx -y supergateway \
  --stdio "pipx run analytics-mcp" \
  --outputTransport streamableHttp \
  --streamableHttpPath /mcp \
  --port 8080 \
  --cors