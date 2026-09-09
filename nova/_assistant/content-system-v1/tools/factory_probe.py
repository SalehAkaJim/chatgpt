#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
from pathlib import Path

from reference_catalog import ReferenceCatalog


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("--repo-root", default=".")
    p.add_argument("--config", type=Path, required=True)
    p.add_argument("--output", type=Path, required=True)
    args = p.parse_args()

    root = Path(args.repo_root).resolve()
    config = json.loads(args.config.read_text(encoding="utf-8"))
    course = config.get("courseCode", "en-fa")
    level = config.get("level", "A1")
    catalog = ReferenceCatalog(root, course)

    lexical = {}
    for lemma in config.get("candidateLemmas", []):
        rows = catalog.query_lexical(
            levels=[level], lemma=lemma,
            production_only=True, curriculum_only=True, limit=50,
        )
        lexical[lemma] = [
            {
                "referenceKey": r.get("referenceKey"),
                "lemma": r.get("lemma"),
                "partOfSpeech": r.get("partOfSpeech"),
                "translationFa": r.get("translationFa"),
                "definitionEn": r.get("definitionEn"),
                "exampleEn": r.get("exampleEn"),
                "frequencyRank": r.get("frequencyRank"),
                "qualityScore": r.get("qualityScore"),
                "topics": r.get("topics", []),
                "senseId": r.get("senseId"),
            }
            for r in rows
        ]

    grammar = [
        {
            "grammarKey": x.get("grammarKey"),
            "shorthandCode": x.get("shorthandCode"),
            "grammaticalItem": x.get("grammaticalItem"),
            "sentenceType": x.get("sentenceType"),
            "cefr": x.get("cefr"),
        }
        for x in catalog.grammar_level(level)
    ]

    payload = {
        "schemaVersion": 1,
        "courseCode": course,
        "level": level,
        "lexical": lexical,
        "grammar": grammar,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"lemmas": len(lexical), "grammar": len(grammar)}, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
