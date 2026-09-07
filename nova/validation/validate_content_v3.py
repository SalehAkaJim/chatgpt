#!/usr/bin/env python3
"""Native Nova v3 chapter validator.

The validator accepts either one-row or multi-row INSERT statements. v3 keeps
12-18 objective-driven activities per lesson rather than a fixed template.
Series 4+ also enforces acquisition-quality evidence and novel-context mastery.
"""
from __future__ import annotations
import json, re, sys
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
GLOB = "nova/courses/*/staging/batch_*/chapter_*/chapter.sql"
CAST_JSON = re.compile(r"CAST\('((?:''|[^'])*)' AS JSON\)")
ACTIVITY_INSERT = re.compile(r"INSERT INTO activities\s*\([^;]*?\)\s*VALUES\s*(.*?);", re.S | re.I)
ACQUISITION_GATES = (
    "natural_story_dialogue",
    "surface_variation_transfer",
    "learner_facing_pronunciation",
    "persian_speaker_contrast",
    "novel_context_mastery",
)

def split_top(value: str) -> list[str]:
    items, current, quoted, depth = [], [], False, 0
    i=0
    while i < len(value):
        ch=value[i]
        if ch=="'":
            current.append(ch)
            if quoted and i+1<len(value) and value[i+1]=="'":
                current.append("'"); i+=2; continue
            quoted=not quoted
        elif not quoted and ch=="(": depth+=1; current.append(ch)
        elif not quoted and ch==")": depth-=1; current.append(ch)
        elif not quoted and ch=="," and depth==0:
            items.append("".join(current).strip()); current=[]
        else: current.append(ch)
        i+=1
    items.append("".join(current).strip())
    return items

def split_tuples(payload: str) -> list[str]:
    out=[]; start=None; quoted=False; depth=0; i=0
    while i < len(payload):
        ch=payload[i]
        if ch=="'":
            if quoted and i+1<len(payload) and payload[i+1]=="'": i+=2; continue
            quoted=not quoted
        elif not quoted:
            if ch=="(":
                if depth==0: start=i+1
                depth+=1
            elif ch==")":
                depth-=1
                if depth==0 and start is not None:
                    out.append(payload[start:i]); start=None
        i+=1
    return out

def unquote(value: str):
    value=value.strip()
    if value=="NULL": return None
    if value.startswith("'") and value.endswith("'"): return value[1:-1].replace("''", "'")
    return value

def cast_json(value: str):
    m=CAST_JSON.search(value)
    if not m: raise ValueError("CAST JSON payload not found")
    return json.loads(m.group(1).replace("''", "'"))

def load(path: Path): return json.loads(path.read_text(encoding="utf-8"))

def evidence_present(value) -> bool:
    if value is None: return False
    if isinstance(value, str): return bool(value.strip())
    if isinstance(value, (list, dict, tuple, set)): return len(value) > 0
    return True

def validate_acquisition_quality(ling: dict, series: int, errors: list[str]) -> None:
    if series < 4:
        return
    aq=ling.get("acquisition_quality")
    if not isinstance(aq, dict):
        errors.append("Series 4+ requires linguistic_audit_v3.acquisition_quality")
        return
    for gate in ACQUISITION_GATES:
        item=aq.get(gate)
        if not isinstance(item, dict):
            errors.append(f"Series 4+ missing acquisition-quality gate: {gate}")
            continue
        status=str(item.get("status","")).upper()
        if gate=="persian_speaker_contrast" and status=="NOT_APPLICABLE":
            if not evidence_present(item.get("reason")):
                errors.append("persian_speaker_contrast NOT_APPLICABLE requires reason")
            continue
        if status!="PASS":
            errors.append(f"acquisition-quality gate {gate} is not PASS")
        if not evidence_present(item.get("evidence")):
            errors.append(f"acquisition-quality gate {gate} requires concrete evidence")

