#!/usr/bin/env sh
set -eu
SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

if command -v python3 >/dev/null 2>&1; then
  exec python3 "$SCRIPT_DIR/local_preview.py" "$@"
fi

if command -v python >/dev/null 2>&1; then
  exec python "$SCRIPT_DIR/local_preview.py" "$@"
fi

echo "Python 3 پیدا نشد. Python را نصب کن و دوباره اجرا کن." >&2
exit 2
