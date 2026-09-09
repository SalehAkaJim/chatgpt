#!/usr/bin/env python3
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

from language_units import is_word_unit, word_unit_errors
from validate_lesson import validate
from validate_content_quality import evaluate


def load(path: Path):
    return json.loads(path.read_text(encoding='utf-8'))


def q(value):
    if value is None:
        return 'NULL'
    if isinstance(value, (dict, list)):
        value = json.dumps(value, ensure_ascii=False, separators=(',', ':'))
    value = str(value).replace('\\', '\\\\').replace("'", "''")
    return "'" + value + "'"


def prepare_child_import(table: str, key_column: str, keys: list[str]) -> list[str]:
    """Keep matching identities and free final order slots before key-based upserts."""
    keep = ' AND ' + key_column + ' NOT IN (' + ','.join(q(key) for key in keys) + ')' if keys else ''
    return [
        f'-- Keep existing {table} IDs; remove only keys absent from this Lesson source.',
        f'DELETE FROM {table} WHERE lesson_id=@lesson_id{keep};',
        f'SET @child_order_offset=(SELECT GREATEST(COALESCE(MAX(sort_order),0),{len(keys)}) FROM {table} WHERE lesson_id=@lesson_id);',
        f'UPDATE {table} SET sort_order=sort_order+@child_order_offset WHERE lesson_id=@lesson_id ORDER BY sort_order DESC;',
        ''
    ]


