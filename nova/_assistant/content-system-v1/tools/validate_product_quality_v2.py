#!/usr/bin/env python3
from __future__ import annotations

import json
import re
from collections import Counter
from pathlib import Path

WORD_RE = re.compile(r"[A-Za-z]+(?:'[A-Za-z]+)?")
LATIN_RE = re.compile(r"[A-Za-z]")


def norm(value: object) -> str:
    return re.sub(r"\s+", " ", str(value or "").strip().lower().replace("’", "'"))


def load_policy(root: Path) -> dict:
    return json.loads((root / "nova/_assistant/content-system-v1/product_quality_v2.policy.json").read_text(encoding="utf-8"))


def _choice_options(activity: dict) -> list[str]:
    config = activity.get("config") or {}
    if activity.get("type") == "fill_blank":
        return [str(x) for x in (config.get("optionsEn") or [])]
    return [str(x) for x in (config.get("options") or config.get("optionsEn") or [])]


def _english_choice_options(activity: dict) -> list[str]:
    config = activity.get("config") or {}
    explicit = config.get("optionsEn")
    if isinstance(explicit, list):
        return [str(x) for x in explicit]
    options = config.get("options")
    if isinstance(options, list) and options and all(LATIN_RE.search(str(x) or "") for x in options):
        return [str(x) for x in options]
    return []


def _correct_answer(activity: dict) -> str:
    config = activity.get("config") or {}
    activity_type = activity.get("type")
    if activity_type == "sentence_order":
        return str(config.get("answerEn") or "")
    if activity_type == "speak":
        return str(config.get("textEn") or "")
    if activity_type in {"response_choice", "comprehension", "fill_blank"}:
        options = config.get("optionsEn") if activity_type == "fill_blank" else (config.get("options") or config.get("optionsEn") or [])
        answer_index = config.get("answerIndex")
        if isinstance(answer_index, int) and 0 <= answer_index < len(options):
            return str(options[answer_index])
    return ""


def _learner_production_texts(lesson: dict) -> list[str]:
    texts = []
    for turn in lesson.get("turns") or []:
        if turn.get("role") == "learner":
            texts.append(str(turn.get("speechTargetEn") or turn.get("textEn") or ""))
    for activity in lesson.get("activities") or []:
        if activity.get("type") == "speak":
            texts.append(str((activity.get("config") or {}).get("textEn") or ""))
    return texts


def _activity_signature(lesson: dict) -> str:
    return ">".join(str(a.get("type") or "?") for a in lesson.get("activities") or [])


def _target_items(lesson: dict) -> list[dict]:
    return [x for x in lesson.get("lexicalItems") or [] if x.get("role") == "target"]


def _review_items(lesson: dict) -> list[dict]:
    return [x for x in lesson.get("lexicalItems") or [] if x.get("role") == "review"]


def _contains_word(text: str, lemma: str) -> bool:
    if not lemma:
        return False
    words = [x.lower() for x in WORD_RE.findall(str(text or ""))]
    return lemma.lower() in words


def _audit_item_for_option(activity: dict, option: str) -> dict | None:
    metadata = activity.get("metadata") or {}
    audit = metadata.get("distractorAudit") or {}
    for item in audit.get("items") or []:
        if isinstance(item, dict) and norm(item.get("option")) == norm(option):
            return item
    return None


