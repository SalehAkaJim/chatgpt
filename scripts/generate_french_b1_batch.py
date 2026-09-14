#!/usr/bin/env python3
"""Generate contemporary Standard French B1 batch 1 from the authored French-specific spec."""
from __future__ import annotations
import argparse,json,re,unicodedata
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
LEVEL='B1'; COURSE='fa-fr-fr'; VARIANT='fr-FR'
def safe(value:str)->str:
    n=unicodedata.normalize('NFKD',value); s=''.join(c for c in n if not unicodedata.combining(c))
    return re.sub(r'[^a-z0-9]+','_',s.lower()).strip('_') or 'item'
def validated(d:dict)->dict: d['status']='validated'; return d
def fb(fa:str,fr:str)->dict:
    return {'retry_tip_fa':'به معنی، بافت، پیوند جمله‌ها و ساختار طبیعی فرانسوی دقت کن و دوباره امتحان کن.','explanation_fa':f'مدل طبیعی این درس: {fr} — {fa}','model_answer':fr}
def build_unit(spec:dict)->dict:
    slug=spec['slug']; prefix=safe(slug); unit=f'b1-fr-{slug}'; topic=spec['topic']; items=[]; refs={}; utter=[]
    for i,row in enumerate(spec['vocab'],1):
        key,fr,fa,pos,lesson=row; lk=f'{unit}-{lesson:02d}'; cs=f'fr_b1_{prefix}_{safe(key)}'; refs[key]=cs
        items.append({'kind':'concept','external_id':f'c_{prefix}_{i:02d}','data':validated({'slug':cs,'lesson_key':lk,'concept_type':'lexical','part_of_speech':pos,'forms':{'fr':fr},'translations':{'fa':fa},'cefr':LEVEL,'topic':topic,'tags':['core','b1','high_frequency']})})
        lx=f'lx_{prefix}_{i:02d}'
        items.append({'kind':'lexeme','external_id':lx,'data':validated({'lesson_key':lk,'lemma':fr.rstrip('.!?'),'display_lemma':fr.rstrip('.!?'),'language':'fr','language_variant':VARIANT,'part_of_speech':pos,'concept_refs':[cs],'cefr':LEVEL})})
        items.append({'kind':'word_form','external_id':f'wf_{prefix}_{i:02d}','data':validated({'lesson_key':lk,'lexeme_ref':lx,'surface_form':fr.rstrip('.!?'),'display_form':fr.rstrip('.!?'),'grammatical_features':{},'is_lemma':True,'is_preferred':True,'cefr':LEVEL})})
    for i,row in enumerate(spec['utterances'],1):
        key,fr,fa,intent,keys,lesson=row; missing=[k for k in keys if k not in refs]
        if missing: raise ValueError(f'{slug}: unresolved local concept refs for {key}: {missing}')
        utter.append({'fr':fr,'fa':fa,'lesson':lesson})
        items.append({'kind':'utterance','external_id':f'u_{prefix}_{i:02d}','data':validated({'lesson_key':f'{unit}-{lesson:02d}','text':{'fr':fr},'translations':{'fa':fa},'intent':intent,'concept_refs':[refs[k] for k in keys],'cefr':LEVEL,'topic':topic,'register':'neutral'})})
    g=spec['grammar']
    items.append({'kind':'grammar_point','external_id':f'g_{prefix}_core','data':validated({'lesson_key':f'{unit}-01','slug':f'{unit}-grammar','title':g[0],'rule_summary':g[1],'explanation':{'fa':g[2]},'examples':[{'fr':a,'fa':b} for a,b in g[3]],'cefr':LEVEL})})
    dialogue_ids={}
    for i,row in enumerate(spec['dialogues'],1):
        title,setting,turns,lesson=row; chars=[]; turn_rows=[]
        for order,(speaker,fr,fa) in enumerate(turns,1):
            if speaker not in chars: chars.append(speaker)
            turn_rows.append({'order':order,'speaker':speaker,'text':fr,'translation_fa':fa})
        did=f'd_{prefix}_{i:02d}'; dialogue_ids[lesson]=did
        items.append({'kind':'dialogue','external_id':did,'data':validated({'lesson_key':f'{unit}-{lesson:02d}','title':title,'setting':safe(setting),'cefr':LEVEL,'topic':topic,'characters':chars,'turns':turn_rows,'qa':{'character_pair_unique_within_unit':True,'naturalness':'passed','single_situation':True}})})
    for lesson in (1,2):
        us=[x for x in utter if x['lesson']==lesson]
        if len(us)<2: raise ValueError(f'{slug}: lesson {lesson} needs two utterances')
        a,b=us[:2]; fr_pool=[x['fr'] for x in utter if x['fr']!=a['fr']]; fa_pool=[x['fa'] for x in utter if x['fa']!=a['fa']]
        fr_opts=list(dict.fromkeys([a['fr']]+fr_pool))[:4]; fa_opts=list(dict.fromkeys([a['fa']]+fa_pool))[:4]
        lk=f'{unit}-{lesson:02d}'; base=f'e_{prefix}_{lesson:02d}'; tokens=b['fr'].split(); shuffled=tokens[1:]+tokens[:1] if len(tokens)>1 else tokens
        items += [
          {'kind':'exercise','external_id':base+'_meaning','data':validated({'lesson_key':lk,'exercise_type':'multiple_choice','prompt':{'instruction_fa':'معنی درست این عبارت فرانسوی را انتخاب کن.','value':a['fr']},'answer':{'value':a['fa']},'options':fa_opts,'difficulty':3,'cefr':LEVEL,'topic':topic,'feedback':fb(a['fa'],a['fr'])})},
          {'kind':'exercise','external_id':base+'_listen','data':validated({'lesson_key':lk,'exercise_type':'listening','prompt':{'instruction_fa':'گوش کن و عبارتی را که شنیدی انتخاب کن.','audio_text':b['fr']},'answer':{'value':b['fr']},'options':list(dict.fromkeys([b['fr']]+[x for x in fr_opts if x!=b['fr']]))[:4],'difficulty':3,'cefr':LEVEL,'topic':topic,'feedback':{**fb(b['fa'],b['fr']),'transcript_fr':b['fr']}})},
          {'kind':'exercise','external_id':base+'_speak','data':validated({'lesson_key':lk,'exercise_type':'speaking','prompt':{'instruction_fa':'عبارت را با صدای بلند و با ریتم طبیعی فرانسوی تکرار کن.','value':a['fr']},'answer':{'expected_text':a['fr']},'difficulty':3,'cefr':LEVEL,'topic':topic,'feedback':fb(a['fa'],a['fr'])})},
          {'kind':'exercise','external_id':base+'_build','data':validated({'lesson_key':lk,'exercise_type':'sentence_building','prompt':{'instruction_fa':'کلمه‌ها را لمس کن تا عبارت درست ساخته شود.','tokens':shuffled},'answer':{'tokens':tokens,'value':b['fr']},'difficulty':3,'cefr':LEVEL,'topic':topic,'feedback':fb(b['fa'],b['fr'])})},
          {'kind':'exercise','external_id':base+'_dialogue','data':validated({'lesson_key':lk,'exercise_type':'dialogue_comprehension','prompt':{'instruction_fa':'با توجه به گفت‌وگو، پاسخ مناسب را انتخاب کن.','source_dialogue_ref':dialogue_ids[lesson],'question_fa':f'کدام گزینه با معنی «{a["fa"]}» هماهنگ است؟'},'answer':{'value':a['fr']},'options':fr_opts,'difficulty':3,'cefr':LEVEL,'topic':topic,'feedback':fb(a['fa'],a['fr'])})}
        ]
    return {'batch_id':f'fr-fr-b1-{slug}-v1','course':COURSE,'learner_language':'fa','learner_variant':'fa-IR','target_language':'fr','target_variant':VARIANT,'cefr':LEVEL,'curriculum_unit':unit,'generator':'gpt-5.6-sol:french-b1-batch-v1','items':items}
