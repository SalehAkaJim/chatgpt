#!/usr/bin/env bash
set -euo pipefail

REPO_SLUG="SalehAkaJim/chatgpt"
CACHE_BASE="${XDG_CACHE_HOME:-$HOME/.cache}/nova-preview"
REPO_DIR="${NOVA_PREVIEW_REPO_DIR:-$CACHE_BASE/chatgpt}"
HTTPS_URL="https://github.com/${REPO_SLUG}.git"
SSH_URL="git@github.com:${REPO_SLUG}.git"

fail() {
  echo "Nova Preview: $1" >&2
  exit 2
}

command -v git >/dev/null 2>&1 || fail "Git پیدا نشد. Git را نصب کن و دوباره اجرا کن."
command -v python3 >/dev/null 2>&1 || fail "Python 3 پیدا نشد. Python 3 را نصب کن و دوباره اجرا کن."

mkdir -p "$(dirname "$REPO_DIR")"

clone_repo() {
  rm -rf "$REPO_DIR"
  echo "Nova Preview: اولین اجراست؛ cache خصوصی پروژه آماده می‌شود..."

  if command -v gh >/dev/null 2>&1 && gh auth status -h github.com >/dev/null 2>&1; then
    if gh repo clone "$REPO_SLUG" "$REPO_DIR" -- --filter=blob:none --single-branch --branch main; then
      return 0
    fi
    rm -rf "$REPO_DIR"
  fi

  if git clone --filter=blob:none --single-branch --branch main "$HTTPS_URL" "$REPO_DIR"; then
    return 0
  fi
  rm -rf "$REPO_DIR"

  echo "Nova Preview: HTTPS clone جواب نداد؛ SSH را امتحان می‌کنم..."
  if git clone --filter=blob:none --single-branch --branch main "$SSH_URL" "$REPO_DIR"; then
    return 0
  fi
  rm -rf "$REPO_DIR"

  fail "به repo خصوصی GitHub دسترسی ندارم. یک بار GitHub را روی این سیستم authenticate کن (مثلاً gh auth login یا SSH key) و همین فایل را دوباره اجرا کن؛ نیازی به clone دستی نیست."
}

if ! git -C "$REPO_DIR" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  clone_repo
fi

if ! git -C "$REPO_DIR" fetch --quiet origin main; then
  fail "sync کردن origin/main شکست خورد. اتصال اینترنت و GitHub authentication را بررسی کن."
fi

exec python3 "$REPO_DIR/nova/prototype/local_preview.py" "$@"
