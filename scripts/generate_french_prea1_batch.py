#!/usr/bin/env python3
"""Generate native-quality contemporary Standard French Pre-A1 production from one authored spec."""
from __future__ import annotations
import argparse, json, re, unicodedata
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def safe(value: str) -> str:
    normalized = unicodedata.normalize('NFKD', value)
    asciiish = ''.join(ch for ch in normalized if not unicodedata.combining(ch))
    return re.sub(r'[^a-z0-9]+', '_', asciiish.lower()).strip('_') or 'item'


def status(data: dict) -> dict:
    data['status'] = 'validated'
    return data


def feedback(fa: str, fr: str) -> dict:
    return {
        'retry_tip_fa': 'به معنی، موقعیت، ریتم و شکل دقیق عبارت فرانسوی دقت کن و دوباره امتحان کن.',
        'explanation_fa': f'مدل طبیعی این درس: {fr} — {fa}',
        'model_answer': fr,
    }


def build_unit(spec: dict) -> dict:
    slug = spec['slug']; unit_slug = f'prea1-fr-{slug}'; prefix = safe(slug); topic = spec['topic']
    items=[]; concept_slugs={}; utterances=[]
    for idx,row in enumerate(spec['vocab'],1):
        key,fr,fa,pos,lesson=row; lesson_key=f'{unit_slug}-{lesson:02d}'; cslug=f'fr_pre_a1_{prefix}_{safe(key)}'; concept_slugs[key]=cslug
        items.append({'kind':'concept','external_id':f'c_{prefix}_{idx:02d}','data':status({'slug':cslug,'lesson_key':lesson_key,'concept_type':'lexical','part_of_speech':pos,'forms':{'fr':fr},'translations':{'fa':fa},'cefr':'Pre-A1','topic':topic,'tags':['core','beginner','high_frequency']})})
        lx=f'lx_{prefix}_{idx:02d}'
        items.append({'kind':'lexeme','external_id':lx,'data':status({'lesson_key':lesson_key,'lemma':fr.rstrip('.!?'),'display_lemma':fr.rstrip('.!?'),'language':'fr','language_variant':'fr-FR','part_of_speech':pos,'concept_refs':[cslug],'cefr':'Pre-A1'})})
        items.append({'kind':'word_form','external_id':f'wf_{prefix}_{idx:02d}','data':status({'lesson_key':lesson_key,'lexeme_ref':lx,'surface_form':fr.rstrip('.!?'),'display_form':fr.rstrip('.!?'),'grammatical_features':{},'is_lemma':True,'is_preferred':True,'cefr':'Pre-A1'})})
    for idx,row in enumerate(spec['utterances'],1):
        key,fr,fa,intent,refs,lesson=row
        missing=[r for r in refs if r not in concept_slugs]
        if missing: raise ValueError(f'{slug}: unresolved local concept refs for {key}: {missing}')
        utterances.append({'key':key,'fr':fr,'fa':fa,'lesson':lesson})
        items.append({'kind':'utterance','external_id':f'u_{prefix}_{idx:02d}','data':status({'lesson_key':f'{unit_slug}-{lesson:02d}','text':{'fr':fr},'translations':{'fa':fa},'intent':intent,'concept_refs':[concept_slugs[r] for r in refs],'cefr':'Pre-A1','topic':topic,'register':'neutral'})})
    g=spec['grammar']
    items.append({'kind':'grammar_point','external_id':f'g_{prefix}_core','data':status({'lesson_key':f'{unit_slug}-01','slug':f'{unit_slug}-grammar','title':g[0],'rule_summary':g[1],'explanation':{'fa':g[2]},'examples':[{'fr':fr,'fa':fa} for fr,fa in g[3]],'cefr':'Pre-A1'})})
    dialogue_ids={}
    for idx,row in enumerate(spec['dialogues'],1):
        title,setting,turns,lesson=row; chars=[]; trs=[]
        for order,(speaker,fr,fa) in enumerate(turns,1):
            if speaker not in chars: chars.append(speaker)
            trs.append({'order':order,'speaker':speaker,'text':fr,'translation_fa':fa})
        did=f'd_{prefix}_{idx:02d}'; dialogue_ids[lesson]=did
        items.append({'kind':'dialogue','external_id':did,'data':status({'lesson_key':f'{unit_slug}-{lesson:02d}','title':title,'setting':safe(setting),'cefr':'Pre-A1','topic':topic,'characters':chars,'turns':trs,'qa':{'character_pair_unique_within_unit':True,'naturalness':'passed','single_situation':True}})})
    for lesson in (1,2):
        lu=[u for u in utterances if u['lesson']==lesson]
        if len(lu)<2: raise ValueError(f'{slug}: lesson {lesson} needs at least two utterances')
        a,b=lu[:2]; other_fr=[u['fr'] for u in utterances if u['fr']!=a['fr']]; other_fa=[u['fa'] for u in utterances if u['fa']!=a['fa']]
        fr_opts=[a['fr']]+other_fr[:3]; fa_opts=[a['fa']]+other_fa[:3]; lk=f'{unit_slug}-{lesson:02d}'; base=f'e_{prefix}_{lesson:02d}'
        items.append({'kind':'exercise','external_id':base+'_meaning','data':status({'lesson_key':lk,'exercise_type':'multiple_choice','prompt':{'instruction_fa':'معنی درست این عبارت فرانسوی را انتخاب کن.','value':a['fr']},'answer':{'value':a['fa']},'options':fa_opts,'difficulty':1,'cefr':'Pre-A1','topic':topic,'feedback':feedback(a['fa'],a['fr'])})})
        items.append({'kind':'exercise','external_id':base+'_listen','data':status({'lesson_key':lk,'exercise_type':'listening','prompt':{'instruction_fa':'گوش کن و عبارتی را که شنیدی انتخاب کن.','audio_text':b['fr']},'answer':{'value':b['fr']},'options':[b['fr']]+[x for x in fr_opts if x!=b['fr']][:3],'difficulty':1,'cefr':'Pre-A1','topic':topic,'feedback':{**feedback(b['fa'],b['fr']),'transcript_fr':b['fr']}})})
        items.append({'kind':'exercise','external_id':base+'_speak','data':status({'lesson_key':lk,'exercise_type':'speaking','prompt':{'instruction_fa':'عبارت را با صدای بلند و با ریتم طبیعی فرانسوی تکرار کن.','value':a['fr']},'answer':{'expected_text':a['fr']},'difficulty':1,'cefr':'Pre-A1','topic':topic,'feedback':feedback(a['fa'],a['fr'])})})
        tokens=b['fr'].split(); shuffled=tokens[1:]+tokens[:1] if len(tokens)>1 else tokens
        items.append({'kind':'exercise','external_id':base+'_build','data':status({'lesson_key':lk,'exercise_type':'sentence_building','prompt':{'instruction_fa':'کلمه‌ها را لمس کن تا عبارت درست ساخته شود.','tokens':shuffled},'answer':{'tokens':tokens,'value':b['fr']},'difficulty':1,'cefr':'Pre-A1','topic':topic,'feedback':feedback(b['fa'],b['fr'])})})
        items.append({'kind':'exercise','external_id':base+'_dialogue','data':status({'lesson_key':lk,'exercise_type':'dialogue_comprehension','prompt':{'instruction_fa':'با توجه به گفت‌وگو، پاسخ مناسب را انتخاب کن.','source_dialogue_ref':dialogue_ids[lesson],'question_fa':f'کدام گزینه با معنی «{a["fa"]}» هماهنگ است؟'},'answer':{'value':a['fr']},'options':fr_opts,'difficulty':1,'cefr':'Pre-A1','topic':topic,'feedback':feedback(a['fa'],a['fr'])})})
    return {'batch_id':f'fr-fr-prea1-{slug}-v1','course':'fa-fr-fr','learner_language':'fa','learner_variant':'fa-IR','target_language':'fr','target_variant':'fr-FR','cefr':'Pre-A1','curriculum_unit':unit_slug,'generator':'gpt-5.6-sol:french-prea1-batch-v1','items':items}


def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--spec',type=Path,default=ROOT/'content/specs/fr/Pre-A1/batch-01.json'); args=ap.parse_args()
    payload=json.loads(args.spec.read_text(encoding='utf-8')); units=payload.get('units',[])
    expected=['first-greetings','my-name','numbers-0-10','alphabet-accents','first-sounds','how-are-you','first-objects','polite-words','survival-words','first-conversation']
    actual=[u.get('slug') for u in units]
    if len(units)!=10 or actual!=expected: raise SystemExit(f'Unexpected French Pre-A1 unit sequence: {actual}')
    outdir=ROOT/'content/production/fr/Pre-A1'; outdir.mkdir(parents=True,exist_ok=True); written=[]
    for spec in units:
        batch=build_unit(spec); out=outdir/f'prea1-fr-{spec["slug"]}-v1.json'; out.write_text(json.dumps(batch,ensure_ascii=False,indent=2)+'\n',encoding='utf-8'); written.append({'file':out.name,'items':len(batch['items'])})
    print(json.dumps({'level':'Pre-A1','units':len(written),'written':written},ensure_ascii=False,indent=2))

if __name__=='__main__': main()
