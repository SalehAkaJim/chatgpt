#!/usr/bin/env python3
from __future__ import annotations
import json, re
from pathlib import Path

ROOT=Path(__file__).resolve().parents[2]
HERE=Path(__file__).resolve().parent
UNITS=[]
for path in sorted(HERE.glob("spec-*.json")):
    UNITS.extend(json.loads(path.read_text(encoding="utf-8")))
OUT=ROOT/"content"/"production"/"de"/"A2"
SEED=ROOT/"database"/"seed"/"german-a2-curriculum.sql"
PAIRS=[("Anna","Lukas"),("Mia","Jonas"),("Lea","Emil"),("Sofia","Noah"),("Nina","Max"),("Clara","Leon"),
       ("Anna","Jonas"),("Mia","Emil"),("Lea","Noah"),("Sofia","Max"),("Nina","Leon"),("Clara","Lukas"),
       ("Anna","Emil"),("Mia","Noah"),("Lea","Max"),("Sofia","Leon"),("Nina","Lukas"),("Clara","Jonas")]
CLOSERS={
"social":[("Das klingt gut.","خوب به نظر می‌رسد."),("Dann machen wir das so.","پس همین کار را می‌کنیم.")],
"foundations":[("Interessant, erzähl gern mehr.","جالبه، بیشتر تعریف کن."),("Danke, jetzt verstehe ich es besser.","ممنون، حالا بهتر متوجه شدم.")],
"family-home":[("Das klingt wirklich angenehm.","واقعاً دلپذیر به نظر می‌رسد."),("Ja, das kann ich gut verstehen.","بله، کاملاً درک می‌کنم.")],
"daily-life":[("Das kenne ich auch.","من هم این را تجربه کرده‌ام."),("Dann war ja einiges los.","پس حسابی اتفاق افتاده.")],
"time-plans":[("Gut, dann ist das geklärt.","خوب، پس هماهنگ شد."),("Perfekt, ich trage es ein.","عالی، یادداشتش می‌کنم.")],
"describing":[("Ja, das passt gut zur Beschreibung.","بله، با این توصیف جور است."),("Interessant, das merke ich mir.","جالبه، یادم می‌ماند.")],
"food-drink":[("Gut, dann machen wir es so.","خوب، پس همین کار را می‌کنیم."),("Danke, das klingt lecker.","ممنون، خوشمزه به نظر می‌رسد.")],
"shopping-money":[("Dann nehme ich diese Variante.","پس همین مدل را می‌گیرم."),("Danke, das hilft mir bei der Entscheidung.","ممنون، برای تصمیم‌گیری کمکم می‌کند.")],
"travel-transport":[("Alles klar, danke für die Information.","متوجه شدم، ممنون از اطلاعات."),("Gut, dann weiß ich, was ich tun muss.","خوب، پس می‌دانم باید چه کار کنم.")],
"work-study":[("Das klingt sinnvoll.","منطقی به نظر می‌رسد."),("Gut, das probiere ich aus.","خوب، امتحانش می‌کنم.")],
"health-body":[("Verstanden, danke für den Rat.","متوجه شدم، ممنون از توصیه."),("Gut, das mache ich.","خوب، همین کار را می‌کنم.")],
"communication":[("Alles klar, ich gebe dir Bescheid.","باشه، بهت خبر می‌دهم."),("Danke, dann ist alles geklärt.","ممنون، پس همه‌چیز روشن شد.")]}
def sid(s): return re.sub(r"[^a-z0-9]+","_",s.lower()).strip("_")
def st(d): d["status"]="validated"; return d
def build(u,gstart):
    p=sid(u["slug"]); items=[]; refs=[]
    for i,(de,fa,pos) in enumerate(u["vocab"],1):
        n=(i-1)%u["lessons"]+1; lk=f"a2-de-{u['slug']}-{n:02d}"; cs=f"de_a2_{p}_{i:02d}"; refs.append(cs)
        items.append({"kind":"concept","external_id":f"c_{p}_{i:02d}","data":st({"slug":cs,"lesson_key":lk,"concept_type":"lexical","part_of_speech":pos,"forms":{"de":de},"translations":{"fa":fa},"cefr":"A2","topic":u["topic"],"tags":["core","a2","high_frequency"]})})
        lemma=re.sub(r"^(der|die|das)\s+","",de) if pos=="noun" else de
        ld={"lesson_key":lk,"lemma":lemma,"display_lemma":lemma,"language":"de","language_variant":"de-DE","part_of_speech":pos,"concept_refs":[cs],"cefr":"A2","status":"validated"}
        if pos=="noun":
            g={"der":"masculine","die":"feminine","das":"neuter"}.get(de.split()[0])
            if g: ld["grammatical_gender"]=g
        items.append({"kind":"lexeme","external_id":f"lx_{p}_{i:02d}","data":ld})
        wf={"lesson_key":lk,"lexeme_ref":f"lx_{p}_{i:02d}","surface_form":lemma,"display_form":lemma,"grammatical_features":{},"is_lemma":True,"is_preferred":True,"cefr":"A2"}
        if pos=="noun" and "grammatical_gender" in ld: wf["grammatical_features"]["gender"]=ld["grammatical_gender"]
        items.append({"kind":"word_form","external_id":f"wf_{p}_{i:02d}","data":st(wf)})
    for i,(de,fa) in enumerate(u["phrases"],1):
        n=(i-1)%u["lessons"]+1; lk=f"a2-de-{u['slug']}-{n:02d}"
        items.append({"kind":"utterance","external_id":f"u_{p}_{i:02d}","data":st({"lesson_key":lk,"text":{"de":de},"translations":{"fa":fa},"intent":"practice_target","concept_refs":[refs[(i-1)%len(refs)]],"cefr":"A2","topic":u["topic"],"register":"neutral"})})
    gl=[1,u["lessons"]]
    for i,focus in enumerate(u["grammar"],1):
        ex=[u["phrases"][((i-1)*2)%6],u["phrases"][((i-1)*2+1)%6]]
        items.append({"kind":"grammar_point","external_id":f"g_{p}_{i:02d}","data":st({"lesson_key":f"a2-de-{u['slug']}-{gl[i-1]:02d}","slug":f"a2-de-{p}-grammar-{i:02d}","title":focus,"rule_summary":f"Use and recognize this A2 German pattern in everyday contexts: {focus}.","explanation":{"fa":f"در این درس ساختار «{focus}» را در جمله‌های روزمره تمرین می‌کنی و جای فعل و اجزای جمله را در نمونه‌های واقعی می‌بینی."},"examples":[{"de":a,"fa":b} for a,b in ex],"cefr":"A2"})})
    for n in range(1,u["lessons"]+1):
        lk=f"a2-de-{u['slug']}-{n:02d}"; a,b=PAIRS[(gstart+n-1)%len(PAIRS)]
        i1=((n-1)*2)%6; i2=(i1+1)%6; de1,fa1=u["phrases"][i1]; de2,fa2=u["phrases"][i2]
        c1,c1f=CLOSERS[u["skill"]][(n+1)%2]; c2,c2f=CLOSERS[u["skill"]][n%2]
        items.append({"kind":"dialogue","external_id":f"d_{p}_{n:02d}","data":st({"lesson_key":lk,"title":f"{u['title']} · {n}","setting":u["topic"],"cefr":"A2","topic":u["topic"],"characters":[a,b],"turns":[{"order":1,"speaker":a,"text":de1,"translation_fa":fa1},{"order":2,"speaker":b,"text":de2,"translation_fa":fa2},{"order":3,"speaker":a,"text":c1,"translation_fa":c1f},{"order":4,"speaker":b,"text":c2,"translation_fa":c2f}]})})
        deopts=[de1]+[x[0] for j,x in enumerate(u["phrases"]) if j!=i1][:3]
        faopts=[fa1]+[x[1] for j,x in enumerate(u["phrases"]) if j!=i1][:3]
        fb={"retry_tip_fa":"معنی کلی جمله را مرور کن و دوباره پاسخ بده."}
        items += [
          {"kind":"exercise","external_id":f"ex_{p}_{n:02d}_mc","data":st({"lesson_key":lk,"exercise_type":"multiple_choice","prompt":{"fa":f"کدام جملهٔ آلمانی یعنی «{fa1}»؟"},"options":deopts,"answer":{"value":de1},"difficulty":2,"cefr":"A2","feedback":{**fb,"explanation_fa":f"جملهٔ درست «{de1}» یعنی «{fa1}».","model_answer":de1}})},
          {"kind":"exercise","external_id":f"ex_{p}_{n:02d}_listen","data":st({"lesson_key":lk,"exercise_type":"listening","prompt":{"instruction_fa":"گوش کن و نزدیک‌ترین معنی را انتخاب کن.","audio_text":de1},"options":faopts,"answer":{"value":fa1},"difficulty":2,"cefr":"A2","feedback":{**fb,"explanation_fa":f"معنی جمله: {fa1}","model_answer":de1,"transcript_de":de1}})},
          {"kind":"exercise","external_id":f"ex_{p}_{n:02d}_speak","data":st({"lesson_key":lk,"exercise_type":"speaking","prompt":{"instruction_fa":"جمله را با صدای بلند بگو.","value":de2},"answer":{"expected_text":de2},"difficulty":2,"cefr":"A2","feedback":{**fb,"explanation_fa":f"معنی جمله: {fa2}","model_answer":de2}})},
          {"kind":"exercise","external_id":f"ex_{p}_{n:02d}_trans","data":st({"lesson_key":lk,"exercise_type":"translation","prompt":{"fa":fa2,"instruction_fa":"این جمله را به آلمانی ترجمه کن."},"answer":{"value":de2},"difficulty":3,"cefr":"A2","feedback":{**fb,"explanation_fa":f"مدل طبیعی این درس: {de2}","model_answer":de2}})}
        ]
    return {"batch_id":f"de-de-a2-{u['slug']}-v1","course":"fa-de-de","learner_language":"fa","learner_variant":"fa-IR","target_language":"de","target_variant":"de-DE","cefr":"A2","curriculum_unit":f"a2-de-{u['slug']}","generator":"gpt-5.6-sol:german-a2-complete-v1","items":items}
