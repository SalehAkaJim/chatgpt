#!/usr/bin/env python3
"""Build every active canonical Lesson, with independent reports and shared audio."""
from __future__ import annotations
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import sys
from compile_lesson_sql import compile_sql
from generate_audio import generate, load, save
from render_english_audit import render
from validate_audio_manifest import validate_audio
from validate_content_quality import evaluate
from validate_lesson import validate

SYSTEM = Path(__file__).resolve().parents[1]


def discover(root):
    records = []
    for course_path in sorted((root / 'nova/courses').glob('*/course.source.json')):
        course = load(course_path)
        levels = {x['levelKey']: x['sortOrder'] for x in course.get('levels', [])}
        for source in sorted((course_path.parent / 'lessons').glob('*/lesson.source.json')):
            lesson = load(source)
            name = f"10_{course['courseCode'].replace('-', '_')}_lesson_{source.parent.name}.sql"
            records.append({'coursePath': course_path, 'source': source, 'course': course, 'lesson': lesson,
                            'sql': root / 'nova/mysql' / name,
                            'order': (course['courseCode'], levels.get(lesson.get('levelKey'), 99999), lesson.get('sortOrder', 0))})
    return sorted(records, key=lambda x: x['order'])


def validate_sequence(records):
    errors, keys, orders, lexical, outcomes = [], set(), set(), {}, {}
    for record in records:
        course, lesson = record['course'], record['lesson']
        key, code = lesson['lessonKey'], course['courseCode']
        order = (code, lesson['levelKey'], lesson['sortOrder'])
        if key in keys or order in orders:
            errors.append(f'{key}: duplicate Lesson key/order')
        keys.add(key)
        orders.add(order)
        earlier = outcomes.setdefault(code, set())
        for prerequisite in lesson.get('prerequisiteOutcomeKeys', []):
            if prerequisite not in earlier:
                errors.append(f'{key}: prerequisite is not supplied by an earlier Lesson: {prerequisite}')
        earlier.add(lesson['primaryOutcomeKey'])
        for item in lesson.get('lexicalItems', []):
            identity = (code, item['lexicalKey'])
            stable = {k: item.get(k) for k in ('itemType', 'displayForm', 'translationFa', 'lemma',
                                               'partOfSpeech', 'senseKey', 'audioEligible', 'metadata')}
            if identity in lexical and lexical[identity] != stable:
                errors.append(f'{key}: conflicting shared lexical definition: {item["lexicalKey"]}')
            lexical[identity] = stable
    for record in records:
        plan = record['lesson'].get('curriculum', {}).get('transferPlan', {})
        if plan.get('mode') == 'deferred' and plan.get('targetLesson'):
            # Future Lessons remain authorable; a named target already present must follow its source.
            positions = {x['lesson']['lessonKey']: i for i, x in enumerate(records)}
            target, source = plan['targetLesson'], record['lesson']['lessonKey']
            if target in positions and positions[target] <= positions[source]:
                errors.append(f'{source}: deferred transfer target must be a later Lesson')
    return errors


