#!/usr/bin/env python3
from __future__ import annotations
import argparse,json
from copy import deepcopy
from pathlib import Path
import generate_korean_a1_batch as base
ROOT=Path(__file__).resolve().parents[1]; LEVEL='C2'
EXPECTED=['register-orchestration','compressed-argumentation','strategic-ambiguity-irony','institutional-accountability','methodological-critique','media-framing-intertextuality','high-stakes-negotiation','essayistic-rhythm-style','sociolinguistic-indexicality','c2-seoul-deliberation-capstone']

def rename(v):
    if isinstance(v,str):
        if v=='A1': return LEVEL
        if v=='a1': return 'c2'
        return v.replace('a1-ko-','c2-ko-').replace('ko_a1_','ko_c2_').replace('korean-a1-batch-v1','korean-c2-batch-v1')
    if isinstance(v,list): return [rename(x) for x in v]
    if isinstance(v,dict): return {k:rename(x) for k,x in v.items()}
    return v

def normalize_lessons(spec:dict)->dict:
    normalized=deepcopy(spec)
    vocab=normalized.get('vocab',[]); utterances=normalized.get('utterances',[]); dialogues=normalized.get('dialogues',[])
    if len(vocab)!=6: raise ValueError(f"{spec.get('slug')}: expected six vocab rows, got {len(vocab)}")
    if len(utterances)!=4: raise ValueError(f"{spec.get('slug')}: expected four utterances, got {len(utterances)}")
    if len(dialogues)!=2 or [d[-1] for d in dialogues] != [1,2]: raise ValueError(f"{spec.get('slug')}: dialogues must map to lessons 1 and 2")
    for i,row in enumerate(vocab): row[-1]=1 if i<3 else 2
    for i,row in enumerate(utterances): row[-1]=1 if i<2 else 2
    return normalized

def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--spec',type=Path,default=ROOT/'content/specs/ko/C2/batch-01.json'); args=ap.parse_args()
    payload=json.loads(args.spec.read_text(encoding='utf-8')); units=payload.get('units',[])
    if payload.get('level')!=LEVEL or payload.get('variant')!='ko-KR': raise SystemExit('Unexpected Korean C2 spec metadata')
    actual=[u.get('slug') for u in units]
    if actual!=EXPECTED: raise SystemExit(f'Unexpected Korean C2 batch 1 sequence: {actual}')
    out=ROOT/'content/production/ko/C2'; out.mkdir(parents=True,exist_ok=True)
    for authored in units:
        spec=normalize_lessons(authored); batch=rename(base.build_unit(spec))
        batch['batch_id']=f"ko-kr-c2-{spec['slug']}-v1"; batch['cefr']=LEVEL; batch['curriculum_unit']=f"c2-ko-{spec['slug']}"; batch['generator']='gpt-5.6-sol:korean-c2-batch-v1'
        for item in batch['items']:
            data=item.get('data',{}); data['cefr']=LEVEL
            if item.get('kind')=='utterance': data['register']='polite'
            if item.get('kind')=='exercise': data['difficulty']=5
        (out/f"c2-ko-{spec['slug']}-v1.json").write_text(json.dumps(batch,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'level':LEVEL,'units':len(units)},ensure_ascii=False))
if __name__=='__main__': main()
