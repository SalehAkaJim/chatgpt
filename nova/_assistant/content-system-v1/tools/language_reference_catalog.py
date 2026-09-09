#!/usr/bin/env python3
"""Unified production-facing language reference catalog.

Unlike ReferenceCatalog (lexical + CEFR grammar snapshots), this adapter exposes
all evidence used by curriculum planning:
- CEFR-J grammar
- lexical/sense records
- NGSL-Spoken priority
- CMUdict pronunciation
- Tatoeba usage/collocation evidence

It never fetches the network. Only committed snapshots are consumed here.
"""
from __future__ import annotations

import json
import re
from pathlib import Path
from typing import Iterable

from reference_catalog import ReferenceCatalog
from reference_data import normalize_lemma

WORD_RE = re.compile(r"[A-Za-z]+(?:'[A-Za-z]+)?")
GRAMMAR_STOP = {
    "item", "object", "number", "name", "person", "place", "city", "country",
    "thing", "word", "noun", "verb", "drink", "location",
}
CONTRACTION_EXPANSIONS = {
    "i'm": ["i", "am"],
    "you're": ["you", "are"],
    "he's": ["he", "is"],
    "she's": ["she", "is"],
    "it's": ["it", "is"],
    "we're": ["we", "are"],
    "they're": ["they", "are"],
    "what's": ["what", "is"],
    "where's": ["where", "is"],
    "who's": ["who", "is"],
    "how's": ["how", "is"],
    "that's": ["that", "is"],
    "this's": ["this", "is"],
    "don't": ["do", "not"],
    "doesn't": ["does", "not"],
    "isn't": ["is", "not"],
    "aren't": ["are", "not"],
    "can't": ["can", "not"],
    "haven't": ["have", "not"],
    "hasn't": ["has", "not"],
    "won't": ["will", "not"],
}


def _load(path: Path, default: dict | None = None) -> dict:
    if not path.exists():
        return default or {}
    return json.loads(path.read_text(encoding="utf-8"))


def _tokens(text: str | None) -> list[str]:
    result = []
    for raw in WORD_RE.findall((text or "").replace("’", "'")):
        token = raw.lower()
        expansion = CONTRACTION_EXPANSIONS.get(token)
        if expansion:
            result.extend(expansion)
        else:
            result.append(token)
    return result


def _sublevel_rank(value: str | None, level: str) -> int:
    if not value:
        return 9
    m = re.search(rf"\b{re.escape(level)}(?:\.(\d+))?\b", str(value).upper())
    if not m:
        return 9
    return int(m.group(1) or 0)


