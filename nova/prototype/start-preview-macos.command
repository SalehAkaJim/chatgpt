#!/bin/zsh
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "$0")" && pwd)"

if command -v python3 >/dev/null 2>&1; then
  exec python3 "$SCRIPT_DIR/local_preview.py" "$@"
fi

print -u2 "Python 3 پیدا نشد. Python 3 را نصب کن و دوباره اجرا کن."
print -u2 "برای بستن این پنجره Enter بزن."
read -r _
exit 2
