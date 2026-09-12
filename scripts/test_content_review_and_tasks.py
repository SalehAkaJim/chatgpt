#!/usr/bin/env python3
"""Regression checks for release evidence, authored tasks and their audio links."""
import copy
import json
import subprocess
import sys
import tempfile
from collections import Counter
from pathlib import Path

from content_quality import ROOT, CHECKS, content_hash, review_path, quality_errors, review_state
from validate_content import validate_semantics


def check():
    batches = [json.loads(p.read_text()) for p in sorted((ROOT / 'content/production/en').glob('*/*.json'))]
    for batch in batches:
        assert not quality_errors(batch), batch['batch_id']
    for language in ('ar', 'de'):
        for path in (ROOT / 'content/production' / language).rglob('*.json'):
            legacy = json.loads(path.read_text())
            assert not quality_errors(legacy), 'English rollout changed another language'
            assert quality_errors(legacy, True), 'Explicit release checks must still require review'
    sample = copy.deepcopy(batches[0])
    with tempfile.TemporaryDirectory() as temp:
        directory = Path(temp)
        assert quality_errors(sample, True, directory), 'Unreviewed release was allowed'
        for item in sample['items']:
            item['data']['status'] = 'approved'
        assert quality_errors(sample, False, directory), 'Forged approved status was allowed'
        record = {'batch_id': sample['batch_id'], 'content_sha256': content_hash(sample),
                  'decision': 'approved', 'reviewer': 'test fixture', 'reviewer_type': 'human',
                  'reviewed_at': '2026-09-12T00:00:00+00:00', 'notes': 'Test evidence, never published as a real review.',
                  'checks': {k: {'result': 'pass', 'evidence': 'Temporary test fixture.'} for k in CHECKS}}
        path = review_path(sample, directory); path.parent.mkdir(parents=True)
        path.write_text(json.dumps(record))
        assert not quality_errors(sample, True, directory)
        edited = copy.deepcopy(sample); edited['items'][0]['data']['lesson_key'] += '-changed'
        assert review_state(edited, directory)['state'] == 'stale'
        assert quality_errors(edited, True, directory), 'An edit retained approval'
        del record['checks']['task_alignment']
        path.write_text(json.dumps(record))
        assert quality_errors(sample, True, directory), 'Incomplete educational review was allowed'

        target = directory / 'C1.json'
        subprocess.run([sys.executable, str(ROOT / 'scripts/build_audio_manifest.py'),
                        str(ROOT / 'content/production/en/C1'), '--level', 'C1',
                        '--strict-characters', '--output', str(target)], check=True, capture_output=True)
        manifest = json.loads(target.read_text())
        refs = {ref['entity_key']: (item, ref) for item in manifest['items'] for ref in item['entity_refs']}
        patches = json.loads((ROOT / 'content/enrichment/en/dialogue-overrides.json').read_text())
        kinds = Counter(); units = set(); source_refs = 0
        for batch in batches:
            if batch['cefr'] != 'C1':
                continue
            tasks = [x for x in batch['items'] if x['kind'] == 'exercise' and x['data']['answer'].get('evaluation_mode') == 'rubric']
            assert tasks, batch['batch_id']
            units.add(batch['curriculum_unit'])
            for x in batch['items']:
                d = x['data']; ext = x['external_id']
                if x['kind'] == 'dialogue':
                    assert d['turns'] == patches[ext]['turns'], ext
                    for t in d['turns']:
                        item, ref = refs[f"{ext}:{t['order']}"]
                        assert item['text'] == ' '.join(t['text'].split()), ext
                        assert item['metadata']['character'] == t['speaker'].lower(), ext
                if x not in tasks:
                    continue
                kinds[d['exercise_type']] += 1
                assert d['assessment']['exact_match_allowed'] is False
                assert d['answer'].get('expected_text') is None
                assert refs[ext + ':model'][0]['text'] == ' '.join(d['answer']['model_text'].split())
                for source in d['prompt'].get('sources', []):
                    assert refs[f"{ext}:source:{source['id']}"][0]['text'] == ' '.join(source['text_en'].split())
                    source_refs += 1
                invalid = copy.deepcopy(batch)
                bad = next(i for i in invalid['items'] if i['external_id'] == ext)
                bad['data']['answer']['expected_text'] = d['answer']['model_text']
                errors = []; validate_semantics(invalid, errors, [])
                assert any('exact-text' in e for e in errors), ext
        assert len(units) == 45 and sum(kinds.values()) == 50
        assert len(patches) == 135
    print(json.dumps({'valid': True, 'c1_units_with_performance_tasks': len(units),
                      'tasks': dict(kinds), 'dialogues': len(patches), 'source_audio_refs': source_refs,
                      'stale_approval_rejected': True}, ensure_ascii=False))


if __name__ == '__main__':
    check()
