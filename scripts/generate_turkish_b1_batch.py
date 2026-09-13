#!/usr/bin/env python3
from __future__ import annotations
import argparse,json
from pathlib import Path
import generate_turkish_a1_batch as base
ROOT=Path(__file__).resolve().parents[1]; LEVEL='B1'
EXPECTED=['experiences-and-change','storytelling-sequence','opinions-and-evidence','reported-information','conditions-and-consequences','goals-and-effort','problems-and-solutions','media-and-sources','social-nuance','b1-city-project-capstone']
base.LEVEL=LEVEL
def rename(v):
    if isinstance(v,str):
        if v=='a1': return 'b1'
        return v.replace('a1-tr-','b1-tr-').replace('tr_a1_','tr_b1_')
    if isinstance(v,list): return [rename(x) for x in v]
    if isinstance(v,dict): return {k:rename(x) for k,x in v.items()}
    return v
def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--spec-a',type=Path,default=ROOT/'content/specs/tr/B1/batch-01a.json'); ap.add_argument('--spec-b',type=Path,default=ROOT/'content/specs/tr/B1/batch-01b.json'); a=ap.parse_args()
    payloads=[json.loads(a.spec_a.read_text(encoding='utf-8')),json.loads(a.spec_b.read_text(encoding='utf-8'))]
    units=[]
    for p in payloads:
        if p.get('level')!=LEVEL or p.get('variant')!='tr-TR': raise SystemExit('Unexpected Turkish B1 spec metadata')
        units+=p.get('units',[])
    actual=[u.get('slug') for u in units]
    if actual!=EXPECTED: raise SystemExit(f'Unexpected Turkish B1 sequence: {actual}')
    out=ROOT/'content/production/tr/B1'; out.mkdir(parents=True,exist_ok=True); written=[]
    for spec in units:
        batch=rename(base.build_unit(spec)); batch['batch_id']=f"tr-tr-b1-{spec['slug']}-v1"; batch['cefr']=LEVEL; batch['curriculum_unit']=f"b1-tr-{spec['slug']}"; batch['generator']='gpt-5.6-sol:turkish-b1-batch-v1'
        for item in batch['items']:
            if item.get('kind')=='exercise': item.get('data',{})['difficulty']=max(3,int(item.get('data',{}).get('difficulty',3)))
        p=out/f"b1-tr-{spec['slug']}-v1.json"; p.write_text(json.dumps(batch,ensure_ascii=False,indent=2)+'\n',encoding='utf-8'); written.append(p.name)
    print(json.dumps({'level':LEVEL,'units':len(written),'files':written},ensure_ascii=False,indent=2))
if __name__=='__main__': main()
