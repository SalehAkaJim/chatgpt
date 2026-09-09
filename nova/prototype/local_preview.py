#!/usr/bin/env python3
"""Run the Nova content preview locally from the latest validated GitHub main.

This launcher never checks out or overwrites the user's working tree. It fetches origin/main,
creates a detached temporary worktree, builds the validated text-first preview there, and
serves it on localhost. While the server is running, browser refreshes periodically check
origin/main and hot-swap to a newly validated preview when the remote commit changes.
"""
from __future__ import annotations

import argparse
import functools
import hashlib
import json
from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import threading
import time
import webbrowser

REMOTE = "origin"
BRANCH = "main"
COURSE = "en-fa"
CHECK_INTERVAL_SECONDS = 3.0


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def load_json(path: Path):
    return json.loads(path.read_text(encoding="utf-8"))


class PreviewError(RuntimeError):
    pass


class PreviewManager:
    def __init__(self, repo_root: Path):
        self.repo_root = repo_root.resolve()
        self.site: Path | None = None
        self.remote_sha: str | None = None
        self._last_check = 0.0
        self._lock = threading.Lock()
        self._temp_roots: list[Path] = []
        self._worktrees: list[Path] = []

    def _git(self, *args: str, capture: bool = False) -> str:
        try:
            completed = subprocess.run(
                ["git", *args],
                cwd=self.repo_root,
                check=True,
                text=True,
                capture_output=capture,
            )
        except FileNotFoundError as error:
            raise PreviewError("Git پیدا نشد. Git را نصب کن و دوباره اجرا کن.") from error
        except subprocess.CalledProcessError as error:
            detail = (error.stderr or error.stdout or "").strip() if capture else ""
            if "Authentication failed" in detail or "could not read Username" in detail:
                detail = "GitHub authentication برای repo خصوصی آماده نیست. یک بار git/gh را روی سیستم login کن."
            raise PreviewError(detail or f"git {' '.join(args)} شکست خورد.") from error
        return completed.stdout.strip() if capture else ""

    def fetch(self) -> str:
        # Uses the user's existing Git credentials; no token is stored in the prototype.
        self._git("fetch", "--quiet", REMOTE, BRANCH, capture=True)
        return self._git("rev-parse", f"{REMOTE}/{BRANCH}", capture=True)

    def _verify_pass_evidence(self, worktree: Path, site: Path) -> dict:
        catalog_path = site / "nova/courses/index.json"
        if not catalog_path.is_file():
            raise PreviewError("Preview catalog ساخته نشد.")
        catalog = load_json(catalog_path)
        lessons = catalog.get("lessons", [])
        if not lessons:
            raise PreviewError("هیچ Lesson تاییدشده‌ای برای Preview پیدا نشد.")

        for entry in lessons:
            number = entry["lessonNumber"]
            source = worktree / "nova/courses" / COURSE / "lessons" / number / "lesson.source.json"
            evidence = source.parent / "validation.json"
            if not source.is_file() or not evidence.is_file():
                raise PreviewError(f"Lesson {number}: source یا validation evidence وجود ندارد.")
            report = load_json(evidence)
            source_hash = sha256(source)
            if (
                report.get("status") != "PASS"
                or report.get("lessonKey") != entry.get("lessonKey")
                or report.get("sourceHash") != source_hash
                or entry.get("sourceHash") != source_hash
            ):
                raise PreviewError(
                    f"Lesson {number}: نسخه فعلی فایل با PASS evidence یکی نیست؛ تا QA مجدد در Preview نمایش داده نمی‌شود."
                )
        return catalog

    def build(self, commit_sha: str) -> dict:
        temp_root = Path(tempfile.mkdtemp(prefix="nova-local-preview-"))
        worktree = temp_root / "main"
        site = temp_root / "site"
        self._temp_roots.append(temp_root)
        try:
            self._git("worktree", "add", "--quiet", "--detach", str(worktree), commit_sha, capture=True)
            self._worktrees.append(worktree)
            builder = worktree / "nova/_assistant/content-system-v1/tools/build_prototype_preview.py"
            if not builder.is_file():
                raise PreviewError("Preview builder روی main پیدا نشد.")
            completed = subprocess.run(
                [
                    sys.executable,
                    str(builder),
                    "--repo-root",
                    str(worktree),
                    "--course",
                    COURSE,
                    "--output",
                    str(site),
                ],
                text=True,
                capture_output=True,
            )
            if completed.returncode:
                raise PreviewError((completed.stderr or completed.stdout or "Preview build failed").strip())
            catalog = self._verify_pass_evidence(worktree, site)
        except Exception:
            self._remove_worktree(worktree)
            raise

        # Swap only after the entire new preview has been built and verified.
        self.site = site
        self.remote_sha = commit_sha
        last = catalog["lessons"][-1]
        print(
            f"Nova Preview synced: {len(catalog['lessons'])} validated Lessons "
            f"(last={last['lessonKey']}, main={commit_sha[:10]})"
        )
        return catalog

    def sync_now(self) -> dict:
        with self._lock:
            sha = self.fetch()
            if self.site is not None and sha == self.remote_sha:
                self._last_check = time.monotonic()
                return load_json(self.site / "nova/courses/index.json")
            catalog = self.build(sha)
            self._last_check = time.monotonic()
            return catalog

    def refresh_if_needed(self) -> None:
        if time.monotonic() - self._last_check < CHECK_INTERVAL_SECONDS:
            return
        with self._lock:
            if time.monotonic() - self._last_check < CHECK_INTERVAL_SECONDS:
                return
            self._last_check = time.monotonic()
            try:
                sha = self.fetch()
                if sha != self.remote_sha:
                    print("New main commit detected; rebuilding validated Preview...")
                    self.build(sha)
            except PreviewError as error:
                # Keep serving the last verified preview if GitHub/network/build is temporarily unavailable.
                print(f"Preview refresh skipped: {error}", file=sys.stderr)

    def _remove_worktree(self, worktree: Path) -> None:
        if not worktree.exists():
            return
        try:
            subprocess.run(
                ["git", "worktree", "remove", "--force", str(worktree)],
                cwd=self.repo_root,
                check=False,
                stdout=subprocess.DEVNULL,
                stderr=subprocess.DEVNULL,
            )
        finally:
            if worktree in self._worktrees:
                self._worktrees.remove(worktree)

    def close(self) -> None:
        for worktree in list(self._worktrees):
            self._remove_worktree(worktree)
        for root in self._temp_roots:
            shutil.rmtree(root, ignore_errors=True)
        subprocess.run(
            ["git", "worktree", "prune"],
            cwd=self.repo_root,
            check=False,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
        )


