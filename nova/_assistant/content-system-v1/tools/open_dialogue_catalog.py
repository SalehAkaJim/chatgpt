#!/usr/bin/env python3
"""Read Nova's committed open-dialogue snapshot for production authoring.

No network access is allowed here. The catalog ranks source dialogues for a Lesson,
then returns exact source turns plus the provenance metadata that must travel with
learner-visible copied English.
"""
from __future__ import annotations

import gzip
import json
import re
from pathlib import Path
from typing import Iterable

WORD_RE = re.compile(r"[A-Za-z]+(?:['’][A-Za-z]+)?")
LEVEL_ORDER = {
    "A1": ("starter", "beginner", "intermediate", "advanced"),
    "A2": ("beginner", "starter", "intermediate", "advanced"),
    "B1": ("intermediate", "beginner", "advanced", "starter"),
    "B2": ("intermediate", "advanced", "beginner", "starter"),
    "C1": ("advanced", "intermediate", "beginner", "starter"),
    "C2": ("advanced", "intermediate", "beginner", "starter"),
}
WINDOW_TURNS = {"A1": 4, "A2": 6, "B1": 8, "B2": 10, "C1": 12, "C2": 14}
TARGET_AVG_WORDS = {"A1": 4.5, "A2": 6.0, "B1": 8.5, "B2": 10.5, "C1": 12.0, "C2": 14.0}
MAX_TURN_WORDS = {"A1": 13, "A2": 18, "B1": 25, "B2": 32, "C1": 40, "C2": 48}


def _load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def _tokens(text: str) -> list[str]:
    return [x.lower().replace("’", "'") for x in WORD_RE.findall(text or "")]


def _topic_terms(values: Iterable[str]) -> set[str]:
    result = set()
    for value in values:
        result.update(_tokens(str(value).replace("_", " ").replace("-", " ")))
    return result


