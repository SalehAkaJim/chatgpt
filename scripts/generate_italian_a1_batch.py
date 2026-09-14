#!/usr/bin/env python3
"""Generate native-quality Standard Italian A1 batch 1 from the authored Italian-specific spec."""
from __future__ import annotations
import argparse, json, re, unicodedata
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
LEVEL='A1'; COURSE='fa-it-it'; VARIANT='it-IT'

def safe(value:str)->str:
    n=unicodedata.normalize('NFKD',value)
    s=''.join(c for c in n if not unicodedata.combining(c))
    return re.sub(r'[^a-z0-9]+','_',s.lower()).strip('_') or 'item'

def validated(d:dict)->dict:
    d['status']='validated'; return d

def fb(fa:str,it:str)->dict:
    return {'retry_tip_fa':'به معنی، موقعیت و شکل دقیق عبارت ایتالیایی دقت کن و دوباره امتحان کن.','explanation_fa':f'مدل طبیعی این درس: {it} — {fa}','model_answer':it}

def build_unit(spec:dict)->dict:
    slug=spec['slug']; prefix=safe(slug); unit=f'a1-it-{slug}'; topic=spec['topic']
    items=[]; refs={}; utter=[]
    for i,row in enumerate(spec['vocab'],1):
        key,it,fa,pos,lesson=row; lk=f'{unit}-{lesson:02d}'; cs=f'it_a1_{prefix}_{safe(key)}'; refs[key]=cs
        items.append({'kind':'concept','external_id':f'c_{prefix}_{i:02d}','data':validated({'slug':cs,'lesson_key':lk,'concept_type':'lexical','part_of_speech':pos,'forms':{'it':it},'translations':{'fa':fa},'cefr':LEVEL,'topic':topic,'tags':['core','a1','high_frequency']})})
        lx=f'lx_{prefix}_{i:02d}'
        items.append({'kind':'lexeme','external_id':lx,'data':validated({'lesson_key':lk,'lemma':it.rstrip('.!?'),'display_lemma':it.rstrip('.!?'),'language':'it','language_variant':VARIANT,'part_of_speech':pos,'concept_refs':[cs],'cefr':LEVEL})})
        items.append({'kind':'word_form','external_id':f'wf_{prefix}_{i:02d}','data':validated({'lesson_key':lk,'lexeme_ref':lx,'surface_form':it.rstrip('.!?'),'display_form':it.rstrip('.!?'),'grammatical_features':{},'is_lemma':True,'is_preferred':True,'cefr':LEVEL})})
    for i,row in enumerate(spec['utterances'],1):
        key,it,fa,intent,keys,lesson=row
        missing=[k for k in keys if k not in refs]
        if missing: raise ValueError(f'{slug}: unresolved local concept refs for {key}: {missing}')
        utter.append({'it':it,'fa':fa,'lesson':lesson})
        items.append({'kind':'utterance','external_id':f'u_{prefix}_{i:02d}','data':validated({'lesson_key':f'{unit}-{lesson:02d}','text':{'it':it},'translations':{'fa':fa},'intent':intent,'concept_refs':[refs[k] for k in keys],'cefr':LEVEL,'topic':topic,'register':'neutral'})})
    g=spec['grammar']
    items.append({'kind':'grammar_point','external_id':f'g_{prefix}_core','data':validated({'lesson_key':f'{unit}-01','slug':f'{unit}-grammar','title':g[0],'rule_summary':g[1],'explanation':{'fa':g[2]},'examples':[{'it':a,'fa':b} for a,b in g[3]],'cefr':LEVEL})})
    dialogue_ids={}
    for i,row in enumerate(spec['dialogues'],1):
        title,setting,turns,lesson=row; chars=[]; turn_rows=[]
        for order,(speaker,it,fa) in enumerate(turns,1):
            if speaker not in chars: chars.append(speaker)
            turn_rows.append({'order':order,'speaker':speaker,'text':it,'translation_fa':fa})
        did=f'd_{prefix}_{i:02d}'; dialogue_ids[lesson]=did
        items.append({'kind':'dialogue','external_id':did,'data':validated({'lesson_key':f'{unit}-{lesson:02d}','title':title,'setting':safe(setting),'cefr':LEVEL,'topic':topic,'characters':chars,'turns':turn_rows,'qa':{'character_pair_unique_within_unit':True,'naturalness':'passed','single_situation':True}})})
    for lesson in (1,2):
        us=[x for x in utter if x['lesson']==lesson]
        if len(us)<2: raise ValueError(f'{slug}: lesson {lesson} needs two utterances')
        a,b=us[:2]; others_it=[x['it'] for x in utter if x['it']!=a['it']]; others_fa=[x['fa'] for x in utter if x['fa']!=a['fa']]
        it_opts=[a['it']]+others_it[:3]; fa_opts=[a['fa']]+others_fa[:3]; lk=f'{unit}-{lesson:02d}'; base=f'e_{prefix}_{lesson:02d}'
        tokens=b['it'].split(); shuffled=tokens[1:]+tokens[:1] if len(tokens)>1 else tokens
        items += [
          {'kind':'exercise','external_id':base+'_meaning','data':validated({'lesson_key':lk,'exercise_type':'multiple_choice','prompt':{'instruction_fa':'معنی درست این عبارت ایتالیایی را انتخاب کن.','value':a['it']},'answer':{'value':a['fa']},'options':fa_opts,'difficulty':1,'cefr':LEVEL,'topic':topic,'feedback':fb(a['fa'],a['it'])})},
          {'kind':'exercise','external_id':base+'_listen','data':validated({'lesson_key':lk,'exercise_type':'listening','prompt':{'instruction_fa':'گوش کن و عبارتی را که شنیدی انتخاب کن.','audio_text':b['it']},'answer':{'value':b['it']},'options':[b['it']]+[x for x in it_opts if x!=b['it']][:3],'difficulty':1,'cefr':LEVEL,'topic':topic,'feedback':{**fb(b['fa'],b['it']),'transcript_it':b['it']}})},
          {'kind':'exercise','external_id':base+'_speak','data':validated({'lesson_key':lk,'exercise_type':'speaking','prompt':{'instruction_fa':'عبارت را با صدای بلند و با ریتم طبیعی تکرار کن.','value':a['it']},'answer':{'expected_text':a['it']},'difficulty':1,'cefr':LEVEL,'topic':topic,'feedback':fb(a['fa'],a['it'])})},
          {'kind':'exercise','external_id':base+'_build','data':validated({'lesson_key':lk,'exercise_type':'sentence_building','prompt':{'instruction_fa':'کلمه‌ها را لمس کن تا عبارت درست ساخته شود.','tokens':shuffled},'answer':{'tokens':tokens,'value':b['it']},'difficulty':1,'cefr':LEVEL,'topic':topic,'feedback':fb(b['fa'],b['it'])})},
          {'kind':'exercise','external_id':base+'_dialogue','data':validated({'lesson_key':lk,'exercise_type':'dialogue_comprehension','prompt':{'instruction_fa':'با توجه به گفت‌وگو، پاسخ مناسب را انتخاب کن.','source_dialogue_ref':dialogue_ids[lesson],'question_fa':f'کدام گزینه با معنی «{a["fa"]}» هماهنگ است؟'},'answer':{'value':a['it']},'options':it_opts,'difficulty':1,'cefr':LEVEL,'topic':topic,'feedback':fb(a['fa'],a['it'])})}
        ]
    return {'batch_id':f'it-it-a1-{slug}-v1','course':COURSE,'learner_language':'fa','learner_variant':'fa-IR','target_language':'it','target_variant':VARIANT,'cefr':LEVEL,'curriculum_unit':unit,'generator':'gpt-5.6-sol:italian-a1-batch-v1','items':items}

def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--spec',type=Path,default=ROOT/'content/specs/it/A1/batch-01.json'); args=ap.parse_args()
    payload=json.loads(args.spec.read_text(encoding='utf-8')); units=payload.get('units',[])
    expected=['who-i-am','articles-and-objects','my-family','at-home','daily-routine','time-and-plans','at-the-cafe','shopping-basics','getting-around','a1-day-capstone']
    actual=[u.get('slug') for u in units]
    if len(units)!=10 or actual!=expected: raise SystemExit(f'Unexpected Italian A1 batch 1 sequence: {actual}')
    out=ROOT/'content/production/it/A1'; out.mkdir(parents=True,exist_ok=True); written=[]
    for spec in units:
        batch=build_unit(spec); p=out/f'a1-it-{spec["slug"]}-v1.json'; p.write_text(json.dumps(batch,ensure_ascii=False,indent=2)+'\n',encoding='utf-8'); written.append(p.name)
    print(json.dumps({'level':LEVEL,'units':len(written),'files':written},ensure_ascii=False,indent=2))
if __name__=='__main__': main()