class PreviewHandler(SimpleHTTPRequestHandler):
    def __init__(self, *args, manager: PreviewManager, **kwargs):
        self.manager = manager
        directory = str(manager.site) if manager.site else str(manager.repo_root)
        super().__init__(*args, directory=directory, **kwargs)

    def do_GET(self):
        self.manager.refresh_if_needed()
        # A rebuild may have swapped the site after this handler was constructed.
        self.directory = str(self.manager.site) if self.manager.site else self.directory
        super().do_GET()

    def log_message(self, format: str, *args) -> None:
        # Keep the launcher quiet; only sync/build messages are useful for content testing.
        return


def find_repo_root(script: Path) -> Path:
    candidate = script.resolve().parents[2]
    if (candidate / ".git").exists():
        return candidate
    try:
        result = subprocess.run(
            ["git", "rev-parse", "--show-toplevel"],
            cwd=script.parent,
            text=True,
            capture_output=True,
            check=True,
        )
        return Path(result.stdout.strip())
    except Exception as error:
        raise PreviewError(
            "این launcher باید داخل clone پروژه Nova اجرا شود. repo را clone کن و دوباره start-preview را اجرا کن."
        ) from error


def main() -> int:
    parser = argparse.ArgumentParser(description="Run the latest validated Nova preview from private GitHub main")
    parser.add_argument("--port", type=int, default=8765)
    parser.add_argument("--no-browser", action="store_true")
    args = parser.parse_args()

    manager: PreviewManager | None = None
    server: ThreadingHTTPServer | None = None
    try:
        repo_root = find_repo_root(Path(__file__))
        manager = PreviewManager(repo_root)
        manager.sync_now()

        handler = functools.partial(PreviewHandler, manager=manager)
        try:
            server = ThreadingHTTPServer(("127.0.0.1", args.port), handler)
        except OSError:
            # If the default port is busy, let the OS choose a free local port.
            server = ThreadingHTTPServer(("127.0.0.1", 0), handler)
        port = server.server_address[1]
        url = f"http://127.0.0.1:{port}/nova/prototype/"
        print(f"Nova Preview: {url}")
        print("هر بار صفحه را Refresh کنی، main بررسی می‌شود. برای خروج Ctrl+C بزن.")
        if not args.no_browser:
            webbrowser.open(url)
        server.serve_forever()
        return 0
    except KeyboardInterrupt:
        print("\nNova Preview stopped.")
        return 0
    except PreviewError as error:
        print(f"Nova Preview error: {error}", file=sys.stderr)
        return 2
    finally:
        if server is not None:
            server.server_close()
        if manager is not None:
            manager.close()


if __name__ == "__main__":
    raise SystemExit(main())
