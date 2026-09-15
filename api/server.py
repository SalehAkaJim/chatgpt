#!/usr/bin/env python3
"""Small dependency-free HTTP surface for the Nova lesson read model.

This is intentionally thin. Production can place the same LessonRepository
behind another web framework without changing the payload contract.
"""
from __future__ import annotations

import argparse
import json
import re
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from urllib.parse import parse_qs, unquote, urlparse

import mysql.connector

from api.lesson_payload import (
    DeliveryNotMaterialized,
    ExerciseNotFound,
    LessonNotFound,
    LessonRepository,
)
from scripts.materialize_level import db_config

LESSON_RE = re.compile(r"^/api/v1/lessons/([^/]+)$")
EXERCISE_GRADE_RE = re.compile(r"^/api/v1/exercises/([^/]+)/grade$")
LEVEL_LESSONS_RE = re.compile(r"^/api/v1/courses/([^/]+)/levels/([^/]+)/lessons$")


class NovaApiHandler(BaseHTTPRequestHandler):
    server_version = "NovaLessonAPI/1"

    def _json(self, payload, status: int = 200) -> None:
        body = json.dumps(payload, ensure_ascii=False, separators=(",", ":")).encode("utf-8")
        self.send_response(status)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Content-Length", str(len(body)))
        self.send_header("Cache-Control", "no-store")
        self.send_header("Access-Control-Allow-Origin", "*")
        self.end_headers()
        self.wfile.write(body)

    def _repository(self):
        conn = mysql.connector.connect(**db_config())
        return conn, LessonRepository(conn)

    def do_OPTIONS(self) -> None:
        self.send_response(204)
        self.send_header("Access-Control-Allow-Origin", "*")
        self.send_header("Access-Control-Allow-Headers", "Content-Type")
        self.send_header("Access-Control-Allow-Methods", "GET,POST,OPTIONS")
        self.end_headers()

    def do_GET(self) -> None:
        parsed = urlparse(self.path)
        if parsed.path == "/api/v1/health":
            try:
                conn = mysql.connector.connect(**db_config())
                try:
                    cur = conn.cursor()
                    cur.execute("SELECT 1")
                    cur.fetchone()
                    cur.close()
                finally:
                    conn.close()
            except Exception as exc:
                self._json({"ok": False, "error": str(exc)}, 503)
                return
            self._json({"ok": True, "api_version": 1})
            return

        match = LESSON_RE.match(parsed.path)
        if match:
            lesson_slug = unquote(match.group(1))
            course = parse_qs(parsed.query).get("course", ["fa-en-us"])[0]
            conn = None
            try:
                conn, repo = self._repository()
                self._json(repo.lesson_payload(course, lesson_slug))
            except LessonNotFound as exc:
                self._json({"error": "lesson_not_found", "message": str(exc)}, 404)
            except DeliveryNotMaterialized as exc:
                self._json({"error": "delivery_not_materialized", "message": str(exc)}, 409)
            except Exception as exc:
                self._json({"error": "internal_error", "message": str(exc)}, 500)
            finally:
                if conn:
                    conn.close()
            return

        match = LEVEL_LESSONS_RE.match(parsed.path)
        if match:
            course = unquote(match.group(1))
            level = unquote(match.group(2))
            conn = None
            try:
                conn, repo = self._repository()
                self._json({"course": course, "level": level, "lessons": repo.list_lessons(course, level)})
            except Exception as exc:
                self._json({"error": "internal_error", "message": str(exc)}, 500)
            finally:
                if conn:
                    conn.close()
            return

        self._json({"error": "not_found"}, 404)

    def do_POST(self) -> None:
        parsed = urlparse(self.path)
        match = EXERCISE_GRADE_RE.match(parsed.path)
        if not match:
            self._json({"error": "not_found"}, 404)
            return
        try:
            length = int(self.headers.get("Content-Length", "0"))
        except ValueError:
            length = 0
        if length <= 0 or length > 1_000_000:
            self._json({"error": "invalid_body"}, 400)
            return
        try:
            payload = json.loads(self.rfile.read(length))
        except (UnicodeDecodeError, json.JSONDecodeError):
            self._json({"error": "invalid_json"}, 400)
            return
        if not isinstance(payload, dict) or "value" not in payload:
            self._json({"error": "missing_value"}, 400)
            return

        conn = None
        try:
            conn, repo = self._repository()
            result = repo.grade_exercise(unquote(match.group(1)), payload["value"])
            self._json(result)
        except ExerciseNotFound:
            self._json({"error": "exercise_not_found"}, 404)
        except Exception as exc:
            self._json({"error": "internal_error", "message": str(exc)}, 500)
        finally:
            if conn:
                conn.close()

    def log_message(self, fmt: str, *args) -> None:
        print(f"{self.address_string()} - {fmt % args}")


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--host", default="127.0.0.1")
    ap.add_argument("--port", type=int, default=8787)
    args = ap.parse_args()
    server = ThreadingHTTPServer((args.host, args.port), NovaApiHandler)
    print(f"Nova lesson API: http://{args.host}:{args.port}/api/v1/health")
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        pass
    finally:
        server.server_close()


if __name__ == "__main__":
    main()