def build(root, reuse_only=False):
    records = discover(root)
    if not records:
        raise ValueError('No canonical Lessons found')
    sequence_errors = validate_sequence(records)
    if sequence_errors:
        raise ValueError('; '.join(sequence_errors))
    summaries, catalog, imports = [], [], []
    policy = load(SYSTEM / 'content_quality.policy.json')
    for record in records:
        lesson, course, source = record['lesson'], record['course'], record['source']
        lesson_dir = source.parent
        source_hash = hashlib.sha256(source.read_bytes()).hexdigest()
        course_hash = hashlib.sha256(record['coursePath'].read_bytes()).hexdigest()
        summary = {'lessonKey': lesson['lessonKey'], 'sourceHash': source_hash, 'status': 'FAIL'}
        try:
            canonical = validate(lesson, course)
            canonical['sourceHash'] = source_hash
            canonical['courseSourceHash'] = course_hash
            save(lesson_dir / 'validation.json', canonical)
            if canonical['status'] != 'PASS':
                raise ValueError('; '.join(canonical['errors']))
            quality = evaluate(lesson, policy)
            quality['sourceHash'] = source_hash
            save(lesson_dir / 'content_quality.json', quality)
            if not quality['publishableByAutomatedQualityGate']:
                raise ValueError(f"Content quality score={quality['automatedScore']}: {quality['errors']}")
            persian = subprocess.run([sys.executable, str(SYSTEM / 'tools/validate_persian_text.py'),
                '--exceptions', str(SYSTEM / 'persian_orthography_exceptions.json'), str(record['coursePath']),
                str(source), str(root / 'nova/prototype/index.html'), str(root / 'nova/prototype/app.js')],
                capture_output=True, text=True)
            report = json.loads(persian.stdout)
            report['sourceHash'] = source_hash
            save(lesson_dir / 'persian_validation.json', report)
            if persian.returncode:
                raise ValueError('Persian orthography failed')
            audit = f'<!-- sourceHash: {source_hash} -->\n' + render(lesson)
            (lesson_dir / 'english_audit.md').write_text(audit, encoding='utf-8')
            voices = record['coursePath'].parent / 'audio_voices.json'
            manifest = lesson_dir / 'audio.manifest.json'
            audio = generate(source, voices, root, manifest, reuse_only)
            audio_report = validate_audio(source, manifest, root, voices)
            save(lesson_dir / 'audio_validation.json', audio_report)
            if audio_report['status'] != 'PASS':
                raise ValueError('; '.join(audio_report['errors']))
            record['sql'].write_text(compile_sql(course, lesson, source_hash, load(manifest), course_hash), encoding='utf-8')
            summary.update(status='PASS', automatedScore=quality['automatedScore'], audio=audio)
            entry = {'courseCode': course['courseCode'], 'levelKey': lesson['levelKey'], 'lessonKey': lesson['lessonKey'],
                     'lessonNumber': source.parent.name, 'titleFa': lesson['titleFa'],
                     'courseSource': str(record['coursePath'].relative_to(root / 'nova')),
                     'lessonSource': str(source.relative_to(root / 'nova')),
                     'audioManifest': str(manifest.relative_to(root / 'nova')), 'sourceHash': source_hash}
            catalog.append(entry)
            imports.append({**entry, 'sql': str(record['sql'].relative_to(root / 'nova/mysql'))})
        except Exception as error:
            summary['error'] = str(error)
        summaries.append(summary)
        print(json.dumps(summary, ensure_ascii=False), flush=True)
    passed = all(x['status'] == 'PASS' for x in summaries)
    report = {'status': 'PASS' if passed else 'FAIL', 'lessons': summaries}
    save(root / 'nova/_assistant/content-system-v1/build_report.json', report)
    if passed:
        save(root / 'nova/courses/index.json', {'version': 1, 'lessons': catalog})
        save(root / 'nova/mysql/import_order.json', {'version': 1, 'lessons': imports})
        lines = ['# Nova MySQL import order', '', 'Target: MySQL Server 9.0.1.', '',
                 'For a new or explicitly reset database:', '',
                 '1. [02_schema.sql](02_schema.sql)', '']
        for i, item in enumerate(imports, 2):
            lines.append(f"{i}. [{item['sql']}]({item['sql']}) — {item['lessonKey']}")
        lines += ['', 'Existing databases: import only the needed generated Lesson SQL after verifying schema compatibility.',
                  '`01_reset_all.sql` deletes all content; use it only for an intentional clean reset.',
                  'The Pilot runs reset/schema/import only inside its disposable CI test database.',
                  'Runtime query: [03_runtime_lesson_query.sql](03_runtime_lesson_query.sql).', '']
        (root / 'nova/mysql/IMPORT_ORDER.md').write_text('\n'.join(lines), encoding='utf-8')
    return report


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--repo-root', type=Path, default=Path('.'))
    parser.add_argument('--reuse-only', action='store_true')
    args = parser.parse_args()
    try:
        report = build(args.repo_root.resolve(), args.reuse_only)
    except (ValueError, OSError) as error:
        parser.exit(2, str(error) + '\n')
    return 0 if report['status'] == 'PASS' else 2


if __name__ == '__main__':
    raise SystemExit(main())
