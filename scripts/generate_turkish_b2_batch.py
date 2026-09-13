#!/usr/bin/env python3
from __future__ import annotations
import argparse,json
from copy import deepcopy
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

def normalize_lessons(spec: dict) -> dict:
    """Map authored B2 content onto the two-lesson unit schema used by the stable Turkish generator.

    The final integer in vocab/utterance rows is a lesson assignment, not a difficulty value.
    Keep the authored linguistic content unchanged while enforcing 3+3 lexical items and 2+2
    utterances across lessons 1 and 2. Dialogue rows already carry explicit lesson 1/2 values.
    """
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
    ap=argparse.ArgumentParser(); ap.add_argument('--spec',type=Path,default=ROOT/'content/specs/tr/B2/batch-01.json'); a=ap.parse_args()
    payload=json.loads(a.spec.read_text(encoding='utf-8')); units=payload.get('units',[])
    if payload.get('level')!=LEVEL or payload.get('variant')!='tr-TR': raise SystemExit('Unexpected Turkish B2 spec metadata')
    actual=[u.get('slug') for u in units]
    if actual!=EXPECTED: raise SystemExit(f'Unexpected Turkish B2 sequence: {actual}')
    out=ROOT/'content/production/tr/B2'; out.mkdir(parents=True,exist_ok=True); written=[]
    for authored_spec in units:
        spec=normalize_lessons(authored_spec)
        batch=rename(base.build_unit(spec)); batch['batch_id']=f"tr-tr-b2-{spec['slug']}-v1"; batch['cefr']=LEVEL; batch['curriculum_unit']=f"b2-tr-{spec['slug']}"; batch['generator']='gpt-5.6-sol:turkish-b2-batch-v1'
        for item in batch['items']:
            if item.get('kind')=='exercise': item.get('data',{})['difficulty']=max(4,int(item.get('data',{}).get('difficulty',4)))
        p=out/f"b2-tr-{spec['slug']}-v1.json"; p.write_text(json.dumps(batch,ensure_ascii=False,indent=2)+'\n',encoding='utf-8'); written.append(p.name)
    print(json.dumps({'level':LEVEL,'units':len(written),'files':written},ensure_ascii=False,indent=2))
if __name__=='__main__': main()
