#!/usr/bin/env python3
from __future__ import annotations
import argparse, json, re, sys
from collections import Counter, defaultdict
from pathlib import Path

WORD_RE = re.compile(r"[A-Za-z]+(?:'[A-Za-z]+)?")
CHOICE_TYPES = {"fill_blank", "comprehension", "response_choice"}

def load(p): return json.loads(Path(p).read_text(encoding="utf-8"))
def norm(v):
    s = str(v or "").strip().lower().replace("’", "'")
    return re.sub(r"\s+", " ", re.sub(r"[^\w\u0600-\u06ff']+", " ", s)).strip()
def words(v): return WORD_RE.findall(str(v or ""))
def issue(xs, code, msg, **data):
    x={"code":code,"message":msg}
    if data: x["data"]=data
    xs.append(x)

def choice_answer(a):
    c=a.get("config") or {}; t=a.get("type")
    opts=c.get("optionsEn") if t=="fill_blank" else (c.get("options") or c.get("optionsEn"))
    i=c.get("answerIndex")
    return opts[i] if isinstance(opts,list) and isinstance(i,int) and 0<=i<len(opts) else None

def scored(a):
    t=a.get("type"); c=a.get("config") or {}
    if c.get("practiceOnly") is True: return False
    if t=="dialogue":
        return any(x.get("responseEvaluation")=="stt" for x in c.get("exchanges") or [])
    return t in {"sentence_order","fill_blank","comprehension","response_choice","speak","writing","reading","pronunciation"}

