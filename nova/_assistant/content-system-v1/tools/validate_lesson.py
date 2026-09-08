#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

from jsonschema import Draft202012Validator


def load(path: Path):
    return json.loads(path.read_text(encoding='utf-8'))


def normalize(value: str) -> str:
    value = value.strip().lower().replace('’', "'")
    return re.sub(r"[^a-z0-9']+", ' ', value, flags=re.I).strip()


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument('lesson', type=Path)
    p.add_argument('--course', type=Path)
    p.add_argument('--schema', type=Path, default=Path(__file__).resolve().parents[1] / 'lesson.source.schema.json')
    args = p.parse_args()

    lesson = load(args.lesson)
    schema = load(args.schema)
    errors: list[str] = []
    warnings: list[str] = []

    for err in sorted(Draft202012Validator(schema).iter_errors(lesson), key=lambda e: list(e.absolute_path)):
        where = '.'.join(str(x) for x in err.absolute_path) or '<root>'
        errors.append(f'schema:{where}: {err.message}')

    if args.course:
        course = load(args.course)
        if lesson.get('courseCode') != course.get('courseCode'):
            errors.append('lesson courseCode does not match Course source')
        levels = course.get('levels') or []
        if not levels:
            errors.append('Course source requires at least one Level')
        level_keys = [x.get('levelKey') for x in levels if x.get('levelKey')]
        level_orders = [x.get('sortOrder') for x in levels if isinstance(x.get('sortOrder'), int)]
        if len(level_keys) != len(levels):
            errors.append('every Course Level requires levelKey')
        if len(level_keys) != len(set(level_keys)):
            errors.append('duplicate levelKey in Course source')
        if len(level_orders) != len(levels):
            errors.append('every Course Level requires integer sortOrder')
        if len(level_orders) != len(set(level_orders)):
            errors.append('duplicate Level sortOrder in Course source')
        for level in levels:
            key = level.get('levelKey') or '?'
            if not str(level.get('title') or '').strip():
                errors.append(f'Level {key} requires title')
            if not str(level.get('titleFa') or '').strip():
                errors.append(f'Level {key} requires titleFa')
            if level.get('status') not in {'planned','active','complete','archived'}:
                errors.append(f'Level {key} has invalid status')
        if lesson.get('levelKey') not in set(level_keys):
            errors.append(f"unknown levelKey for Course: {lesson.get('levelKey')}")

    lexical = lesson.get('lexicalItems', [])
    lexical_keys = [x.get('lexicalKey') for x in lexical if x.get('lexicalKey')]
    if len(lexical_keys) != len(set(lexical_keys)):
        errors.append('duplicate lexicalKey')
    for item in lexical:
        form = str(item.get('displayForm', '')).strip()
        if not form:
            errors.append(f"empty lexical displayForm: {item.get('lexicalKey')}")
        if '\n' in form or '\r' in form:
            errors.append(f"lexical item contains line break: {item.get('lexicalKey')}")
        if item.get('itemType') == 'word' and re.search(r'\s', form):
            warnings.append(f"word item contains whitespace; review atomicity: {item.get('lexicalKey')}")
        if item.get('itemType') in {'expression','phrasal_verb','formula'} and len(form.split()) < 2:
            warnings.append(f"multiword-like type has one visible token: {item.get('lexicalKey')}")

    turns = lesson.get('turns', [])
    turn_by_key = {t.get('turnKey'): t for t in turns if t.get('turnKey')}
    if len(turn_by_key) != len(turns):
        errors.append('duplicate or missing turnKey')
    for key, turn in turn_by_key.items():
        role = turn.get('role')
        if role == 'character' and not turn.get('characterKey'):
            errors.append(f'{key}: character turn requires characterKey')
        if role != 'character' and turn.get('characterKey'):
            errors.append(f'{key}: only character turns may carry characterKey')
        accepted = turn.get('acceptedSpeechEn') or []
        norms = [normalize(x) for x in accepted]
        if len(norms) != len(set(norms)):
            errors.append(f'{key}: acceptedSpeechEn contains formatting-only duplicates')

    seen_activities: set[str] = set()
    guided_dialogue_found = False

    for activity in lesson.get('activities', []):
        key = activity.get('activityKey')
        if key in seen_activities:
            errors.append(f'duplicate activityKey: {key}')
        seen_activities.add(key)
        typ = activity.get('type')
        cfg = activity.get('config') or {}
        label = key or '?'

        def require_turn(k: str):
            if k not in turn_by_key:
                errors.append(f'{label}: unknown turnKey {k}')

        if typ == 'dialogue':
            if cfg.get('mode') != 'guided_exchange':
                errors.append(f'{label}: dialogue must use mode=guided_exchange')
            exchanges = cfg.get('exchanges')
            if not isinstance(exchanges, list) or not exchanges:
                errors.append(f'{label}: guided dialogue requires non-empty exchanges')
            else:
                guided_dialogue_found = True
                exchange_keys = []
                response_keys = []
                for ex in exchanges:
                    ex_key = ex.get('exchangeKey')
                    prompt_key = ex.get('promptTurnKey')
                    response_key = ex.get('responseTurnKey')
                    exchange_keys.append(ex_key)
                    response_keys.append(response_key)
                    if not ex_key:
                        errors.append(f'{label}: every exchange requires exchangeKey')
                    if not prompt_key or not response_key:
                        errors.append(f'{label}/{ex_key or "?"}: promptTurnKey and responseTurnKey are required')
                        continue
                    require_turn(prompt_key)
                    require_turn(response_key)
                    prompt = turn_by_key.get(prompt_key)
                    response = turn_by_key.get(response_key)
                    if prompt and prompt.get('role') != 'character':
                        errors.append(f'{label}/{ex_key}: prompt turn must be a character turn')
                    if response and response.get('role') != 'learner':
                        errors.append(f'{label}/{ex_key}: response turn must be a learner turn')
                    if prompt and prompt.get('audioRequired') is not True:
                        errors.append(f'{label}/{ex_key}: prompt turn audio is required')
                    if response:
                        if not response.get('speechTargetEn'):
                            errors.append(f'{label}/{ex_key}: learner response requires speechTargetEn')
                        accepted = response.get('acceptedSpeechEn')
                        if not isinstance(accepted, list) or not accepted:
                            errors.append(f'{label}/{ex_key}: learner response requires acceptedSpeechEn')
                        if ex.get('allowResponseModelAudio') is True and response.get('audioRequired') is not True:
                            errors.append(f'{label}/{ex_key}: response model audio requested but response audioRequired is false')
                    if ex.get('responseEvaluation') not in {'stt','practice_only'}:
                        errors.append(f'{label}/{ex_key}: responseEvaluation must be stt or practice_only')
                if len(exchange_keys) != len(set(exchange_keys)):
                    errors.append(f'{label}: duplicate exchangeKey')
                if len(response_keys) != len(set(response_keys)):
                    errors.append(f'{label}: learner response turn reused across exchanges')
        elif typ == 'speak':
            text = cfg.get('textEn')
            accepted = cfg.get('acceptedAnswersEn')
            if not text or not isinstance(accepted, list) or not accepted:
                errors.append(f'{label}: speak requires textEn and acceptedAnswersEn')
            if cfg.get('sourceTurnKey'):
                require_turn(cfg['sourceTurnKey'])
        elif typ == 'sentence_order':
            tokens = cfg.get('tokensEn')
            answer_tokens = cfg.get('answerTokensEn')
            answer = cfg.get('answerEn')
            audio_turn_key = cfg.get('audioSourceTurnKey')
            if not isinstance(tokens, list) or not isinstance(answer_tokens, list) or not answer:
                errors.append(f'{label}: sentence_order requires tokensEn, answerTokensEn and answerEn')
            elif sorted(tokens) != sorted(answer_tokens):
                errors.append(f'{label}: shuffled tokens differ from answer tokens')
            if not audio_turn_key:
                errors.append(f'{label}: sentence_order requires audioSourceTurnKey')
            elif audio_turn_key not in turn_by_key:
                errors.append(f'{label}: sentence_order audioSourceTurnKey is unknown: {audio_turn_key}')
            elif turn_by_key[audio_turn_key].get('textEn') != answer:
                errors.append(f'{label}: sentence_order audio text must exactly equal answerEn')
            if cfg.get('showAnswerTextBeforeAttempt') is not False:
                errors.append(f'{label}: sentence_order must hide completed answer before attempt')
        elif typ == 'fill_blank':
            sentence = cfg.get('sentenceEn', '')
            options = cfg.get('optionsEn')
            idx = cfg.get('answerIndex')
            if sentence.count('___') != 1:
                errors.append(f'{label}: fill_blank needs exactly one ___')
            if not isinstance(options, list) or len(options) != 3:
                errors.append(f'{label}: fill_blank needs exactly 3 options')
            if not isinstance(idx, int) or not options or idx < 0 or idx >= len(options):
                errors.append(f'{label}: invalid answerIndex')
        elif typ == 'comprehension':
            keys = cfg.get('sourceTurnKeys')
            options = cfg.get('options')
            idx = cfg.get('answerIndex')
            if not str(activity.get('promptFa') or '').strip():
                errors.append(f'{label}: comprehension requires promptFa')
            if not isinstance(keys, list) or not keys:
                errors.append(f'{label}: comprehension requires sourceTurnKeys')
            else:
                for k in keys:
                    require_turn(k)
            if not isinstance(options, list) or len(options) not in {2,3}:
                errors.append(f'{label}: comprehension must have 2 or 3 options')
            if not isinstance(idx, int) or not options or idx < 0 or idx >= len(options):
                errors.append(f'{label}: invalid answerIndex')
        elif typ == 'lexical_teach':
            keys = cfg.get('lexicalKeys')
            if not isinstance(keys, list) or not keys:
                errors.append(f'{label}: lexical_teach requires lexicalKeys')
            else:
                for k in keys:
                    if k not in lexical_keys:
                        errors.append(f'{label}: unknown lexicalKey {k}')

    required_types = {'dialogue','sentence_order','fill_blank','comprehension'}
    actual_types = {a.get('type') for a in lesson.get('activities', [])}
    missing = required_types - actual_types
    if lesson.get('metadata', {}).get('pilot') is True and missing:
        errors.append('pilot lesson is missing product interaction types: ' + ', '.join(sorted(missing)))
    if lesson.get('metadata', {}).get('pilot') is True and not guided_dialogue_found:
        errors.append('pilot lesson requires a guided_exchange dialogue with integrated learner speaking')

    report = {
        'status':'PASS' if not errors else 'FAIL',
        'lessonKey':lesson.get('lessonKey'),
        'levelKey':lesson.get('levelKey'),
        'errors':errors,
        'warnings':warnings
    }
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 0 if not errors else 2


if __name__ == '__main__':
    sys.exit(main())