def validate_lesson_quality_v2(lesson: dict, policy: dict) -> dict:
    order = int(lesson.get("sortOrder") or 0)
    enforce_from = int(policy.get("enforceFromSortOrder", 125))
    legacy = policy.get("legacyRemediation") or {}
    legacy_from = int(legacy.get("fromSortOrder", 40))
    legacy_to = int(legacy.get("toSortOrder", 84))
    hard_legacy_placeholders = bool(legacy.get("hardGatePlaceholderDistractors", True))
    hard_legacy_bad_english = bool(legacy.get("hardGateKnownBadEnglishDistractors", True))
    errors: list[str] = []
    warnings: list[str] = []

    distractor_policy = policy.get("distractors") or {}
    banned_fa = [norm(x) for x in distractor_policy.get("bannedPlaceholderPatternsFa") or []]
    banned_en = {norm(x) for x in distractor_policy.get("bannedGenericOptionsEn") or []}
    banned_exact_en = {norm(x) for x in distractor_policy.get("bannedExactOptionsEn") or []}
    audit_from = int(distractor_policy.get("requireExplicitEnglishDistractorAuditFromSortOrder", enforce_from))

    for activity in lesson.get("activities") or []:
        activity_key = activity.get("activityKey") or "?"
        for option in _choice_options(activity):
            normalized = norm(option)
            is_placeholder = any(p and p in normalized for p in banned_fa)
            is_generic_en = normalized in banned_en
            is_known_bad_en = normalized in banned_exact_en
            if is_placeholder or is_generic_en:
                message = f"PQ2-H01 {lesson.get('lessonKey')}/{activity_key}: low-quality placeholder/generic distractor: {option!r}"
                if order >= enforce_from or (hard_legacy_placeholders and legacy_from <= order <= legacy_to):
                    errors.append(message)
                else:
                    warnings.append(message)
            if is_known_bad_en:
                message = f"PQ2-H07 {lesson.get('lessonKey')}/{activity_key}: known ungrammatical/unnatural distractor: {option!r}"
                if order >= enforce_from or (hard_legacy_bad_english and legacy_from <= order <= legacy_to):
                    errors.append(message)
                else:
                    warnings.append(message)

        if order >= audit_from:
            english_options = _english_choice_options(activity)
            answer_index = (activity.get("config") or {}).get("answerIndex")
            if english_options and isinstance(answer_index, int) and 0 <= answer_index < len(english_options):
                audit = (activity.get("metadata") or {}).get("distractorAudit") or {}
                if audit.get("reviewerType") != "model":
                    errors.append(
                        f"PQ2-H08 {lesson.get('lessonKey')}/{activity_key}: English choices require metadata.distractorAudit.reviewerType='model'"
                    )
                for index, option in enumerate(english_options):
                    if index == answer_index:
                        continue
                    item = _audit_item_for_option(activity, option)
                    if not item:
                        errors.append(
                            f"PQ2-H08 {lesson.get('lessonKey')}/{activity_key}: missing explicit distractor audit for {option!r}"
                        )
                        continue
                    if item.get("grammatical") is not True or item.get("natural") is not True:
                        errors.append(
                            f"PQ2-H08 {lesson.get('lessonKey')}/{activity_key}: distractor must be grammatical and natural: {option!r}"
                        )
                    reason = str(item.get("contrastReasonFa") or "").strip()
                    if len(reason) < 8:
                        errors.append(
                            f"PQ2-H08 {lesson.get('lessonKey')}/{activity_key}: distractor audit needs a concrete Persian contrast reason: {option!r}"
                        )

    naturalness = policy.get("naturalness") or {}
    teacher_prefixes = tuple(str(x) for x in naturalness.get("teacherDirectivePrefixes") or [])
    banned_exact = {norm(x) for x in naturalness.get("bannedExactUtterances") or []}
    for turn in lesson.get("turns") or []:
        text = str(turn.get("textEn") or "").strip()
        if turn.get("role") == "character" and text.startswith(teacher_prefixes):
            message = f"PQ2-H02 {lesson.get('lessonKey')}/{turn.get('turnKey')}: character dialogue is a teacher directive: {text!r}"
            if order >= enforce_from or legacy_from <= order <= legacy_to:
                errors.append(message)
            else:
                warnings.append(message)
        if norm(text) in banned_exact:
            message = f"PQ2-H03 {lesson.get('lessonKey')}/{turn.get('turnKey')}: known unnatural/weak utterance: {text!r}"
            if order >= enforce_from or legacy_from <= order <= max(legacy_to, 124):
                errors.append(message)
            else:
                warnings.append(message)

    language_reference = (lesson.get("curriculum") or {}).get("languageReference") or {}
    usage_fallbacks = language_reference.get("usageFallbacks") or []
    max_fallbacks = int(naturalness.get("maxUsageFallbacksPerLessonBeforeWarning", 5))
    if len(usage_fallbacks) > max_fallbacks:
        warnings.append(
            f"PQ2-W01 {lesson.get('lessonKey')}: {len(usage_fallbacks)} usage fallbacks; naturalness/corpus evidence deserves extra review"
        )

    if order >= enforce_from:
        metadata = lesson.get("metadata") or {}
        archetype = str(metadata.get("lessonArchetype") or "").strip()
        allowed = set((policy.get("wave") or {}).get("requiredArchetypes") or [])
        if not archetype:
            errors.append(f"PQ2-H04 {lesson.get('lessonKey')}: metadata.lessonArchetype is required from quality-v2 enforcement")
        elif allowed and archetype not in allowed:
            errors.append(f"PQ2-H04 {lesson.get('lessonKey')}: unsupported lessonArchetype {archetype!r}")

        grammar_keys = language_reference.get("grammarTargetKeys") or []
        if archetype == "grammar_pattern" and not grammar_keys:
            errors.append(f"PQ2-H05 {lesson.get('lessonKey')}: grammar_pattern requires at least one committed grammarTargetKey")
        if archetype == "review_recombination" and not _review_items(lesson):
            errors.append(f"PQ2-H06 {lesson.get('lessonKey')}: review_recombination requires at least one lexical review item")

    return {
        "status": "PASS" if not errors else "FAIL",
        "errors": errors,
        "warnings": warnings,
    }