def q(s): return s.replace("\\","\\\\").replace("'","''")
def seed():
    parts=[]
    for i,u in enumerate(UNITS,1):
        parts.append(f"SELECT {i*10} AS sort_order,'{u['skill']}' AS skill_slug,'{u['topic']}' AS topic_slug,'a2-de-{u['slug']}' AS slug,'{q(u['title'])}' AS title,'{q(u['objective'])}' AS objective,{u['lessons']} AS expected_lessons,'{q('; '.join(u['grammar']))}' AS grammar_focus")
    body="\n  UNION ALL ".join(parts)
    return f"""-- Complete German A2 curriculum for Persian-speaking learners.
INSERT IGNORE INTO curriculum_units(course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,l.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,u.expected_lessons,'approved',
JSON_OBJECT('language_specific',TRUE,'target_variant','de-DE','grammar_focus',u.grammar_focus)
FROM (\n  {body}\n) u
JOIN courses c ON c.slug='fa-de-de'
JOIN cefr_levels l ON l.code='A2'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug;
"""
def main():
    OUT.mkdir(parents=True,exist_ok=True)
    for f in OUT.glob("*.json"): f.unlink()
    g=0; total=0
    for u in UNITS:
        b=build(u,g); g+=u["lessons"]; total+=len(b["items"])
        (OUT/f"a2-de-{u['slug']}-v1.json").write_text(json.dumps(b,ensure_ascii=False,indent=2)+"\n")
    SEED.parent.mkdir(parents=True,exist_ok=True); SEED.write_text(seed())
    print(json.dumps({"units":len(UNITS),"lessons":g,"items":total}))
if __name__=="__main__": main()
