#!/usr/bin/env python3

import argparse
import hashlib
import json
import os
from pathlib import Path

import psycopg


def fingerprint(kind: str, payload: dict) -> str:
    canonical = json.dumps(
        {"kind": kind, "payload": payload},
        ensure_ascii=False,
        sort_keys=True,
        separators=(",", ":"),
    )
    return hashlib.sha256(canonical.encode("utf-8")).hexdigest()


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Import a generated content batch into staging tables."
    )
    parser.add_argument("batch", type=Path)
    args = parser.parse_args()

    database_url = os.environ.get("DATABASE_URL")
    if not database_url:
        raise SystemExit("DATABASE_URL is required")

    batch = json.loads(args.batch.read_text(encoding="utf-8"))

    required = {"batch_id", "target_language", "cefr", "curriculum_unit", "items"}
    missing = required.difference(batch)
    if missing:
        raise SystemExit(f"Missing required fields: {', '.join(sorted(missing))}")

    with psycopg.connect(database_url) as conn:
        with conn.cursor() as cur:
            cur.execute(
                "SELECT id FROM languages WHERE code = %s",
                (batch["target_language"],),
            )
            language = cur.fetchone()
            if not language:
                raise SystemExit(f"Unknown language: {batch['target_language']}")

            cur.execute(
                "SELECT id FROM cefr_levels WHERE code = %s",
                (batch["cefr"],),
            )
            level = cur.fetchone()
            if not level:
                raise SystemExit(f"Unknown CEFR level: {batch['cefr']}")

            cur.execute(
                """
                SELECT id
                FROM curriculum_units
                WHERE target_language_id = %s
                  AND cefr_level_id = %s
                  AND slug = %s
                """,
                (language[0], level[0], batch["curriculum_unit"]),
            )
            curriculum_unit = cur.fetchone()
            if not curriculum_unit:
                raise SystemExit(
                    f"Unknown curriculum unit: {batch['curriculum_unit']}"
                )

            cur.execute(
                """
                INSERT INTO generation_jobs (
                    job_type,
                    target_language_id,
                    cefr_level_id,
                    parameters,
                    status,
                    started_at
                )
                VALUES ('content_batch_import', %s, %s, %s::jsonb, 'running', now())
                RETURNING id
                """,
                (
                    language[0],
                    level[0],
                    json.dumps(
                        {
                            "batch_id": batch["batch_id"],
                            "curriculum_unit": batch["curriculum_unit"],
                            "generator": batch.get("generator"),
                        },
                        ensure_ascii=False,
                    ),
                ),
            )
            job_id = cur.fetchone()[0]

            inserted = 0
            skipped = 0

            for item in batch["items"]:
                kind = item["kind"]
                payload = {
                    "batch_id": batch["batch_id"],
                    "target_language": batch["target_language"],
                    "cefr": batch["cefr"],
                    "curriculum_unit": batch["curriculum_unit"],
                    "external_id": item.get("external_id"),
                    "data": item["data"],
                }
                fp = fingerprint(kind, payload)

                cur.execute(
                    """
                    INSERT INTO generated_content (
                        generation_job_id,
                        content_kind,
                        payload,
                        fingerprint,
                        status
                    )
                    VALUES (%s, %s, %s::jsonb, %s, 'generated')
                    ON CONFLICT (fingerprint) WHERE fingerprint IS NOT NULL DO NOTHING
                    RETURNING id
                    """,
                    (job_id, kind, json.dumps(payload, ensure_ascii=False), fp),
                )

                if cur.fetchone():
                    inserted += 1
                else:
                    skipped += 1

            cur.execute(
                """
                UPDATE generation_jobs
                SET status = 'completed',
                    completed_at = now(),
                    stats = %s::jsonb
                WHERE id = %s
                """,
                (
                    json.dumps(
                        {"inserted": inserted, "skipped_duplicates": skipped}
                    ),
                    job_id,
                ),
            )

        conn.commit()

    print(
        json.dumps(
            {
                "batch_id": batch["batch_id"],
                "inserted": inserted,
                "skipped_duplicates": skipped,
            },
            ensure_ascii=False,
        )
    )


if __name__ == "__main__":
    main()
