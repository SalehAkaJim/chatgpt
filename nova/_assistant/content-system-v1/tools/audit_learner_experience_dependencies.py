#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import re
from collections import Counter
from pathlib import Path

DIALOGUE_PATTERNS = [
    r"طبق\s+(?:مکالمه|گفت.?وگو|گفتگو)",
    r"در\s+(?:مکالمه|گفت.?وگو|گفتگو)",
    r"گفته\s+شد",
    r"کدام\s+جواب\s+گفته",
    r"چه\s+جوابی\s+گفته",
    r"جواب\s+(?:بخش|قسمت)\s+(?:اول|دوم)",
    r"در\s+(?:بخش|قسمت)\s+(?:اول|دوم)",
]
LISTEN_PATTERNS = [r"گوش\s+کن", r"گوش\s+بده", r"بشنو", r"شنیدی", r"شنیده"]
VISUAL_PATTERNS = [
    r"عکس\s+.+?(?:را\s+)?(?:می.?بینی|می.?بینید|ببین)",
    r"تصویر\s+.+?(?:را\s+)?(?:می.?بینی|می.?بینید|ببین)",
    r"(?:این|آن|اون)\s+عکس",
    r"روی\s+گوشی\s+.+?(?:می.?بینی|نشان)",
]


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def dump(path: Path, payload: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def norm(value: object) -> str:
    text = str(value or "").strip().lower().replace("‌", " ").replace("ي", "ی").replace("ك", "ک")
    return re.sub(r"\s+", " ", text)


def searchable_text(activity: dict) -> str:
    config = activity.get("config") or {}
    feedback = config.get("feedback") or {}
    parts = [
        activity.get("instructionFa"), activity.get("promptFa"), activity.get("promptEn"),
        feedback.get("correctFa"),
    ]
    return " \n ".join(str(x) for x in parts if x)


def correct_answer(activity: dict) -> str:
    config = activity.get("config") or {}
    t = activity.get("type")
    if t == "sentence_order":
        return str(config.get("answerEn") or "")
    if t == "speak":
        return str(config.get("textEn") or "")
    if t in {"response_choice", "comprehension", "fill_blank"}:
        options = config.get("optionsEn") if t == "fill_blank" else (config.get("options") or config.get("optionsEn") or [])
        idx = config.get("answerIndex")
        if isinstance(idx, int) and 0 <= idx < len(options):
            return str(options[idx])
    return ""


def has_visual_asset(activity: dict) -> bool:
    def walk(value: object, key: str = "") -> bool:
        k = key.lower()
        if any(token in k for token in ("image", "photo", "picture")) and value not in (None, "", [], {}):
            return True
        if isinstance(value, dict):
            return any(walk(v, str(k2)) for k2, v in value.items())
        if isinstance(value, list):
            return any(walk(v, key) for v in value)
        return False
    return walk(activity)


def current_step_has_audio(activity: dict, lesson: dict) -> bool:
    config = activity.get("config") or {}
    t = activity.get("type")
    if t == "dialogue":
        return True
    if t == "comprehension":
        return bool(config.get("sourceTurnKeys"))
    if t == "sentence_order":
        return bool(config.get("audioSourceTurnKey"))
    if t == "lexical_teach":
        lexical_keys = {str(x) for x in config.get("lexicalKeys") or []}
        return any(
            str(item.get("lexicalKey")) in lexical_keys and bool(item.get("audioEligible"))
            for item in lesson.get("lexicalItems") or []
        )
    return False


def flatten_steps(lesson: dict) -> list[dict]:
    steps: list[dict] = []
    for activity_index, activity in enumerate(lesson.get("activities") or []):
        if activity.get("type") == "dialogue":
            for exchange_index, exchange in enumerate((activity.get("config") or {}).get("exchanges") or []):
                steps.append({
                    "activity": activity,
                    "activityIndex": activity_index,
                    "exchange": exchange,
                    "exchangeIndex": exchange_index,
                })
        else:
            steps.append({"activity": activity, "activityIndex": activity_index, "exchange": None})
    return steps


def issue(lesson: dict, activity: dict, code: str, severity: str, message: str, step_index: int) -> dict:
    return {
        "code": code,
        "severity": severity,
        "lessonKey": lesson.get("lessonKey"),
        "sortOrder": int(lesson.get("sortOrder") or 0),
        "activityKey": activity.get("activityKey"),
        "activityType": activity.get("type"),
        "prototypeStep": step_index + 1,
        "message": message,
    }


def audit_lesson(lesson: dict) -> list[dict]:
    results: list[dict] = []
    turns = {str(t.get("turnKey")): t for t in lesson.get("turns") or []}
    turn_text_to_key: dict[str, str] = {}
    for key, turn in turns.items():
        for value in (turn.get("textEn"), turn.get("translationFa"), turn.get("speechTargetEn")):
            if value:
                turn_text_to_key[norm(value)] = key

    steps = flatten_steps(lesson)
    first_dialogue_step = next((i for i, s in enumerate(steps) if s["activity"].get("type") == "dialogue"), None)
    exposed_turns: set[str] = set()

    for step_index, step in enumerate(steps):
        activity = step["activity"]
        config = activity.get("config") or {}
        text = searchable_text(activity)
        normalized = norm(text)
        exchange = step.get("exchange")

        if exchange:
            prompt_key = str(exchange.get("promptTurnKey") or "")
            response_key = str(exchange.get("responseTurnKey") or "")
            exposed_turns.update(k for k in (prompt_key, response_key) if k)
            continue

        explicit_dialogue_ref = any(re.search(pattern, normalized, re.IGNORECASE) for pattern in DIALOGUE_PATTERNS)
        if explicit_dialogue_ref and not exposed_turns:
            results.append(issue(
                lesson, activity, "LX-H01", "ERROR",
                "Activity refers to a conversation/previous answer before any dialogue turn has been exposed by the Prototype.",
                step_index,
            ))

        listening_ref = any(re.search(pattern, normalized, re.IGNORECASE) for pattern in LISTEN_PATTERNS)
        if listening_ref and not current_step_has_audio(activity, lesson):
            results.append(issue(
                lesson, activity, "LX-H02", "ERROR",
                "Learner-facing copy asks the learner to listen/hear, but this Prototype step has no audio source/control.",
                step_index,
            ))

        visual_ref = any(re.search(pattern, normalized, re.IGNORECASE) for pattern in VISUAL_PATTERNS)
        if visual_ref and not has_visual_asset(activity):
            results.append(issue(
                lesson, activity, "LX-H03", "ERROR",
                "Learner-facing copy claims a photo/image is visible, but the activity has no visual asset rendered by the Prototype.",
                step_index,
            ))

        if first_dialogue_step is not None and step_index < first_dialogue_step:
            candidates = [activity.get("promptEn"), correct_answer(activity)]
            future_keys = []
            for value in candidates:
                key = turn_text_to_key.get(norm(value)) if value else None
                if key and key not in exposed_turns:
                    future_keys.append(key)
            if future_keys:
                results.append(issue(
                    lesson, activity, "LX-W10", "WARNING",
                    "Activity tests/reuses exact dialogue content before that dialogue is exposed in the Prototype: " + ", ".join(sorted(set(future_keys))),
                    step_index,
                ))

        if activity.get("type") == "comprehension":
            exposed_turns.update(str(x) for x in config.get("sourceTurnKeys") or [])
        elif activity.get("type") == "sentence_order" and config.get("audioSourceTurnKey"):
            exposed_turns.add(str(config.get("audioSourceTurnKey")))

    return results


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo-root", default=".")
    parser.add_argument("--course", default="en-fa")
    parser.add_argument("--output", default="nova/curriculum/en-fa/learner_experience_dependency_report.json")
    parser.add_argument("--through", type=int, default=124)
    args = parser.parse_args()

    root = Path(args.repo_root).resolve()
    issues: list[dict] = []
    checked = 0
    for order in range(1, args.through + 1):
        path = root / "nova/courses" / args.course / "lessons" / f"{order:04d}" / "lesson.source.json"
        if not path.exists():
            continue
        checked += 1
        issues.extend(audit_lesson(load(path)))

    by_code = Counter(x["code"] for x in issues)
    hard = [x for x in issues if x["severity"] == "ERROR"]
    warnings = [x for x in issues if x["severity"] == "WARNING"]
    affected_hard = sorted({int(x["sortOrder"]) for x in hard})
    affected_all = sorted({int(x["sortOrder"]) for x in issues})
    report = {
        "schemaVersion": 1,
        "courseCode": args.course,
        "prototypeModel": "activity-order with dialogue exchanges flattened in place; scenario only on first step",
        "checkedLessons": checked,
        "status": "PASS" if not hard else "FAIL",
        "hardErrorCount": len(hard),
        "warningCount": len(warnings),
        "affectedHardLessons": affected_hard,
        "affectedLessonCount": len(affected_all),
        "countsByCode": dict(sorted(by_code.items())),
        "issues": issues,
    }
    out = root / args.output
    dump(out, report)
    print(json.dumps({
        "status": report["status"],
        "checkedLessons": checked,
        "hardErrors": len(hard),
        "warnings": len(warnings),
        "affectedHardLessons": len(affected_hard),
        "countsByCode": report["countsByCode"],
    }, ensure_ascii=False))
    return 0 if not hard else 2


if __name__ == "__main__":
    raise SystemExit(main())
