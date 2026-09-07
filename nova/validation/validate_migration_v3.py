#!/usr/bin/env python3
"""Foundation gate for Nova native-v3.2 clean dataset."""
from __future__ import annotations
import json, re, sys
from pathlib import Path

ROOT=Path(__file__).resolve().parents[2]
COURSES=("de-fa","en-fa")
ARCHIVE="archive/nova-pre-v3.2-clean-reset-2026-09-07"
SEM_TABLES=(
    "sem_learning_units","sem_learning_unit_words","sem_lesson_learning_units",
    "sem_turn_learning_units","sem_review_obligations","sem_curriculum_outcomes",
)
LEGACY_SEM=("learning_units","learning_unit_words","lesson_learning_units","turn_learning_units","review_obligations","curriculum_outcomes")

def load(p:Path): return json.loads(p.read_text(encoding="utf-8"))
def fail(errors,msg): errors.append(msg)

def chapter_series(course:str):
    out=[]
    for p in ROOT.glob(f"nova/courses/{course}/staging/batch_*/chapter_*/chapter.sql"):
        m=re.fullmatch(r"chapter_(\d+)",p.parent.name)
        if m: out.append((int(m.group(1)),p.parent))
    return sorted(out)

def main():
    e=[]
    contract=load(ROOT/"nova/contracts/independent_course_v3.json")
    if contract.get("foundation_revision")!="3.2.0":
        fail(e,"contract foundation_revision must be 3.2.0")
    if contract.get("fresh_start",{}).get("archive_branch")!=ARCHIVE:
        fail(e,"contract must point to v3.2 reset archive")
    pol=contract.get("chapter_count_policy",{})
    if pol.get("mode")!="dynamic" or pol.get("fixed_course_total") is not False or pol.get("fixed_level_ranges") is not False:
        fail(e,"contract must keep dynamic chapter counts")
    if contract.get("acquisition_quality",{}).get("enforced_from_series")!=1:
        fail(e,"acquisition-quality must be enforced from Series 1")
    audio=contract.get("audio_contract",{})
    if audio.get("mode")!="explicit_deterministic_url_in_source_row" or audio.get("database_trigger_required") is not False or audio.get("post_import_update_sql_allowed") is not False:
        fail(e,"audio contract must be explicit-row/no-trigger/no-update")
    db=contract.get("database_contract",{})
    if db.get("semantic_physical_table_prefix")!="sem_" or db.get("legacy_unprefixed_semantic_objects_allowed") is not False:
        fail(e,"semantic database contract must be sem_-only")

    semantic=(ROOT/"nova/database/semantic_layer_v10.sql").read_text(encoding="utf-8")
    for table in SEM_TABLES:
        if f"CREATE TABLE IF NOT EXISTS {table}" not in semantic:
            fail(e,f"semantic layer missing physical table {table}")
    for legacy in LEGACY_SEM:
        if re.search(rf"CREATE\s+(?:OR\s+REPLACE\s+)?(?:TABLE|VIEW)\s+(?:IF\s+NOT\s+EXISTS\s+)?{re.escape(legacy)}\b",semantic,re.I):
            fail(e,f"semantic layer must not create legacy object {legacy}")
    if re.search(r"CREATE\s+TRIGGER",semantic,re.I):
        fail(e,"semantic layer must not create audio triggers")
    if (ROOT/"nova/database/audio_contract_v3.sql").exists():
        fail(e,"audio_contract_v3.sql must be removed; audio URLs belong in Chapter rows")

    foundation=(ROOT/"nova/database/foundation_seed_v3.sql").read_text(encoding="utf-8")
    for pair in (("en","fa"),("de","fa")):
        if f"learning_language='{pair[0]}' AND base_language='{pair[1]}'" not in foundation:
            fail(e,f"foundation seed missing {pair[0]}-{pair[1]}")
    for course in COURSES:
        for _,folder in chapter_series(course):
            sql=(folder/"chapter.sql").read_text(encoding="utf-8")
            for table in ("courses","levels","modules"):
                if re.search(rf"\bINSERT\s+INTO\s+{table}\b",sql,re.I) or re.search(rf"\bUPDATE\s+{table}\b",sql,re.I):
                    fail(e,f"{course} {folder.name}: structural metadata must come from foundation_seed only, not {table}")

    for course in COURSES:
        base=ROOT/f"nova/courses/{course}"
        cur=load(base/"curriculum.json")
        cp=cur.get("chapter_policy",{})
        if cp.get("mode")!="dynamic" or cp.get("fixed_total") is not False or cp.get("fixed_level_ranges") is not False:
            fail(e,f"{course}: curriculum must be dynamic")
        prod=load(base/"production_state.json")
        run=load(base/"run_control.json")
        pipe=load(base/"pipeline_config.json")
        seq=chapter_series(course)
        nums=[n for n,_ in seq]
        expected=list(range(1,(max(nums) if nums else 0)+1))
        if nums!=expected: fail(e,f"{course}: staged Series must be contiguous from 1; found {nums}")
        staged=max(nums) if nums else 0
        generated=int(prod.get("generated_through_series",0))
        published=int(prod.get("published_through_series",0))
        completed=int(prod.get("last_completed_series",0))
        nxt=int(prod.get("next_series",0))
        if not (0<=published<=generated==staged):
            fail(e,f"{course}: expected 0 <= published <= generated == staged; got {published},{generated},{staged}")
        if completed!=published: fail(e,f"{course}: last_completed_series must equal published_through_series")
        if nxt!=generated+1: fail(e,f"{course}: next_series must equal generated_through_series + 1")
        if prod.get("archive_branch")!=ARCHIVE: fail(e,f"{course}: production state archive branch mismatch")
        if run.get("allow_new_chapters") is not True or run.get("paused") is not False:
            fail(e,f"{course}: production run_control must be enabled")
        if pipe.get("new_chapter_generation_enabled") is not True:
            fail(e,f"{course}: pipeline generation disabled")
        if pipe.get("acquisition_quality_enforced_from_series")!=1:
            fail(e,f"{course}: acquisition-quality must start at Series 1")
        if pipe.get("semantic_table_prefix")!="sem_" or pipe.get("legacy_semantic_identifiers_for_new_generation") is not False:
            fail(e,f"{course}: pipeline must be sem_-only")
        if pipe.get("audio_locator_mode")!="explicit_deterministic_url_in_source_row" or pipe.get("post_import_audio_update_sql") is not False:
            fail(e,f"{course}: pipeline audio locator mode invalid")
        if "audio_contract" in pipe:
            fail(e,f"{course}: pipeline must not depend on audio_contract_v3.sql")
        for n,folder in seq:
            qa=load(folder/"qa.json")
            if qa.get("contract_version")!="3.0.0":
                fail(e,f"{course} Series {n:03d}: non-v3 package")
            if qa.get("status") not in ("READY_FOR_CI","BLOCKED","COMPLETE"):
                fail(e,f"{course} Series {n:03d}: invalid lifecycle status")
            if n<=published and qa.get("status")=="BLOCKED":
                fail(e,f"{course} Series {n:03d}: published Series cannot be BLOCKED")

    manifest=load(ROOT/"nova/mysql/import_order_v3.json")
    core=manifest.get("core",[])
    if "nova/database/audio_contract_v3.sql" in core:
        fail(e,"MySQL core must not include audio_contract_v3.sql")
    if manifest.get("semantic_schema",{}).get("legacy_unprefixed_objects_allowed") is not False:
        fail(e,"MySQL manifest must declare sem_-only objects")
    if manifest.get("audio_contract",{}).get("post_import_audio_update_sql") is not False:
        fail(e,"MySQL manifest must forbid post-import audio updates")

    if e:
        print("\n".join("FAIL "+x for x in e),file=sys.stderr); return 1
    print("PASS Nova native-v3.2 clean foundation gate")
    return 0

if __name__=="__main__":
    raise SystemExit(main())