class OpenDialogueCatalog:
    def __init__(self, repo_root: Path, course_code: str = "en-fa"):
        self.repo_root = Path(repo_root)
        self.course_code = course_code
        self.root = self.repo_root / "nova/reference" / course_code / "dialogue"
        self.manifest_path = self.root / "manifest.json"
        self.index_path = self.root / "index.jsonl"
        self.manifest = _load(self.manifest_path) if self.manifest_path.exists() else {}
        self._index: list[dict] | None = None
        self._shard_cache: dict[str, list[dict]] = {}

    @property
    def ready(self) -> bool:
        return bool(
            self.manifest.get("authoringMode") == "verbatim-first"
            and self.index_path.exists()
            and (self.manifest.get("counts") or {}).get("total", 0) > 0
        )

    def index(self) -> list[dict]:
        if self._index is None:
            if not self.index_path.exists():
                self._index = []
            else:
                rows = []
                with self.index_path.open("r", encoding="utf-8") as handle:
                    for line in handle:
                        line = line.strip()
                        if line:
                            rows.append(json.loads(line))
                self._index = rows
        return self._index

    def _load_shard(self, rel_path: str) -> list[dict]:
        if rel_path not in self._shard_cache:
            path = self.root / rel_path
            rows = []
            with gzip.open(path, "rt", encoding="utf-8") as handle:
                for line in handle:
                    line = line.strip()
                    if line:
                        rows.append(json.loads(line))
            self._shard_cache[rel_path] = rows
        return self._shard_cache[rel_path]

    def materialize(self, meta: dict) -> dict:
        rows = self._load_shard(meta["shardPath"])
        index = int(meta["shardRecordIndex"])
        if index < 0 or index >= len(rows):
            raise IndexError(f"Invalid shardRecordIndex for {meta.get('corpusKey')}")
        row = rows[index]
        if row.get("corpusKey") != meta.get("corpusKey"):
            raise RuntimeError(f"Dialogue index/shard mismatch for {meta.get('corpusKey')}")
        return row

    @staticmethod
    def _window(record: dict, level: str) -> dict:
        turns = record.get("turns") or []
        desired = min(len(turns), WINDOW_TURNS.get(level, 8))
        if len(turns) <= desired:
            selected = turns
            start = 0
        else:
            target_avg = TARGET_AVG_WORDS.get(level, 8.5)
            max_words = MAX_TURN_WORDS.get(level, 25)
            best = None
            for start_at in range(0, len(turns) - desired + 1):
                window = turns[start_at:start_at + desired]
                lengths = [len(_tokens(str(x.get("text") or ""))) for x in window]
                speakers = {str(x.get("sourceSpeaker") or "").upper() for x in window}
                if len(speakers) < 2:
                    continue
                avg = sum(lengths) / max(1, len(lengths))
                over = sum(max(0, n - max_words) for n in lengths)
                tiny = sum(1 for n in lengths if n <= 1)
                score = abs(avg - target_avg) + 2.5 * over + 0.6 * tiny
                candidate = (score, start_at, window)
                if best is None or candidate[0:2] < best[0:2]:
                    best = candidate
            if best is None:
                start = 0
                selected = turns[:desired]
            else:
                _, start, selected = best
        return {
            "startTurn": start,
            "endTurnExclusive": start + len(selected),
            "isExcerpt": len(selected) != len(turns),
            "turns": selected,
        }

    @staticmethod
    def _metadata_score(meta: dict, *, level: str, topics: set[str]) -> float:
        stats = meta.get("stats") or {}
        order = LEVEL_ORDER.get(level, LEVEL_ORDER["B1"])
        hint = stats.get("difficultyHint") or "advanced"
        try:
            difficulty_rank = order.index(hint)
        except ValueError:
            difficulty_rank = len(order)
        score = 100.0 - 22.0 * difficulty_rank

        target_avg = TARGET_AVG_WORDS.get(level, 8.5)
        score -= 1.8 * abs(float(stats.get("averageTurnWords") or 0) - target_avg)
        max_allowed = MAX_TURN_WORDS.get(level, 25)
        score -= 1.5 * max(0, int(stats.get("maxTurnWords") or 0) - max_allowed)
        desired_turns = WINDOW_TURNS.get(level, 8)
        score -= 0.5 * abs(min(int(stats.get("turnCount") or 0), desired_turns * 2) - desired_turns)

        source_terms = _topic_terms([meta.get("domain") or "", *(meta.get("services") or [])])
        if topics:
            overlap = topics & source_terms
            if overlap:
                score += 24.0 + 5.0 * min(3, len(overlap))
            else:
                score -= 5.0

        # Prefer a unique source dialogue when the snapshot contains an exact duplicate.
        if meta.get("duplicateOf"):
            score -= 1000.0
        return score

    def recommend(
        self,
        *,
        level: str,
        topics: Iterable[str] = (),
        count: int = 6,
        exclude_corpus_keys: Iterable[str] = (),
        allow_sharealike: bool = True,
    ) -> list[dict]:
        if not self.ready:
            return []
        excluded = set(exclude_corpus_keys)
        topic_terms = _topic_terms(topics)
        ranked = []
        for meta in self.index():
            if meta.get("corpusKey") in excluded or meta.get("duplicateOf"):
                continue
            if not allow_sharealike and meta.get("license") == "CC-BY-SA-4.0":
                continue
            score = self._metadata_score(meta, level=level, topics=topic_terms)
            ranked.append((score, meta.get("corpusKey") or "", meta))
        ranked.sort(key=lambda x: (-x[0], x[1]))

        result = []
        for score, _, meta in ranked[: max(count * 5, count)]:
            record = self.materialize(meta)
            window = self._window(record, level)
            result.append({
                "corpusKey": record["corpusKey"],
                "source": record["source"],
                "sourceDialogueId": record["sourceDialogueId"],
                "domain": record.get("domain"),
                "services": record.get("services") or [],
                "license": record["license"],
                "reuseMode": record.get("reuseMode"),
                "attribution": record.get("attribution"),
                "sourceRepository": record["sourceRepository"],
                "sourceCommit": record["sourceCommit"],
                "sourceFile": record["sourceFile"],
                "textSha256": record["textSha256"],
                "stats": record["stats"],
                "authoringScore": round(score, 2),
                "suggestedWindow": window,
                "provenanceRequirement": {
                    "metadataPath": "metadata.openCorpus",
                    "copyMode": "verbatim",
                    "preserveExactEnglish": True,
                    "recordCorpusKey": record["corpusKey"],
                    "recordSourceCommit": record["sourceCommit"],
                    "recordLicense": record["license"],
                    "recordWindow": [window["startTurn"], window["endTurnExclusive"]],
                },
            })
            if len(result) >= count:
                break
        return result


__all__ = ["OpenDialogueCatalog"]
