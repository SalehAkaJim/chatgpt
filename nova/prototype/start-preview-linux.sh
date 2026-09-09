#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

if command -v python3 >/dev/null 2>&1; then
  exec python3 "$SCRIPT_DIR/local_preview.py" "$@"
fi

echo "Python 3 پیدا نشد. Python 3 را نصب کن و دوباره اجرا کن." >&2
exit 2
