#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKING="$SCRIPT_DIR/rwwa-mwe_01_attribution.ipynb"
PRISTINE="$SCRIPT_DIR/backup/rwwa-mwe_01_attribution.ipynb"

if [[ ! -f "$PRISTINE" ]]; then
  echo "Backup notebook not found: $PRISTINE" >&2
  exit 1
fi

cp "$PRISTINE" "$WORKING"
echo "Restored $WORKING from backup copy."