def validate_product_quality_v2(lessons: list[dict], policy: dict) -> dict:
    lessons = sorted(lessons, key=lambda x: int(x.get("sortOrder") or 0))
    errors: list[str] = []
    warnings: list[str] = []
    lesson_reports = []

    for lesson in lessons:
        local = validate_lesson_quality_v2(lesson, policy)
        errors.extend(local["errors"])
        warnings.extend(local["warnings"])
        lesson_reports.append({
            "lessonKey": lesson.get("lessonKey"),
            "sortOrder": int(lesson.get("sortOrder") or 0),
            **local,
        })

    enforce_from = int(policy.get("enforceFromSortOrder", 125))
    wave_policy = policy.get("wave") or {}
    wave_size = int(wave_policy.get("size", 8))
    minimum_archetypes = int(wave_policy.get("minimumDistinctArchetypes", 3))
    maximum_same = int(wave_policy.get("maximumSameArchetype", 4))
    minimum_signatures = int(wave_policy.get("minimumDistinctActivitySignatures", 3))
    minimum_grammar = int(wave_policy.get("minimumGrammarFocusedLessons", 2))
    minimum_review_lessons = int(wave_policy.get("minimumReviewRecombinationLessons", 1))
    minimum_legacy_reviews = int(wave_policy.get("minimumLegacyReviewItems", 4))

    intro_order: dict[str, int] = {}
    for lesson in lessons:
        order = int(lesson.get("sortOrder") or 0)
        for item in _target_items(lesson):
            lemma = norm(item.get("lemma") or item.get("displayForm"))
            if lemma and lemma not in intro_order:
                intro_order[lemma] = order

    quality_v2_lessons = [x for x in lessons if int(x.get("sortOrder") or 0) >= enforce_from]
    for i in range(0, len(quality_v2_lessons), wave_size):
        window = quality_v2_lessons[i:i + wave_size]
        if len(window) < wave_size:
            continue
        first_order = int(window[0].get("sortOrder") or 0)
        last_order = int(window[-1].get("sortOrder") or 0)
        if last_order - first_order != wave_size - 1:
            continue

        archetypes = [str((x.get("metadata") or {}).get("lessonArchetype") or "") for x in window]
        nonempty_archetypes = [x for x in archetypes if x]
        archetype_counts = Counter(nonempty_archetypes)
        if len(set(nonempty_archetypes)) < minimum_archetypes:
            errors.append(
                f"PQ2-H10 Lessons {first_order}-{last_order}: wave has fewer than {minimum_archetypes} distinct lesson archetypes"
            )
        if archetype_counts and max(archetype_counts.values()) > maximum_same:
            dominant, count = archetype_counts.most_common(1)[0]
            errors.append(
                f"PQ2-H11 Lessons {first_order}-{last_order}: archetype {dominant!r} appears {count} times; max is {maximum_same}"
            )

        signatures = {_activity_signature(x) for x in window}
        if len(signatures) < minimum_signatures:
            errors.append(
                f"PQ2-H12 Lessons {first_order}-{last_order}: activity design is too templated ({len(signatures)} signatures; need {minimum_signatures})"
            )

        grammar_focused = 0
        review_recombination = 0
        legacy_review_lemmas: set[str] = set()
        for lesson in window:
            archetype = str((lesson.get("metadata") or {}).get("lessonArchetype") or "")
            grammar_keys = (((lesson.get("curriculum") or {}).get("languageReference") or {}).get("grammarTargetKeys") or [])
            if grammar_keys or archetype == "grammar_pattern":
                grammar_focused += 1
            if archetype == "review_recombination":
                review_recombination += 1
            for item in _review_items(lesson):
                lemma = norm(item.get("lemma") or item.get("displayForm"))
                introduced = intro_order.get(lemma)
                if introduced is not None and 40 <= introduced <= 84:
                    legacy_review_lemmas.add(lemma)

        if grammar_focused < minimum_grammar:
            errors.append(
                f"PQ2-H13 Lessons {first_order}-{last_order}: only {grammar_focused} grammar-focused Lessons; need {minimum_grammar}"
            )
        if review_recombination < minimum_review_lessons:
            errors.append(
                f"PQ2-H14 Lessons {first_order}-{last_order}: missing required review_recombination Lesson"
            )
        if len(legacy_review_lemmas) < minimum_legacy_reviews:
            errors.append(
                f"PQ2-H15 Lessons {first_order}-{last_order}: only {len(legacy_review_lemmas)} unique legacy 40-84 review items; need {minimum_legacy_reviews}"
            )

    spaced = policy.get("spacedRetrieval") or {}
    min_gap = int(spaced.get("futureTargetFirstReviewMinGap", 3))
    max_gap = int(spaced.get("futureTargetFirstReviewMaxGap", 10))
    max_order = max((int(x.get("sortOrder") or 0) for x in lessons), default=0)
    production_by_order = {
        int(lesson.get("sortOrder") or 0): _learner_production_texts(lesson)
        for lesson in lessons
    }

    for lesson in lessons:
        intro = int(lesson.get("sortOrder") or 0)
        if intro < enforce_from or max_order < intro + max_gap:
            continue
        for item in _target_items(lesson):
            lemma = norm(item.get("lemma") or item.get("displayForm"))
            if not lemma:
                continue
            found = []
            for order in range(intro + min_gap, intro + max_gap + 1):
                if any(_contains_word(text, lemma) for text in production_by_order.get(order, [])):
                    found.append(order)
            if not found:
                errors.append(
                    f"PQ2-H20 {lesson.get('lessonKey')}: target lemma {lemma!r} is not retrieved by the learner within Lessons +{min_gap}..+{max_gap}"
                )

    metrics = {
        "lessons": len(lessons),
        "qualityV2Lessons": len(quality_v2_lessons),
        "errors": len(errors),
        "warnings": len(warnings),
        "legacyPlaceholderErrors": sum(1 for x in errors if x.startswith("PQ2-H01")),
        "knownBadEnglishDistractorErrors": sum(1 for x in errors if x.startswith("PQ2-H07")),
        "explicitDistractorAuditErrors": sum(1 for x in errors if x.startswith("PQ2-H08")),
    }
    return {
        "schemaVersion": 2,
        "status": "PASS" if not errors else "FAIL",
        "errors": errors,
        "warnings": warnings,
        "metrics": metrics,
        "lessonReports": lesson_reports,
    }
