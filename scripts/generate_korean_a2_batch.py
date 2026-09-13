#!/usr/bin/env python3
"""Generate Korean A2 batch 1 from the authored Korean-specific spec."""
from __future__ import annotations
import argparse, json
from pathlib import Path
import generate_korean_a1_batch as base

ROOT=Path(__file__).resolve().parents[1]
LEVEL='A2'
EXPECTED=['past-experiences','reasons-and-results','plans-and-intentions','comparisons-and-choice','ability-and-permission','health-and-advice','travel-and-hotel','weather-and-change','opinions-and-softening','a2-seoul-weekend-capstone']

def rename_level_ids(value):
    if isinstance(value,str):
        if value=='A1': return 'A2'
        if value=='a1': return 'a2'
        return value.replace('a1-ko-','a2-ko-').replace('ko_a1_','ko_a2_').replace('korean-a1-batch-v1','korean-a2-batch-v1')
    if isinstance(value,list): return [rename_level_ids(x) for x in value]
    if isinstance(value,dict): return {k:rename_level_ids(v) for k,v in value.items()}
    return value

def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--spec',type=Path,default=ROOT/'content/specs/ko/A2/batch-01.json'); args=ap.parse_args()
    payload=json.loads(args.spec.read_text(encoding='utf-8')); units=payload.get('units',[]); actual=[u.get('slug') for u in units]
    if payload.get('level')!=LEVEL or payload.get('variant')!='ko-KR': raise SystemExit('Unexpected Korean A2 spec metadata')
    if len(units)!=10 or actual!=EXPECTED: raise SystemExit(f'Unexpected Korean A2 batch 1 sequence: {actual}')
    out=ROOT/'content/production/ko/A2'; out.mkdir(parents=True,exist_ok=True)
    for spec in units:
        batch=rename_level_ids(base.build_unit(spec)); batch['batch_id']=f"ko-kr-a2-{spec['slug']}-v1"; batch['cefr']=LEVEL; batch['curriculum_unit']=f"a2-ko-{spec['slug']}"; batch['generator']='gpt-5.6-sol:korean-a2-batch-v1'
        for item in batch['items']:
            d=item.get('data',{}); d['cefr']=LEVEL
            if item.get('kind')=='exercise': d['difficulty']=max(2,int(d.get('difficulty',2)))
        (out/f"a2-ko-{spec['slug']}-v1.json").write_text(json.dumps(batch,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
if __name__=='__main__': main()
