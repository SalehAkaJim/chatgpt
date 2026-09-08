#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
from collections import defaultdict
from pathlib import Path

from reference_data import LEVELS, normalize_lemma, normalize_pos, dump_json


def load_index(reference_root: Path) -> dict[tuple[str, str | None], list[dict]]:
    index: dict[tuple[str, str | None], list[dict]] = defaultdict(list)
    for level in LEVELS:
        path = reference_root / "lexical" / f"{level}.json"
        if not path.exists():
            continue
        for item in json.loads(path.read_text(encoding="utf-8")).get("items", []):
            index[(normalize_lemma(item.get("lemma")), normalize_pos(item.get("partOfSpeech")))].append(item)
    return index


def audit(repo_root: Path) -> dict:
    ref_root = repo_root / "nova/reference/en-fa"
    index = load_index(ref_root)
    lesson_root = repo_root / "nova/courses/en-fa/lessons"
    lessons = []
    totals = {"lexicalItems": 0, "wordItems": 0, "matched": 0, "productionEligibleMatch": 0, "unmatched": 0}

    for source_path in sorted(lesson_root.glob("*/lesson.source.json")):
        lesson = json.loads(source_path.read_text(encoding="utf-8"))
        rows = []
        for lex in lesson.get("lexicalItems", []):
            totals["lexicalItems"] += 1
            if lex.get("itemType") != "word":
                rows.append({"lexicalKey": lex.get("lexicalKey"), "status": "not_applicable_multiword"})
                continue
            totals["wordItems"] += 1
            key = (normalize_lemma(lex.get("lemma") or lex.get("displayForm")), normalize_pos(lex.get("partOfSpeech")))
            matches = index.get(key, [])
            if matches:
                totals["matched"] += 1
                eligible = [m for m in matches if m.get("productionEligible")]
                if eligible:
                    totals["productionEligibleMatch"] += 1
                rows.append({
                    "lexicalKey": lex.get("lexicalKey"),
                    "lemma": key[0],
                    "partOfSpeech": key[1],
                    "status": "matched",
                    "productionEligible": bool(eligible),
                    "referenceKeys": [m.get("referenceKey") for m in matches[:8]],
                })
            else:
                totals["unmatched"] += 1
                rows.append({"lexicalKey": lex.get("lexicalKey"), "lemma": key[0], "partOfSpeech": key[1], "status": "unmatched"})
        lessons.append({"lessonKey": lesson.get("lessonKey"), "items": rows})

    return {"schemaVersion": 1, "courseCode": "en-fa", "totals": totals, "lessons": lessons}


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("--repo-root", default=".")
    p.add_argument("--output", default="nova/reference/en-fa/lesson_coverage.json")
    args = p.parse_args()
    root = Path(args.repo_root).resolve()
    report = audit(root)
    dump_json(root / args.output, report)
    print(json.dumps(report["totals"], indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
