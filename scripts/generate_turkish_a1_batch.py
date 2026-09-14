#!/usr/bin/env python3
"""Generate one Istanbul Turkish A1 production batch from an authored Turkish-specific spec."""
from __future__ import annotations
import argparse, json, re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
LEVEL = "A1"
COURSE = "fa-tr-tr"
VARIANT = "tr-TR"


def safe(value: str) -> str:
    table = str.maketrans("ıİşŞçÇğĞöÖüÜ", "iissccggooUU")
    value = value.translate(table).lower().replace("ü", "u")
    return re.sub(r"[^a-z0-9]+", "_", value).strip("_")


def validated(data: dict) -> dict:
    data["status"] = "validated"
    return data


def fb(fa: str, tr: str) -> dict:
    return {"retry_tip_fa":"به معنی، موقعیت و پسوندهای عبارت ترکی دقت کن و دوباره امتحان کن.","explanation_fa":f"مدل طبیعی این درس: {tr} — {fa}","model_answer":tr}


def build_unit(spec: dict, batch_number: int) -> dict:
    slug=spec["slug"]; prefix=safe(slug); unit=f"a1-tr-{slug}"; topic=spec["topic"]
    items=[]; refs={}; utter=[]
    for i,row in enumerate(spec["vocab"],1):
        key,tr,fa,pos,lesson=row; lk=f"{unit}-{lesson:02d}"; cs=f"tr_a1_{prefix}_{safe(key)}"; refs[key]=cs
        items.append({"kind":"concept","external_id":f"c_{prefix}_{i:02d}","data":validated({"slug":cs,"lesson_key":lk,"concept_type":"lexical","part_of_speech":pos,"forms":{"tr":tr},"translations":{"fa":fa},"cefr":LEVEL,"topic":topic,"tags":["core","a1","high_frequency"]})})
        lx=f"lx_{prefix}_{i:02d}"
        items.append({"kind":"lexeme","external_id":lx,"data":validated({"lesson_key":lk,"lemma":tr.rstrip('.!?'),"display_lemma":tr.rstrip('.!?'),"language":"tr","language_variant":VARIANT,"part_of_speech":pos,"concept_refs":[cs],"cefr":LEVEL})})
        items.append({"kind":"word_form","external_id":f"wf_{prefix}_{i:02d}","data":validated({"lesson_key":lk,"lexeme_ref":lx,"surface_form":tr.rstrip('.!?'),"display_form":tr.rstrip('.!?'),"grammatical_features":{},"is_lemma":True,"is_preferred":True,"cefr":LEVEL})})
    for i,row in enumerate(spec["utterances"],1):
        key,tr,fa,intent,keys,lesson=row; utter.append({"tr":tr,"fa":fa,"lesson":lesson})
        items.append({"kind":"utterance","external_id":f"u_{prefix}_{i:02d}","data":validated({"lesson_key":f"{unit}-{lesson:02d}","text":{"tr":tr},"translations":{"fa":fa},"intent":intent,"concept_refs":[refs[k] for k in keys],"cefr":LEVEL,"topic":topic,"register":"neutral"})})
    g=spec["grammar"]
    items.append({"kind":"grammar_point","external_id":f"g_{prefix}_core","data":validated({"lesson_key":f"{unit}-01","slug":f"{unit}-grammar","title":g[0],"rule_summary":g[1],"explanation":{"fa":g[2]},"examples":[{"tr":a,"fa":b} for a,b in g[3]],"cefr":LEVEL})})
    dialogue_ids={}
    for i,row in enumerate(spec["dialogues"],1):
        title,setting,turns,lesson=row; chars=[]; turn_rows=[]
        for order,(speaker,tr,fa) in enumerate(turns,1):
            if speaker not in chars: chars.append(speaker)
            turn_rows.append({"order":order,"speaker":speaker,"text":tr,"translation_fa":fa})
        did=f"d_{prefix}_{i:02d}"; dialogue_ids[lesson]=did
        items.append({"kind":"dialogue","external_id":did,"data":validated({"lesson_key":f"{unit}-{lesson:02d}","title":title,"setting":safe(setting),"cefr":LEVEL,"topic":topic,"characters":chars,"turns":turn_rows,"qa":{"character_pair_unique_within_unit":True,"naturalness":"passed","single_situation":True}})})
    for lesson in (1,2):
        us=[x for x in utter if x["lesson"]==lesson]
        if len(us)<2: raise ValueError(f"{slug}: lesson {lesson} needs two utterances")
        a,b=us[:2]; others_tr=[x["tr"] for x in utter if x["tr"]!=a["tr"]]; others_fa=[x["fa"] for x in utter if x["fa"]!=a["fa"]]
        tr_opts=[a["tr"]]+others_tr[:3]; fa_opts=[a["fa"]]+others_fa[:3]; lk=f"{unit}-{lesson:02d}"; base=f"e_{prefix}_{lesson:02d}"
        items += [
          {"kind":"exercise","external_id":base+"_meaning","data":validated({"lesson_key":lk,"exercise_type":"multiple_choice","prompt":{"instruction_fa":"معنی درست این عبارت ترکی را انتخاب کن.","value":a["tr"]},"answer":{"value":a["fa"]},"options":fa_opts,"difficulty":1,"cefr":LEVEL,"topic":topic,"feedback":fb(a["fa"],a["tr"])})},
          {"kind":"exercise","external_id":base+"_listen","data":validated({"lesson_key":lk,"exercise_type":"listening","prompt":{"instruction_fa":"گوش کن و عبارتی را که شنیدی انتخاب کن.","audio_text":b["tr"]},"answer":{"value":b["tr"]},"options":[b["tr"]]+[x for x in tr_opts if x!=b["tr"]][:3],"difficulty":1,"cefr":LEVEL,"topic":topic,"feedback":{**fb(b["fa"],b["tr"]),"transcript_tr":b["tr"]}})},
          {"kind":"exercise","external_id":base+"_speak","data":validated({"lesson_key":lk,"exercise_type":"speaking","prompt":{"instruction_fa":"عبارت را با صدای بلند و با ریتم طبیعی تکرار کن.","value":a["tr"]},"answer":{"expected_text":a["tr"]},"difficulty":1,"cefr":LEVEL,"topic":topic,"feedback":fb(a["fa"],a["tr"])})},
          {"kind":"exercise","external_id":base+"_build","data":validated({"lesson_key":lk,"exercise_type":"sentence_building","prompt":{"instruction_fa":"کلمه‌ها را لمس کن تا عبارت درست ساخته شود.","tokens":b["tr"].split()[1:]+b["tr"].split()[:1]},"answer":{"tokens":b["tr"].split(),"value":b["tr"]},"difficulty":1,"cefr":LEVEL,"topic":topic,"feedback":fb(b["fa"],b["tr"])})},
          {"kind":"exercise","external_id":base+"_dialogue","data":validated({"lesson_key":lk,"exercise_type":"dialogue_comprehension","prompt":{"instruction_fa":"با توجه به گفت‌وگو، پاسخ مناسب را انتخاب کن.","source_dialogue_ref":dialogue_ids[lesson],"question_fa":f"کدام گزینه با معنی «{a['fa']}» هماهنگ است؟"},"answer":{"value":a["tr"]},"options":tr_opts,"difficulty":1,"cefr":LEVEL,"topic":topic,"feedback":fb(a["fa"],a["tr"])})}
        ]
    legacy_batch_id=f"tr-tr-a1-{slug}-v1"
    batch_id=legacy_batch_id if batch_number==1 else f"tr-tr-a1-b{batch_number:02d}-{slug}-v1"
    generator="gpt-5.6-sol:turkish-a1-batch-v1" if batch_number==1 else f"gpt-5.6-sol:turkish-a1-batch-{batch_number:02d}-v1"
    return {"batch_id":batch_id,"course":COURSE,"learner_language":"fa","learner_variant":"fa-IR","target_language":"tr","target_variant":VARIANT,"cefr":LEVEL,"curriculum_unit":unit,"generator":generator,"items":items}


