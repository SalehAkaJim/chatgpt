#!/usr/bin/env python3
"""Materialize one completed content level into canonical MySQL tables.

The JSON batches remain the source of truth. This script validates every batch
first, then imports the whole level in one transaction. It is safe to rerun:
canonical rows use stable UUID5 identities or existing unique keys.
"""

from __future__ import annotations

import argparse
import json
import os
import re
import uuid
from pathlib import Path
from urllib.parse import parse_qs, unquote, urlparse

import mysql.connector
from jsonschema import Draft202012Validator
try:
    from scripts.content_quality import quality_errors, review_state, content_hash
    from scripts.validate_content import validate_semantics
except ModuleNotFoundError:
    from content_quality import quality_errors, review_state, content_hash
    from validate_content import validate_semantics


def batch_status(batch):
    statuses = {i['data'].get('status', 'generated') for i in batch['items']}
    if statuses == {'approved'} and not quality_errors(batch, require_approved=True):
        return 'approved'
    return 'validated' if statuses <= {'validated', 'approved'} else 'generated'


ROOT = Path(__file__).resolve().parents[1]
SCHEMA = ROOT / "content" / "batch.schema.json"
NS = uuid.UUID("78136b2a-8bcc-4dc4-a39a-a06302c04b8d")


def db_config() -> dict:
    url = os.getenv("DATABASE_URL")
    if url:
        p = urlparse(url)
        if p.scheme not in {"mysql", "mysql+mysqlconnector"}:
            raise SystemExit("DATABASE_URL must use mysql://")
        q = parse_qs(p.query)
        return {"host": p.hostname or "127.0.0.1", "port": p.port or 3306,
                "user": unquote(p.username or ""), "password": unquote(p.password or ""),
                "database": p.path.lstrip("/"), "charset": q.get("charset", ["utf8mb4"])[0],
                "collation": q.get("collation", ["utf8mb4_0900_ai_ci"])[0], "autocommit": False}
    if not os.getenv("MYSQL_DATABASE"):
        raise SystemExit("Set DATABASE_URL or MYSQL_DATABASE/MYSQL_* variables")
    return {"host": os.getenv("MYSQL_HOST", "127.0.0.1"),
            "port": int(os.getenv("MYSQL_PORT", "3306")), "user": os.getenv("MYSQL_USER", "root"),
            "password": os.getenv("MYSQL_PASSWORD", ""), "database": os.environ["MYSQL_DATABASE"],
            "charset": "utf8mb4", "collation": "utf8mb4_0900_ai_ci", "autocommit": False}


def stable(kind: str, key: str) -> str:
    return str(uuid.uuid5(NS, f"{kind}:{key}"))


def slugify(value: str) -> str:
    s = re.sub(r"[^a-z0-9]+", "-", value.lower()).strip("-")
    return s[:170] or "item"


def validate_batches(paths: list[Path]) -> list[dict]:
    schema = json.loads(SCHEMA.read_text(encoding="utf-8"))
    validator = Draft202012Validator(schema)
    batches = []
    for path in paths:
        batch = json.loads(path.read_text(encoding="utf-8"))
        errors = sorted(validator.iter_errors(batch), key=lambda e: list(e.path))
        if errors:
            msg = "; ".join(f"{'.'.join(map(str,e.path)) or '<root>'}: {e.message}" for e in errors[:10])
            raise SystemExit(f"{path}: {msg}")
        semantic_errors = []
        validate_semantics(batch, semantic_errors, [])
        semantic_errors.extend(quality_errors(batch))
        if semantic_errors:
            raise SystemExit(f"{path}: " + "; ".join(semantic_errors))
        batch["_path"] = str(path)
        batches.append(batch)
    return batches


def one(cur, sql, params=()):
    cur.execute(sql, params)
    row = cur.fetchone()
    return row[0] if row else None


def lang_id(cur, code):
    v = one(cur, "SELECT id FROM languages WHERE code=%s", (code,))
    if not v: raise ValueError(f"Unknown language {code}")
    return v


def variant_id(cur, code):
    if not code: return None
    v = one(cur, "SELECT id FROM language_variants WHERE code=%s", (code,))
    if not v: raise ValueError(f"Unknown language variant {code}")
    return v


def topic_id(cur, slug):
    return one(cur, "SELECT id FROM topics WHERE slug=%s", (slug,)) if slug else None


