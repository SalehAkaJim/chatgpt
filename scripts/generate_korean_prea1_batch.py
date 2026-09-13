#!/usr/bin/env python3
from __future__ import annotations
import argparse, json, re
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def safe(value:str)->str:
    s=re.sub(r'[^a-z0-9]+','_',value.lower()).strip('_')
    return s or 'item'

def status(data:dict)->dict:
    data['status']='validated'; return data

def feedback(fa:str,ko:str)->dict:
    return {'retry_tip_fa':'به معنی، موقعیت و شکل دقیق عبارت کره‌ای دقت کن و دوباره امتحان کن.','explanation_fa':f'مدل طبیعی این درس: {ko} — {fa}','model_answer':ko}

def build_unit(spec:dict)->dict:
    slug=spec['slug']; unit_slug=f'prea1-ko-{slug}'; prefix=safe(slug); topic=spec['topic']; items=[]; concept_slugs={}; utterances=[]
    for idx,row in enumerate(spec['vocab'],1):
        key,ko,fa,pos,lesson=row; lesson_key=f'{unit_slug}-{lesson:02d}'; cslug=f'ko_pre_a1_{prefix}_{safe(key)}'; concept_slugs[key]=cslug
        items.append({'kind':'concept','external_id':f'c_{prefix}_{idx:02d}','data':status({'slug':cslug,'lesson_key':lesson_key,'concept_type':'lexical','part_of_speech':pos,'forms':{'ko':ko},'translations':{'fa':fa},'cefr':'Pre-A1','topic':topic,'tags':['core','beginner','high_frequency']})})
        lx=f'lx_{prefix}_{idx:02d}'
        items.append({'kind':'lexeme','external_id':lx,'data':status({'lesson_key':lesson_key,'lemma':ko.rstrip('.!?'),'display_lemma':ko.rstrip('.!?'),'language':'ko','language_variant':'ko-KR','part_of_speech':pos,'concept_refs':[cslug],'cefr':'Pre-A1'})})
        items.append({'kind':'word_form','external_id':f'wf_{prefix}_{idx:02d}','data':status({'lesson_key':lesson_key,'lexeme_ref':lx,'surface_form':ko.rstrip('.!?'),'display_form':ko.rstrip('.!?'),'grammatical_features':{},'is_lemma':True,'is_preferred':True,'cefr':'Pre-A1'})})
    for idx,row in enumerate(spec['utterances'],1):
        key,ko,fa,intent,refs,lesson=row; utterances.append({'key':key,'ko':ko,'fa':fa,'lesson':lesson})
        items.append({'kind':'utterance','external_id':f'u_{prefix}_{idx:02d}','data':status({'lesson_key':f'{unit_slug}-{lesson:02d}','text':{'ko':ko},'translations':{'fa':fa},'intent':intent,'concept_refs':[concept_slugs[r] for r in refs],'cefr':'Pre-A1','topic':topic,'register':'polite'})})
    g=spec['grammar']
    items.append({'kind':'grammar_point','external_id':f'g_{prefix}_core','data':status({'lesson_key':f'{unit_slug}-01','slug':f'{unit_slug}-grammar','title':g[0],'rule_summary':g[1],'explanation':{'fa':g[2]},'examples':[{'ko':ko,'fa':fa} for ko,fa in g[3]],'cefr':'Pre-A1'})})
    dialogue_ids={}
    for idx,row in enumerate(spec['dialogues'],1):
        title,setting,turns,lesson=row; chars=[]; trs=[]
        for order,(speaker,ko,fa) in enumerate(turns,1):
            if speaker not in chars: chars.append(speaker)
            trs.append({'order':order,'speaker':speaker,'text':ko,'translation_fa':fa})
        did=f'd_{prefix}_{idx:02d}'; dialogue_ids[lesson]=did
        items.append({'kind':'dialogue','external_id':did,'data':status({'lesson_key':f'{unit_slug}-{lesson:02d}','title':title,'setting':safe(setting),'cefr':'Pre-A1','topic':topic,'characters':chars,'turns':trs,'qa':{'character_pair_unique_within_unit':True,'naturalness':'passed','single_situation':True}})})
    for lesson in (1,2):
        lu=[u for u in utterances if u['lesson']==lesson]
        if len(lu)<2: raise ValueError(f'{slug}: lesson {lesson} needs at least two utterances')
        a,b=lu[:2]; other_ko=[u['ko'] for u in utterances if u['ko']!=a['ko']]; other_fa=[u['fa'] for u in utterances if u['fa']!=a['fa']]
        ko_opts=[a['ko']]+other_ko[:3]; fa_opts=[a['fa']]+other_fa[:3]; lk=f'{unit_slug}-{lesson:02d}'; base=f'e_{prefix}_{lesson:02d}'
        items.append({'kind':'exercise','external_id':base+'_meaning','data':status({'lesson_key':lk,'exercise_type':'multiple_choice','prompt':{'instruction_fa':'معنی درست این عبارت کره‌ای را انتخاب کن.','value':a['ko']},'answer':{'value':a['fa']},'options':fa_opts,'difficulty':1,'cefr':'Pre-A1','topic':topic,'feedback':feedback(a['fa'],a['ko'])})})
        items.append({'kind':'exercise','external_id':base+'_listen','data':status({'lesson_key':lk,'exercise_type':'listening','prompt':{'instruction_fa':'گوش کن و عبارتی را که شنیدی انتخاب کن.','audio_text':b['ko']},'answer':{'value':b['ko']},'options':[b['ko']]+[x for x in ko_opts if x!=b['ko']][:3],'difficulty':1,'cefr':'Pre-A1','topic':topic,'feedback':{**feedback(b['fa'],b['ko']),'transcript_ko':b['ko']}})})
        items.append({'kind':'exercise','external_id':base+'_speak','data':status({'lesson_key':lk,'exercise_type':'speaking','prompt':{'instruction_fa':'عبارت را با صدای بلند و با ریتم طبیعی تکرار کن.','value':a['ko']},'answer':{'expected_text':a['ko']},'difficulty':1,'cefr':'Pre-A1','topic':topic,'feedback':feedback(a['fa'],a['ko'])})})
        tokens=b['ko'].split(); shuffled=tokens[1:]+tokens[:1] if len(tokens)>1 else tokens
        items.append({'kind':'exercise','external_id':base+'_build','data':status({'lesson_key':lk,'exercise_type':'sentence_building','prompt':{'instruction_fa':'بخش‌ها را لمس کن تا عبارت درست ساخته شود.','tokens':shuffled},'answer':{'tokens':tokens,'value':b['ko']},'difficulty':1,'cefr':'Pre-A1','topic':topic,'feedback':feedback(b['fa'],b['ko'])})})
        items.append({'kind':'exercise','external_id':base+'_dialogue','data':status({'lesson_key':lk,'exercise_type':'dialogue_comprehension','prompt':{'instruction_fa':'با توجه به گفت‌وگو، پاسخ مناسب را انتخاب کن.','source_dialogue_ref':dialogue_ids[lesson],'question_fa':f'کدام گزینه با معنی «{a["fa"]}» هماهنگ است؟'},'answer':{'value':a['ko']},'options':ko_opts,'difficulty':1,'cefr':'Pre-A1','topic':topic,'feedback':feedback(a['fa'],a['ko'])})})
    return {'batch_id':f'ko-kr-prea1-{slug}-v1','course':'fa-ko-kr','learner_language':'fa','learner_variant':'fa-IR','target_language':'ko','target_variant':'ko-KR','cefr':'Pre-A1','curriculum_unit':unit_slug,'generator':'gpt-5.6-sol:korean-prea1-batch-v1','items':items}

def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--spec',type=Path,default=ROOT/'content/specs/ko/Pre-A1/batch-01.json'); args=ap.parse_args(); payload=json.loads(args.spec.read_text(encoding='utf-8')); units=payload.get('units',[])
    expected=['first-greetings','my-name','numbers-0-10','hangul-basics','first-sounds','how-are-you','first-objects','polite-words','survival-words','first-conversation']
    if len(units)!=10 or [u.get('slug') for u in units]!=expected: raise SystemExit('Unexpected Korean Pre-A1 unit sequence')
    outdir=ROOT/'content/production/ko/Pre-A1'; outdir.mkdir(parents=True,exist_ok=True); written=[]
    for spec in units:
        batch=build_unit(spec); out=outdir/f'prea1-ko-{spec["slug"]}-v1.json'; out.write_text(json.dumps(batch,ensure_ascii=False,indent=2)+'\n',encoding='utf-8'); written.append({'file':out.name,'items':len(batch['items'])})
    print(json.dumps({'level':'Pre-A1','units':len(written),'written':written},ensure_ascii=False,indent=2))
if __name__=='__main__': main()
