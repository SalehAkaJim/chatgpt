#!/usr/bin/env python3
"""Regression gates for the user-selected educational fixes (no paid calls)."""
import copy
import hashlib
import json
import subprocess
import sys
import tempfile
from collections import Counter
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'scripts'))
from validate_content import validate_schema,validate_semantics
from english_content_enrichment import enrich_batch,REPLACEMENTS

def check():
    originals=json.loads((ROOT/'content/enrichment/en/scope-baseline.json').read_text())
    seen=set();counts=Counter();lesson_exercises=Counter();levels=[]; batches=[]
    for folder in sorted((ROOT/'content/production/en').iterdir()):
        if not folder.is_dir():continue
        levels.append(folder.name)
        for path in sorted(folder.glob('*.json')):
            b=json.loads(path.read_text());batches.append(b);errors=[];warnings=[]
            validate_schema(b,ROOT/'content/batch.schema.json',errors)
            validate_semantics(b,errors,warnings)
            assert not errors,(path,errors)
            assert enrich_batch(b)==b,('Enrichment is not idempotent',path)
            for x in b['items']:
                ext=x['external_id'];d=x['data'];assert ext not in seen,ext;seen.add(ext)
                counts[x['kind']]+=1
                if ext in originals:
                    clean=copy.deepcopy(x);clean['data'].pop('feedback',None);clean['data']['status']='approved' # Quality states have a separate review gate
                    digest=hashlib.sha256(json.dumps(clean,ensure_ascii=False,sort_keys=True).encode()).hexdigest()
                    assert digest==originals[ext],('Unapproved exercise/dialogue change',ext)
                if x['kind']=='exercise':
                    assert d.get('feedback',{}).get('explanation_fa'),ext
                    assert d['feedback'].get('model_answer'),ext
                    lesson_exercises[d['lesson_key']]+=1
    assert set(originals)<=seen,'Original records were removed'
    targets=['a1-food-01','a1-home-02','a1-directions-02','a1-jobs-02','a1-routine-02',
             'a2-tickets-timetables-03','a2-personality-appearance-03','a2-integrated-capstone-03']
    assert all(lesson_exercises[k]>=5 for k in targets),lesson_exercises
    assert sum(x.startswith('u_fix_letter_') for x in seen)==26
    assert sum(x.startswith('g_fix_') for x in seen)==10
    with tempfile.TemporaryDirectory() as temp:
        for level in levels:
            target=Path(temp)/(level+'.json')
            subprocess.run([sys.executable,str(ROOT/'scripts/build_audio_manifest.py'),
                str(ROOT/'content/production/en'/level),'--level',level,'--strict-characters','--output',str(target)],check=True,capture_output=True)
            manifest=json.loads(target.read_text())
            refs={ref['entity_key']:(item,ref) for item in manifest['items'] for ref in item['entity_refs']}
            for b in batches:
                if b['cefr']!=level:continue
                for x in b['items']:
                    d=x['data'];ext=x['external_id']
                    if x['kind']=='exercise' and d['exercise_type']=='listening':
                        item,ref=refs[ext]
                        assert item['text']==' '.join(d['prompt']['audio_text'].strip().split()),ext
                        assert ref['entity_type']=='exercise',ext
                    if x['kind']=='grammar_point' and d.get('audio_examples'):
                        for n,e in enumerate(d['examples'],1):
                            assert refs[f'{ext}:example:{n}'][0]['text']==' '.join(e['en'].strip().split())
    print(json.dumps({'valid':True,'levels':levels,'batches':len(batches),'counts':dict(counts),
        'preserved_existing_exercises_and_dialogues':len(originals),'strengthened_lessons':len(targets)},ensure_ascii=False))

if __name__=='__main__':check()
