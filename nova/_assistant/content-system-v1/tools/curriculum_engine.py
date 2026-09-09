#!/usr/bin/env python3
"""Data-driven Nova curriculum planner.

The planner turns the committed Language Reference Layer plus prior canonical
Lessons into a bounded spec for the next Lesson. It does not write dialogue.
AI authoring receives this spec and remains responsible only for the creative
scenario, natural dialogue, activities, and Persian teaching copy.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

from language_reference_catalog import LanguageReferenceCatalog
from reference_data import normalize_lemma


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def dump(path: Path, payload: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def lesson_paths(root: Path, course: str, numbers: list[int]) -> list[Path]:
    return [root / "nova/courses" / course / "lessons" / f"{int(n):04d}" / "lesson.source.json" for n in numbers]


def source_hash(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def _record_grammar(grammar_history: dict[str, dict], match: dict, order: int, evidence: str) -> None:
    key = match.get("grammarKey")
    if not key:
        return
    record = grammar_history.setdefault(key, {
        "grammarKey": key,
        "grammaticalItem": match.get("grammaticalItem"),
        "firstLesson": order,
        "lastLesson": order,
        "exposureCount": 0,
        "evidenceKinds": [],
        "maxMatchScore": 0.0,
    })
    record["firstLesson"] = min(record["firstLesson"], order)
    record["lastLesson"] = max(record["lastLesson"], order)
    record["exposureCount"] += 1
    record["evidenceKinds"] = sorted(set(record["evidenceKinds"] + [evidence]))
    record["maxMatchScore"] = max(float(record.get("maxMatchScore") or 0), float(match.get("matchScore") or 0))


def build_curriculum_state(root: Path, course: str, numbers: list[int], catalog: LanguageReferenceCatalog) -> dict:
    known_lemmas: dict[str, dict] = {}
    grammar_history: dict[str, dict] = {}
    construction_history: dict[str, dict] = {}
    lesson_history = []

    for path in lesson_paths(root, course, numbers):
        if not path.exists():
            continue
        lesson = load(path)
        order = int(lesson.get("sortOrder") or 0)
        level = lesson.get("levelKey")
        lesson_history.append({
            "lessonKey": lesson.get("lessonKey"),
            "sortOrder": order,
            "levelKey": level,
            "primaryOutcomeKey": lesson.get("primaryOutcomeKey"),
            "participants": ((lesson.get("curriculum") or {}).get("story") or {}).get("participants", []),
            "arcKey": ((lesson.get("curriculum") or {}).get("story") or {}).get("arcKey"),
            "sourceHash": source_hash(path),
        })

        for lexical in lesson.get("lexicalItems", []) or []:
            lemma = normalize_lemma(lexical.get("lemma") or lexical.get("displayForm"))
            if not lemma:
                continue
            record = known_lemmas.setdefault(lemma, {
                "lemma": lemma,
                "firstLesson": order,
                "lastLesson": order,
                "roles": [],
                "referenceKeys": [],
            })
            record["firstLesson"] = min(record["firstLesson"], order)
            record["lastLesson"] = max(record["lastLesson"], order)
            record["roles"] = sorted(set(record["roles"] + [lexical.get("role")]))
            ref_key = (lexical.get("metadata") or {}).get("referenceKey")
            if ref_key:
                record["referenceKeys"] = sorted(set(record["referenceKeys"] + [ref_key]))

        # Explicit target constructions are the strongest curriculum evidence.
        for construction in (lesson.get("curriculum") or {}).get("targetConstructions", []) or []:
            ckey = construction.get("key") or construction.get("form")
            matches = catalog.match_grammar(level=level, construction_form=construction.get("form") or "", limit=4)
            best = matches[0] if matches else None
            history = construction_history.setdefault(ckey, {
                "constructionKey": ckey,
                "form": construction.get("form"),
                "firstLesson": order,
                "lastLesson": order,
                "grammarMatches": [],
            })
            history["lastLesson"] = order
            if best:
                history["grammarMatches"].append({
                    "grammarKey": best.get("grammarKey"),
                    "matchScore": best.get("matchScore"),
                    "lesson": order,
                })
                if (best.get("matchScore") or 0) >= 0.55:
                    _record_grammar(grammar_history, best, order, "target_construction")

        # Canonical learner responses catch grammar actually practised even when
        # old Lessons did not annotate it as a targetConstruction. This is critical
        # for legacy/backfilled Lessons such as "I'm + name".
        seen_turn_signatures = set()
        for turn in lesson.get("turns", []) or []:
            if turn.get("role") != "learner":
                continue
            text = turn.get("speechTargetEn") or turn.get("textEn") or ""
            normalized = catalog.normalized_grammar_text(text)
            if not normalized or normalized in seen_turn_signatures:
                continue
            seen_turn_signatures.add(normalized)
            matches = catalog.match_grammar(level=level, construction_form=text, limit=5)
            for match in matches:
                if (match.get("matchScore") or 0) < 0.72:
                    continue
                _record_grammar(grammar_history, match, order, "learner_practice")

    return {
        "schemaVersion": 2,
        "courseCode": course,
        "lastLessonSortOrder": max((x["sortOrder"] for x in lesson_history), default=0),
        "knownLexical": sorted(known_lemmas.values(), key=lambda x: (x["firstLesson"], x["lemma"])),
        "introducedGrammar": sorted(grammar_history.values(), key=lambda x: (x["firstLesson"], x["grammarKey"])),
        "constructionHistory": sorted(construction_history.values(), key=lambda x: (x["firstLesson"], x["constructionKey"])),
        "lessonHistory": lesson_history,
    }


def review_due(items: list[dict], *, next_order: int, min_gap: int = 3, max_gap: int = 9, limit: int = 12) -> list[dict]:
    due = []
    for item in items:
        gap = next_order - int(item.get("lastLesson") or 0)
        if min_gap <= gap <= max_gap:
            due.append({**item, "gapLessons": gap})
    due.sort(key=lambda x: (-x["gapLessons"], x.get("firstLesson") or 0, x.get("lemma") or x.get("grammarKey") or ""))
    return due[:limit]


def build_next_spec(
    *,
    state: dict,
    catalog: LanguageReferenceCatalog,
    level: str,
    topic_hints: list[str] | None = None,
) -> dict:
    next_order = int(state.get("lastLessonSortOrder") or 0) + 1
    known_lemmas = {x["lemma"] for x in state.get("knownLexical", [])}
    introduced_grammar = {x["grammarKey"] for x in state.get("introducedGrammar", [])}
    topics = topic_hints or []

    grammar_candidates = catalog.rank_grammar_candidates(
        level=level,
        introduced_keys=introduced_grammar,
        desired_tokens=topics,
        limit=12,
    )
    lexical_candidates = catalog.recommend_lexical(
        level=level,
        count=16,
        topics=topics,
        exclude_lemmas=known_lemmas,
    )
    lexical_review = review_due(state.get("knownLexical", []), next_order=next_order, limit=10)
    grammar_review = review_due(state.get("introducedGrammar", []), next_order=next_order, min_gap=4, max_gap=12, limit=8)

    latest = state.get("lessonHistory", [])[-1] if state.get("lessonHistory") else {}
    recent = state.get("lessonHistory", [])[-5:]
    recent_participant_sets = [x.get("participants", []) for x in recent]
    recent_arcs = [x.get("arcKey") for x in recent if x.get("arcKey")]

    spec = {
        "schemaVersion": 2,
        "courseCode": state.get("courseCode"),
        "levelKey": level,
        "sortOrder": next_order,
        "specKey": f"{state.get('courseCode')}-{level}-LESSON-SPEC-{next_order:04d}",
        "policy": {
            "minimumQualityScore": 90,
            "maxNewLexicalTargets": 3,
            "preferredNewLexicalTargets": 1,
            "grammarSelection": "Choose at most one new CEFR-J grammar target unless the Lesson is explicitly consolidation-only.",
            "reviewRequirement": "Reuse at least one due lexical or grammar item when pedagogically natural.",
            "usageRequirement": "Every new scored target collocation must have committed corpus evidence or an explicit Nova usage fallback with rationale.",
            "pronunciationRequirement": "Expose CMUdict evidence when present; missing CMUdict coverage does not invent a pronunciation.",
            "wordSemantics": "Only true lexemes enter lexicalItems/words; compositional phrases remain constructions/turn text.",
        },
        "grammarCandidates": grammar_candidates,
        "lexicalCandidates": lexical_candidates,
        "reviewDue": {"lexical": lexical_review, "grammar": grammar_review},
        "storyConstraints": {
            "doNotRepeatImmediateParticipants": latest.get("participants", []),
            "recentParticipantSets": recent_participant_sets,
            "recentArcs": recent_arcs,
            "recurrenceGuidance": "A prior pair/arc may return after sufficient spacing when continuity adds value; never force recurrence for vocabulary convenience.",
        },
        "authoringBoundary": {
            "dataDecides": [
                "CEFR grammar eligibility and candidate order",
                "lexical sense eligibility and frequency priority",
                "review due signals",
                "pronunciation evidence",
                "usage/collocation evidence requirements",
            ],
            "novaCreates": [
                "scenario",
                "characters/learner role choice within story rules",
                "dialogue wording",
                "activities",
                "Persian instructional copy",
            ],
        },
    }
    raw = json.dumps(spec, ensure_ascii=False, sort_keys=True, separators=(",", ":"))
    spec["specHash"] = hashlib.sha256(raw.encode("utf-8")).hexdigest()
    return spec


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("--repo-root", default=".")
    p.add_argument("--course", default="en-fa")
    p.add_argument("--level", default="A1")
    p.add_argument("--config", type=Path, required=True)
    p.add_argument("--state-output", type=Path, required=True)
    p.add_argument("--next-spec-output", type=Path, required=True)
    p.add_argument("--topic", action="append", default=[])
    args = p.parse_args()

    root = Path(args.repo_root).resolve()
    config = load(args.config)
    numbers = [int(x) for x in config.get("generatedLessons", [])]
    catalog = LanguageReferenceCatalog(root, args.course)
    if not catalog.extensions_ready:
        raise SystemExit("Language reference extensions are not synced; run sync_language_reference_extensions.py first")
    state = build_curriculum_state(root, args.course, numbers, catalog)
    spec = build_next_spec(state=state, catalog=catalog, level=args.level, topic_hints=args.topic)
    dump(args.state_output, state)
    dump(args.next_spec_output, spec)
    print(json.dumps({
        "lastLesson": state["lastLessonSortOrder"],
        "nextLesson": spec["sortOrder"],
        "knownLexical": len(state["knownLexical"]),
        "introducedGrammar": len(state["introducedGrammar"]),
        "grammarCandidates": len(spec["grammarCandidates"]),
        "lexicalCandidates": len(spec["lexicalCandidates"]),
    }, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