def answer_signature(a, turns):
    t=a.get("type"); c=a.get("config") or {}
    if t=="sentence_order": return norm(c.get("answerEn"))
    if t in CHOICE_TYPES: return norm(choice_answer(a))
    if t=="speak": return norm(c.get("textEn"))
    if t=="dialogue":
        out=[]
        for x in c.get("exchanges") or []:
            if x.get("responseEvaluation")=="stt":
                tr=turns.get(x.get("responseTurnKey")) or {}
                out.append(norm(tr.get("speechTargetEn") or tr.get("textEn")))
        return "|".join(out)
    return ""

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument("lesson",type=Path)
    ap.add_argument("--policy",type=Path,required=True)
    a=ap.parse_args()
    l,p=load(a.lesson),load(a.policy)
    E,W=[],[]; lim=p["hardLimits"]; wt=p["warningThresholds"]
    turns_list=l.get("turns") or []; turns={x.get("turnKey"):x for x in turns_list if x.get("turnKey")}
    acts=l.get("activities") or []; lex=l.get("lexicalItems") or []
    target=[x for x in lex if x.get("role")=="target"]
    cons=((l.get("curriculum") or {}).get("targetConstructions") or [])
    absolute=((l.get("curriculum") or {}).get("startingKnowledge")=="absolute_zero")

    if not str(l.get("primaryOutcomeKey") or "").strip() or not str(l.get("outcomeFa") or "").strip():
        issue(E,"CQ-H01","Lesson requires one concrete primary communicative outcome.")
    if absolute and len(target)>lim["absoluteZeroMaxTargetLexicalItems"]:
        issue(E,"CQ-H02","Absolute-zero lexical load exceeds hard ceiling.",count=len(target))
    if absolute and len(cons)>lim["absoluteZeroMaxTargetConstructions"]:
        issue(E,"CQ-H02","Absolute-zero construction load exceeds hard ceiling.",count=len(cons))

    by_form=defaultdict(list); support={}
    for x in lex:
        n=norm(x.get("displayForm")); by_form[n].append(x)
        if x.get("role") in {"support","incidental"}: support[n]=x

    for t in turns_list:
        accepted=t.get("acceptedSpeechEn") or []; ns=[norm(x) for x in accepted]
        if len(ns)!=len(set(ns)): issue(E,"CQ-H09","Accepted speech contains formatting-only duplicates.",turnKey=t.get("turnKey"))
        if len(accepted)>lim["maxAcceptedSpeechVariants"]: issue(E,"CQ-H09","Too many accepted speech variants.",turnKey=t.get("turnKey"),count=len(accepted))

    task_sigs=[]; answer_uses=defaultdict(list); scored_speech=set()
    for act in acts:
        k=act.get("activityKey") or "?"; t=act.get("type"); c=act.get("config") or {}; is_scored=scored(act)
        ans=choice_answer(act)

        if t in CHOICE_TYPES:
            opts=c.get("optionsEn") if t=="fill_blank" else (c.get("options") or c.get("optionsEn")); i=c.get("answerIndex")
            if not isinstance(opts,list) or not opts or not isinstance(i,int) or not 0<=i<len(opts):
                issue(E,"CQ-H12","Choice task has no valid answer contract.",activityKey=k)
            elif len([norm(x) for x in opts])!=len(set(norm(x) for x in opts)):
                issue(E,"CQ-H04","Choice options are not unique after normalization.",activityKey=k)

        sig=answer_signature(act,turns) if is_scored else ""
        if is_scored:
            contract=True
            if t=="sentence_order": contract=bool(str(c.get("answerEn") or "").strip())
            elif t in CHOICE_TYPES: contract=ans is not None
            elif t=="speak": contract=bool(c.get("acceptedAnswersEn") or c.get("textEn"))
            elif t in {"writing","reading"}: contract=bool(c.get("acceptedAnswersEn") or c.get("answerEn") or c.get("expectedAnswersEn") or ans is not None)
            elif t=="dialogue": contract=any(x.get("responseEvaluation")=="stt" for x in c.get("exchanges") or [])
            if not contract: issue(E,"CQ-H12","Scored task lacks an explicit answer/evaluation contract.",activityKey=k,activityType=t)

        if sig:
            padded=f" {sig.replace('|',' ')} "
            for sf,item in support.items():
                if sf and (sig==sf or f" {sf} " in padded):
                    issue(E,"CQ-H03","Scored answer requires support/incidental material.",activityKey=k,lexicalKey=item.get("lexicalKey"),role=item.get("role")); break
            for part in sig.split("|"):
                if part: answer_uses[part].append(k)

        if is_scored and ans is not None:
            n=norm(ans); visible=norm(" ".join(str(act.get(x) or "") for x in ("instructionFa","promptFa","promptEn")))
            if n and n in visible: issue(E,"CQ-H05","Correct answer is directly leaked by instruction/prompt.",activityKey=k,answer=ans)
            if n in by_form and len(by_form[n])!=1: issue(E,"CQ-H11","Scored lexical answer is ambiguous in Lesson lexical data.",activityKey=k,answer=ans)

        if t=="comprehension" and is_scored:
            src=[turns.get(x) for x in c.get("sourceTurnKeys") or [] if turns.get(x)]
            if not any(x.get("audioRequired") is True for x in src): issue(E,"CQ-H06","Scored comprehension has no audio-required source Turn.",activityKey=k)
            if any(c.get(x) is True for x in ("showTranscript","showTranslation","transcriptBeforeAttempt")):
                issue(E,"CQ-H05","Listening comprehension exposes transcript/translation before attempt.",activityKey=k)

        if t=="sentence_order":
            src=turns.get(c.get("audioSourceTurnKey"))
            if not src or src.get("audioRequired") is not True: issue(E,"CQ-H07","Sentence order requires an audio-required source Turn.",activityKey=k)
            elif src.get("textEn")!=c.get("answerEn"): issue(E,"CQ-H07","Sentence-order audio must exactly match answerEn.",activityKey=k)
            if c.get("showAnswerTextBeforeAttempt") is not False: issue(E,"CQ-H07","Sentence order must hide completed answer before attempt.",activityKey=k)
            if c.get("allowAudioReplay") is not True: issue(E,"CQ-H07","Sentence order must allow audio replay.",activityKey=k)

        if t=="dialogue":
            for ex in c.get("exchanges") or []:
                if ex.get("responseEvaluation")!="stt": continue
                rt=turns.get(ex.get("responseTurnKey"))
                if not rt or rt.get("role")!="learner" or not rt.get("speechTargetEn") or not (rt.get("acceptedSpeechEn") or []):
                    issue(E,"CQ-H08","Scored guided response lacks learner speech contract.",activityKey=k,exchangeKey=ex.get("exchangeKey"))
                else: scored_speech.add(rt.get("turnKey"))
                if ex.get("allowResponseModelAudio") is True and (not rt or rt.get("audioRequired") is not True):
                    issue(E,"CQ-H08","Guided response requests model audio without required response audio.",activityKey=k,exchangeKey=ex.get("exchangeKey"))

        if is_scored:
            payload=norm(act.get("promptFa") or act.get("promptEn") or act.get("instructionFa")); task_sigs.append((k,f"{t}|{payload}|{sig}"))

    cc=Counter(x for _,x in task_sigs)
    for s,n in cc.items():
        if n>1: issue(E,"CQ-H10","Exact duplicate scored task detected.",activityKeys=[k for k,x in task_sigs if x==s])

    for target_sentence,ks in answer_uses.items():
        u=sorted(set(ks))
        if len(u)>1 and len(words(target_sentence))>=3:
            issue(W,"CQ-W01","Same full target sentence is reused across multiple scored activities.",normalizedTarget=target_sentence,activityKeys=u)

    transfer_markers={"transfer","retrieval","changed_context","personalized","free_response"}; has_transfer=False
    for act in acts:
        c=act.get("config") or {}; m=act.get("metadata") or {}; vals=[norm(c.get("mode")),norm(m.get("learningDemand")),norm(m.get("purpose"))]
        if any(any(mark in v for mark in transfer_markers) for v in vals if v): has_transfer=True
    plan=(l.get("curriculum") or {}).get("transferPlan"); has_plan=isinstance(plan,dict) and plan.get("mode") in {"same_lesson","deferred"}
    if not has_transfer and not has_plan:
        issue(W,"CQ-W02","No changed-context transfer evidence or explicit deferred transfer plan.")
        issue(W,"CQ-W08","No explicit review/transfer marker or curriculum transfer plan.")

    if absolute and (len(target)>=wt["absoluteZeroTargetLexicalNearCeiling"] or len(cons)>=wt["absoluteZeroTargetConstructionsNearCeiling"]):
        issue(W,"CQ-W03","Absolute-zero Lesson is near a configured new-material ceiling.",targetLexical=len(target),targetConstructions=len(cons))

    learners=[x for x in turns_list if x.get("role")=="learner"]
    practice=sum(1 for act in acts if act.get("type")=="dialogue" for ex in ((act.get("config") or {}).get("exchanges") or []) if ex.get("responseEvaluation")=="practice_only")
    independent_scored=any(scored(act) and act.get("type")!="dialogue" for act in acts)
    if learners and practice/len(learners)>wt["supportTurnShare"] and not independent_scored:
        issue(W,"CQ-W04","Practice/support responses dominate learner Turns without independent scored evidence.",practiceOnlyResponses=practice,learnerTurns=len(learners))

    for act in acts:
        if act.get("type")!="fill_blank": continue
        c=act.get("config") or {}; opts=c.get("optionsEn") or []; i=c.get("answerIndex")
        if isinstance(i,int) and 0<=i<len(opts):
            correct=str(opts[i]); ds=[str(x) for j,x in enumerate(opts) if j!=i]
            if correct[:1].islower() and any(x[:1].isupper() for x in ds if x):
                issue(W,"CQ-W05","Fill-blank distractor may be trivially eliminable by proper-name/surface cue.",activityKey=act.get("activityKey"),correct=correct,distractors=ds)

    if str(l.get("cefrLevel") or "").upper()=="A1":
        for tk in scored_speech:
            wc=len(words((turns.get(tk) or {}).get("speechTargetEn")))
            if wc>lim["a1MaxScoredSpeechWords"]: issue(W,"CQ-W06","A1 scored speech target is long.",turnKey=tk,words=wc)

    penalties=p.get("warningPenalties") or {}; score=max(0,100-sum(penalties.get(x["code"],0) for x in W)); ok=not E and score>=p["minimumAutomatedScore"]
    report={"status":"FAIL" if E else ("PASS_WITH_WARNINGS" if W else "PASS"),"lessonKey":l.get("lessonKey"),"hardGatePass":not E,"automatedScore":score,"minimumAutomatedScore":p["minimumAutomatedScore"],"publishableByAutomatedQualityGate":ok,"errors":E,"warnings":W,"manualReview":{"status":"PENDING","dimensions":{x:None for x in p["manualReview"]["dimensions"]},"minimumAverage":p["manualReview"]["minimumAverage"],"minimumDimension":p["manualReview"]["minimumDimension"]},"metrics":{"targetLexicalItems":len(target),"targetConstructions":len(cons),"activities":len(acts),"learnerTurns":len(learners),"scoredGuidedLearnerTurns":len(scored_speech)}}
    print(json.dumps(report,ensure_ascii=False,indent=2)); return 0 if ok else 2

if __name__=="__main__": sys.exit(main())
