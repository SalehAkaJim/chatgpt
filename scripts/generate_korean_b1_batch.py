#!/usr/bin/env python3
from __future__ import annotations
import argparse,json
from pathlib import Path
import generate_korean_a1_batch as base
ROOT=Path(__file__).resolve().parents[1]; LEVEL='B1'
EXPECTED=['experiences-and-change','storytelling-sequence','opinions-and-evidence','reported-information','conditions-and-consequences','goals-and-effort','problems-and-solutions','media-and-sources','social-nuance','b1-seoul-project-capstone']
def rename(v):
    if isinstance(v,str):
        if v=='A1': return 'B1'
        if v=='a1': return 'b1'
        return v.replace('a1-ko-','b1-ko-').replace('ko_a1_','ko_b1_').replace('korean-a1-batch-v1','korean-b1-batch-v1')
    if isinstance(v,list): return [rename(x) for x in v]
    if isinstance(v,dict): return {k:rename(x) for k,x in v.items()}
    return v
def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--spec-a',type=Path,default=ROOT/'content/specs/ko/B1/batch-01a.json'); ap.add_argument('--spec-b',type=Path,default=ROOT/'content/specs/ko/B1/batch-01b.json'); args=ap.parse_args()
    payloads=[json.loads(args.spec_a.read_text(encoding='utf-8')),json.loads(args.spec_b.read_text(encoding='utf-8'))]; units=[]
    for p in payloads:
        if p.get('level')!=LEVEL or p.get('variant')!='ko-KR': raise SystemExit('Unexpected Korean B1 spec metadata')
        units+=p.get('units',[])
    actual=[u.get('slug') for u in units]
    if actual!=EXPECTED: raise SystemExit(f'Unexpected Korean B1 batch 1 sequence: {actual}')
    out=ROOT/'content/production/ko/B1'; out.mkdir(parents=True,exist_ok=True)
    for spec in units:
        batch=rename(base.build_unit(spec)); batch['batch_id']=f"ko-kr-b1-{spec['slug']}-v1"; batch['cefr']=LEVEL; batch['curriculum_unit']=f"b1-ko-{spec['slug']}"; batch['generator']='gpt-5.6-sol:korean-b1-batch-v1'
        for item in batch['items']:
            d=item.get('data',{}); d['cefr']=LEVEL
            if item.get('kind')=='exercise': d['difficulty']=max(3,int(d.get('difficulty',3)))
        (out/f"b1-ko-{spec['slug']}-v1.json").write_text(json.dumps(batch,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
if __name__=='__main__': main()
