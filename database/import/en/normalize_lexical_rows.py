#!/usr/bin/env python3
"""Canonicalize normalized English lexical fields before annotation linking.

The shared level materializer intentionally remains legacy-compatible for now.
English reference imports use canonical lexical UUIDs, so this adapter also makes
`normalized_lemma` and `normalized_form` follow the exact same Unicode NFKC +
whitespace + casefold contract used by `scripts.lexical_identity`.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT))

import mysql.connector  # noqa: E402
from scripts.lexical_identity import normalize  # noqa: E402
from scripts.materialize_level import db_config, lang_id, variant_id  # noqa: E402


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    if args.dry_run:
        print(json.dumps({
            "language": "en",
            "variant": "en-US",
            "dry_run": True,
            "contract": "scripts.lexical_identity.normalize",
        }))
        return

    conn = mysql.connector.connect(**db_config())
    try:
        cur = conn.cursor()
        cur.execute("SET time_zone='+00:00'")
        cur.execute("SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci")
        en = lang_id(cur, "en")
        en_us = variant_id(cur, "en-US")

        cur.execute(
            """
            SELECT id, lemma
            FROM lexemes
            WHERE language_id=%s AND language_variant_id=%s
            """,
            (en, en_us),
        )
        lexemes = cur.fetchall()
        if lexemes:
            cur.executemany(
                "UPDATE lexemes SET normalized_lemma=%s WHERE id=%s",
                [(normalize(lemma), lexeme_id) for lexeme_id, lemma in lexemes],
            )

        cur.execute(
            """
            SELECT wf.id, wf.surface_form
            FROM word_forms wf
            JOIN lexemes l ON l.id=wf.lexeme_id
            WHERE l.language_id=%s AND l.language_variant_id=%s
            """,
            (en, en_us),
        )
        word_forms = cur.fetchall()
        if word_forms:
            cur.executemany(
                "UPDATE word_forms SET normalized_form=%s WHERE id=%s",
                [(normalize(surface), word_form_id) for word_form_id, surface in word_forms],
            )

        conn.commit()
        cur.close()
    except Exception:
        conn.rollback()
        raise
    finally:
        conn.close()

    print(json.dumps({
        "language": "en",
        "variant": "en-US",
        "lexemes_normalized": len(lexemes),
        "word_forms_normalized": len(word_forms),
        "dry_run": False,
    }))


if __name__ == "__main__":
    main()
