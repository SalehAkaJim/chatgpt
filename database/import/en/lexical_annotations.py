#!/usr/bin/env python3
"""Materialize English tap-to-explain spans after all English levels are loaded.

Sidecars use stable logical lexical keys rather than database IDs. This importer
resolves those keys against the freshly built canonical database, verifies each
source text and character span, then writes idempotent lexical_annotations rows.
"""
from __future__ import annotations

import argparse
import json
import re
from pathlib import Path
import sys
from typing import Any

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT))

import mysql.connector  # noqa: E402
from scripts.lexical_identity import normalize, stable_uuid  # noqa: E402
from scripts.materialize_level import db_config, lang_id, one, slugify, stable, variant_id  # noqa: E402
from scripts.validate_english_lexical_annotations_v2 import base as lexical_validator  # noqa: E402

DEFAULT_ROOT = ROOT / "content" / "lexical-links" / "en"
LEVELS = ["Pre-A1", "A1", "A2", "B1", "B2", "C1", "C2"]
_PATH_PART = re.compile(r"([^.[\]]+)|\[(\d+)\]")


def nested_value(root_name: str, prompt: Any, answer: Any, source_path: str) -> str | None:
    value: Any = prompt if root_name == "prompt" else answer
    suffix = source_path[len(root_name):]
    for key, index in _PATH_PART.findall(suffix):
        if key:
            if not isinstance(value, dict) or key not in value:
                return None
            value = value[key]
        else:
            idx = int(index)
            if not isinstance(value, list) or idx >= len(value):
                return None
            value = value[idx]
    return value if isinstance(value, str) else None


def parse_word_form_key(key: str) -> tuple[str, str, str, str, dict[str, Any]]:
    parts = key.split("|", 4)
    if len(parts) != 5:
        raise ValueError(f"Malformed word_form_key: {key}")
    variant, lemma, pos, surface, features_json = parts
    features = json.loads(features_json)
    if not isinstance(features, dict):
        raise ValueError(f"word_form_key features must be an object: {key}")
    return variant, lemma, pos, surface, features


