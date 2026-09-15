#!/usr/bin/env python3
"""Import the app-wide English dictionary into canonical lexical tables.

Run this before English lesson materializers. It is idempotent and deliberately
independent of curriculum batches so tap-to-explain can cover function words and
other common language that is not a lesson's explicit target vocabulary.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT))

import mysql.connector  # noqa: E402
from scripts.lexical_identity import lexeme_uuid, normalize, stable_uuid, word_form_uuid  # noqa: E402
from scripts.materialize_level import db_config, lang_id, one, variant_id  # noqa: E402

DEFAULT_DICTIONARY = ROOT / "content" / "dictionary" / "en-US" / "core.json"


def concept_slug(lemma: str, pos: str) -> str:
    import re
    raw = f"{normalize(lemma)}-{normalize(pos)}"
    return "dict_en_" + re.sub(r"[^a-z0-9]+", "-", raw).strip("-")


def validate(payload: dict) -> list[dict]:
    if payload.get("schema_version") != 1:
        raise SystemExit("Unsupported English dictionary schema_version")
    if payload.get("language") != "en" or payload.get("variant") != "en-US":
        raise SystemExit("English dictionary must target en / en-US")
    entries = payload.get("entries")
    if not isinstance(entries, list) or not entries:
        raise SystemExit("English dictionary has no entries")
    seen: set[tuple[str, str]] = set()
    for index, entry in enumerate(entries):
        lemma = entry.get("lemma")
        pos = entry.get("pos")
        fa = entry.get("fa")
        cefr = entry.get("cefr")
        if not all(isinstance(x, str) and x.strip() for x in (lemma, pos, fa, cefr)):
            raise SystemExit(f"Dictionary entry {index} needs lemma/pos/fa/cefr")
        signature = (normalize(lemma), normalize(pos))
        if signature in seen:
            raise SystemExit(f"Duplicate English dictionary lemma/POS: {lemma}/{pos}")
        seen.add(signature)
    return entries


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--dictionary", type=Path, default=DEFAULT_DICTIONARY)
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    payload = json.loads(args.dictionary.read_text(encoding="utf-8"))
    entries = validate(payload)
    if args.dry_run:
        print(json.dumps({
            "dictionary": str(args.dictionary.relative_to(ROOT)),
            "entries": len(entries),
            "concepts": len(entries),
            "lexemes": len(entries),
            "base_word_forms": len(entries),
            "valid": True,
        }, ensure_ascii=False))
        return

    conn = mysql.connector.connect(**db_config())
    stats = {"concepts_inserted": 0, "lexemes_inserted": 0, "word_forms_inserted": 0, "concept_terms_added": 0, "links_added": 0}
    try:
        cur = conn.cursor()
        cur.execute("SET time_zone='+00:00'")
        cur.execute("SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci")
        en = lang_id(cur, "en")
        fa = lang_id(cur, "fa")
        en_us = variant_id(cur, "en-US")

        cefr_cache: dict[str, int] = {}
        for entry in entries:
            level = entry["cefr"]
            if level not in cefr_cache:
                level_id = one(cur, "SELECT id FROM cefr_levels WHERE code=%s", (level,))
                if not level_id:
                    raise ValueError(f"Unknown CEFR level {level}")
                cefr_cache[level] = level_id
            level_id = cefr_cache[level]
            lemma = entry["lemma"]
            pos = entry["pos"]
            fa_meaning = entry["fa"]
            cslug = concept_slug(lemma, pos)

            cid = one(cur, "SELECT id FROM concepts WHERE slug=%s", (cslug,))
            if not cid:
                cuid = stable_uuid("concept", cslug)
                cur.execute("""
                    INSERT INTO concepts(id,slug,concept_type,cefr_level_id,definition,metadata,status)
                    VALUES(UUID_TO_BIN(%s,1),%s,'lexical',%s,NULL,%s,'validated')
                """, (
                    cuid, cslug, level_id,
                    json.dumps({"source":"app_dictionary","dictionary":"en-US/core.json"}, ensure_ascii=False),
                ))
                cid = one(cur, "SELECT UUID_TO_BIN(%s,1)", (cuid,))
                stats["concepts_inserted"] += 1

            cur.execute("""
                INSERT IGNORE INTO concept_terms
                  (concept_id,language_id,term,normalized_term,part_of_speech,is_primary,status,metadata)
                VALUES(%s,%s,%s,%s,%s,TRUE,'validated',%s)
            """, (cid, en, lemma, normalize(lemma), pos, json.dumps({"source":"app_dictionary"})))
            if cur.rowcount == 1: stats["concept_terms_added"] += 1
            cur.execute("""
                INSERT IGNORE INTO concept_terms
                  (concept_id,language_id,term,normalized_term,part_of_speech,is_primary,status,metadata)
                VALUES(%s,%s,%s,%s,%s,TRUE,'validated',%s)
            """, (cid, fa, fa_meaning, fa_meaning, pos, json.dumps({"source":"app_dictionary","translation_of":"en"}, ensure_ascii=False)))
            if cur.rowcount == 1: stats["concept_terms_added"] += 1

            lex = one(cur, """
                SELECT id FROM lexemes
                WHERE language_id=%s AND language_variant_id=%s
                  AND normalized_lemma=%s
                  AND COALESCE(part_of_speech,'')=COALESCE(%s,'')
                LIMIT 1
            """, (en, en_us, normalize(lemma), pos))
            if not lex:
                luid = lexeme_uuid("en-US", lemma, pos)
                cur.execute("""
                    INSERT INTO lexemes(
                      id,language_id,language_variant_id,lemma,normalized_lemma,display_lemma,
                      part_of_speech,metadata,status
                    ) VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s,%s,%s,%s,'validated')
                """, (
                    luid, en, en_us, lemma, normalize(lemma), lemma, pos,
                    json.dumps({"source":"app_dictionary","canonical_key":f"en-US|{normalize(lemma)}|{normalize(pos)}"}, ensure_ascii=False),
                ))
                lex = one(cur, "SELECT UUID_TO_BIN(%s,1)", (luid,))
                stats["lexemes_inserted"] += 1

            cur.execute("""
                INSERT IGNORE INTO concept_lexemes(concept_id,lexeme_id,relation_type,metadata)
                VALUES(%s,%s,'primary',%s)
            """, (cid, lex, json.dumps({"source":"app_dictionary"})))
            if cur.rowcount == 1: stats["links_added"] += 1

            features = {"form":"base"}
            normalized_surface = normalize(lemma)
            wf = one(cur, """
                SELECT id FROM word_forms
                WHERE lexeme_id=%s AND normalized_form=%s
                  AND grammatical_features=CAST(%s AS JSON)
                LIMIT 1
            """, (lex, normalized_surface, json.dumps(features, sort_keys=True)))
            if not wf:
                wuid = word_form_uuid("en-US", lemma, pos, lemma, features)
                cur.execute("""
                    INSERT INTO word_forms(
                      id,lexeme_id,surface_form,normalized_form,display_form,grammatical_features,
                      is_lemma,is_preferred,metadata,status
                    ) VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s,%s,TRUE,TRUE,%s,'validated')
                """, (
                    wuid, lex, lemma, normalized_surface, lemma,
                    json.dumps(features, sort_keys=True),
                    json.dumps({"source":"app_dictionary","canonical":True}, ensure_ascii=False),
                ))
                stats["word_forms_inserted"] += 1

        conn.commit()
    except Exception:
        conn.rollback()
        raise
    finally:
        try: cur.close()
        except Exception: pass
        conn.close()

    print(json.dumps({"dictionary":"en-US/core.json","entries":len(entries),"stats":stats}, ensure_ascii=False))


if __name__ == "__main__":
    main()
