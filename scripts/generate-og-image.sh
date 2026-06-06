#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
npx --yes playwright screenshot \
  --viewport-size=1200,630 \
  "file://$ROOT/og-image.html" \
  og-image.png
echo "Wrote $ROOT/og-image.png"
