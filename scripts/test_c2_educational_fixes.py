#!/usr/bin/env python3
"""Guard the first-ten C2 rewrite, regeneration and complete audio coverage."""
import copy
import importlib
import json
import subprocess
import sys
import tempfile
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT))
from scripts.content_quality import mark_validated, quality_errors
from scripts.generate_c2_support import build_c2
from scripts.validate_content import validate_schema, validate_semantics


def check():
    directory = ROOT / 'content/enrichment/en'
    patches = json.loads((directory / 'c2-dialogue-overrides.json').read_text())
    additions = json.loads((directory / 'c2-performance-additions.json').read_text())
    corrections = set(json.loads((directory / 'correction-ids.json').read_text()))
    first = importlib.import_module('scripts.generate_c2_01_10').UNITS
    assert set(additions) == {u['slug'] for u in first}
    assert len(patches) == 30 and set(patches) <= corrections
    batches = {}
    for module in ('01_10', '11_20', '21_30', '31_40', '41_45'):
        for spec in importlib.import_module('scripts.generate_c2_' + module).UNITS:
            batch = json.loads((ROOT / 'content/production/en/C2' / spec['file']).read_text())
            generated = build_c2(spec)
            errors = []
            validate_schema(generated, ROOT / 'content/batch.schema.json', errors)
            validate_semantics(generated, errors, [])
            assert not errors, (spec['slug'], errors)
            assert mark_validated(generated) == batch, ('Regeneration changed C2 source', spec['slug'])
            assert not quality_errors(batch)
            batches[spec['slug']] = batch

    with tempfile.TemporaryDirectory() as temp:
        target = Path(temp) / 'C2.json'
        subprocess.run([sys.executable, str(ROOT / 'scripts/build_audio_manifest.py'),
                        str(ROOT / 'content/production/en/C2'), '--level', 'C2',
                        '--strict-characters', '--output', str(target)], check=True, capture_output=True)
        manifest = json.loads(target.read_text())
        refs = {r['entity_key']: (item, r) for item in manifest['items'] for r in item['entity_refs']}
        kinds = Counter()
        for unit, authored in additions.items():
            batch = batches[unit]
            tasks = [x for x in batch['items'] if x['kind'] == 'exercise'
                     and x['data']['answer'].get('evaluation_mode') == 'rubric']
            assert len(tasks) == len(authored) == 1, unit
            for item in batch['items']:
                ext = item['external_id']; d = item['data']
                if item['kind'] == 'dialogue':
                    assert d['turns'] == patches[ext]['turns'], ext
                    assert [t['order'] for t in d['turns']] == [1, 2, 3, 4]
                    assert len({t['speaker'] for t in d['turns']}) == 2
                    for t in d['turns']:
                        audio, ref = refs[f"{ext}:{t['order']}"]
                        assert audio['text'] == ' '.join(t['text'].split())
                        assert audio['metadata']['character'] == t['speaker'].lower()
                if item not in tasks:
                    continue
                expected = copy.deepcopy(authored[0]); expected['data']['status'] = 'validated'
                assert item == expected
                kinds[d['exercise_type']] += 1
                assert len(d['answer']['required_points_fa']) == 4
                assert refs[ext + ':model'][0]['text'] == ' '.join(d['answer']['model_text'].split())
                assert len(d['prompt']['sources']) == 1
                for source in d['prompt']['sources']:
                    assert source['provenance'] == 'fictional_teaching_material'
                    assert source['text_fa']
                    assert refs[f"{ext}:source:{source['id']}"][0]['text'] == ' '.join(source['text_en'].split())
                if d['exercise_type'] == 'writing':
                    limits = d['prompt']['suggested_length']
                    assert limits['min'] <= len(d['answer']['model_text'].split()) <= limits['max']
                invalid = copy.deepcopy(batch)
                bad = next(x for x in invalid['items'] if x['external_id'] == ext)
                bad['data']['answer']['expected_text'] = d['answer']['model_text']
                errors = []; validate_semantics(invalid, errors, [])
                assert any('exact-text' in e for e in errors)
        assert kinds == {'writing': 5, 'speaking': 5}
        for unit, ext, expected in (
            ('c2-lexical-precision', 'u_c2_lexical_precision_approximate', 'wider context'),
            ('c2-argument-diagnostics', 'u_c2_argument_diagnostics_soundness', 'all of its premises must be true'),
        ):
            item = next(x for x in batches[unit]['items'] if x['external_id'] == ext)
            assert expected in item['data']['text']['en']
            assert refs[ext][0]['text'] == item['data']['text']['en']
            assert ext in corrections
    print(json.dumps({'valid': True, 'c2_regenerated_units': len(batches),
                      'authored_units': len(additions), 'dialogues': len(patches),
                      'new_tasks': dict(kinds), 'source_model_audio_refs': 20,
                      'corrected_concept_models': 2}))


if __name__ == '__main__':
    check()
