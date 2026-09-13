#!/usr/bin/env python3
"""Generate German C1 production units from compact hand-authored specs."""
from __future__ import annotations

import argparse
import json
from pathlib import Path

from scripts.generate_german_b2_batch import build_unit as build_b2_unit

ROOT = Path(__file__).resolve().parents[1]


def convert_level(value):
    if isinstance(value, dict):
        return {k: convert_level(v) for k, v in value.items()}
    if isinstance(value, list):
        return [convert_level(v) for v in value]
    if isinstance(value, str):
        return value.replace("B2", "C1").replace("b2", "c1")
    return value


def build_unit(spec: dict) -> dict:
    batch = convert_level(build_b2_unit(spec))
    batch["generator"] = "gpt-5.6-sol:german-c1-batch-v1"
    for item in batch["items"]:
        data = item.get("data", {})
        if item.get("kind") == "exercise":
            data["difficulty"] = 5
    return batch


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--batch", type=int, required=True)
    args = parser.parse_args()
    spec_dir = ROOT / "content" / "specs" / "de" / "C1" / f"batch-{args.batch:02d}"
    out_dir = ROOT / "content" / "production" / "de" / "C1"
    paths = sorted(spec_dir.glob("*.json"))
    if not 1 <= len(paths) <= 10:
        raise SystemExit(f"Expected 1-10 specs in {spec_dir}, found {len(paths)}")
    out_dir.mkdir(parents=True, exist_ok=True)
    written = []
    for path in paths:
        spec = json.loads(path.read_text(encoding="utf-8"))
        batch = build_unit(spec)
        out = out_dir / f"c1-de-{spec['slug']}-v1.json"
        out.write_text(json.dumps(batch, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        written.append({"file": out.name, "items": len(batch["items"])})
    print(json.dumps({"level": "C1", "batch": args.batch, "units": len(written), "written": written}, ensure_ascii=False))


if __name__ == "__main__":
    main()
