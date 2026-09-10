#!/usr/bin/env python3
"""Backfill/build per-Lesson Language Plans from committed source evidence.

The plan is generated evidence, not a second authoring source. It binds a canonical
Lesson to CEFR grammar matches, spoken-frequency signals, pronunciation evidence,
and Tatoeba usage evidence. Future production Lessons can be blocked when required
evidence is absent.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

from language_reference_catalog import LanguageReferenceCatalog
from reference_data import normalize_lemma
from sync_language_reference_extensions import collocation_queries


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def dump(path: Path, payload: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def file_hash(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def _usage_fallbacks(lesson: dict) -> dict[str, dict]:
    raw = ((lesson.get("curriculum") or {}).get("languageReference") or {}).get("usageFallbacks", [])
    return {normalize_lemma(x.get("query")): x for x in raw if isinstance(x, dict) and x.get("query")}


def _compatible_fallback(query: str, fallbacks: dict[str, dict]) -> tuple[dict | None, str | None]:
    """Return an explicit fallback that safely covers the generated collocation.

    Exact matches remain preferred. A longer authored phrase may cover its exact
    lexical collocation window (for example `that man is old` -> `man is old`).
    Short discourse prompts of the form `and X?` may be covered by an authored
    fallback containing the complete X phrase (for example `I'm free next week`
    -> `and next week`). This avoids duplicate self-evidence while still requiring
    an explicit authored naturalness rationale for the same lexical core.
    """
    exact = fallbacks.get(query)
    if exact:
        return exact, query

    query_words = query.split()
    if len(query_words) >= 2:
        for fallback_query, fallback in fallbacks.items():
            fallback_words = fallback_query.split()
            if len(fallback_words) >= len(query_words):
                for start in range(0, len(fallback_words) - len(query_words) + 1):
                    if fallback_words[start:start + len(query_words)] == query_words:
                        return fallback, fallback_query

    if query_words[:1] == ["and"] and len(query_words) >= 2:
        lexical_core = query_words[1:]
        for fallback_query, fallback in fallbacks.items():
            fallback_words = fallback_query.split()
            if len(fallback_words) >= len(lexical_core):
                for start in range(0, len(fallback_words) - len(lexical_core) + 1):
                    if fallback_words[start:start + len(lexical_core)] == lexical_core:
                        return fallback, fallback_query

    return None, None


def build_plan(lesson: dict, lesson_path: Path, catalog: LanguageReferenceCatalog, *, enforce_from: int) -> dict:
    level = lesson.get("levelKey")
    order = int(lesson.get("sortOrder") or 0)
    enforced = order >= enforce_from
    errors: list[str] = []
    warnings: list[str] = []

    target_lemmas = {
        normalize_lemma(x.get("lemma") or x.get("displayForm"))
        for x in lesson.get("lexicalItems", [])
        if x.get("role") == "target"
    }
    target_lemmas.discard("")

    grammar_evidence = []
    for construction in (lesson.get("curriculum") or {}).get("targetConstructions", []) or []:
        form = str(construction.get("form") or "")
        matches = catalog.match_grammar(level=level, construction_form=form, limit=5)
        best = matches[0] if matches else None
        form_tokens = catalog.construction_tokens(form)
        is_lexical_frame = bool(form_tokens & target_lemmas)
        if best and (best.get("matchScore") or 0) >= 0.55:
            kind = "cefrj_grammar_backed"
            status = "PASS"
        elif is_lexical_frame:
            kind = "lexical_frame"
            status = "PASS"
        else:
            kind = "nova_construction"
            status = "REVIEW"
            warnings.append(f"{lesson.get('lessonKey')}: construction {construction.get('key') or form} has no confident CEFR-J grammar match")
        grammar_evidence.append({
            "constructionKey": construction.get("key"),
            "form": form,
            "kind": kind,
            "status": status,
            "bestGrammarMatch": ({
                "grammarKey": best.get("grammarKey"),
                "grammaticalItem": best.get("grammaticalItem"),
                "cefr": best.get("cefr"),
                "cefrJLevel": best.get("cefrJLevel"),
                "matchScore": best.get("matchScore"),
                "prerequisiteKeys": catalog.infer_grammar_prerequisites(best, level),
            } if best else None),
            "alternatives": [
                {"grammarKey": x.get("grammarKey"), "grammaticalItem": x.get("grammaticalItem"), "matchScore": x.get("matchScore")}
                for x in matches[1:4]
            ],
        })

    lexical_evidence = []
    for item in lesson.get("lexicalItems", []) or []:
        lemma = normalize_lemma(item.get("lemma") or item.get("displayForm"))
        priority = catalog.lexical_priority(item)
        pronunciation = catalog.pronunciation(lemma)
        if item.get("role") == "target" and not pronunciation:
            warnings.append(f"{lesson.get('lessonKey')}: target word {lemma} has no CMUdict pronunciation evidence")
        lexical_evidence.append({
            "lexicalKey": item.get("lexicalKey"),
            "lemma": lemma,
            "role": item.get("role"),
            "referenceKey": (item.get("metadata") or {}).get("referenceKey"),
            "spokenPriority": priority,
            "pronunciation": ({
                "primaryArpabet": pronunciation.get("primaryArpabet"),
                "arpabet": pronunciation.get("arpabet"),
                "stressPattern": pronunciation.get("stressPattern"),
            } if pronunciation else None),
        })

    fallbacks = _usage_fallbacks(lesson)
    usage_evidence = []
    for query_item in collocation_queries(lesson):
        query = normalize_lemma(query_item.get("query"))
        matches = catalog.usage_evidence(query)
        best = matches[0] if matches else None
        evidence_count = best.get("sampleCount", 0) if best else 0
        fallback, fallback_query = _compatible_fallback(query, fallbacks)
        status = "corpus_evidence" if evidence_count > 0 else ("explicit_fallback" if fallback else "no_evidence")
        # Only target collocations are blocking in future production; a grammar
        # construction with no exact Tatoeba hit can still be supported by other
        # queries and deterministic naturalness checks.
        if query_item.get("kind") == "target_collocation" and status == "no_evidence":
            msg = f"{lesson.get('lessonKey')}: target collocation '{query}' has no committed Tatoeba evidence or explicit usage fallback"
            if enforced:
                errors.append(msg)
            else:
                warnings.append(msg)
        usage_evidence.append({
            **query_item,
            "status": status,
            "sampleCount": evidence_count,
            "evidenceQuery": best.get("query") if best else fallback_query,
            "examples": (best.get("examples", [])[:3] if best else []),
            "fallback": fallback,
            "fallbackMatch": ("exact" if fallback_query == query else "compatible_phrase") if fallback else None,
        })

    plan = {
        "schemaVersion": 1,
        "courseCode": lesson.get("courseCode"),
        "lessonKey": lesson.get("lessonKey"),
        "sortOrder": order,
        "levelKey": level,
        "lessonSourceHash": file_hash(lesson_path),
        "enforceFromSortOrder": enforce_from,
        "enforced": enforced,
        "grammarEvidence": grammar_evidence,
        "lexicalEvidence": lexical_evidence,
        "usageEvidence": usage_evidence,
        "warnings": warnings,
        "errors": errors,
        "status": "PASS" if not errors else "FAIL",
    }
    raw = json.dumps(plan, ensure_ascii=False, sort_keys=True, separators=(",", ":"))
    plan["planHash"] = hashlib.sha256(raw.encode("utf-8")).hexdigest()
    return plan


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("--repo-root", default=".")
    p.add_argument("--course", default="en-fa")
    p.add_argument("--config", type=Path, required=True)
    p.add_argument("--enforce-from", type=int, default=25)
    p.add_argument("--summary-output", type=Path)
    args = p.parse_args()

    root = Path(args.repo_root).resolve()
    config = load(args.config)
    catalog = LanguageReferenceCatalog(root, args.course)
    if not catalog.extensions_ready:
        raise SystemExit("Language reference extensions are not synced")
    reports = []
    for number in config.get("generatedLessons", []):
        lesson_dir = root / "nova/courses" / args.course / "lessons" / f"{int(number):04d}"
        lesson_path = lesson_dir / "lesson.source.json"
        lesson = load(lesson_path)
        plan = build_plan(lesson, lesson_path, catalog, enforce_from=args.enforce_from)
        dump(lesson_dir / "language.plan.json", plan)
        reports.append({
            "lessonKey": plan["lessonKey"],
            "sortOrder": plan["sortOrder"],
            "status": plan["status"],
            "grammarEvidence": len(plan["grammarEvidence"]),
            "lexicalEvidence": len(plan["lexicalEvidence"]),
            "usageEvidence": len(plan["usageEvidence"]),
            "warnings": plan["warnings"],
            "errors": plan["errors"],
        })
    summary = {
        "schemaVersion": 1,
        "courseCode": args.course,
        "enforceFromSortOrder": args.enforce_from,
        "status": "PASS" if not any(x["errors"] for x in reports) else "FAIL",
        "lessonCount": len(reports),
        "reports": reports,
    }
    if args.summary_output:
        dump(args.summary_output, summary)
    print(json.dumps({"status": summary["status"], "lessons": len(reports), "warnings": sum(len(x["warnings"]) for x in reports)}, ensure_ascii=False))
    return 0 if summary["status"] == "PASS" else 2


if __name__ == "__main__":
    raise SystemExit(main())