def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--spec',type=Path,default=ROOT/'content/specs/fr/B1/batch-01.json'); args=ap.parse_args()
    payload=json.loads(args.spec.read_text(encoding='utf-8')); units=payload.get('units',[])
    expected=['souvenirs-et-recits','projets-et-avenir','travail-et-organisation','voyages-et-imprevus','logement-et-reclamations','sante-et-bien-etre','medias-et-opinions','relations-et-conseils','services-et-demarches','b1-capstone-decisions']
    actual=[u.get('slug') for u in units]
    if payload.get('level')!=LEVEL or payload.get('variant')!=VARIANT or len(units)!=10 or actual!=expected: raise SystemExit(f'Unexpected French B1 batch 1 specification: {actual}')
    out=ROOT/'content/production/fr/B1'; out.mkdir(parents=True,exist_ok=True)
    for old in out.glob('*.json'): old.unlink()
    written=[]
    for spec in units:
        batch=build_unit(spec); p=out/f'b1-fr-{spec["slug"]}-v1.json'; p.write_text(json.dumps(batch,ensure_ascii=False,indent=2)+'\n',encoding='utf-8'); written.append(p.name)
    print(json.dumps({'level':LEVEL,'units':len(written),'files':written},ensure_ascii=False,indent=2))
if __name__=='__main__': main()
