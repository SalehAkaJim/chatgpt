#!/usr/bin/env python3
"""Foundation gate for the fresh native-v3 Nova dataset.

Native-v3 deliberately separates content generation from publication:
- generated_through_series: last contiguous, locally validated chapter package
- published_through_series / last_completed_series: last contiguous chapter that
  also passed asynchronous MySQL/audio publication gates
- next_series: generated_through_series + 1

A generated chapter may therefore exist on main while it is still waiting for
CI/audio. Repository presence is staging evidence, not publication evidence.
"""
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
        last_staged=max(nums) if nums else 0

        # Backwards-compatible defaults allow an untouched zero-state course to
        # migrate cleanly, while all active dual-state courses are checked using
        # the explicit generated/published pointers.
        last_completed=int(prod.get("last_completed_series",0))
        generated=int(prod.get("generated_through_series", last_staged if last_staged else last_completed))
        published=int(prod.get("published_through_series", last_completed))
        next_series=int(prod.get("next_series", generated+1))

        if next_series!=generated+1:
            fail(e,f"{course}: next_series must be generated_through_series + 1")
        if last_completed!=published:
            fail(e,f"{course}: last_completed_series must equal published_through_series")
        if not (0 <= published <= generated <= last_staged):
            fail(e,f"{course}: require 0 <= published <= generated <= staged; got published={published}, generated={generated}, staged={last_staged}")
        if generated!=last_staged:
            fail(e,f"{course}: generated_through_series must match the last contiguous staged Series")

        # Every generated package must have an explicit lifecycle state. A
        # BLOCKED package is allowed to remain staged while publication is
        # repaired, but it must not move the published pointer.
        for n,folder in seq:
            qa_path=folder/"qa.json"
            if not qa_path.exists():
                fail(e,f"{course} Series {n:03d}: missing qa.json")
                continue
            q=load(qa_path)
            if q.get("contract_version")!="3.0.0":
                fail(e,f"{course} Series {n:03d}: legacy/non-v3 chapter on main")
            if q.get("status") not in ("READY_FOR_CI","BLOCKED","COMPLETE"):
                fail(e,f"{course} Series {n:03d}: staged chapter needs an explicit lifecycle status")
            if n <= published and q.get("status") == "BLOCKED":
                fail(e,f"{course} Series {n:03d}: published Series cannot be BLOCKED")

        if prod.get("archive_branch")!=ARCHIVE or prod.get("quality",{}).get("legacy_content_allowed") is not False:
            fail(e,f"{course}: legacy dataset must remain archive-only")
        if run.get("allow_new_chapters") is not True or run.get("paused") is not False:
            fail(e,f"{course}: fresh production must be enabled")
        if pipe.get("new_chapter_generation_enabled") is not True or pipe.get("fixed_course_total") is not False or pipe.get("fixed_level_ranges") is not False:
            fail(e,f"{course}: pipeline must be native-v3 dynamic production")
    if e:
        print("\n".join("FAIL "+x for x in e),file=sys.stderr); return 1
    print("PASS Nova fresh native-v3 foundation gate")
    return 0
if __name__=="__main__": raise SystemExit(main())
