#!/usr/bin/env python3
"""Read/query the versioned Nova language reference snapshot.

This is the production-facing adapter used by content-authoring tools. It never
fetches the network: generation consumes the pinned, validated snapshot already
committed under nova/reference/{courseCode}/.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Iterable

from reference_data import LEVELS, normalize_lemma, normalize_pos


class ReferenceCatalog:
    def __init__(self, repo_root: Path, course_code: str = "en-fa"):
        self.repo_root = Path(repo_root)
        self.course_code = course_code
        self.root = self.repo_root / "nova/reference" / course_code
        manifest_path = self.root / "manifest.json"
        if not manifest_path.exists():
            raise FileNotFoundError(f"reference manifest missing: {manifest_path}")
        self.manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
        self._lexical_cache: dict[str, list[dict]] = {}
        self._grammar_cache: dict[str, list[dict]] = {}

    def lexical_level(self, level: str) -> list[dict]:
        level = level.upper()
        if level not in LEVELS:
            raise ValueError(f"unsupported CEFR level: {level}")
        if level not in self._lexical_cache:
            path = self.root / "lexical" / f"{level}.json"
            payload = json.loads(path.read_text(encoding="utf-8"))
            if payload.get("level") != level:
                raise ValueError(f"reference file has wrong level header: {path}")
            self._lexical_cache[level] = payload.get("items", [])
        return self._lexical_cache[level]

    def grammar_level(self, level: str) -> list[dict]:
        level = level.upper()
        if level not in LEVELS:
            raise ValueError(f"unsupported CEFR level: {level}")
        if level not in self._grammar_cache:
            path = self.root / "grammar" / f"{level}.json"
            payload = json.loads(path.read_text(encoding="utf-8"))
            if payload.get("level") != level:
                raise ValueError(f"reference file has wrong level header: {path}")
            self._grammar_cache[level] = payload.get("items", [])
        return self._grammar_cache[level]

    @staticmethod
    def _sort_key(item: dict):
        return (
            item.get("frequencyRank") is None,
            item.get("frequencyRank") or 10**9,
            -(item.get("qualityScore") or 0),
            normalize_lemma(item.get("lemma")),
            normalize_pos(item.get("partOfSpeech")) or "",
            item.get("senseOrder") or 0,
        )

    def query_lexical(
        self,
        *,
        levels: Iterable[str] | None = None,
        lemma: str | None = None,
        part_of_speech: str | None = None,
        topics: Iterable[str] | None = None,
        production_only: bool = True,
        curriculum_only: bool = False,
        exclude_lemmas: Iterable[str] | None = None,
        limit: int = 50,
    ) -> list[dict]:
        selected_levels = [x.upper() for x in (levels or LEVELS)]
        wanted_lemma = normalize_lemma(lemma) if lemma else None
        wanted_pos = normalize_pos(part_of_speech) if part_of_speech else None
        wanted_topics = {normalize_lemma(x) for x in (topics or []) if normalize_lemma(x)}
        excluded = {normalize_lemma(x) for x in (exclude_lemmas or []) if normalize_lemma(x)}

        rows: list[dict] = []
        for level in selected_levels:
            for item in self.lexical_level(level):
                item_lemma = normalize_lemma(item.get("lemma"))
                if item_lemma in excluded:
                    continue
                if wanted_lemma and item_lemma != wanted_lemma:
                    continue
                if wanted_pos and normalize_pos(item.get("partOfSpeech")) != wanted_pos:
                    continue
                if production_only and not item.get("productionEligible"):
                    continue
                if curriculum_only and not item.get("curriculumEligible"):
                    continue
                if wanted_topics:
                    item_topics = {normalize_lemma(x) for x in item.get("topics", [])}
                    if not wanted_topics.intersection(item_topics):
                        continue
                rows.append(item)

        rows.sort(key=self._sort_key)
        return rows[: max(0, limit)]

    def recommend_for_lesson(
        self,
        *,
        level: str,
        count: int = 8,
        topics: Iterable[str] | None = None,
        part_of_speech: str | None = None,
        exclude_lemmas: Iterable[str] | None = None,
    ) -> list[dict]:
        """Return high-confidence candidates; never returns review-only records."""
        rows = self.query_lexical(
            levels=[level],
            part_of_speech=part_of_speech,
            topics=topics,
            production_only=True,
            curriculum_only=True,
            exclude_lemmas=exclude_lemmas,
            limit=max(count * 8, count),
        )
        # One candidate per lemma. Sense selection still belongs to the authoring
        # step because the intended lesson context determines the correct sense.
        result, seen = [], set()
        for item in rows:
            lemma = normalize_lemma(item.get("lemma"))
            if lemma in seen:
                continue
            seen.add(lemma)
            result.append(item)
            if len(result) >= count:
                break
        return result


def main() -> int:
    p = argparse.ArgumentParser(description="Query Nova's pinned language reference snapshot")
    p.add_argument("--repo-root", default=".")
    p.add_argument("--course", default="en-fa")
    p.add_argument("--level", action="append", choices=LEVELS)
    p.add_argument("--lemma")
    p.add_argument("--pos")
    p.add_argument("--topic", action="append", default=[])
    p.add_argument("--exclude", action="append", default=[])
    p.add_argument("--limit", type=int, default=20)
    p.add_argument("--include-review", action="store_true", help="Include records below the production gate")
    p.add_argument("--curriculum-only", action="store_true")
    p.add_argument("--recommend", action="store_true", help="Return one high-confidence sense candidate per lemma")
    p.add_argument("--grammar", action="store_true", help="Return grammar profile records instead of lexical records")
    args = p.parse_args()

    catalog = ReferenceCatalog(Path(args.repo_root).resolve(), args.course)
    levels = args.level or list(LEVELS)
    if args.grammar:
        items = []
        for level in levels:
            items.extend(catalog.grammar_level(level))
        items = items[: max(0, args.limit)]
    elif args.recommend:
        if len(levels) != 1:
            p.error("--recommend requires exactly one --level")
        items = catalog.recommend_for_lesson(
            level=levels[0],
            count=args.limit,
            topics=args.topic,
            part_of_speech=args.pos,
            exclude_lemmas=args.exclude,
        )
    else:
        items = catalog.query_lexical(
            levels=levels,
            lemma=args.lemma,
            part_of_speech=args.pos,
            topics=args.topic,
            production_only=not args.include_review,
            curriculum_only=args.curriculum_only,
            exclude_lemmas=args.exclude,
            limit=args.limit,
        )
    print(json.dumps({"courseCode": args.course, "levels": levels, "count": len(items), "items": items}, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
