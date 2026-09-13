#!/usr/bin/env python3
"""Generate one German B1 batch with 1-10 authored curriculum units.

Ten units is a maximum work-batch size, not a curriculum-length rule. This
wrapper deliberately supports a smaller final batch so a CEFR level can end at
the educationally appropriate unit count.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path

from generate_german_b1_batch import build_unit

ROOT = Path(__file__).resolve().parents[1]
MAX_BATCH_UNITS = 10


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--batch", type=int, required=True)
    args = parser.parse_args()
    if args.batch < 1:
        raise SystemExit("Batch number must be >= 1")

    spec_dir = ROOT / "content" / "specs" / "de" / "B1" / f"batch-{args.batch:02d}"
    out_dir = ROOT / "content" / "production" / "de" / "B1"
    paths = sorted(spec_dir.glob("*.json"))
    if not 1 <= len(paths) <= MAX_BATCH_UNITS:
        raise SystemExit(
            f"Expected 1-{MAX_BATCH_UNITS} specs in {spec_dir}, found {len(paths)}"
        )

    out_dir.mkdir(parents=True, exist_ok=True)
    written = []
    for path in paths:
        spec = json.loads(path.read_text(encoding="utf-8"))
        batch = build_unit(spec)
        out = out_dir / f"b1-de-{spec['slug']}-v1.json"
        out.write_text(json.dumps(batch, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        written.append({"file": out.name, "items": len(batch["items"])})

    print(
        json.dumps(
            {
                "level": "B1",
                "batch": args.batch,
                "units": len(written),
                "max_batch_units": MAX_BATCH_UNITS,
                "written": written,
            },
            ensure_ascii=False,
        )
    )


if __name__ == "__main__":
    main()
