#!/usr/bin/env python3
"""Link generated level audio files to canonical MySQL audio_assets rows."""
from __future__ import annotations

import argparse, json, os, uuid
from pathlib import Path
from urllib.parse import parse_qs, unquote, urlparse

import mysql.connector

ROOT=Path(__file__).resolve().parents[1]
NS=uuid.UUID("78136b2a-8bcc-4dc4-a39a-a06302c04b8d")
TABLES={"concept":"concepts","lexeme":"lexemes","word_form":"word_forms","utterance":"utterances","dialogue_turn":"dialogue_turns"}

def stable(kind,key): return str(uuid.uuid5(NS,f"{kind}:{key}"))

def db_config():
    url=os.getenv("DATABASE_URL")
    if url:
        p=urlparse(url); q=parse_qs(p.query)
        return {"host":p.hostname or "127.0.0.1","port":p.port or 3306,"user":unquote(p.username or ""),"password":unquote(p.password or ""),"database":p.path.lstrip('/'),"charset":q.get('charset',['utf8mb4'])[0],"collation":q.get('collation',['utf8mb4_0900_ai_ci'])[0],"autocommit":False}
    if not os.getenv("MYSQL_DATABASE"): raise SystemExit("Set DATABASE_URL or MYSQL_DATABASE/MYSQL_* variables")
    return {"host":os.getenv("MYSQL_HOST","127.0.0.1"),"port":int(os.getenv("MYSQL_PORT","3306")),"user":os.getenv("MYSQL_USER","root"),"password":os.getenv("MYSQL_PASSWORD",""),"database":os.environ["MYSQL_DATABASE"],"charset":"utf8mb4","collation":"utf8mb4_0900_ai_ci","autocommit":False}

def main():
    ap=argparse.ArgumentParser(); ap.add_argument("manifest",type=Path); ap.add_argument("--root",type=Path,default=ROOT); ap.add_argument("--storage-prefix",default=os.getenv("AUDIO_STORAGE_PREFIX","repo://")); ap.add_argument("--status",default="validated",choices=["generated","validated","approved"]); args=ap.parse_args()
    m=json.loads(args.manifest.read_text(encoding="utf-8")); conn=mysql.connector.connect(**db_config()); inserted=updated=0
    try:
        cur=conn.cursor(); cur.execute("SET time_zone='+00:00'"); cur.execute("SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci")
        cur.execute("SELECT id FROM languages WHERE code=%s",(m["locale"].split('-')[0],)); row=cur.fetchone();
        if not row: raise RuntimeError("Target language missing"); language_id=row[0]
        cur.execute("SELECT id FROM language_variants WHERE code=%s",(m["locale"],)); row=cur.fetchone(); variant_id=row[0] if row else None
        for item in m["items"]:
            path=args.root/item["relative_path"]; meta_path=path.with_suffix(path.suffix+".json")
            if not path.exists() or not meta_path.exists(): raise RuntimeError(f"Missing generated audio or metadata: {path}")
            meta=json.loads(meta_path.read_text(encoding="utf-8"))
            if meta.get("source_text_hash")!=item["source_text_hash"]: raise RuntimeError(f"Stale audio: {path}")
            for ref in item["entity_refs"]:
                et=ref["entity_type"]; table=TABLES.get(et)
                if not table: raise RuntimeError(f"Unsupported audio entity type {et}")
                cur.execute(f"SELECT id FROM {table} WHERE id=UUID_TO_BIN(%s,1)",(ref["entity_uuid"],)); entity=cur.fetchone()
                if not entity: raise RuntimeError(f"Canonical entity missing for {et}:{ref['entity_key']}; import the level first")
                auid=stable("audio",f"{ref['entity_uuid']}:{item['voice_key']}:{item['source_text_hash']}")
                storage=args.storage_prefix+item["relative_path"]
                payload=json.dumps({"audio_key":item["audio_key"],"entity_key":ref["entity_key"],"voice_name":meta.get("voice_name"),"output_format":meta.get("output_format"),"file_sha256":meta.get("file_sha256")},ensure_ascii=False)
                cur.execute("""INSERT INTO audio_assets(id,language_id,language_variant_id,entity_type,entity_id,source_text_hash,voice_key,provider,provider_model,storage_url,duration_ms,generated_at,checksum,status,metadata)
                    VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
                    ON DUPLICATE KEY UPDATE provider=VALUES(provider),provider_model=VALUES(provider_model),storage_url=VALUES(storage_url),duration_ms=VALUES(duration_ms),generated_at=VALUES(generated_at),checksum=VALUES(checksum),status=VALUES(status),metadata=VALUES(metadata)""",
                    (auid,language_id,variant_id,et,entity[0],item["source_text_hash"],item["voice_key"],m.get("provider","elevenlabs"),meta.get("model"),storage,meta.get("duration_ms"),meta.get("generated_at"),meta.get("file_sha256"),args.status,payload))
                if cur.rowcount==1: inserted+=1
                else: updated+=1
        conn.commit()
    except Exception:
        conn.rollback(); raise
    finally:
        try: cur.close()
        except Exception: pass
        conn.close()
    print(json.dumps({"manifest":str(args.manifest),"inserted":inserted,"updated":updated},ensure_ascii=False))
if __name__=="__main__": main()