def load_manifests(root: Path) -> list[dict[str, Any]]:
    manifests: list[dict[str, Any]] = []
    for level in LEVELS:
        path = root / f"{level}.json"
        if not path.exists():
            raise SystemExit(f"Missing lexical sidecar {path}")
        payload = json.loads(path.read_text(encoding="utf-8"))
        if payload.get("level") != level or payload.get("language") != "en":
            raise SystemExit(f"Unexpected lexical sidecar metadata: {path}")
        manifests.append(payload)
    return manifests


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--annotation-root", type=Path, default=DEFAULT_ROOT)
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    # Reuse the exact sidecar/source integrity validator before touching MySQL.
    if args.annotation_root == DEFAULT_ROOT:
        original_argv = list(sys.argv)
        try:
            sys.argv = [sys.argv[0]]
            lexical_validator.main()
        finally:
            sys.argv = original_argv

    manifests = load_manifests(args.annotation_root)
    annotation_total = sum(len(source.get("annotations", [])) for manifest in manifests for source in manifest.get("sources", []))
    source_total = sum(len(manifest.get("sources", [])) for manifest in manifests)
    if args.dry_run:
        print(json.dumps({
            "levels": len(manifests),
            "sources": source_total,
            "annotations": annotation_total,
            "valid": True,
        }, ensure_ascii=False))
        return

    conn = mysql.connector.connect(**db_config())
    stats = {"sources": 0, "annotations_seen": 0, "inserted": 0, "existing": 0, "word_form_links": 0, "lexeme_links": 0, "concept_links": 0}
    try:
        cur = conn.cursor()
        cur.execute("SET time_zone='+00:00'")
        cur.execute("SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci")
        en = lang_id(cur, "en")
        en_us = variant_id(cur, "en-US")

        lexeme_cache: dict[tuple[str, str], bytes] = {}
        concept_cache: dict[str, bytes | None] = {}
        word_form_cache: dict[str, bytes | None] = {}

        for manifest in manifests:
            for source_record in manifest.get("sources", []):
                source = source_record["source"]
                batch_id = source_record["batch_id"]
                expected_text = source_record["text"]
                source_kind = source["kind"]
                utterance_text_id = dialogue_turn_id = exercise_id = None
                source_path = ""

                if source_kind == "utterance":
                    utterance_uuid = stable("utterance", f"{batch_id}:{source['external_id']}")
                    row = None
                    cur.execute("""
                        SELECT ut.id, ut.text
                        FROM utterance_texts ut
                        WHERE ut.utterance_id=UUID_TO_BIN(%s,1)
                          AND ut.language_id=%s
                          AND ut.language_variant_id=%s
                          AND ut.text=%s
                        LIMIT 1
                    """, (utterance_uuid, en, en_us, expected_text))
                    row = cur.fetchone()
                    if not row:
                        raise ValueError(f"Missing/mismatched English utterance source {batch_id}:{source['external_id']}")
                    utterance_text_id, db_text = row
                elif source_kind == "dialogue_turn":
                    dslug = slugify(f"{batch_id}-{source['external_id']}")
                    turn_uuid = stable("dialogue_turn", f"{dslug}:{source['turn_order']}")
                    cur.execute("SELECT id,text FROM dialogue_turns WHERE id=UUID_TO_BIN(%s,1)", (turn_uuid,))
                    row = cur.fetchone()
                    if not row:
                        raise ValueError(f"Missing dialogue turn {batch_id}:{source['external_id']}:{source['turn_order']}")
                    dialogue_turn_id, db_text = row
                    if db_text != expected_text:
                        raise ValueError(f"Dialogue turn text drift {batch_id}:{source['external_id']}:{source['turn_order']}")
                elif source_kind == "exercise":
                    exercise_uuid = stable("exercise", f"{batch_id}:{source['external_id']}")
                    cur.execute("SELECT id,prompt,answer FROM exercises WHERE id=UUID_TO_BIN(%s,1)", (exercise_uuid,))
                    row = cur.fetchone()
                    if not row:
                        raise ValueError(f"Missing exercise {batch_id}:{source['external_id']}")
                    exercise_id, prompt, answer = row
                    if isinstance(prompt, str): prompt = json.loads(prompt)
                    if isinstance(answer, str): answer = json.loads(answer)
                    source_path = source["source_path"]
                    root_name = source_path.split(".", 1)[0].split("[", 1)[0]
                    db_text = nested_value(root_name, prompt, answer, source_path)
                    if db_text != expected_text:
                        raise ValueError(f"Exercise text drift {batch_id}:{source['external_id']}:{source_path}")
                else:
                    raise ValueError(f"Unsupported lexical source kind {source_kind}")

                stats["sources"] += 1
                for annotation in source_record.get("annotations", []):
                    stats["annotations_seen"] += 1
                    start = int(annotation["start"]); end = int(annotation["end"])
                    surface = annotation["surface"]
                    if expected_text[start:end] != surface:
                        raise ValueError(f"Span drift in {batch_id}:{source}: {start}:{end}")

                    lemma = annotation["lemma"]
                    pos = annotation.get("part_of_speech") or ""
                    lex_key = (normalize(lemma), normalize(pos))
                    lexeme_id = lexeme_cache.get(lex_key)
                    if lexeme_id is None:
                        cur.execute("""
                            SELECT id FROM lexemes
                            WHERE language_id=%s AND language_variant_id=%s
                              AND normalized_lemma=%s
                              AND COALESCE(part_of_speech,'')=COALESCE(%s,'')
                            ORDER BY created_at, id LIMIT 1
                        """, (en, en_us, normalize(lemma), pos or None))
                        row = cur.fetchone()
                        if not row:
                            raise ValueError(f"Unresolved lexeme {annotation['lexeme_key']} for surface {surface!r}")
                        lexeme_id = row[0]
                        lexeme_cache[lex_key] = lexeme_id
                    stats["lexeme_links"] += 1

                    concept_id = None
                    cslug = annotation.get("concept_slug")
                    if cslug:
                        if cslug not in concept_cache:
                            concept_cache[cslug] = one(cur, "SELECT id FROM concepts WHERE slug=%s", (cslug,))
                        concept_id = concept_cache[cslug]
                        if not concept_id:
                            raise ValueError(f"Unresolved concept slug {cslug}")
                        stats["concept_links"] += 1

                    word_form_id = None
                    wf_key = annotation.get("word_form_key")
                    if wf_key:
                        if wf_key not in word_form_cache:
                            _variant, wf_lemma, wf_pos, wf_surface, features = parse_word_form_key(wf_key)
                            cur.execute("""
                                SELECT wf.id
                                FROM word_forms wf
                                JOIN lexemes l ON l.id=wf.lexeme_id
                                WHERE l.language_id=%s AND l.language_variant_id=%s
                                  AND l.normalized_lemma=%s
                                  AND COALESCE(l.part_of_speech,'')=COALESCE(%s,'')
                                  AND wf.normalized_form=%s
                                  AND wf.grammatical_features=CAST(%s AS JSON)
                                ORDER BY wf.created_at, wf.id LIMIT 1
                            """, (
                                en, en_us, normalize(wf_lemma), wf_pos or None,
                                normalize(wf_surface), json.dumps(features, sort_keys=True),
                            ))
                            row = cur.fetchone()
                            word_form_cache[wf_key] = row[0] if row else None
                        word_form_id = word_form_cache[wf_key]
                        if not word_form_id:
                            raise ValueError(f"Unresolved word form {wf_key}")
                        stats["word_form_links"] += 1

                    source_identity = (
                        f"u:{batch_id}:{source['external_id']}" if source_kind == "utterance" else
                        f"d:{batch_id}:{source['external_id']}:{source['turn_order']}" if source_kind == "dialogue_turn" else
                        f"e:{batch_id}:{source['external_id']}:{source_path}"
                    )
                    target_identity = annotation.get("word_form_key") or annotation["lexeme_key"] or cslug or ""
                    auid = stable_uuid("lexical_annotation", f"{source_identity}|{start}:{end}|{target_identity}")
                    metadata = {
                        "logical_lexeme_key": annotation["lexeme_key"],
                        "logical_word_form_key": wf_key,
                        "concept_slug": cslug,
                    }
                    if annotation.get("morphology"):
                        metadata["morphology"] = annotation["morphology"]
                    cur.execute("""
                        INSERT INTO lexical_annotations(
                          id,language_id,language_variant_id,
                          utterance_text_id,dialogue_turn_id,exercise_id,source_path,
                          start_offset,end_offset,surface_text,annotation_type,
                          concept_id,lexeme_id,word_form_id,confidence,provenance,metadata,status
                        ) VALUES(
                          UUID_TO_BIN(%s,1),%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,'validated'
                        )
                        ON DUPLICATE KEY UPDATE
                          concept_id=VALUES(concept_id), lexeme_id=VALUES(lexeme_id),
                          word_form_id=VALUES(word_form_id), confidence=VALUES(confidence),
                          provenance=VALUES(provenance), metadata=VALUES(metadata), status='validated'
                    """, (
                        auid, en, en_us, utterance_text_id, dialogue_turn_id, exercise_id, source_path,
                        start, end, surface, annotation["annotation_type"],
                        concept_id, lexeme_id, word_form_id, annotation["confidence"], annotation["provenance"],
                        json.dumps(metadata, ensure_ascii=False, sort_keys=True),
                    ))
                    if cur.rowcount == 1:
                        stats["inserted"] += 1
                    else:
                        stats["existing"] += 1

        conn.commit()
    except Exception:
        conn.rollback()
        raise
    finally:
        try: cur.close()
        except Exception: pass
        conn.close()

    print(json.dumps({"levels":len(manifests),"stats":stats}, ensure_ascii=False))


if __name__ == "__main__":
    main()
