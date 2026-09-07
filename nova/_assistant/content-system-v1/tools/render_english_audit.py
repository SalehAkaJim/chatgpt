#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
from pathlib import Path


def load(path: Path):
    return json.loads(path.read_text(encoding='utf-8'))


def emit(lines: list[str], label: str, value):
    if isinstance(value, str) and value.strip():
        lines.append(f'- **{label}:** {value.strip()}')
    elif isinstance(value, list) and value:
        lines.append(f'- **{label}:** ' + ' | '.join(str(x) for x in value))


def render(lesson: dict) -> str:
    lines = [
        f"# English Audit — {lesson.get('lessonKey','UNKNOWN')}",
        '',
        f"**Lesson:** {lesson.get('titleEn','')}",
        f"**Outcome:** {lesson.get('primaryOutcomeKey','')}",
        ''
    ]

    if lesson.get('lexicalItems'):
        lines += ['## Lexical items', '']
        for item in lesson['lexicalItems']:
            lines.append(f"- `{item.get('lexicalKey')}` [{item.get('itemType')}/{item.get('role')}] — **{item.get('displayForm','')}**")
        lines.append('')

    lines += ['## Dialogue turns', '']
    for turn in lesson.get('turns', []):
        speaker = turn.get('characterKey') or turn.get('role')
        lines += [f"**{turn.get('turnKey')} · {speaker}**", '', turn.get('textEn',''), '']
        emit(lines, 'Speech target', turn.get('speechTargetEn'))
        emit(lines, 'Accepted speech', turn.get('acceptedSpeechEn'))
        if turn.get('speechTargetEn') or turn.get('acceptedSpeechEn'):
            lines.append('')

    lines += ['## Activities', '']
    for activity in lesson.get('activities', []):
        lines += [f"**{activity.get('activityKey')} · {activity.get('type')}**", '']
        emit(lines, 'English prompt', activity.get('promptEn'))
        cfg = activity.get('config') or {}
        for key in ('textEn','sentenceEn','answerEn','tokensEn','answerTokensEn','optionsEn','acceptedAnswersEn','options'):
            emit(lines, key, cfg.get(key))
        lines.append('')

    lines += [
        '---',
        'Audit the English above for grammar, naturalness, register, beginner suitability and contextual fit.',
        'Any correction belongs in `lesson.source.json`; this file is generated review output.',
        ''
    ]
    return '\n'.join(lines)


def main():
    p = argparse.ArgumentParser()
    p.add_argument('lesson', type=Path)
    p.add_argument('-o','--output', type=Path)
    args = p.parse_args()
    result = render(load(args.lesson))
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(result, encoding='utf-8')
    else:
        print(result)


if __name__ == '__main__':
    main()
