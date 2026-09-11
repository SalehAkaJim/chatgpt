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

POSSESSIVE_DETERMINERS = {"my", "our", "your", "her", "their"}
PRESENT_BE = {"am", "is", "are"}
IMPERATIVE_SECOND_TOKENS = {"a", "an", "the", "me", "him", "her", "us", "them", "it", "this", "that"}
IMPERATIVE_BLOCKED_FIRST = {
    "i", "you", "he", "she", "it", "we", "they", "this", "that", "these", "those",
    "a", "an", "the", "there", "what", "where", "who", "when", "why", "how",
    "am", "is", "are", "do", "does", "have", "has", "can", "could", "will", "would",
    "yes", "no",
}
SURFACE_LEMMA = {
    "am": "be", "is": "be", "are": "be", "was": "be", "were": "be",
    "has": "have", "had": "have", "does": "do", "did": "do",
}


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def dump(path: Path, payload: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def lesson_paths(root: Path, course: str, numbers: list[int]) -> list[Path]:
    return [root / "nova/courses" / course / "lessons" / f"{int(n):04d}" / "lesson.source.json" for n in numbers]


def source_hash(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def _surface_lemma(token: str) -> str:
    token = normalize_lemma(token)
    return SURFACE_LEMMA.get(token, token)


def _record_surface_word(history: dict[str, dict], token: str, order: int) -> None:
    lemma = _surface_lemma(token)
    if not lemma:
        return
    record = history.setdefault(lemma, {
        "lemma": lemma,
        "firstLesson": order,
        "lastLesson": order,
        "practiceCount": 0,
        "surfaceForms": [],
    })
    record["firstLesson"] = min(record["firstLesson"], order)
    record["lastLesson"] = max(record["lastLesson"], order)
    record["practiceCount"] += 1
    record["surfaceForms"] = sorted(set(record["surfaceForms"] + [normalize_lemma(token)]))


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


def _third_person_surface_matches(tokens: list[str], lesson_verbs: set[str]) -> bool:
    if len(tokens) < 2 or tokens[0] not in {"he", "she", "it"}:
        return False
    surface = tokens[1]
    for verb in lesson_verbs:
        if surface == verb:
            continue
        candidates = {verb + "s", verb + "es"}
        if verb.endswith("y") and len(verb) > 1 and verb[-2] not in "aeiou":
            candidates.add(verb[:-1] + "ies")
        if surface in candidates:
            return True
    return False


def _looks_like_affirmative_imperative(tokens: list[str], *, is_question: bool, is_negative: bool) -> bool:
    if not tokens or is_question or is_negative:
        return False
    first = tokens[0]
    if first in IMPERATIVE_BLOCKED_FIRST:
        return False
    # Keep this deliberately conservative. Most A1 imperatives in the course are
    # a bare lexical verb followed by a determiner/object pronoun: Ask the student,
    # Bring the form, Call me, etc. One-word imperatives are also valid.
    return len(tokens) == 1 or (len(tokens) >= 2 and tokens[1] in IMPERATIVE_SECOND_TOKENS)


def _special_surface_matches(
    catalog: LanguageReferenceCatalog,
    *,
    level: str,
    text: str,
    lesson_verbs: set[str],
) -> list[dict]:
    """Match CEFR-J meta-label grammar records against actual learner language.

    CEFR-J contains useful meta labels whose wording does not share literal tokens
    with learner-facing English (for example PRESENT (BE) vs `This is ...`). These
    deterministic surface patterns bridge that gap without trusting Lesson metadata.
    """
    normalized = catalog.normalized_grammar_text(text)
    tokens = normalized.split()
    if not tokens:
        return []
    is_question = str(text).strip().endswith("?")
    is_negative = "not" in tokens
    first = tokens[0]
    token_set = set(tokens)
    has_present_be = bool(token_set & PRESENT_BE)
    matches = []

    for item in catalog.grammar_items(level):
        code = str(item.get("shorthandCode") or "")
        matched = False

        if code == "PGEN":
            matched = bool(token_set & POSSESSIVE_DETERMINERS)
        elif code == "INT.what":
            matched = is_question and first == "what"
        elif code == "INT.how_JJ.RB":
            matched = is_question and first == "how" and len(tokens) >= 3
        elif code == "MD.can.INT.AFF":
            matched = is_question and first == "can" and not is_negative
        elif code == "MD.can.AFF":
            matched = (not is_question) and "can" in token_set and not is_negative
        elif code == "TA.PRESENT.be.AFF":
            matched = (not is_question) and (not is_negative) and has_present_be
        elif code == "TA.PRESENT.be.INT.AFF":
            matched = is_question and (not is_negative) and first in PRESENT_BE
        elif code == "TA.PRESENT.be.NEG":
            matched = (not is_question) and is_negative and has_present_be
        elif code == "TA.PRESENT.do.AFF":
            matched = (not is_question) and not is_negative and bool(token_set & lesson_verbs)
        elif code == "TA.PRESENT.does.AFF":
            matched = (not is_question) and (not is_negative) and _third_person_surface_matches(tokens, lesson_verbs)
        elif code == "EX.there.AFF":
            matched = (
                (not is_question)
                and (not is_negative)
                and len(tokens) >= 2
                and tokens[0] == "there"
                and tokens[1] in PRESENT_BE
            )
        elif code == "VG":
            matched = any(
                token.endswith("ing") and (index == 0 or tokens[index - 1] != "not")
                for index, token in enumerate(tokens)
            )
        elif code == "IMP.V.AFF":
            matched = _looks_like_affirmative_imperative(
                tokens,
                is_question=is_question,
                is_negative=is_negative,
            )
        elif code == "DT.is_this.that":
            matched = is_question and len(tokens) >= 2 and tokens[0] == "is" and tokens[1] in {"this", "that"}
        elif code == "DT.this.that_is":
            matched = (not is_question) and len(tokens) >= 2 and tokens[0] in {"this", "that"} and tokens[1] == "is"

        if matched:
            matches.append({**item, "matchScore": 1.0, "matchedTokens": sorted(token_set), "matchMode": "cefrj_pattern"})
    return matches


def _record_surface_evidence(
    grammar_history: dict[str, dict],
    catalog: LanguageReferenceCatalog,
    *,
    level: str,
    text: str,
    order: int,
    lesson_verbs: set[str],
    evidence: str,
) -> None:
    generic = catalog.match_grammar(level=level, construction_form=text, limit=6)
    for match in generic:
        if (match.get("matchScore") or 0) >= 0.72:
            _record_grammar(grammar_history, match, order, evidence)
    for match in _special_surface_matches(catalog, level=level, text=text, lesson_verbs=lesson_verbs):
        _record_grammar(grammar_history, match, order, evidence + "_pattern")


def build_curriculum_state(root: Path, course: str, numbers: list[int], catalog: LanguageReferenceCatalog) -> dict:
    known_lemmas: dict[str, dict] = {}
    practiced_surface: dict[str, dict] = {}
    grammar_history: dict[str, dict] = {}
    construction_history: dict[str, dict] = {}
    lesson_history = []

    for path in lesson_paths(root, course, numbers):
        if not path.exists():
            continue
        lesson = load(path)
        order = int(lesson.get("sortOrder") or 0)
        level = lesson.get("levelKey")
        lexical_items = lesson.get("lexicalItems", []) or []
        lesson_verbs = {
            normalize_lemma(x.get("lemma") or x.get("displayForm"))
            for x in lexical_items
            if str(x.get("partOfSpeech") or "").lower() == "verb"
        }
        lesson_verbs.discard("")

        lesson_history.append({
            "lessonKey": lesson.get("lessonKey"),
            "sortOrder": order,
            "levelKey": level,
            "primaryOutcomeKey": lesson.get("primaryOutcomeKey"),
            "participants": ((lesson.get("curriculum") or {}).get("story") or {}).get("participants", []),
            "arcKey": ((lesson.get("curriculum") or {}).get("story") or {}).get("arcKey"),
            "sourceHash": source_hash(path),
        })

        for lexical in lexical_items:
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

        for construction in (lesson.get("curriculum") or {}).get("targetConstructions", []) or []:
            form = construction.get("form") or ""
            ckey = construction.get("key") or form
            matches = catalog.match_grammar(level=level, construction_form=form, limit=4)
            best = matches[0] if matches else None
            history = construction_history.setdefault(ckey, {
                "constructionKey": ckey,
                "form": form,
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
            for special in _special_surface_matches(catalog, level=level, text=form, lesson_verbs=lesson_verbs):
                _record_grammar(grammar_history, special, order, "target_construction_pattern")

        seen_turn_signatures = set()
        for turn in lesson.get("turns", []) or []:
            if turn.get("role") != "learner":
                continue
            text = turn.get("speechTargetEn") or turn.get("textEn") or ""
            normalized = catalog.normalized_grammar_text(text)
            if not normalized or normalized in seen_turn_signatures:
                continue
            seen_turn_signatures.add(normalized)
            for token in normalized.split():
                _record_surface_word(practiced_surface, token, order)
            _record_surface_evidence(
                grammar_history,
                catalog,
                level=level,
                text=text,
                order=order,
                lesson_verbs=lesson_verbs,
                evidence="learner_practice",
            )

    return {
        "schemaVersion": 4,
        "courseCode": course,
        "lastLessonSortOrder": max((x["sortOrder"] for x in lesson_history), default=0),
        "knownLexical": sorted(known_lemmas.values(), key=lambda x: (x["firstLesson"], x["lemma"])),
        "practicedSurfaceVocabulary": sorted(practiced_surface.values(), key=lambda x: (x["firstLesson"], x["lemma"])),
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
    *, state: dict, catalog: LanguageReferenceCatalog, level: str, topic_hints: list[str] | None = None,
) -> dict:
    next_order = int(state.get("lastLessonSortOrder") or 0) + 1
    known_lemmas = {x["lemma"] for x in state.get("knownLexical", [])}
    practiced_lemmas = {x["lemma"] for x in state.get("practicedSurfaceVocabulary", [])}
    introduced_grammar = {x["grammarKey"] for x in state.get("introducedGrammar", [])}
    topics = topic_hints or []

    grammar_candidates = catalog.rank_grammar_candidates(
        level=level, introduced_keys=introduced_grammar, desired_tokens=topics, limit=12,
    )
    lexical_candidates = catalog.recommend_lexical(
        level=level,
        count=16,
        topics=topics,
        exclude_lemmas=known_lemmas | practiced_lemmas,
    )
    lexical_review = review_due(state.get("knownLexical", []), next_order=next_order, limit=10)
    grammar_review = review_due(state.get("introducedGrammar", []), next_order=next_order, min_gap=4, max_gap=12, limit=8)

    latest = state.get("lessonHistory", [])[-1] if state.get("lessonHistory") else {}
    recent = state.get("lessonHistory", [])[-5:]
    spec = {
        "schemaVersion": 4,
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
            "alreadyPracticedSurfaceRule": "A word already produced by the learner is not proposed as a brand-new lexical target merely because it was absent from lexicalItems metadata.",
        },
        "grammarCandidates": grammar_candidates,
        "lexicalCandidates": lexical_candidates,
        "reviewDue": {"lexical": lexical_review, "grammar": grammar_review},
        "storyConstraints": {
            "doNotRepeatImmediateParticipants": latest.get("participants", []),
            "recentParticipantSets": [x.get("participants", []) for x in recent],
            "recentArcs": [x.get("arcKey") for x in recent if x.get("arcKey")],
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
            "novaCreates": ["scenario", "characters/learner role choice within story rules", "dialogue wording", "activities", "Persian instructional copy"],
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
        "practicedSurface": len(state["practicedSurfaceVocabulary"]),
        "introducedGrammar": len(state["introducedGrammar"]),
        "grammarCandidates": len(spec["grammarCandidates"]),
        "lexicalCandidates": len(spec["lexicalCandidates"]),
    }, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
