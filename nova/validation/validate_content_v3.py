#!/usr/bin/env python3
"""Native Nova v3.2 chapter validator."""
from __future__ import annotations
import hashlib, json, re, sys
from collections import defaultdict
from pathlib import Path

ROOT=Path(__file__).resolve().parents[2]
GLOB="nova/courses/*/staging/batch_*/chapter_*/chapter.sql"
ACQ=("natural_story_dialogue","surface_variation_transfer","learner_facing_pronunciation","persian_speaker_contrast","novel_context_mastery")
FORBIDDEN_SEM=("learning_units","learning_unit_words","lesson_learning_units","turn_learning_units","review_obligations","curriculum_outcomes")
REQUIRED_SEM=("sem_learning_units","sem_learning_unit_words","sem_lesson_learning_units","sem_turn_learning_units","sem_review_obligations","sem_curriculum_outcomes")

def load(p): return json.loads(p.read_text(encoding="utf-8"))

def split_top(value):
    items=[]; current=[]; quote=None; depth=0; i=0
    while i<len(value):
        ch=value[i]
        if quote:
            current.append(ch)
            if ch=="\\" and i+1<len(value):
                current.append(value[i+1]); i+=2; continue
            if ch==quote:
                if i+1<len(value) and value[i+1]==quote:
                    current.append(value[i+1]); i+=2; continue
                quote=None
        else:
            if ch in ("'",'"'): quote=ch; current.append(ch)
            elif ch in "([{": depth+=1; current.append(ch)
            elif ch in ")]}": depth-=1; current.append(ch)
            elif ch=="," and depth==0: items.append("".join(current).strip()); current=[]
            else: current.append(ch)
        i+=1
    items.append("".join(current).strip())
    return items

def split_tuples(payload):
    out=[]; start=None; quote=None; depth=0; i=0
    while i<len(payload):
        ch=payload[i]
        if quote:
            if ch=="\\" and i+1<len(payload): i+=2; continue
            if ch==quote:
                if i+1<len(payload) and payload[i+1]==quote: i+=2; continue
                quote=None
        else:
            if ch in ("'",'"'): quote=ch
            elif ch=="(":
                if depth==0: start=i+1
                depth+=1
            elif ch==")":
                depth-=1
                if depth==0 and start is not None:
                    out.append(payload[start:i]); start=None
        i+=1
    return out

def unquote(v):
    v=v.strip()
    if v.upper()=="NULL": return None
    if len(v)>=2 and v[0]=="'" and v[-1]=="'":
        return v[1:-1].replace("''","'").replace("\\\\","\\")
    return v

def parse_insert_statements(sql,table):
    pat=re.compile(rf"INSERT\s+INTO\s+{re.escape(table)}\s*\((.*?)\)\s*VALUES\s*(.*?);",re.I|re.S)
    rows=[]
    for m in pat.finditer(sql):
        cols=[c.strip().strip("`").casefold() for c in split_top(m.group(1))]
        for raw in split_tuples(m.group(2)):
            vals=split_top(raw)
            if len(cols)!=len(vals): raise ValueError(f"{table} column/value mismatch {len(cols)}!={len(vals)}")
            rows.append(dict(zip(cols,vals)))
    return rows

def parse_json_expr(v):
    m=re.search(r"CAST\s*\(\s*('(?:''|\\.|[^'])*')\s+AS\s+JSON\s*\)",v,re.I|re.S)
    if not m: return {}
    return json.loads(unquote(m.group(1)))

