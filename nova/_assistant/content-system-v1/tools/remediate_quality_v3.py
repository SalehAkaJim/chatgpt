#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import re
from collections import defaultdict
from pathlib import Path

WORD_RE = re.compile(r"[A-Za-z]+(?:'[A-Za-z]+)?")
CHOICE_TYPES = {"fill_blank", "comprehension", "response_choice"}
GENERIC_STORY_PHRASES = (
    "درباره موضوع این درس",
    "موضوع این درس گفت‌وگو می‌کنند",
    "موضوع این درس گفتگو می‌کنند",
    "در ادامه داستان",
)

CONTRACTION_PAIRS = (
    ("I'm", "I am"),
    ("you're", "you are"),
    ("You're", "You are"),
    ("it's", "it is"),
    ("It's", "It is"),
    ("that's", "that is"),
    ("That's", "That is"),
    ("what's", "what is"),
    ("What's", "What is"),
    ("where's", "where is"),
    ("Where's", "Where is"),
    ("we're", "we are"),
    ("We're", "We are"),
    ("they're", "they are"),
    ("They're", "They are"),
    ("don't", "do not"),
    ("Don't", "Do not"),
    ("can't", "cannot"),
    ("Can't", "Cannot"),
)


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def dump(path: Path, payload: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def norm(value: object) -> str:
    text = str(value or "").strip().lower().replace("’", "'").replace("‌", " ")
    return re.sub(r"\s+", " ", re.sub(r"[^\w\u0600-\u06ff']+", " ", text)).strip()


def word_count(value: object) -> int:
    return len(WORD_RE.findall(str(value or "")))


def choice_answer(activity: dict) -> str:
    config = activity.get("config") or {}
    activity_type = activity.get("type")
    options = config.get("optionsEn") if activity_type == "fill_blank" else (config.get("options") or config.get("optionsEn") or [])
    index = config.get("answerIndex")
    if isinstance(options, list) and isinstance(index, int) and 0 <= index < len(options):
        return str(options[index])
    return ""


def scored(activity: dict) -> bool:
    activity_type = activity.get("type")
    config = activity.get("config") or {}
    if config.get("practiceOnly") is True:
        return False
    if activity_type == "dialogue":
        return any(x.get("responseEvaluation") == "stt" for x in config.get("exchanges") or [])
    return activity_type in {
        "sentence_order", "fill_blank", "comprehension", "response_choice",
        "speak", "writing", "reading", "pronunciation",
    }


def answer_signature(activity: dict, turns: dict[str, dict]) -> str:
    activity_type = activity.get("type")
    config = activity.get("config") or {}
    if activity_type == "sentence_order":
        return norm(config.get("answerEn"))
    if activity_type in CHOICE_TYPES:
        return norm(choice_answer(activity))
    if activity_type == "speak":
        return norm(config.get("textEn"))
    if activity_type == "dialogue":
        outputs = []
        for exchange in config.get("exchanges") or []:
            if exchange.get("responseEvaluation") != "stt":
                continue
            turn = turns.get(str(exchange.get("responseTurnKey") or "")) or {}
            outputs.append(norm(turn.get("speechTargetEn") or turn.get("textEn")))
        return "|".join(x for x in outputs if x)
    return ""


def _activity_priority(activity: dict) -> int:
    activity_type = activity.get("type")
    config = activity.get("config") or {}
    metadata = activity.get("metadata") or {}
    demand = norm(metadata.get("learningDemand"))
    mode = norm(config.get("mode"))
    if activity_type == "speak" and mode == "retrieval":
        return 100
    if activity_type == "speak":
        return 90
    if demand in {"retrieval", "transfer"} or mode in {"retrieval", "transfer", "changed_context"}:
        return 85
    if activity_type == "pronunciation":
        return 80
    if activity_type == "comprehension":
        return 70
    if activity_type in {"writing", "reading"}:
        return 65
    if activity_type in {"response_choice", "fill_blank"}:
        return 60
    if activity_type == "sentence_order":
        return 40
    return 50


def repair_duplicate_scoring(lesson: dict) -> list[str]:
    turns = {str(t.get("turnKey")): t for t in lesson.get("turns") or [] if t.get("turnKey")}
    groups: dict[str, list[dict]] = defaultdict(list)
    for activity in lesson.get("activities") or []:
        if not scored(activity):
            continue
        signature = answer_signature(activity, turns)
        if signature and "|" not in signature and word_count(signature) >= 3:
            groups[signature].append(activity)

    changes: list[str] = []
    for signature, activities in groups.items():
        if len(activities) <= 1:
            continue
        keep = max(activities, key=_activity_priority)
        for activity in activities:
            if activity is keep:
                continue
            config = activity.setdefault("config", {})
            config["practiceOnly"] = True
            metadata = activity.setdefault("metadata", {})
            metadata["evidenceKind"] = "practice_only"
            metadata["qualityV3PracticeReason"] = "duplicate_exact_target_sentence"
            changes.append(
                f"{activity.get('activityKey')}: duplicate scored answer '{signature}' converted to practice-only; "
                f"{keep.get('activityKey')} remains scored"
            )
    return changes


def repair_dialogue_exposure(lesson: dict) -> list[str]:
    activities = lesson.get("activities") or []
    dialogue_index = next((i for i, activity in enumerate(activities) if activity.get("type") == "dialogue"), None)
    if dialogue_index is None or dialogue_index == 0:
        return []

    turn_texts = set()
    for turn in lesson.get("turns") or []:
        for value in (turn.get("textEn"), turn.get("translationFa"), turn.get("speechTargetEn")):
            normalized = norm(value)
            if normalized:
                turn_texts.add(normalized)

    earliest = None
    for index, activity in enumerate(activities[:dialogue_index]):
        candidates = [activity.get("promptEn"), choice_answer(activity)]
        if any(norm(value) in turn_texts for value in candidates if norm(value)):
            earliest = index
            break
    if earliest is None:
        return []

    dialogue = activities.pop(dialogue_index)
    activities.insert(earliest, dialogue)
    return [
        f"{dialogue.get('activityKey')}: moved before {activities[earliest + 1].get('activityKey')} so dialogue is exposed before exact-turn reuse"
    ]


def _safe_equivalent(text: str) -> str | None:
    if not text:
        return None
    for contracted, expanded in CONTRACTION_PAIRS:
        if contracted in text:
            return text.replace(contracted, expanded, 1)
        if expanded in text:
            return text.replace(expanded, contracted, 1)
    return None


def _append_variant(values: list[str], candidate: str | None, limit: int = 5) -> bool:
    if not candidate or len(values) >= limit:
        return False
    normalized = {norm(value) for value in values}
    if norm(candidate) in normalized:
        return False
    values.append(candidate)
    return True


def repair_speech_equivalence(lesson: dict) -> list[str]:
    changes: list[str] = []
    for turn in lesson.get("turns") or []:
        if turn.get("role") != "learner" or not turn.get("speechTargetEn"):
            continue
        values = turn.setdefault("acceptedSpeechEn", [])
        model = str(turn.get("speechTargetEn") or turn.get("textEn") or "")
        if model and norm(model) not in {norm(x) for x in values} and len(values) < 5:
            values.insert(0, model)
        candidate = _safe_equivalent(model)
        if _append_variant(values, candidate):
            changes.append(f"{turn.get('turnKey')}: added equivalent accepted speech '{candidate}'")

    for activity in lesson.get("activities") or []:
        if activity.get("type") != "speak":
            continue
        config = activity.get("config") or {}
        model = str(config.get("textEn") or "")
        values = config.setdefault("acceptedAnswersEn", [])
        if model and norm(model) not in {norm(x) for x in values} and len(values) < 5:
            values.insert(0, model)
        candidate = _safe_equivalent(model)
        if _append_variant(values, candidate):
            changes.append(f"{activity.get('activityKey')}: added equivalent accepted answer '{candidate}'")
    return changes


def _character_name(course: dict, key: object) -> str:
    key = str(key or "")
    for character in course.get("characters") or []:
        if str(character.get("characterKey")) == key:
            metadata = character.get("metadata") or {}
            return str(metadata.get("nameFa") or character.get("name") or key)
    return key or "شخصیت"


def repair_story_grounding(lesson: dict, course: dict) -> list[str]:
    curriculum = lesson.get("curriculum") or {}
    story = curriculum.get("story") or {}
    if not story:
        return []
    scenario = str(lesson.get("scenarioFa") or "")
    beat = str(story.get("storyBeatFa") or "")
    if not any(phrase in scenario or phrase in beat for phrase in GENERIC_STORY_PHRASES):
        return []

    turns = lesson.get("turns") or []
    if len(turns) < 2:
        return []
    setting = str(story.get("settingFa") or "همان موقعیت")
    first, second = turns[0], turns[1]
    name1 = _character_name(course, first.get("characterKey"))
    name2 = _character_name(course, second.get("characterKey"))
    fa1 = str(first.get("translationFa") or first.get("textEn") or "").strip()
    fa2 = str(second.get("translationFa") or second.get("textEn") or "").strip()
    if not fa1 or not fa2:
        return []

    old_scenario, old_beat = scenario, beat
    lesson["scenarioFa"] = f"در {setting}، {name1} می‌گوید «{fa1}» و {name2} پاسخ می‌دهد «{fa2}»."
    if len(turns) >= 4:
        third, fourth = turns[2], turns[3]
        name3 = _character_name(course, third.get("characterKey"))
        name4 = _character_name(course, fourth.get("characterKey"))
        fa3 = str(third.get("translationFa") or third.get("textEn") or "").strip()
        fa4 = str(fourth.get("translationFa") or fourth.get("textEn") or "").strip()
        story["storyBeatFa"] = (
            f"{name1} با «{fa1}» گفت‌وگو را شروع می‌کند، {name2} می‌گوید «{fa2}»؛ "
            f"بعد {name3} می‌گوید «{fa3}» و {name4} با «{fa4}» پاسخ می‌دهد."
        )
    else:
        story["storyBeatFa"] = f"{name1} می‌گوید «{fa1}» و {name2} با «{fa2}» پاسخ می‌دهد."

    return [
        f"scenarioFa grounded in actual scene/turns (was: {old_scenario})",
        f"storyBeatFa grounded in actual scene/turns (was: {old_beat})",
    ]


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo-root", default=".")
    parser.add_argument("--course", default="en-fa")
    parser.add_argument("--from", dest="from_order", type=int, default=1)
    parser.add_argument("--to", dest="to_order", type=int, default=0)
    parser.add_argument("--output", default="nova/curriculum/en-fa/quality_v3.remediation_report.json")
    args = parser.parse_args()

    root = Path(args.repo_root).resolve()
    course_path = root / "nova/courses" / args.course / "course.source.json"
    course = load(course_path)
    lessons_root = course_path.parent / "lessons"
    existing = sorted(
        int(path.name) for path in lessons_root.iterdir()
        if path.is_dir() and path.name.isdigit() and (path / "lesson.source.json").exists()
    )
    if not existing:
        raise SystemExit("No canonical lessons found")
    last = args.to_order or max(existing)

    changed: dict[str, dict[str, list[str]]] = {}
    category_counts = defaultdict(int)
    checked = 0
    for order in existing:
        if order < args.from_order or order > last:
            continue
        path = lessons_root / f"{order:04d}" / "lesson.source.json"
        lesson = load(path)
        checked += 1
        per_category = {
            "dialogueExposure": repair_dialogue_exposure(lesson),
            "duplicateScoring": repair_duplicate_scoring(lesson),
            "speechEquivalence": repair_speech_equivalence(lesson),
            "storyGrounding": repair_story_grounding(lesson, course),
        }
        per_category = {key: value for key, value in per_category.items() if value}
        if not per_category:
            continue
        dump(path, lesson)
        changed[str(order)] = per_category
        for key in per_category:
            category_counts[key] += 1

    report = {
        "schemaVersion": 1,
        "status": "PASS",
        "courseCode": args.course,
        "range": [args.from_order, last],
        "checkedLessons": checked,
        "changedLessonCount": len(changed),
        "changedLessons": [int(x) for x in changed],
        "categoryLessonCounts": dict(sorted(category_counts.items())),
        "changes": changed,
        "principles": {
            "dialogueExposure": "Expose a canonical dialogue before an activity reuses an exact future turn.",
            "duplicateScoring": "Keep one strongest assessment per exact target sentence; preserve extra repetitions as practice-only.",
            "speechEquivalence": "Accept only safe contraction/expansion equivalents without broadening meaning.",
            "storyGrounding": "Replace generic meta-story copy with scene text grounded in canonical turns and setting.",
        },
    }
    dump(root / args.output, report)
    print(json.dumps({
        "status": "PASS",
        "checkedLessons": checked,
        "changedLessons": len(changed),
        "categoryLessonCounts": report["categoryLessonCounts"],
    }, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
