#!/usr/bin/env python3
"""Execute the entire Pilot in an explicitly disposable MySQL database."""
from __future__ import annotations
import argparse
import copy
import hashlib
import json
from pathlib import Path
import re
import subprocess
from build_pilot import discover
from compile_lesson_sql import compile_sql, q
from generate_audio import load, save


def identity_test_variant(lesson):
    """Synthetic import fixture only; never written to canonical content or audio."""
    changed = copy.deepcopy(lesson)
    changed['turns'].reverse()
    changed['activities'].reverse()
    for turn in changed['turns']:
        turn['translationFa'] += ' (بازبینی)'
    for activity in changed['activities']:
        activity['instructionFa'] += ' (بازبینی)'
        activity['config']['runtimeIdentityProbe'] = True
    # Insert into an occupied position rather than append: an order-key conflict
    # must not update the existing row that used to occupy this position.
    for field, key_field, prefix in [('turns', 'turnKey', 'T'), ('activities', 'activityKey', 'A')]:
        used = {item[key_field] for item in changed[field]}
        new_key = next(f'{prefix}{i:03}' for i in range(999, -1, -1) if f'{prefix}{i:03}' not in used)
        if field == 'turns':
            item = {'turnKey': new_key, 'role': 'system', 'textEn': 'Runtime identity probe.',
                    'translationFa': 'آزمایش شناسه', 'audioRequired': False}
        else:
            item = {'activityKey': new_key, 'type': 'reading', 'instructionFa': 'آزمایش شناسه',
                    'config': {'textEn': 'Runtime identity probe.', 'practiceOnly': True},
                    'metadata': {'learningDemand': 'runtime identity probe'}}
        changed[field].insert(0, item)
    return changed


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
    def child_ids(lesson_id):
        result = {}
        for table, key_column in [('activities', 'activity_key'), ('lesson_turns', 'turn_key')]:
            rows = sql(f'SELECT {key_column},id FROM {table} WHERE lesson_id={lesson_id} ORDER BY {key_column};')
            result[table] = dict(line.split('\t') for line in rows.splitlines())
        return result
    def sibling_rows(lesson_id):
        return {table: sql(f'SELECT * FROM {table} WHERE lesson_id<>{lesson_id} ORDER BY id;')
                for table in ('activities', 'lesson_turns')}
    def same(actual, expected, label):
        if actual != expected:
            raise ValueError(f'Runtime assertion failed: {label}; expected {expected!r}, got {actual!r}')
    version = sql('SELECT VERSION();')
    if version.split('-')[0] != '9.0.1':
        raise ValueError(f'Expected MySQL 9.0.1, got {version}')
    sql('DROP TABLE IF EXISTS nova_test_identity_refs;')
    sql((root / 'nova/mysql/01_reset_all.sql').read_text())
    sql((root / 'nova/mysql/02_schema.sql').read_text())
    records = discover(root)
    for record in records:
        sql(record['sql'].read_text())
    # Disposable references make deleting/recreating an existing row fail even
    # if an implementation tries to reinsert the previous numeric ID explicitly.
    sql('''CREATE TABLE nova_test_identity_refs (
        id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        activity_id BIGINT UNSIGNED NULL,
        turn_id BIGINT UNSIGNED NULL,
        FOREIGN KEY(activity_id) REFERENCES activities(id) ON DELETE RESTRICT,
        FOREIGN KEY(turn_id) REFERENCES lesson_turns(id) ON DELETE RESTRICT
    ) ENGINE=InnoDB;
    INSERT INTO nova_test_identity_refs(activity_id) SELECT id FROM activities;
    INSERT INTO nova_test_identity_refs(turn_id) SELECT id FROM lesson_turns;''')
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
        # Reimport must retain the Lesson, every existing child ID and all siblings.
        original_ids = child_ids(lesson_id)
        siblings = sibling_rows(lesson_id)
        sql(record['sql'].read_text())
        count(f'SELECT id FROM lessons WHERE lesson_key={key};', lesson_id)
        same(child_ids(lesson_id), original_ids, 'IDs changed on identical reimport')
        same(sibling_rows(lesson_id), siblings, 'reimport changed sibling Lesson rows')

        changed = identity_test_variant(lesson)
        changed_hash = hashlib.sha256(json.dumps(changed, ensure_ascii=False).encode()).hexdigest()
        changed_sql = compile_sql(course, changed, changed_hash)
        sql(changed_sql)
        changed_ids = child_ids(lesson_id)
        for table, field, key_field, db_key in [('activities', 'activities', 'activityKey', 'activity_key'),
                                               ('lesson_turns', 'turns', 'turnKey', 'turn_key')]:
            for item_key, item_id in original_ids[table].items():
                same(changed_ids[table].get(item_key), item_id, f'{table}/{item_key} lost its ID after editing/reordering')
            same(len(changed_ids[table]), len(changed[field]), f'{table} insertion count')
            new_ids = set(changed_ids[table].values()) - set(original_ids[table].values())
            same(len(new_ids), 1, f'{table} insertion did not allocate a distinct ID')
            for position, item in enumerate(changed[field], 1):
                match = f'{where} AND {db_key}={q(item[key_field])}'
                count(f'SELECT sort_order FROM {table} WHERE {match};', position)
                if table == 'activities':
                    count(f'SELECT COUNT(*) FROM activities WHERE {match} AND instruction={q(item["instructionFa"])} AND config=CAST({q(item["config"])} AS JSON);', 1)
                else:
                    count(f'SELECT COUNT(*) FROM lesson_turns WHERE {match} AND text={q(item["textEn"])} AND translation={q(item["translationFa"])} AND audio_url IS NULL;', 1)
        sql(changed_sql)
        same(child_ids(lesson_id), changed_ids, 'IDs changed when reimporting the expanded/reordered Lesson')
        # Update English text on the now-existing probe Turn as well. It has no
        # dialogue/answer references that would require changing the real Lesson.
        changed['turns'][0]['textEn'] = 'Updated runtime identity probe.'
        changed_hash = hashlib.sha256(json.dumps(changed, ensure_ascii=False).encode()).hexdigest()
        sql(compile_sql(course, changed, changed_hash))
        same(child_ids(lesson_id), changed_ids, 'English text edit replaced a Turn ID')
        count(f'SELECT COUNT(*) FROM lesson_turns WHERE {where} AND turn_key={q(changed["turns"][0]["turnKey"])} AND text={q(changed["turns"][0]["textEn"])};', 1)
        same(sibling_rows(lesson_id), siblings, 'editing changed sibling Lesson rows')
        # Restoring canonical content also removes the two unreferenced probe keys.
        sql(record['sql'].read_text())
        same(child_ids(lesson_id), original_ids, 'restoring/removing probe keys changed retained IDs')
        same(sibling_rows(lesson_id), siblings, 'restoring changed sibling Lesson rows')
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
             'activities': len(lesson['activities']), 'turns': len(lesson['turns']), 'reimportPassed': True,
             'stableIdsPassed': True, 'stableIdChecks': ['identical_reimport', 'content_edit', 'reorder',
                 'insert', 'expanded_reimport', 'remove_absent_keys', 'sibling_isolation', 'foreign_key_references']})
    sql('DROP TABLE nova_test_identity_refs;')
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
