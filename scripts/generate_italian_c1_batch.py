#!/usr/bin/env python3
"""Generate native-quality Standard Italian C1 batch 1 from the authored Italian-specific spec."""
from __future__ import annotations
import argparse, json
from pathlib import Path
import generate_italian_a1_batch as base
ROOT=Path(__file__).resolve().parents[1]
LEVEL='C1'
EXPECTED=['calibrated-stance','information-structure','concession-and-reframing','mediation-and-synthesis','register-flexibility','reported-voices','nominalization-and-density','idiomatic-reformulation','complex-causality','c1-public-forum-capstone']
def rename_level_ids(value):
    if isinstance(value,str):
        if value=='A1': return LEVEL
        if value=='a1': return 'c1'
        return value.replace('a1-it-','c1-it-').replace('it_a1_','it_c1_').replace('italian-a1-batch-v1','italian-c1-batch-v1')
    if isinstance(value,list): return [rename_level_ids(x) for x in value]
    if isinstance(value,dict): return {k:rename_level_ids(v) for k,v in value.items()}
    return value
def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--spec',type=Path,default=ROOT/'content/specs/it/C1/batch-01.json'); args=ap.parse_args()
    payload=json.loads(args.spec.read_text(encoding='utf-8')); units=payload.get('units',[]); actual=[u.get('slug') for u in units]
    if payload.get('level')!=LEVEL or payload.get('variant')!='it-IT': raise SystemExit('Unexpected Italian C1 spec metadata')
    if len(units)!=10 or actual!=EXPECTED: raise SystemExit(f'Unexpected Italian C1 batch 1 sequence: {actual}')
    out=ROOT/'content/production/it/C1'; out.mkdir(parents=True,exist_ok=True)
    for spec in units:
        batch=rename_level_ids(base.build_unit(spec)); batch['batch_id']=f"it-it-c1-{spec['slug']}-v1"; batch['cefr']=LEVEL; batch['curriculum_unit']=f"c1-it-{spec['slug']}"; batch['generator']='gpt-5.6-sol:italian-c1-batch-v1'
        for item in batch['items']:
            d=item.get('data',{}); d['cefr']=LEVEL
            if item.get('kind')=='concept': d['tags']=[('c1' if t=='a1' else t) for t in d.get('tags',[])]
            if item.get('kind')=='exercise': d['difficulty']=max(5,int(d.get('difficulty',3)))
        (out/f"c1-it-{spec['slug']}-v1.json").write_text(json.dumps(batch,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'level':LEVEL,'units':len(units)},ensure_ascii=False))
if __name__=='__main__': main()
