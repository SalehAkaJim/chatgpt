#!/usr/bin/env python3
from __future__ import annotations
import copy, json, subprocess, sys, tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
VALIDATOR = Path(__file__).with_name("validate_content_quality.py")
POLICY = ROOT / "content_quality.policy.json"

BASE = {
  "cefrLevel":"A1", "lessonKey":"TEST", "primaryOutcomeKey":"TEST-OUTCOME",
  "outcomeFa":"کاربر می تواند سلام کند.",
  "curriculum":{"startingKnowledge":"absolute_zero","targetConstructions":[],"transferPlan":{"mode":"deferred","targetLesson":"TEST-2"}},
  "lexicalItems":[{"lexicalKey":"L1","displayForm":"hello","role":"target"}],
  "turns":[
    {"turnKey":"T01","role":"character","textEn":"Hello.","audioRequired":True},
    {"turnKey":"T02","role":"learner","textEn":"Hello.","speechTargetEn":"Hello.","acceptedSpeechEn":["Hello."],"audioRequired":True}
  ],
  "activities":[{"activityKey":"A01","type":"dialogue","instructionFa":"گوش کن و جواب بده.","config":{"exchanges":[
    {"exchangeKey":"E1","promptTurnKey":"T01","responseTurnKey":"T02","responseEvaluation":"stt","allowResponseModelAudio":True}
  ]}}]
}

def run(obj):
    with tempfile.TemporaryDirectory() as td:
        p=Path(td)/"lesson.json"; p.write_text(json.dumps(obj,ensure_ascii=False),encoding="utf-8")
        cp=subprocess.run([sys.executable,str(VALIDATOR),str(p),"--policy",str(POLICY)],capture_output=True,text=True)
        return cp.returncode,json.loads(cp.stdout)

def expect_pass(name,obj):
    code,report=run(obj)
    if code!=0: raise AssertionError(f"{name} should pass: {report}")
    return report

def expect_fail(name,obj,expected):
    code,report=run(obj); codes={x["code"] for x in report["errors"]}
    if code==0 or expected not in codes: raise AssertionError(f"{name} expected {expected}: {report}")

def expect_warning(name,obj,expected):
    code,report=run(obj); codes={x["code"] for x in report["warnings"]}
    if code!=0 or expected not in codes: raise AssertionError(f"{name} expected warning {expected}: {report}")

def expect_no_warning(name,obj,unexpected):
    code,report=run(obj); codes={x["code"] for x in report["warnings"]}
    if code!=0 or unexpected in codes: raise AssertionError(f"{name} should not have warning {unexpected}: {report}")

def main():
    expect_pass("baseline",BASE)
    x=copy.deepcopy(BASE); x["primaryOutcomeKey"]=""; expect_fail("missing outcome",x,"CQ-H01")
    x=copy.deepcopy(BASE); x["lexicalItems"]=[{"lexicalKey":f"L{i}","displayForm":f"w{i}","role":"target"} for i in range(6)]; expect_fail("overload",x,"CQ-H02")
    x=copy.deepcopy(BASE); x["lexicalItems"].append({"lexicalKey":"S1","displayForm":"thanks","role":"support"}); x["activities"].append({"activityKey":"A02","type":"fill_blank","instructionFa":"انتخاب کن.","config":{"sentenceEn":"___","optionsEn":["thanks","hello","name"],"answerIndex":0}}); expect_fail("support assessed",x,"CQ-H03")
    x=copy.deepcopy(BASE); x["activities"].append({"activityKey":"A02","type":"comprehension","instructionFa":"گوش کن.","promptFa":"جواب اسمش را انتخاب کن.","config":{"sourceTurnKeys":["T01"],"options":["اسمش را","حالش را"],"answerIndex":0}}); expect_fail("answer leakage",x,"CQ-H05")
    x=copy.deepcopy(BASE); x["activities"].append({"activityKey":"A02","type":"sentence_order","instructionFa":"مرتب کن.","config":{"audioSourceTurnKey":"T02","answerEn":"Different.","showAnswerTextBeforeAttempt":False,"allowAudioReplay":True}}); expect_fail("audio mismatch",x,"CQ-H07")

    x=copy.deepcopy(BASE)
    x["activities"][0]["config"]["exchanges"][0]["responseEvaluation"]="practice_only"
    expect_warning("guided practice without assessment",x,"CQ-W04")

    x=copy.deepcopy(BASE)
    x["activities"][0]["config"]["exchanges"][0]["responseEvaluation"]="practice_only"
    x["activities"].append({"activityKey":"A02","type":"sentence_order","instructionFa":"مرتب کن.","config":{"audioSourceTurnKey":"T01","answerEn":"Hello.","showAnswerTextBeforeAttempt":False,"allowAudioReplay":True}})
    expect_no_warning("guided practice followed by independent assessment",x,"CQ-W04")

    print(json.dumps({"status":"PASS","tests":8},ensure_ascii=False))

if __name__=="__main__": main()
