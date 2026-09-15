#!/usr/bin/env python3
"""Run the Nova reference lesson viewer and canonical lesson API together.

The viewer is static. All curriculum/content reads and exercise grading go through
`api.server.NovaApiHandler`; this process only starts that API beside a small
static-file server so the reference frontend can be tested with one command.
"""
from __future__ import annotations

import argparse
from functools import partial
from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
import sys
import threading

APP_DIR = Path(__file__).resolve().parent
ROOT = APP_DIR.parents[1]
sys.path.insert(0, str(ROOT))

from api.server import NovaApiHandler  # noqa: E402


class QuietStaticHandler(SimpleHTTPRequestHandler):
    def log_message(self, fmt: str, *args) -> None:
        print(f"viewer - {fmt % args}")


def serve_api(host: str, port: int) -> ThreadingHTTPServer:
    server = ThreadingHTTPServer((host, port), NovaApiHandler)
    thread = threading.Thread(target=server.serve_forever, name="nova-reference-api", daemon=True)
    thread.start()
    return server


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--host", default="127.0.0.1")
    ap.add_argument("--port", type=int, default=8765, help="viewer port")
    ap.add_argument("--api-host", default="127.0.0.1")
    ap.add_argument("--api-port", type=int, default=8787)
    ap.add_argument("--no-api", action="store_true", help="serve only the viewer; use an already-running API")
    args = ap.parse_args()

    api_server = None
    if not args.no_api:
        api_server = serve_api(args.api_host, args.api_port)
        print(f"Nova canonical API: http://{args.api_host}:{args.api_port}/api/v1/health")

    handler = partial(QuietStaticHandler, directory=str(APP_DIR))
    viewer = ThreadingHTTPServer((args.host, args.port), handler)
    print(f"Nova reference viewer: http://{args.host}:{args.port}")
    print("Frontend source: canonical lesson API (no production JSON inference)")
    try:
        viewer.serve_forever()
    except KeyboardInterrupt:
        pass
    finally:
        viewer.server_close()
        if api_server:
            api_server.shutdown()
            api_server.server_close()


if __name__ == "__main__":
    main()
