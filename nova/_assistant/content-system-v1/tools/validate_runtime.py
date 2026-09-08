#!/usr/bin/env python3
"""Execute the entire Pilot in an explicitly disposable MySQL database."""
from __future__ import annotations
import argparse
import hashlib
import json
from pathlib import Path
import re
import subprocess
from build_pilot import discover
from compile_lesson_sql import q
from generate_audio import load, save


def check(root, database, host, user):
    if not re.fullmatch(r'nova_test(?:_[a-z0-9_]+)?', database):
        raise ValueError('Runtime validation accepts only disposable nova_test databases')
    command = ['mysql', '-h', host, '-u', user, '--batch', '--raw', '--skip-column-names', database]
    def sql(text):
        result = subprocess.run(command, input=text, capture_output=True, text=True)
        if result.returncode:
            raise ValueError(result.stderr)
        return result.stdout.strip()
    def count(text, expected):
        actual = sql(text)
        if actual != str(expected):
            raise ValueError(f'Runtime assertion failed: expected {expected}, got {actual}; {text}')
    version = sql('SELECT VERSION();')
    if version.split('-')[0] != '9.0.1':
        raise ValueError(f'Expected MySQL 9.0.1, got {version}')
    sql((root / 'nova/mysql/01_reset_all.sql').read_text())
    sql((root / 'nova/mysql/02_schema.sql').read_text())
    records = discover(root)
    for record in records:
        sql(record['sql'].read_text())
    count('SELECT COUNT(*) FROM lessons;', len(records))
    count("SELECT COUNT(*) FROM information_schema.columns WHERE table_schema=DATABASE() AND table_name='lessons' AND column_name IN ('course_id','cefr_level');", 0)
    query = (root / 'nova/mysql/03_runtime_lesson_query.sql').read_text()
    for record in records:
        lesson, course, source = record['lesson'], record['course'], record['source']
        key = q(lesson['lessonKey'])
        level = q(lesson['levelKey'])
        code = q(course['courseCode'])
        where = f'lesson_id=(SELECT id FROM lessons WHERE lesson_key={key})'
        lesson_id = sql(f'SELECT id FROM lessons WHERE lesson_key={key};')
        # Reimport must update the same Lesson and replace only its own dependent rows.
        sql(record['sql'].read_text())
        count(f'SELECT id FROM lessons WHERE lesson_key={key};', lesson_id)
        count(f'SELECT COUNT(*) FROM lessons l JOIN levels lv ON lv.id=l.level_id JOIN courses c ON c.id=lv.course_id WHERE c.course_key={code} AND lv.level_key={level} AND l.lesson_key={key};', 1)
        for table, field in [('activities', 'activities'), ('lesson_turns', 'turns'), ('lesson_lexical_items', 'lexicalItems')]:
            count(f'SELECT COUNT(*) FROM {table} WHERE {where};', len(lesson.get(field, [])))
        manifest = load(source.parent / 'audio.manifest.json')
        for item in manifest['items']:
            if item['audioClass'] == 'turn':
                match = f"SELECT COUNT(*) FROM lesson_turns WHERE {where} AND turn_key={q(item['sourceKey'])}"
            else:
                match = f"SELECT COUNT(*) FROM lexical_items li JOIN lesson_lexical_items lli ON lli.lexical_item_id=li.id WHERE lli.{where} AND li.lexical_key={q(item['sourceKey'])}"
            count(match + f" AND audio_url={q(item['path'])} AND audio_duration_ms={item['durationMs']};", 1)
        payload = sql(f'SET @course_key={code}; SET @lesson_key={key};\n' + query)
        (source.parent / 'runtime_smoke.txt').write_text(payload + '\n', encoding='utf-8')
        save(source.parent / 'runtime_validation.json', {'status': 'PASS', 'mysqlVersion': version,
             'lessonKey': lesson['lessonKey'], 'sourceHash': hashlib.sha256(source.read_bytes()).hexdigest(),
             'courseSourceHash': hashlib.sha256(record['coursePath'].read_bytes()).hexdigest(),
             'activities': len(lesson['activities']), 'turns': len(lesson['turns']), 'reimportPassed': True})
    all_levels = {(r['course']['courseCode'], r['lesson']['levelKey']) for r in records}
    for code, level in all_levels:
        removed = [r for r in records if (r['course']['courseCode'], r['lesson']['levelKey']) == (code, level)]
        count(f"START TRANSACTION; DELETE lv FROM levels lv JOIN courses c ON c.id=lv.course_id WHERE c.course_key={q(code)} AND lv.level_key={q(level)}; SELECT COUNT(*) FROM lessons; ROLLBACK;", len(records) - len(removed))
    count('SELECT COUNT(*) FROM lessons;', len(records))
    print(json.dumps({'status': 'PASS', 'mysqlVersion': version, 'lessons': len(records), 'levels': len(all_levels)}))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--repo-root', type=Path, default=Path('.'))
    parser.add_argument('--database', required=True)
    parser.add_argument('--host', default='127.0.0.1')
    parser.add_argument('--user', default='root')
    args = parser.parse_args()
    check(args.repo_root.resolve(), args.database, args.host, args.user)


if __name__ == '__main__':
    main()
