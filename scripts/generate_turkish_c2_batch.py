#!/usr/bin/env python3
from __future__ import annotations
import argparse,json
from copy import deepcopy
from pathlib import Path
import generate_turkish_a1_batch as base
ROOT=Path(__file__).resolve().parents[1]; LEVEL='C2'
EXPECTED=['epistemic-layering','counterfactual-causality','semantic-boundaries','implicature-and-pragmatics','legal-institutional-nuance','rhetorical-compression','cross-framework-mediation','live-reformulation','multi-source-synthesis','c2-expert-briefing-capstone']
base.LEVEL=LEVEL

def rename(v):
    if isinstance(v,str):
        if v=='a1': return 'c2'
        return v.replace('a1-tr-','c2-tr-').replace('tr_a1_','tr_c2_')
    if isinstance(v,list): return [rename(x) for x in v]
    if isinstance(v,dict): return {k:rename(x) for k,x in v.items()}
    return v

def normalize_lessons(spec: dict) -> dict:
    normalized=deepcopy(spec)
    vocab=normalized.get('vocab',[]); utterances=normalized.get('utterances',[])
    if len(vocab)!=6: raise ValueError(f"{spec.get('slug')}: expected exactly six vocab rows, got {len(vocab)}")
    if len(utterances)!=4: raise ValueError(f"{spec.get('slug')}: expected exactly four utterances, got {len(utterances)}")
    for i,row in enumerate(vocab): row[-1]=1 if i<3 else 2
    for i,row in enumerate(utterances): row[-1]=1 if i<2 else 2
    dialogues=normalized.get('dialogues',[])
    if len(dialogues)!=2 or [row[-1] for row in dialogues] != [1,2]:
        raise ValueError(f"{spec.get('slug')}: dialogues must map to lessons 1 and 2")
    return normalized

def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--spec',type=Path,default=ROOT/'content/specs/tr/C2/batch-01.json'); a=ap.parse_args()
    payload=json.loads(a.spec.read_text(encoding='utf-8')); units=payload.get('units',[])
    if payload.get('level')!=LEVEL or payload.get('variant')!='tr-TR': raise SystemExit('Unexpected Turkish C2 spec metadata')
    actual=[u.get('slug') for u in units]
    if actual!=EXPECTED: raise SystemExit(f'Unexpected Turkish C2 sequence: {actual}')
    out=ROOT/'content/production/tr/C2'; out.mkdir(parents=True,exist_ok=True); written=[]
    for authored_spec in units:
        spec=normalize_lessons(authored_spec)
        batch=rename(base.build_unit(spec)); batch['batch_id']=f"tr-tr-c2-{spec['slug']}-v1"; batch['cefr']=LEVEL; batch['curriculum_unit']=f"c2-tr-{spec['slug']}"; batch['generator']='gpt-5.6-sol:turkish-c2-batch-v1'
        for item in batch['items']:
            if item.get('kind')=='exercise': item.get('data',{})['difficulty']=max(5,int(item.get('data',{}).get('difficulty',5)))
        p=out/f"c2-tr-{spec['slug']}-v1.json"; p.write_text(json.dumps(batch,ensure_ascii=False,indent=2)+'\n',encoding='utf-8'); written.append(p.name)
    print(json.dumps({'level':LEVEL,'units':len(written),'files':written},ensure_ascii=False,indent=2))
if __name__=='__main__': main()
