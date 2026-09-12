#!/usr/bin/env python3
"""Persist source quality states for imported rows, without touching live MySQL."""
import json
from pathlib import Path

try:
    from scripts.content_quality import ROOT, review_state, content_hash, quality_errors
    from scripts.export_english_content_updates import q, j, uid, stable, slug
except ModuleNotFoundError:
    from content_quality import ROOT, review_state, content_hash, quality_errors
    from export_english_content_updates import q, j, uid, stable, slug


def statements(batch):
    errors = quality_errors(batch)
    if errors:
        raise ValueError(errors)
    bid = batch['batch_id']
    language = "(SELECT id FROM languages WHERE code=" + q(batch['target_language']) + ")"
    variant = "(SELECT id FROM language_variants WHERE code=" + q(batch.get('target_variant', 'en-US')) + ")"
    result = []
    statuses = {x['data'].get('status', 'generated') for x in batch['items']}
    state = review_state(batch)
    lesson_status = 'approved' if statuses == {'approved'} and state['state'] == 'approved' else ('validated' if statuses <= {'validated', 'approved'} else 'generated')
    evidence = {'batch_id': bid, 'content_sha256': content_hash(batch),
                'educational_review': state['state']}
    if state.get('reviewer'):
        evidence.update({k: state[k] for k in ('reviewer', 'reviewer_type', 'reviewed_at')})
    course = batch.get('course') or 'fa-en-us'
    for key in sorted({x['data']['lesson_key'] for x in batch['items']}):
        result.append(f"UPDATE lessons SET status={q(lesson_status)},metadata=JSON_SET(metadata,'$.content_quality',{j(evidence)}) WHERE course_id=(SELECT id FROM courses WHERE slug={q(course)}) AND slug={q(key)};")

    def update(table, where, status):
        result.append(f"UPDATE {table} SET status={q(status)} WHERE {where};")

    for item in batch['items']:
        d = item['data']; ext = item['external_id']; kind = item['kind']
        status = d.get('status', 'generated')
        if kind == 'concept':
            where = 'slug=' + q(d['slug'])
            update('concepts', where, status)
            codes = set(d.get('forms', {})) | set(d.get('translations', {}))
            if codes:
                update('concept_terms', f"concept_id IN (SELECT id FROM concepts WHERE {where}) AND language_id IN (SELECT id FROM languages WHERE code IN ({','.join(q(c) for c in sorted(codes))}))", status)
        elif kind == 'lexeme':
            where = f"language_id={language} AND language_variant_id={variant} AND lemma={q(d['lemma'])} AND COALESCE(part_of_speech,'')={q(d.get('part_of_speech') or '')}"
            update('lexemes', where, status)
        elif kind == 'word_form':
            update('word_forms', 'id=' + uid(stable('word_form', f'{bid}:{ext}')), status)
        elif kind == 'utterance':
            identity = uid(stable('utterance', f'{bid}:{ext}'))
            update('utterances', 'id=' + identity, status)
            codes = set(d.get('text', {})) | set(d.get('translations', {}))
            update('utterance_texts', f"utterance_id={identity} AND language_id IN (SELECT id FROM languages WHERE code IN ({','.join(q(c) for c in sorted(codes))}))", status)
        elif kind == 'grammar_point':
            where = 'slug=' + q(d['slug'])
            update('grammar_points', where, status)
            codes = sorted(d.get('explanation', {}))
            if codes:
                update('grammar_explanations', f"grammar_point_id IN (SELECT id FROM grammar_points WHERE {where}) AND explanation_language_id IN (SELECT id FROM languages WHERE code IN ({','.join(q(c) for c in codes)}))", status)
        elif kind == 'dialogue':
            where = 'slug=' + q(slug(f'{bid}-{ext}'))
            update('dialogues', where, status)
            update('dialogue_versions', f'dialogue_id IN (SELECT id FROM dialogues WHERE {where}) AND language_id={language}', status)
        elif kind == 'exercise':
            update('exercises', 'id=' + uid(stable('exercise', f'{bid}:{ext}')), status)
    return result


def main():
    lines = ['-- Persist quality states from exact source batches; no content deletion.',
             '-- Run after normal imports. Educational approval is never inferred from generation.',
             'SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;', 'START TRANSACTION;']
    for path in sorted((ROOT / 'content/production/en').glob('*/*.json')):
        lines.extend(statements(json.loads(path.read_text())))
    lines.extend(['COMMIT;', ''])
    path = ROOT / 'database/import/en/educational_quality_updates.sql'
    path.write_text('\n'.join(lines))
    print(json.dumps({'output': str(path.relative_to(ROOT)), 'statements': len(lines) - 6}))


if __name__ == '__main__':
    main()