class LanguageReferenceCatalog:
    def __init__(self, repo_root: Path, course_code: str = "en-fa"):
        self.repo_root = Path(repo_root)
        self.course_code = course_code
        self.root = self.repo_root / "nova/reference" / course_code
        self.base = ReferenceCatalog(self.repo_root, course_code)

        pronunciation = _load(self.root / "pronunciation" / "cmudict.json")
        spoken = _load(self.root / "frequency" / "ngsl_spoken.json")
        usage = _load(self.root / "usage" / "tatoeba.json")
        self.extensions_manifest = _load(self.root / "extensions_manifest.json")

        self._pronunciation = {normalize_lemma(x.get("lemma")): x for x in pronunciation.get("items", [])}
        self._spoken = {normalize_lemma(x.get("lemma")): x for x in spoken.get("items", [])}
        self._usage = {normalize_lemma(x.get("query")): x for x in usage.get("queries", []) if x.get("query")}

    @property
    def extensions_ready(self) -> bool:
        return bool(self._pronunciation and self._spoken and self._usage)

    def pronunciation(self, lemma: str) -> dict | None:
        return self._pronunciation.get(normalize_lemma(lemma))

    def spoken_frequency(self, lemma: str) -> dict | None:
        return self._spoken.get(normalize_lemma(lemma))

    def lexical_priority(self, lexical: dict) -> dict:
        lemma = normalize_lemma(lexical.get("lemma") or lexical.get("displayForm"))
        spoken = self.spoken_frequency(lemma)
        general_rank = lexical.get("frequencyRank")
        if spoken:
            tier = "core_spoken" if spoken.get("spokenRank", 10**9) <= 300 else "spoken"
        elif isinstance(general_rank, int) and general_rank <= 1000:
            tier = "high_general"
        elif isinstance(general_rank, int) and general_rank <= 3000:
            tier = "general"
        else:
            tier = "low_or_unknown"
        return {
            "lemma": lemma,
            "spokenRank": spoken.get("spokenRank") if spoken else None,
            "spokenFrequency": spoken.get("frequency") if spoken else None,
            "generalFrequencyRank": general_rank,
            "priorityTier": tier,
        }

    def usage_evidence(self, phrase: str) -> list[dict]:
        text = normalize_lemma(" ".join(_tokens(phrase)))
        if not text:
            return []
        matches = []
        for query, row in self._usage.items():
            if query and (query == text or query in text or text in query):
                matches.append(row)
        matches.sort(key=lambda x: (-len(_tokens(x.get("query"))), -(x.get("sampleCount") or 0), x.get("query") or ""))
        return matches

    def grammar_items(self, level: str) -> list[dict]:
        return self.base.grammar_level(level)

    @staticmethod
    def grammar_tokens(item: dict) -> set[str]:
        return {x for x in _tokens(item.get("grammaticalItem")) if x not in GRAMMAR_STOP}

    @staticmethod
    def construction_tokens(form: str) -> set[str]:
        raw = re.sub(r"\+\s*[A-Za-z_]+", " ", form or "").replace("...", " ")
        return {x for x in _tokens(raw) if x not in GRAMMAR_STOP}

    @staticmethod
    def normalized_grammar_text(text: str) -> str:
        return " ".join(_tokens(text))

    def match_grammar(self, *, level: str, construction_form: str, limit: int = 5) -> list[dict]:
        wanted = self.construction_tokens(construction_form)
        if not wanted:
            return []
        scored = []
        form_norm = self.normalized_grammar_text(construction_form)
        for item in self.grammar_items(level):
            got = self.grammar_tokens(item)
            if not got:
                continue
            overlap = wanted & got
            union = wanted | got
            jaccard = len(overlap) / len(union) if union else 0.0
            coverage = len(overlap) / len(wanted) if wanted else 0.0
            item_norm = self.normalized_grammar_text(item.get("grammaticalItem") or "")
            phrase_bonus = 0.25 if item_norm and (item_norm in form_norm or form_norm in item_norm) else 0.0
            score = min(1.0, 0.55 * coverage + 0.30 * jaccard + phrase_bonus)
            if score < 0.34:
                continue
            scored.append({**item, "matchScore": round(score, 4), "matchedTokens": sorted(overlap)})
        scored.sort(key=lambda x: (-x["matchScore"], _sublevel_rank(x.get("cefrJLevel"), level), x.get("grammarKey") or ""))
        return scored[: max(0, limit)]

    def infer_grammar_prerequisites(self, item: dict, level: str) -> list[str]:
        sentence_type = str(item.get("sentenceType") or "").upper()
        if "NEG" not in sentence_type and "INT" not in sentence_type:
            return []
        target_tokens = self.grammar_tokens(item)
        if not target_tokens:
            return []
        candidates = []
        for other in self.grammar_items(level):
            if other.get("grammarKey") == item.get("grammarKey"):
                continue
            other_type = str(other.get("sentenceType") or "").upper()
            if "AFF" not in other_type or "DEC" not in other_type:
                continue
            other_tokens = self.grammar_tokens(other)
            if not other_tokens:
                continue
            overlap = len(target_tokens & other_tokens) / max(1, len(other_tokens))
            if overlap >= 0.5:
                candidates.append((overlap, _sublevel_rank(other.get("cefrJLevel"), level), other.get("grammarKey")))
        candidates.sort(key=lambda x: (-x[0], x[1], x[2] or ""))
        return [x[2] for x in candidates[:1] if x[2]]

    def rank_grammar_candidates(
        self,
        *,
        level: str,
        introduced_keys: Iterable[str] = (),
        desired_tokens: Iterable[str] = (),
        limit: int = 20,
    ) -> list[dict]:
        introduced = set(introduced_keys)
        desired = {normalize_lemma(x) for x in desired_tokens if normalize_lemma(x)}
        ranked = []
        for item in self.grammar_items(level):
            key = item.get("grammarKey")
            if not key or key in introduced:
                continue
            score = 100
            score -= 7 * _sublevel_rank(item.get("cefrJLevel"), level)
            if item.get("frequencyDispersionLevel"):
                score += 10
            if item.get("coreInventory"):
                score += 8
            if item.get("egp"):
                score += 4
            if item.get("gse"):
                score += 4
            st = str(item.get("sentenceType") or "").upper()
            if "AFF" in st and "DEC" in st:
                score += 8
            elif "AFF" in st and "INT" in st:
                score += 4
            elif "NEG" in st and "DEC" in st:
                score += 2
            item_tokens = self.grammar_tokens(item)
            if desired:
                score += 25 * len(desired & item_tokens)
            prereqs = self.infer_grammar_prerequisites(item, level)
            missing_prereqs = [x for x in prereqs if x not in introduced]
            if missing_prereqs:
                score -= 30
            ranked.append({
                **item,
                "curriculumScore": score,
                "prerequisiteKeys": prereqs,
                "missingPrerequisiteKeys": missing_prereqs,
            })
        ranked.sort(key=lambda x: (-x["curriculumScore"], _sublevel_rank(x.get("cefrJLevel"), level), x.get("grammarKey") or ""))
        return ranked[: max(0, limit)]

    def recommend_lexical(
        self,
        *,
        level: str,
        count: int = 12,
        topics: Iterable[str] = (),
        exclude_lemmas: Iterable[str] = (),
    ) -> list[dict]:
        rows = self.base.recommend_for_lesson(
            level=level,
            count=max(count * 4, count),
            topics=topics,
            exclude_lemmas=exclude_lemmas,
        )
        enriched = []
        for item in rows:
            priority = self.lexical_priority(item)
            pronunciation = self.pronunciation(item.get("lemma") or "")
            score = 0
            tier = priority["priorityTier"]
            score += {"core_spoken": 100, "spoken": 80, "high_general": 65, "general": 45, "low_or_unknown": 10}[tier]
            score += min(20, item.get("qualityScore") or 0) / 5
            enriched.append({
                **item,
                "spokenPriority": priority,
                "pronunciation": pronunciation,
                "curriculumScore": round(score, 2),
            })
        enriched.sort(key=lambda x: (-x["curriculumScore"], x.get("frequencyRank") or 10**9, x.get("lemma") or ""))
        result, seen = [], set()
        for item in enriched:
            lemma = normalize_lemma(item.get("lemma"))
            if lemma in seen:
                continue
            seen.add(lemma)
            result.append(item)
            if len(result) >= count:
                break
        return result


__all__ = ["LanguageReferenceCatalog"]