def validate_native(path: Path) -> list[str]:
    rel=path.relative_to(ROOT); folder=path.parent; qa_path=folder/"qa.json"
    if not qa_path.exists(): return []
    qa=load(qa_path)
    if qa.get("contract_version")!="3.0.0": return []
    series=int(qa.get("series",0) or 0)
    sql=path.read_text(encoding="utf-8"); errors=[]
    if sql.count("DECLARE EXIT HANDLER")!=1: errors.append("expected exactly one SQLEXCEPTION handler")
    if sql.count("START TRANSACTION")!=1: errors.append("expected exactly one START TRANSACTION")
    if re.search(r"placeholder|todo|anders\d",sql,re.I): errors.append("placeholder-like content found")

    by_lesson=defaultdict(list)
    for match in ACTIVITY_INSERT.finditer(sql):
        tuples=split_tuples(match.group(1))
        if not tuples: errors.append("cannot parse activity INSERT tuples"); continue
        for raw in tuples:
            try:
                values=split_top(raw)
                lesson_match=re.search(r"v_l_(\d+)",values[0])
                if not lesson_match: raise ValueError("lesson variable missing")
                lesson=int(lesson_match.group(1)); order=int(values[2]); activity_type=unquote(values[1]) or ""; prompt=unquote(values[3]) or ""
                config_index=-2
                config=cast_json(values[config_index]) if "CAST(" in values[config_index] else {}
                if config.get("mode")=="sentence_blank" and prompt.count("___")!=1:
                    errors.append(f"lesson {lesson}: sentence_blank prompt must contain exactly one ___")
                by_lesson[lesson].append((order,activity_type,config))
            except Exception as exc: errors.append(f"cannot parse activity: {exc}")

    if set(by_lesson)!={1,2,3,4}: errors.append(f"expected four lessons, found {sorted(by_lesson)}")
    for lesson,rows in sorted(by_lesson.items()):
        count=len(rows); orders=sorted(r[0] for r in rows)
        if not 12<=count<=18: errors.append(f"lesson {lesson}: activity count {count} outside 12-18")
        if orders!=list(range(1,count+1)): errors.append(f"lesson {lesson}: activity order must be contiguous 1..{count}")
        modes={r[2].get("mode") for r in rows if r[2].get("mode")}
        if "audio_first" not in modes: errors.append(f"lesson {lesson}: missing audio_first exposure")
        if not modes.intersection({"word_teach","chunk_teach","micro_grammar","reading_input","sound_notice"}): errors.append(f"lesson {lesson}: missing explicit/guided learning input")
        if not modes.intersection({"recall_hidden","scenario_transfer","short_response","functional_write","reading_inference"}): errors.append(f"lesson {lesson}: missing independent retrieval/transfer")
        if series>=4 and lesson==4 and "scenario_transfer" not in modes:
            errors.append("Series 4+ lesson 4 mastery requires scenario_transfer in a novel context")
        for _,_,config in rows:
            mode=config.get("mode")
            if mode=="sentence_blank":
                options=config.get("options",[]); index=config.get("answer_index",config.get("answerIndex"))
                if len(options)!=3 or len(set(options))!=3 or index not in (0,1,2): errors.append(f"lesson {lesson}: invalid sentence_blank")
            elif mode=="recall_hidden":
                if not config.get("cue_fa") or len(config.get("accepted",[]))<2: errors.append(f"lesson {lesson}: incomplete recall_hidden")
            elif mode=="scenario_transfer":
                scenario=config.get("scenario_fa",config.get("scenarioFa")); accepted=config.get("accepted_intents",config.get("accepted",[]))
                if not scenario or len(accepted)<2: errors.append(f"lesson {lesson}: incomplete scenario_transfer")

    for name,label in {"linguistic_audit_v3.json":"linguistic audit","learning_units_v3.json":"learning-unit mapping","review_evidence_v3.json":"review evidence"}.items():
        if not (folder/name).exists(): errors.append(f"missing {label}: {name}")
    ling_path=folder/"linguistic_audit_v3.json"
    if ling_path.exists():
        ling=load(ling_path)
        if ling.get("status")!="PASS" or ling.get("blocking_issues",[])!=[]: errors.append("linguistic audit is not clean PASS")
        validate_acquisition_quality(ling,series,errors)
    review_path=folder/"review_evidence_v3.json"
    if review_path.exists() and load(review_path).get("unfulfilled_due",[])!=[]: errors.append("review debt remains in this chapter")
    units_path=folder/"learning_units_v3.json"
    if units_path.exists():
        units=load(units_path)
        if not units.get("learning_units"): errors.append("learning_units_v3 has no learning units")
        if not units.get("curriculum_outcomes"): errors.append("learning_units_v3 has no curriculum outcome mapping")
    if qa.get("counts",{}).get("activities")!=sum(len(rows) for rows in by_lesson.values()): errors.append("qa activity count does not match SQL")
    if qa.get("publication_gates",{}).get("linguistic_audit") is not True: errors.append("qa must require linguistic_audit publication gate")
    if qa.get("publication_gates",{}).get("review_ledger") is not True: errors.append("qa must require review_ledger publication gate")
    if qa.get("publication_gates",{}).get("curriculum") is not True: errors.append("qa must require curriculum publication gate")
    if series>=4 and qa.get("local_gates",{}).get("acquisition_quality") is not True:
        errors.append("Series 4+ qa.local_gates.acquisition_quality must be true")
    return [f"{rel}: {item}" for item in errors]

def main():
    errors=[]; native=0
    for path in sorted(ROOT.glob(GLOB)):
        qa=path.with_name("qa.json")
        if qa.exists() and load(qa).get("contract_version")=="3.0.0":
            native+=1; errors.extend(validate_native(path))
    if errors:
        print("\n".join(f"FAIL {x}" for x in errors),file=sys.stderr); return 1
    print(f"PASS Nova native v3 content gate ({native} native v3 chapter(s))."); return 0
if __name__=="__main__": raise SystemExit(main())