def compile_sql(course: dict, lesson: dict, source_hash: str, audio_manifest: dict | None = None, course_hash: str | None = None) -> str:
    canonical = validate(lesson, course)
    if canonical['status'] != 'PASS':
        raise ValueError('Canonical validation failed: ' + '; '.join(canonical['errors']))

    for item in lesson.get('lexicalItems', []):
        if not is_word_unit(item):
            details = '; '.join(word_unit_errors(item)) or 'unit is not a reusable word/lexeme'
            raise ValueError(
                f"Non-word unit cannot be compiled into lexical_items: {item.get('lexicalKey')} "
                f"({item.get('displayForm')}): {details}"
            )

    policy = load(Path(__file__).resolve().parents[1] / 'content_quality.policy.json')
    quality = evaluate(lesson, policy)
    if not quality['hardGatePass'] or quality['automatedScore'] < max(90, policy['minimumAutomatedScore']):
        raise ValueError(f"Content quality rejected: score={quality['automatedScore']}, errors={quality['errors']}")
    if audio_manifest is not None and (audio_manifest.get('sourceHash') != source_hash or audio_manifest.get('status') != 'PASS'):
        raise ValueError('Audio manifest is stale or failed')
    audio_items = {(x['audioClass'], x['sourceKey']): x for x in (audio_manifest or {}).get('items', [])}
    def audio_record(kind, key):
        return audio_items.get((kind, key), {})
    if audio_manifest is not None:
        for group, kind, required, key_field, text_field in [
            (lesson.get('turns', []), 'turn', 'audioRequired', 'turnKey', 'textEn'),
            (lesson.get('lexicalItems', []), 'lexical_item', 'audioEligible', 'lexicalKey', 'displayForm')
        ]:
            for item in group:
                if item.get(required):
                    record = audio_record(kind, item[key_field])
                    if not record.get('path') or not record.get('durationMs') or record.get('sourceText') != item[text_field] or record.get('sourceHash') != source_hash:
                        raise ValueError(f'Missing or stale required audio: {item[key_field]}')

    code = lesson['courseCode']
    if code != course.get('courseCode'):
        raise ValueError('Lesson courseCode does not match Course source')

    levels = {x['levelKey']: x for x in course.get('levels', [])}
    level_key = lesson['levelKey']
    if level_key not in levels:
        raise ValueError(f'Unknown levelKey for Course: {level_key}')

    lines = [
        '-- Generated from canonical Course/Level/Lesson source. Do not edit by hand.',
        f'-- lessonKey: {lesson["lessonKey"]}',
        f'-- levelKey: {level_key}',
        f'-- sourceHash: {source_hash}',
        f'-- courseSourceHash: {course_hash or hashlib.sha256(json.dumps(course, sort_keys=True, ensure_ascii=False).encode()).hexdigest()}',
        'SET NAMES utf8mb4;',
        'START TRANSACTION;',
        '',
        'INSERT INTO courses (course_key,learning_language,base_language,title,title_translation,description,status,metadata)',
        'VALUES (' + ','.join([
            q(code), q(course['learningLanguage']), q(course['baseLanguage']), q(course['title']),
            q(course['titleFa']), q(course.get('descriptionFa')), q('active'),
            q({'englishBaseline': course.get('englishBaseline')})
        ]) + ')',
        'ON DUPLICATE KEY UPDATE title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),status=VALUES(status),metadata=VALUES(metadata);',
        f"SET @course_id=(SELECT id FROM courses WHERE course_key={q(code)} LIMIT 1);",
        ''
    ]

    for level in sorted(course.get('levels', []), key=lambda x: x['sortOrder']):
        lines += [
            'INSERT INTO levels (course_id,level_key,sort_order,title,title_translation,standard_code,description,status,metadata)',
            'VALUES (' + ','.join([
                '@course_id', q(level['levelKey']), str(level['sortOrder']), q(level['title']), q(level['titleFa']),
                q(level.get('standardCode')), q(level.get('descriptionFa')), q(level.get('status','planned')), q(level.get('metadata') or {})
            ]) + ')',
            'ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),standard_code=VALUES(standard_code),description=VALUES(description),status=VALUES(status),metadata=VALUES(metadata);',
            ''
        ]

    lines += [
        f"SET @level_id=(SELECT id FROM levels WHERE course_id=@course_id AND level_key={q(level_key)} LIMIT 1);",
        ''
    ]

    for char in course.get('characters', []):
        lines += [
            'INSERT INTO characters (course_id,character_key,name,gender,voice_key,profile,is_active)',
            'VALUES (' + ','.join([
                '@course_id', q(char['characterKey']), q(char['name']), q(char.get('gender','unspecified')),
                q(char.get('voiceKey')), q({'roleFa': char.get('roleFa')}), '1'
            ]) + ')',
            'ON DUPLICATE KEY UPDATE name=VALUES(name),gender=VALUES(gender),voice_key=VALUES(voice_key),profile=VALUES(profile),is_active=1;',
            ''
        ]

    lesson_meta = {
        'outcomeFa': lesson['outcomeFa'],
        'scenarioFa': lesson['scenarioFa'],
        'prerequisiteOutcomeKeys': lesson.get('prerequisiteOutcomeKeys', []),
        'curriculum': lesson.get('curriculum', {}),
        **(lesson.get('metadata') or {})
    }
    lines += [
        'INSERT INTO lessons (level_id,lesson_key,sort_order,title,title_translation,description,primary_outcome_key,estimated_duration_sec,source_hash,status,metadata)',
        'VALUES (' + ','.join([
            '@level_id',q(lesson['lessonKey']),str(lesson['sortOrder']),q(lesson['titleEn']),q(lesson['titleFa']),
            q(lesson.get('descriptionFa')),q(lesson.get('primaryOutcomeKey')),
            str((lesson.get('metadata') or {}).get('estimatedDurationSec') or 420),q(source_hash),q('validated' if audio_manifest is not None else 'draft'),q(lesson_meta)
        ]) + ')',
        'ON DUPLICATE KEY UPDATE level_id=VALUES(level_id),sort_order=VALUES(sort_order),title=VALUES(title),title_translation=VALUES(title_translation),description=VALUES(description),primary_outcome_key=VALUES(primary_outcome_key),estimated_duration_sec=VALUES(estimated_duration_sec),source_hash=VALUES(source_hash),status=VALUES(status),metadata=VALUES(metadata);',
        f"SET @lesson_id=(SELECT id FROM lessons WHERE level_id=@level_id AND lesson_key={q(lesson['lessonKey'])} LIMIT 1);",
        'DELETE FROM lesson_lexical_items WHERE lesson_id=@lesson_id;',
        ''
    ]
    lines += prepare_child_import('activities', 'activity_key', [a['activityKey'] for a in lesson['activities']])
    lines += prepare_child_import('lesson_turns', 'turn_key', [t['turnKey'] for t in lesson.get('turns', [])])

    for idx, item in enumerate(lesson.get('lexicalItems', []), 1):
        record = audio_record('lexical_item', item['lexicalKey'])
        audio = record.get('path') if item.get('audioEligible') else None
        meta = item.get('metadata') or {}
        lines += [
            'INSERT INTO lexical_items (course_id,lexical_key,item_type,display_form,lemma,part_of_speech,sense_key,translation,audio_url,audio_duration_ms,metadata)',
            'VALUES (' + ','.join([
                '@course_id',q(item['lexicalKey']),q(item['itemType']),q(item['displayForm']),q(item.get('lemma')),
                q(item.get('partOfSpeech')),q(item.get('senseKey')),q(item['translationFa']),q(audio),q(record.get('durationMs')),q(meta)
            ]) + ')',
            'ON DUPLICATE KEY UPDATE item_type=VALUES(item_type),display_form=VALUES(display_form),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),sense_key=VALUES(sense_key),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),metadata=VALUES(metadata);',
            f"SET @lex_id=(SELECT id FROM lexical_items WHERE course_id=@course_id AND lexical_key={q(item['lexicalKey'])} LIMIT 1);",
            'INSERT INTO lesson_lexical_items (lesson_id,lexical_item_id,learning_role,sort_order,metadata) VALUES (' + ','.join([
                '@lesson_id','@lex_id',q(item['role']),str(idx),q({})
            ]) + ');',
            ''
        ]

    for idx, turn in enumerate(lesson.get('turns', []), 1):
        character_expr = 'NULL'
        if turn.get('characterKey'):
            character_expr = f"(SELECT id FROM characters WHERE course_id=@course_id AND character_key={q(turn['characterKey'])} LIMIT 1)"
        record = audio_record('turn', turn['turnKey'])
        audio = record.get('path') if turn.get('audioRequired') else None
        lines += [
            'INSERT INTO lesson_turns (lesson_id,turn_key,sort_order,role,character_id,text,translation,audio_url,audio_duration_ms,speech_target,accepted_speech,tokens,metadata)',
            'VALUES (' + ','.join([
                '@lesson_id',q(turn['turnKey']),str(idx),q(turn['role']),character_expr,q(turn['textEn']),q(turn['translationFa']),
                q(audio),q(record.get('durationMs')),q(turn.get('speechTargetEn')),q(turn.get('acceptedSpeechEn')), 'NULL', q(turn.get('metadata') or {})
            ]) + ')',
            'ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),role=VALUES(role),character_id=VALUES(character_id),text=VALUES(text),translation=VALUES(translation),audio_url=VALUES(audio_url),audio_duration_ms=VALUES(audio_duration_ms),speech_target=VALUES(speech_target),accepted_speech=VALUES(accepted_speech),tokens=VALUES(tokens),metadata=VALUES(metadata);'
        ]
    lines.append('')

    for idx, activity in enumerate(lesson.get('activities', []), 1):
        lines += [
            'INSERT INTO activities (lesson_id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata)',
            'VALUES (' + ','.join([
                '@lesson_id',q(activity['activityKey']),str(idx),q(activity['type']),q(activity.get('instructionFa')),
                q(activity.get('promptFa') or activity.get('promptEn')),q(activity.get('config') or {}),q(activity.get('metadata') or {})
            ]) + ')',
            'ON DUPLICATE KEY UPDATE sort_order=VALUES(sort_order),activity_type=VALUES(activity_type),instruction=VALUES(instruction),prompt=VALUES(prompt),config=VALUES(config),metadata=VALUES(metadata);'
        ]

    lines += ['', 'COMMIT;', '']
    return '\n'.join(lines)


def main():
    p = argparse.ArgumentParser()
    p.add_argument('course', type=Path)
    p.add_argument('lesson', type=Path)
    p.add_argument('-o','--output', type=Path, required=True)
    p.add_argument('--audio-manifest', type=Path)
    p.add_argument('--repo-root', type=Path, default=Path('.'))
    args = p.parse_args()
    raw = args.lesson.read_bytes()
    lesson = json.loads(raw.decode('utf-8'))
    manifest = None
    if args.audio_manifest:
        from validate_audio_manifest import validate_audio
        report = validate_audio(args.lesson, args.audio_manifest, args.repo_root, args.course.parent / 'audio_voices.json')
        if report['status'] != 'PASS':
            p.exit(2, json.dumps(report, ensure_ascii=False) + '\n')
        manifest = load(args.audio_manifest)
    try:
        result = compile_sql(load(args.course), lesson, hashlib.sha256(raw).hexdigest(), manifest, hashlib.sha256(args.course.read_bytes()).hexdigest())
    except ValueError as error:
        p.exit(2, str(error) + '\n')
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(result, encoding='utf-8')
    print(args.output)


if __name__ == '__main__':
    main()
