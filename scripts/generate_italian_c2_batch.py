#!/usr/bin/env python3
"""Generate Standard Italian C2 batch 1 from independently authored C2 unit specs."""
from __future__ import annotations
import json
from pathlib import Path
import generate_italian_a1_batch as base
ROOT=Path(__file__).resolve().parents[1]
LEVEL='C2'
EXPECTED=['inferential-precision','irony-and-understatement','counterfactual-reasoning','institutional-register','academic-critique','strategic-ambiguity','cultural-intertextuality','stylistic-editing','high-stakes-debate','c2-public-panel-capstone']

def rename_level_ids(value):
    if isinstance(value,str):
        if value=='A1': return LEVEL
        if value=='a1': return 'c2'
        return value.replace('a1-it-','c2-it-').replace('it_a1_','it_c2_').replace('italian-a1-batch-v1','italian-c2-batch-v1')
    if isinstance(value,list): return [rename_level_ids(x) for x in value]
    if isinstance(value,dict): return {k:rename_level_ids(v) for k,v in value.items()}
    return value

def main():
    src=ROOT/'content/specs/it/C2/units'; units=[]
    for p in sorted(src.glob('*.json')): units.extend(json.loads(p.read_text(encoding='utf-8')))
    actual=[u.get('slug') for u in units]
    if actual!=EXPECTED: raise SystemExit(f'Unexpected Italian C2 sequence: {actual}')
    spec={'batch':1,'level':'C2','variant':'it-IT','pedagogy':{'learner_language':'fa-IR','standard':'contemporary standard Italian','principles':['C2 interpretive precision and rhetorical agility','advanced grammar through discourse function','native-quality Italian authored independently','concise contrastive Persian support']},'units':units}
    sp=ROOT/'content/specs/it/C2/batch-01.json'; sp.parent.mkdir(parents=True,exist_ok=True); sp.write_text(json.dumps(spec,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    out=ROOT/'content/production/it/C2'; out.mkdir(parents=True,exist_ok=True)
    for x in units:
        batch=rename_level_ids(base.build_unit(x)); batch['batch_id']=f"it-it-c2-{x['slug']}-v1"; batch['cefr']=LEVEL; batch['curriculum_unit']=f"c2-it-{x['slug']}"; batch['generator']='gpt-5.6-sol:italian-c2-batch-v1'
        for item in batch['items']:
            d=item.get('data',{}); d['cefr']=LEVEL
            if item.get('kind')=='concept': d['tags']=[('c2' if t=='a1' else t) for t in d.get('tags',[])]
            if item.get('kind')=='exercise': d['difficulty']=max(5,int(d.get('difficulty',3)))
        (out/f"c2-it-{x['slug']}-v1.json").write_text(json.dumps(batch,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'level':LEVEL,'units':len(units)},ensure_ascii=False))
if __name__=='__main__': main()
