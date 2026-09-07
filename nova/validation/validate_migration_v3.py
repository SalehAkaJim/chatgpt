#!/usr/bin/env python3
"""Foundation gate for the fresh native-v3 Nova dataset."""
from __future__ import annotations
import json, re, sys
from pathlib import Path
ROOT = Path(__file__).resolve().parents[2]
COURSES = ("de-fa", "en-fa")
ARCHIVE = "archive/nova-pre-v3-reset-2026-09-07"

def load(p): return json.loads(p.read_text(encoding="utf-8"))
def fail(errors, msg): errors.append(msg)

def chapter_series(course):
    out=[]
    for p in ROOT.glob(f"nova/courses/{course}/staging/batch_*/chapter_*/chapter.sql"):
        m=re.search(r"chapter_(\d+)", str(p.parent))
        if m: out.append((int(m.group(1)),p.parent))
    return sorted(out)

def main():
    e=[]
    contract=load(ROOT/"nova/contracts/independent_course_v3.json")
    pol=contract.get("chapter_count_policy",{})
    if pol.get("mode")!="dynamic" or pol.get("fixed_course_total") is not False or pol.get("fixed_level_ranges") is not False:
        fail(e,"contract must use dynamic chapter counts with no fixed level ranges")
    if contract.get("fresh_start",{}).get("archive_branch")!=ARCHIVE:
        fail(e,"contract must reference the canonical pre-reset archive branch")
    semantic=(ROOT/"nova/database/semantic_layer_v10.sql").read_text(encoding="utf-8")
    for table in ("learning_units","review_obligations","curriculum_outcomes"):
        if f"CREATE TABLE IF NOT EXISTS {table}" not in semantic: fail(e,f"semantic layer missing {table}")
    for course in COURSES:
        base=ROOT/f"nova/courses/{course}"
        cur=load(base/"curriculum.json")
        cp=cur.get("chapter_policy",{})
        if cp.get("mode")!="dynamic" or cp.get("fixed_total") is not False or cp.get("fixed_level_ranges") is not False:
            fail(e,f"{course}: curriculum must be dynamic")
        for level in cur.get("levels",[]):
            for key in ("can_do","grammar_functions","lexical_domains","pronunciation","listening","reading","writing","completion"):
                if not level.get(key): fail(e,f"{course} {level.get('level')}: missing {key}")
        prod=load(base/"production_state.json"); run=load(base/"run_control.json"); pipe=load(base/"pipeline_config.json")
        seq=chapter_series(course); nums=[n for n,_ in seq]
        expected=list(range(1,(max(nums) if nums else 0)+1))
        if nums!=expected: fail(e,f"{course}: Series must be contiguous from 1; found {nums}")
        last=max(nums) if nums else 0
        if prod.get("last_completed_series")!=last or prod.get("next_series")!=last+1:
            fail(e,f"{course}: production_state does not match repository Series")
        if prod.get("archive_branch")!=ARCHIVE or prod.get("quality",{}).get("legacy_content_allowed") is not False:
            fail(e,f"{course}: legacy dataset must remain archive-only")
        if run.get("allow_new_chapters") is not True or run.get("paused") is not False:
            fail(e,f"{course}: fresh production must be enabled")
        if pipe.get("new_chapter_generation_enabled") is not True or pipe.get("fixed_course_total") is not False or pipe.get("fixed_level_ranges") is not False:
            fail(e,f"{course}: pipeline must be native-v3 dynamic production")
        for n,folder in seq:
            qa=folder/"qa.json"
            if not qa.exists(): fail(e,f"{course} Series {n:03d}: missing qa.json"); continue
            q=load(qa)
            if q.get("contract_version")!="3.0.0": fail(e,f"{course} Series {n:03d}: legacy/non-v3 chapter on main")
    if e:
        print("\n".join("FAIL "+x for x in e),file=sys.stderr); return 1
    print("PASS Nova fresh native-v3 foundation gate")
    return 0
if __name__=="__main__": raise SystemExit(main())