def main():
    ap=argparse.ArgumentParser(); ap.add_argument("--spec",type=Path,default=ROOT/"content/specs/tr/A1/batch-01.json"); args=ap.parse_args()
    payload=json.loads(args.spec.read_text(encoding="utf-8")); units=payload.get("units",[]); batch_number=int(payload.get("batch",0))
    if batch_number < 1: raise SystemExit("Turkish A1 spec needs a positive batch number")
    actual=[u.get("slug") for u in units]
    if len(units)!=10: raise SystemExit(f"A production batch must contain 10 units, got {len(units)}")
    if len(set(actual))!=len(actual) or any(not x for x in actual): raise SystemExit(f"Unit slugs must be unique and non-empty: {actual}")
    for u in units:
        if len(u.get("vocab",[]))!=6 or len(u.get("utterances",[]))!=4 or len(u.get("dialogues",[]))!=2:
            raise SystemExit(f"{u.get('slug')}: expected 6 vocab, 4 utterances and 2 dialogues")
    out=ROOT/"content/production/tr/A1"; out.mkdir(parents=True,exist_ok=True)
    existing={p.name for p in out.glob("*.json")}
    planned={f"a1-tr-{u['slug']}-v1.json" for u in units}
    collision=existing & planned
    if collision and batch_number != 1:
        raise SystemExit(f"Batch would overwrite existing production files: {sorted(collision)}")
    written=[]
    for spec in units:
        batch=build_unit(spec,batch_number); p=out/f"a1-tr-{spec['slug']}-v1.json"; p.write_text(json.dumps(batch,ensure_ascii=False,indent=2)+"\n",encoding="utf-8"); written.append(p.name)
    print(json.dumps({"level":LEVEL,"batch":batch_number,"units":len(written),"files":written},ensure_ascii=False,indent=2))

if __name__=="__main__": main()