def ensure_concept(cur, data, level_id, target_lang, learner_lang, ids):
    slug = data["slug"]
    cid = one(cur, "SELECT id FROM concepts WHERE slug=%s", (slug,))
    if not cid:
        uid = stable("concept", slug)
        cur.execute("""INSERT INTO concepts(id,slug,concept_type,cefr_level_id,definition,metadata,status)
          VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s,%s,%s)""",
          (uid, slug, data.get("concept_type","lexical"), level_id, data.get("definition"),
           json.dumps({"source":"level_import","tags":data.get("tags",[])}, ensure_ascii=False), data.get("status","generated")))
        cid = one(cur, "SELECT UUID_TO_BIN(%s,1)", (uid,))
    ids[data.get("_external_id", slug)] = cid
    pos = data.get("part_of_speech")
    for code, term in (data.get("forms") or {}).items():
        lid = lang_id(cur, code)
        cur.execute("""INSERT IGNORE INTO concept_terms
          (concept_id,language_id,term,normalized_term,part_of_speech,is_primary,status,metadata)
          VALUES(%s,%s,%s,%s,%s,TRUE,%s,JSON_OBJECT('source','level_import'))""",
          (cid,lid,term,term,pos,data.get("status","generated")))
    if data.get("concept_type") == "lexical":
        for code, term in (data.get("translations") or {}).items():
            lid = lang_id(cur, code)
            cur.execute("""INSERT IGNORE INTO concept_terms
              (concept_id,language_id,term,normalized_term,part_of_speech,is_primary,status,metadata)
              VALUES(%s,%s,%s,%s,%s,TRUE,%s,JSON_OBJECT('source','translation'))""",
              (cid,lid,term,term,pos,data.get("status","generated")))
    tid = topic_id(cur, data.get("topic"))
    if tid: cur.execute("INSERT IGNORE INTO concept_topics(concept_id,topic_id) VALUES(%s,%s)",(cid,tid))
    return cid


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("content_dir", type=Path)
    ap.add_argument("--course", required=True)
    ap.add_argument("--level", required=True)
    ap.add_argument("--target-language", default="en")
    ap.add_argument("--target-variant", default="en-US")
    ap.add_argument("--learner-language", default="fa")
    ap.add_argument("--learner-variant", default="fa-IR")
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--allow-unreviewed", action="store_true", help="Import structurally valid content for review/testing; does not approve it")
    ap.add_argument("--require-approved", action="store_true", help="Check educational release readiness even in a dry run")
    args = ap.parse_args()
    paths = sorted(args.content_dir.glob("*.json"))
    if not paths: raise SystemExit(f"No JSON batches in {args.content_dir}")
    batches = validate_batches(paths)
    wrong = [b["batch_id"] for b in batches if b["cefr"] != args.level]
    if wrong: raise SystemExit(f"Batches with wrong level: {wrong}")
    if args.require_approved or (not args.dry_run and not args.allow_unreviewed):
        release_errors = [b['batch_id'] + ': ' + e for b in batches for e in quality_errors(b, require_approved=True)]
        if release_errors:
            raise SystemExit("Educational review gate: " + "; ".join(release_errors))
    if args.dry_run:
        print(json.dumps({"level":args.level,"batches":len(batches),"files":[p.name for p in paths],"valid":True}))
        return

    conn = mysql.connector.connect(**db_config())
    stats = {k:0 for k in ["lessons","concepts","lexemes","word_forms","utterances","grammar_points","dialogues","turns","exercises"]}
    try:
        cur = conn.cursor()
        cur.execute("SET time_zone='+00:00'")
        cur.execute("SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci")
        target_lang = lang_id(cur,args.target_language); learner_lang = lang_id(cur,args.learner_language)
        target_variant = variant_id(cur,args.target_variant)
        course = one(cur,"SELECT id FROM courses WHERE slug=%s",(args.course,))
        level_id = one(cur,"SELECT id FROM cefr_levels WHERE code=%s",(args.level,))
        if not course or not level_id: raise ValueError("Course or CEFR level missing")
        concept_ids={}; lexeme_ids={}; word_form_ids={}; entity_ids={}

        for batch in batches:
            unit = cur.execute("""SELECT id,title,learning_objective,sort_order,topic_id FROM curriculum_units
                WHERE course_id=%s AND cefr_level_id=%s AND slug=%s""",(course,level_id,batch["curriculum_unit"])) or cur.fetchone()
            if not unit: raise ValueError(f"Missing curriculum unit {batch['curriculum_unit']}")
            unit_id,unit_title,objective,unit_order,unit_topic=unit
            lesson_keys=[]
            for item in batch["items"]:
                lk=item.get("data",{}).get("lesson_key")
                if lk and lk not in lesson_keys: lesson_keys.append(lk)
            lessons={}
            for n,lk in enumerate(lesson_keys,1):
                lid=one(cur,"SELECT id FROM lessons WHERE course_id=%s AND slug=%s",(course,lk))
                if not lid:
                    uid=stable("lesson",f"{args.course}:{lk}")
                    cur.execute("""INSERT INTO lessons(id,course_id,curriculum_unit_id,slug,target_language_id,cefr_level_id,topic_id,title,objective,sort_order,status,metadata)
                      VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)""",
                      (uid,course,unit_id,lk,target_lang,level_id,unit_topic,f"{unit_title} · {n}",objective,unit_order*100+n,batch_status(batch),json.dumps({"source_batch":batch["batch_id"]})))
                    lid=one(cur,"SELECT UUID_TO_BIN(%s,1)",(uid,)); stats["lessons"]+=1
                lessons[lk]=lid

            # Concepts first so all references can resolve regardless of item order.
            for item in batch["items"]:
                if item["kind"]=="concept":
                    d=dict(item["data"]); d["_external_id"]=item.get("external_id")
                    ensure_concept(cur,d,level_id,target_lang,learner_lang,concept_ids); stats["concepts"]+=1

            item_order={lk:0 for lk in lesson_keys}
            for item in batch["items"]:
                kind=item["kind"]; d=item["data"]; ext=item.get("external_id") or stable(kind,json.dumps(d,sort_keys=True))
                lk=d.get("lesson_key"); lesson=lessons.get(lk); canonical=None
                if kind=="concept": canonical=concept_ids.get(ext)
                elif kind=="lexeme":
                    existing=one(cur,"SELECT id FROM lexemes WHERE language_id=%s AND language_variant_id=%s AND lemma=%s AND COALESCE(part_of_speech,'')=COALESCE(%s,'') LIMIT 1",(target_lang,target_variant,d["lemma"],d.get("part_of_speech")))
                    if not existing:
                        uid=stable("lexeme",f"{args.target_variant}:{d['lemma']}:{d.get('part_of_speech','')}")
                        cur.execute("""INSERT INTO lexemes(id,language_id,language_variant_id,lemma,normalized_lemma,display_lemma,part_of_speech,grammatical_gender,metadata,status)
                          VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s,%s,%s,%s,%s,%s)""",(uid,target_lang,target_variant,d["lemma"],d.get("normalized_lemma",d["lemma"]),d.get("display_lemma",d["lemma"]),d.get("part_of_speech"),d.get("grammatical_gender"),json.dumps({"external_id":ext}),d.get("status","generated")))
                        existing=one(cur,"SELECT UUID_TO_BIN(%s,1)",(uid,)); stats["lexemes"]+=1
                    lexeme_ids[ext]=existing; canonical=existing
                    for ref in d.get("concept_refs",[]):
                        cid=concept_ids.get(ref)
                        if cid: cur.execute("INSERT IGNORE INTO concept_lexemes(concept_id,lexeme_id,relation_type) VALUES(%s,%s,'primary')",(cid,existing))
                elif kind=="word_form":
                    lex=lexeme_ids.get(d["lexeme_ref"])
                    if not lex: raise ValueError(f"Unknown lexeme_ref {d['lexeme_ref']}")
                    uid=stable("word_form",f"{batch['batch_id']}:{ext}"); canonical=one(cur,"SELECT id FROM word_forms WHERE id=UUID_TO_BIN(%s,1)",(uid,))
                    if not canonical:
                        cur.execute("""INSERT INTO word_forms(id,lexeme_id,surface_form,normalized_form,display_form,grammatical_features,is_lemma,is_preferred,metadata,status)
                          VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s,%s,%s,%s,%s,%s)""",(uid,lex,d["surface_form"],d.get("normalized_form",d["surface_form"]),d.get("display_form",d["surface_form"]),json.dumps(d.get("grammatical_features",{})),bool(d.get("is_lemma",False)),bool(d.get("is_preferred",True)),json.dumps({"external_id":ext}),d.get("status","generated")))
                        canonical=one(cur,"SELECT UUID_TO_BIN(%s,1)",(uid,)); stats["word_forms"]+=1
                    word_form_ids[ext]=canonical
                elif kind=="utterance":
                    uid=stable("utterance",f"{batch['batch_id']}:{ext}"); canonical=one(cur,"SELECT id FROM utterances WHERE id=UUID_TO_BIN(%s,1)",(uid,))
                    if not canonical:
                        tid=topic_id(cur,d.get("topic")); cur.execute("""INSERT INTO utterances(id,cefr_level_id,topic_id,intent,metadata,status)
                          VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s,%s)""",(uid,level_id,tid,d.get("intent"),json.dumps({"external_id":ext}),d.get("status","generated")))
                        canonical=one(cur,"SELECT UUID_TO_BIN(%s,1)",(uid,)); stats["utterances"]+=1
                    for code,text in (d.get("text") or {}).items():
                        lid=lang_id(cur,code); vid=target_variant if code==args.target_language else None
                        cur.execute("""INSERT IGNORE INTO utterance_texts(utterance_id,language_id,language_variant_id,text,normalized_text,display_text,register,status,metadata)
                          VALUES(%s,%s,%s,%s,%s,%s,%s,%s,JSON_OBJECT('source','level_import'))""",(canonical,lid,vid,text,text,text,d.get("register","neutral"),d.get("status","generated")))
                    for code,text in (d.get("translations") or {}).items():
                        lid=lang_id(cur,code); cur.execute("""INSERT IGNORE INTO utterance_texts(utterance_id,language_id,text,normalized_text,display_text,register,status,metadata)
                          VALUES(%s,%s,%s,%s,%s,'translation',%s,JSON_OBJECT('translation',true))""",(canonical,lid,text,text,text,d.get("status","generated")))
                    for ref in d.get("concept_refs",[]):
                        if concept_ids.get(ref): cur.execute("INSERT IGNORE INTO utterance_concepts VALUES(%s,%s)",(canonical,concept_ids[ref]))
                elif kind=="grammar_point":
                    canonical=one(cur,"SELECT id FROM grammar_points WHERE slug=%s",(d["slug"],))
                    if not canonical:
                        uid=stable("grammar",d["slug"]); cur.execute("""INSERT INTO grammar_points(id,slug,target_language_id,target_language_variant_id,cefr_level_id,title,rule_summary,status,metadata)
                          VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s,%s,%s,%s,%s)""",(uid,d["slug"],target_lang,target_variant,level_id,d["title"],d.get("rule_summary"),d.get("status","generated"),json.dumps({"external_id":ext})))
                        canonical=one(cur,"SELECT UUID_TO_BIN(%s,1)",(uid,)); stats["grammar_points"]+=1
                    for code,text in (d.get("explanation") or {}).items():
                        lid=lang_id(cur,code); cur.execute("""INSERT IGNORE INTO grammar_explanations(grammar_point_id,explanation_language_id,explanation,examples,status)
                          VALUES(%s,%s,%s,%s,%s)""",(canonical,lid,text,json.dumps(d.get("examples",[]),ensure_ascii=False),d.get("status","generated")))
                elif kind=="dialogue":
                    dslug=slugify(f"{batch['batch_id']}-{ext}"); canonical=one(cur,"SELECT id FROM dialogues WHERE slug=%s",(dslug,))
                    if not canonical:
                        uid=stable("dialogue",dslug); cur.execute("""INSERT INTO dialogues(id,slug,cefr_level_id,topic_id,scenario,metadata,status)
                          VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s,%s,%s)""",(uid,dslug,level_id,topic_id(cur,d.get("topic")),d.get("setting"),json.dumps({"external_id":ext}),d.get("status","generated")))
                        canonical=one(cur,"SELECT UUID_TO_BIN(%s,1)",(uid,)); stats["dialogues"]+=1
                    vuid=stable("dialogue_version",f"{dslug}:{args.target_variant}")
                    cur.execute("""INSERT IGNORE INTO dialogue_versions(id,dialogue_id,language_id,language_variant_id,title,status,metadata)
                      VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s,%s,JSON_OBJECT('source','level_import'))""",(vuid,canonical,target_lang,target_variant,d.get("title"),d.get("status","generated")))
                    version=one(cur,"SELECT UUID_TO_BIN(%s,1)",(vuid,))
                    for turn in d.get("turns",[]):
                        name=turn["speaker"]; cslug=slugify(name); char=one(cur,"SELECT id FROM characters WHERE slug=%s",(cslug,))
                        if not char:
                            cuid=stable("character",cslug); cur.execute("""INSERT INTO characters(id,slug,default_name,persona,voice_profile) VALUES(UUID_TO_BIN(%s,1),%s,%s,JSON_OBJECT(),JSON_OBJECT('status','unassigned'))""",(cuid,cslug,name)); char=one(cur,"SELECT UUID_TO_BIN(%s,1)",(cuid,))
                        tuid=stable("dialogue_turn",f"{dslug}:{turn['order']}"); cur.execute("""INSERT IGNORE INTO dialogue_turns(id,dialogue_version_id,turn_order,character_id,text,translation_hint,metadata)
                          VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s,%s,JSON_OBJECT('speaker',%s))""",(tuid,version,turn["order"],char,turn["text"],turn.get("translation_fa"),name)); stats["turns"]+=1
                elif kind=="exercise":
                    if not lesson: raise ValueError(f"Exercise {ext} has no lesson")
                    euid=stable("exercise",f"{batch['batch_id']}:{ext}"); canonical=one(cur,"SELECT id FROM exercises WHERE id=UUID_TO_BIN(%s,1)",(euid,))
                    if not canonical:
                        cur.execute("""INSERT INTO exercises(id,lesson_id,exercise_type,instruction_language_id,prompt,answer,difficulty,status,metadata)
                          VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s,%s,%s,%s,%s)""",(euid,lesson,d["exercise_type"],learner_lang,json.dumps(d["prompt"],ensure_ascii=False),json.dumps(d["answer"],ensure_ascii=False),d.get("difficulty"),d.get("status","generated"),json.dumps({"external_id":ext})))
                        canonical=one(cur,"SELECT UUID_TO_BIN(%s,1)",(euid,)); stats["exercises"]+=1
                        answer_value=d.get("answer",{}).get("value")
                        for i,opt in enumerate(d.get("options",[]),1):
                            ouid=stable("exercise_option",f"{batch['batch_id']}:{ext}:{i}"); val=opt if isinstance(opt,(dict,list)) else opt
                            cur.execute("INSERT IGNORE INTO exercise_options(id,exercise_id,option_order,value,is_correct) VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s)",(ouid,canonical,i,json.dumps(val,ensure_ascii=False),opt==answer_value))
                    # Keep learner feedback available on both first import and
                    # reruns without changing the existing grading contract.
                    if d.get('feedback'):
                        cur.execute("UPDATE exercises SET metadata=JSON_SET(metadata,'$.feedback',CAST(%s AS JSON),'$.review_of',CAST(%s AS JSON)) WHERE id=%s",
                                    (json.dumps(d['feedback'],ensure_ascii=False),json.dumps(d.get('review_of',[])),canonical))
                    if d.get('assessment'):
                        cur.execute("UPDATE exercises SET metadata=JSON_SET(metadata,'$.assessment',CAST(%s AS JSON)) WHERE id=%s",(json.dumps(d['assessment'],ensure_ascii=False),canonical))
                if canonical and kind!="exercise" and lesson:
                    item_order[lk]+=1; liuid=stable("lesson_item",f"{args.course}:{lk}:{kind}:{ext}")
                    cols={"concept":"concept_id","lexeme":"lexeme_id","word_form":"word_form_id","utterance":"utterance_id","dialogue":"dialogue_id","grammar_point":"grammar_point_id"}
                    col=cols.get(kind)
                    if col: cur.execute(f"INSERT IGNORE INTO lesson_items(id,lesson_id,item_order,{col},metadata) VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s)",(liuid,lesson,item_order[lk],canonical,json.dumps({"kind":kind,"external_id":ext})))
                if canonical: entity_ids[ext]=canonical
        try:
            from scripts.export_english_quality_updates import statements as quality_statements
        except ModuleNotFoundError:
            from export_english_quality_updates import statements as quality_statements
        for batch in batches:
            for statement in quality_statements(batch):
                cur.execute(statement)
        conn.commit()
    except Exception:
        conn.rollback(); raise
    finally:
        try: cur.close()
        except Exception: pass
        conn.close()
    print(json.dumps({"course":args.course,"level":args.level,"batches":len(batches),"stats":stats},ensure_ascii=False))

if __name__ == "__main__": main()
