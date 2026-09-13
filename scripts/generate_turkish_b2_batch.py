#!/usr/bin/env python3
from __future__ import annotations
import argparse,json
from pathlib import Path
import generate_turkish_a1_batch as base
ROOT=Path(__file__).resolve().parents[1]; LEVEL='B2'
EXPECTED=['nuanced-stance','causes-and-consequences','hypothetical-alternatives','formal-negotiation','summarizing-viewpoints','relative-detail','passive-processes','inference-and-evidence','concession-and-disagreement','b2-community-forum-capstone']
base.LEVEL=LEVEL
def rename(v):
    if isinstance(v,str):
        if v=='a1': return 'b2'
        return v.replace('a1-tr-','b2-tr-').replace('tr_a1_','tr_b2_')
    if isinstance(v,list): return [rename(x) for x in v]
    if isinstance(v,dict): return {k:rename(x) for k,x in v.items()}
    return v
def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--spec',type=Path,default=ROOT/'content/specs/tr/B2/batch-01.json'); a=ap.parse_args()
    payload=json.loads(a.spec.read_text(encoding='utf-8')); units=payload.get('units',[])
    if payload.get('level')!=LEVEL or payload.get('variant')!='tr-TR': raise SystemExit('Unexpected Turkish B2 spec metadata')
    actual=[u.get('slug') for u in units]
    if actual!=EXPECTED: raise SystemExit(f'Unexpected Turkish B2 sequence: {actual}')
    out=ROOT/'content/production/tr/B2'; out.mkdir(parents=True,exist_ok=True); written=[]
    for spec in units:
        batch=rename(base.build_unit(spec)); batch['batch_id']=f"tr-tr-b2-{spec['slug']}-v1"; batch['cefr']=LEVEL; batch['curriculum_unit']=f"b2-tr-{spec['slug']}"; batch['generator']='gpt-5.6-sol:turkish-b2-batch-v1'
        for item in batch['items']:
            if item.get('kind')=='exercise': item.get('data',{})['difficulty']=max(4,int(item.get('data',{}).get('difficulty',4)))
        p=out/f"b2-tr-{spec['slug']}-v1.json"; p.write_text(json.dumps(batch,ensure_ascii=False,indent=2)+'\n',encoding='utf-8'); written.append(p.name)
    print(json.dumps({'level':LEVEL,'units':len(written),'files':written},ensure_ascii=False,indent=2))
if __name__=='__main__': main()
