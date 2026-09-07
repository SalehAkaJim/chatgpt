#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
from pathlib import Path


def load_json(path: Path):
    with path.open("r", encoding="utf-8") as f:
        return json.load(f)


def emit(lines: list[str], label: str, value):
    if isinstance(value, str) and value.strip():
        lines.append(f"- **{label}:** {value.strip()}")
    elif isinstance(value, list):
        clean = [str(v).strip() for v in value if str(v).strip()]
        if clean:
            lines.append(f"- **{label}:** " + " | ".join(clean))


def render(chapter: dict) -> str:
    lines: list[str] = []
    lines.append(f"# English Audit — {chapter.get('chapterKey', 'UNKNOWN')}")
    lines.append("")
    lines.append(f"**Chapter title:** {chapter.get('titleEn', '')}")
    lines.append(f"**Primary outcome:** {chapter.get('primaryOutcomeKey', '')}")
    lines.append("")

    units = {u.get("unitKey"): u for u in chapter.get("learningUnits", [])}
    if units:
        lines.append("## Learning units")
        lines.append("")
        for key, unit in units.items():
            lines.append(f"- `{key}` [{unit.get('unitType','?')}] — **{unit.get('displayForm','')}**")
        lines.append("")

    for lesson in chapter.get("lessons", []):
        lesson_key = lesson.get("lessonKey", "?")
        lines.append(f"## {lesson_key} — {lesson.get('titleEn','')}")
        lines.append("")

        if lesson.get("turns"):
            lines.append("### Turns")
            lines.append("")
            for turn in lesson.get("turns", []):
                role = turn.get("role", "?")
                speaker = turn.get("characterKey") or role
                lines.append(f"**{turn.get('turnKey','?')} · {speaker}**")
                lines.append("")
                lines.append(turn.get("textEn", ""))
                lines.append("")
                emit(lines, "Speech target", turn.get("speechTargetEn"))
                emit(lines, "Accepted speech", turn.get("acceptedSpeechEn", []))
                if turn.get("speechTargetEn") or turn.get("acceptedSpeechEn"):
                    lines.append("")

        if lesson.get("activities"):
            lines.append("### Activities")
            lines.append("")
            for activity in lesson.get("activities", []):
                lines.append(
                    f"**{activity.get('activityKey','?')} · {activity.get('type','?')} / {activity.get('purpose','?')}**"
                )
                lines.append("")
                emit(lines, "English prompt", activity.get("promptEn"))
                emit(lines, "Accepted answers", activity.get("acceptedAnswersEn", []))

                config = activity.get("config") or {}
                for key in ("textEn", "answerEn", "optionsEn", "tokensEn", "exampleEn"):
                    emit(lines, key, config.get(key))
                lines.append("")

    lines.append("---")
    lines.append("Audit only the English above for grammar, naturalness, register, level and contextual fit. Any correction must be made in `chapter.source.json`, never in this generated file.")
    lines.append("")
    return "\n".join(lines)


def main():
    parser = argparse.ArgumentParser(description="Render learner-visible English from a Nova Chapter")
    parser.add_argument("chapter", type=Path)
    parser.add_argument("-o", "--output", type=Path)
    args = parser.parse_args()

    chapter = load_json(args.chapter)
    result = render(chapter)
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(result, encoding="utf-8")
    else:
        print(result)


if __name__ == "__main__":
    main()