def validate(path):
    folder=path.parent
    qa=load(folder/"qa.json")
    if qa.get("contract_version")!="3.0.0": return []
    course=qa["course"]; series=int(qa["series"]); level=qa["level"]
    sql=path.read_text(encoding="utf-8")
    errors=[]
    rel=path.relative_to(ROOT)
    if sql.count("DECLARE EXIT HANDLER")!=1: errors.append("expected exactly one SQLEXCEPTION handler")
    if sql.count("START TRANSACTION")!=1: errors.append("expected exactly one START TRANSACTION")
    if not re.search(rf"(?im)^--\s*SERIES\s+{series}\s*$",sql[:1200]): errors.append("missing canonical -- SERIES locator")
    if re.search(r"placeholder|todo|anders\d",sql,re.I): errors.append("placeholder-like content found")
    for table in ("courses","levels","modules"):
        if re.search(rf"\b(?:INSERT\s+INTO|UPDATE)\s+{table}\b",sql,re.I):
            errors.append(f"structural metadata must not be written by Chapter SQL: {table}")
    for legacy in FORBIDDEN_SEM:
        if re.search(rf"\b(?:INSERT\s+INTO|UPDATE|DELETE\s+FROM|FROM|JOIN)\s+{legacy}\b",sql,re.I):
            errors.append(f"legacy semantic identifier forbidden: {legacy}")
    for table in REQUIRED_SEM:
        if not re.search(rf"\b{table}\b",sql): errors.append(f"missing semantic table usage: {table}")

    turns=parse_insert_statements(sql,"turns")
    by_lesson=defaultdict(list)
    for row in turns:
        lm=re.fullmatch(r"v_l_(\d+)",row["lesson_id"].strip(),re.I)
        if not lm: errors.append("turn lesson variable must be v_l_N"); continue
        li=int(lm.group(1)); order=int(row["sort_order"]); by_lesson[li].append(order)
        audio=unquote(row.get("audio_url",""))
        expected=f"nova/audio/turns/{course}/{level}/s{series:04d}/l{li:02d}/t{order:02d}.mp3"
        if audio!=expected: errors.append(f"lesson {li} turn {order}: audio_url must equal {expected}")
    if set(by_lesson)!={1,2,3,4}: errors.append(f"expected four lessons of turns, found {sorted(by_lesson)}")
    for li,orders in by_lesson.items():
        if not 8<=len(orders)<=14: errors.append(f"lesson {li}: turn count {len(orders)} outside 8-14")
        if sorted(orders)!=list(range(1,len(orders)+1)): errors.append(f"lesson {li}: turn order not contiguous")

    words=parse_insert_statements(sql,"words")
    for row in words:
        display=unquote(row["display_form"])
        audio=unquote(row.get("audio_url",""))
        expected=f"nova/audio/words/{course}/{hashlib.sha256(display.encode('utf-8')).hexdigest()}.mp3"
        if audio!=expected: errors.append(f"word {display!r}: deterministic audio_url mismatch")

    activities=parse_insert_statements(sql,"activities")
    acts=defaultdict(list)
    for row in activities:
        lm=re.fullmatch(r"v_l_(\d+)",row["lesson_id"].strip(),re.I)
        if not lm: errors.append("activity lesson variable must be v_l_N"); continue
        li=int(lm.group(1)); order=int(row["sort_order"])
        cfg=parse_json_expr(row.get("config",""))
        prompt=unquote(row.get("prompt","")) or ""
        acts[li].append((order,cfg,prompt))
        if cfg.get("mode")=="sentence_blank" and prompt.count("___")!=1:
            errors.append(f"lesson {li}: sentence_blank must contain exactly one ___")
        if cfg.get("mode")=="sentence_blank":
            opts=cfg.get("options",[]); idx=cfg.get("answer_index")
            if len(opts)!=3 or len(set(opts))!=3 or idx not in (0,1,2):
                errors.append(f"lesson {li}: invalid sentence_blank")
        if cfg.get("mode")=="recall_hidden":
            if not cfg.get("cue_fa") or len(cfg.get("accepted",[]))<2:
                errors.append(f"lesson {li}: recall_hidden needs cue_fa and >=2 accepted")
        if cfg.get("mode")=="scenario_transfer":
            accepted=cfg.get("accepted_intents",cfg.get("accepted",[]))
            if not cfg.get("scenario_fa") or len(accepted)<2:
                errors.append(f"lesson {li}: scenario_transfer incomplete")

    if set(acts)!={1,2,3,4}: errors.append(f"expected four lessons of activities, found {sorted(acts)}")
    for li,rows in acts.items():
        orders=sorted(x[0] for x in rows)
        if not 12<=len(rows)<=18: errors.append(f"lesson {li}: activity count {len(rows)} outside 12-18")
        if orders!=list(range(1,len(rows)+1)): errors.append(f"lesson {li}: activity order not contiguous")
        modes={x[1].get("mode") for x in rows}
        if "audio_first" not in modes: errors.append(f"lesson {li}: missing audio_first")
        if not modes.intersection({"word_teach","chunk_teach","micro_grammar","reading_input","sound_notice"}):
            errors.append(f"lesson {li}: missing guided learning input")
        if not modes.intersection({"recall_hidden","scenario_transfer","short_response","functional_write","reading_inference"}):
            errors.append(f"lesson {li}: missing retrieval/transfer")
        if li==4 and "scenario_transfer" not in modes:
            errors.append("lesson 4 mastery requires novel-context scenario_transfer")

    for name in ("linguistic_audit_v3.json","learning_units_v3.json","review_evidence_v3.json","snapshot.json"):
        if not (folder/name).exists(): errors.append(f"missing {name}")
    ling=load(folder/"linguistic_audit_v3.json")
    if ling.get("status")!="PASS" or ling.get("blocking_issues")!=[]: errors.append("linguistic audit is not clean PASS")
    aq=ling.get("acquisition_quality",{})
    for gate in ACQ:
        item=aq.get(gate,{})
        if item.get("status")!="PASS" or not item.get("evidence"):
            errors.append(f"acquisition-quality gate {gate} must PASS with evidence")
    review=load(folder/"review_evidence_v3.json")
    if review.get("unfulfilled_due",[])!=[]: errors.append("review debt remains")
    units=load(folder/"learning_units_v3.json")
    if not units.get("learning_units") or not units.get("curriculum_outcomes"): errors.append("learning unit/outcome mapping empty")
    counts=qa.get("counts",{})
    if counts.get("lessons")!=4 or counts.get("turns")!=len(turns) or counts.get("activities")!=len(activities) or counts.get("words")!=len(words):
        errors.append("qa counts do not match SQL")
    gates=qa.get("local_gates",{})
    for gate in ("structural","linguistic","curriculum","review_ledger","sql_source","tts_source_parse","acquisition_quality","deterministic_audio_locator","semantic_prefix","metadata_localization"):
        if gates.get(gate) is not True: errors.append(f"qa.local_gates.{gate} must be true")
    for gate in ("linguistic_audit","review_ledger","curriculum","mysql8","turn_audio","learning_unit_audio"):
        if qa.get("publication_gates",{}).get(gate) is not True: errors.append(f"qa must require publication gate {gate}")
    return [f"{rel}: {x}" for x in errors]

def main():
    errors=[]; count=0
    for path in sorted(ROOT.glob(GLOB)):
        qa=path.with_name("qa.json")
        if qa.exists() and load(qa).get("contract_version")=="3.0.0":
            count+=1
            try: errors.extend(validate(path))
            except Exception as exc: errors.append(f"{path.relative_to(ROOT)}: validator exception: {exc}")
    if errors:
        print("\n".join("FAIL "+x for x in errors),file=sys.stderr); return 1
    print(f"PASS Nova native v3.2 content gate ({count} chapter(s))")
    return 0

if __name__=="__main__":
    raise SystemExit(main())
