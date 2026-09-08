#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
from collections import defaultdict
from pathlib import Path

from reference_data import LEVELS, normalize_lemma, normalize_pos, dump_json


def load_indexes(reference_root: Path) -> tuple[dict, dict]:
    exact: dict[tuple[str, str | None], list[dict]] = defaultdict(list)
    by_lemma: dict[str, list[dict]] = defaultdict(list)
    for level in LEVELS:
        path = reference_root / "lexical" / f"{level}.json"
        if not path.exists():
            continue
        for item in json.loads(path.read_text(encoding="utf-8")).get("items", []):
            lemma = normalize_lemma(item.get("lemma"))
            pos = normalize_pos(item.get("partOfSpeech"))
            exact[(lemma, pos)].append(item)
            by_lemma[lemma].append(item)
    return exact, by_lemma


def audit(repo_root: Path) -> dict:
    ref_root = repo_root / "nova/reference/en-fa"
    exact_index, lemma_index = load_indexes(ref_root)
    lesson_root = repo_root / "nova/courses/en-fa/lessons"
    lessons = []
    totals = {
        "lexicalItems": 0,
        "wordItems": 0,
        "matched": 0,
        "exactMatched": 0,
        "lemmaOnlyMatched": 0,
        "curriculumEligibleMatch": 0,
        "productionEligibleMatch": 0,
        "unmatched": 0,
    }

    for source_path in sorted(lesson_root.glob("*/lesson.source.json")):
        lesson = json.loads(source_path.read_text(encoding="utf-8"))
        rows = []
        for lex in lesson.get("lexicalItems", []):
            totals["lexicalItems"] += 1
            if lex.get("itemType") != "word":
                rows.append({"lexicalKey": lex.get("lexicalKey"), "status": "not_applicable_multiword"})
                continue
            totals["wordItems"] += 1
            lemma = normalize_lemma(lex.get("lemma") or lex.get("displayForm"))
            pos = normalize_pos(lex.get("partOfSpeech"))
            exact_matches = exact_index.get((lemma, pos), [])
            lemma_matches = lemma_index.get(lemma, [])

            if exact_matches:
                totals["matched"] += 1
                totals["exactMatched"] += 1
                curriculum = [m for m in exact_matches if m.get("curriculumEligible")]
                eligible = [m for m in exact_matches if m.get("productionEligible")]
                if curriculum:
                    totals["curriculumEligibleMatch"] += 1
                if eligible:
                    totals["productionEligibleMatch"] += 1
                rows.append({
                    "lexicalKey": lex.get("lexicalKey"),
                    "lemma": lemma,
                    "partOfSpeech": pos,
                    "status": "exact_match",
                    "curriculumEligible": bool(curriculum),
                    "productionEligible": bool(eligible),
                    "referenceKeys": [m.get("referenceKey") for m in exact_matches[:8]],
                })
            elif lemma_matches:
                # A lemma-only match is useful curriculum evidence (for example
                # CEFR-J may label `hello` as noun while Nova teaches its greeting
                # function as interjection), but must never be treated as a safe
                # production sense match because the POS/sense is different.
                totals["matched"] += 1
                totals["lemmaOnlyMatched"] += 1
                curriculum = [m for m in lemma_matches if m.get("curriculumEligible")]
                if curriculum:
                    totals["curriculumEligibleMatch"] += 1
                rows.append({
                    "lexicalKey": lex.get("lexicalKey"),
                    "lemma": lemma,
                    "partOfSpeech": pos,
                    "status": "lemma_only_match",
                    "curriculumEligible": bool(curriculum),
                    "productionEligible": False,
                    "referencePartOfSpeech": sorted({m.get("partOfSpeech") for m in lemma_matches if m.get("partOfSpeech")}),
                    "referenceKeys": [m.get("referenceKey") for m in lemma_matches[:8]],
                })
            else:
                totals["unmatched"] += 1
                rows.append({"lexicalKey": lex.get("lexicalKey"), "lemma": lemma, "partOfSpeech": pos, "status": "unmatched"})
        lessons.append({"lessonKey": lesson.get("lessonKey"), "items": rows})

    return {"schemaVersion": 2, "courseCode": "en-fa", "totals": totals, "lessons": lessons}


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
