#!/usr/bin/env python3

import argparse
import hashlib
import json
import os
from pathlib import Path
from urllib.parse import parse_qs, unquote, urlparse

import mysql.connector
from jsonschema import Draft202012Validator


def fingerprint(kind: str, payload: dict) -> str:
    canonical = json.dumps(
        {"kind": kind, "payload": payload},
        ensure_ascii=False,
        sort_keys=True,
        separators=(",", ":"),
    )
    return hashlib.sha256(canonical.encode("utf-8")).hexdigest()


def mysql_config() -> dict:
    database_url = os.environ.get("DATABASE_URL")
    if database_url:
        parsed = urlparse(database_url)
        if parsed.scheme not in {"mysql", "mysql+mysqlconnector"}:
            raise SystemExit(
                "DATABASE_URL must use mysql:// or mysql+mysqlconnector://"
            )

        query = parse_qs(parsed.query)
        config = {
            "host": parsed.hostname or "127.0.0.1",
            "port": parsed.port or 3306,
            "user": unquote(parsed.username or ""),
            "password": unquote(parsed.password or ""),
            "database": parsed.path.lstrip("/"),
            "charset": query.get("charset", ["utf8mb4"])[0],
            "collation": query.get("collation", ["utf8mb4_0900_ai_ci"])[0],
            "autocommit": False,
        }
        if not config["database"]:
            raise SystemExit("DATABASE_URL must include a database name")
        return config

    database = os.environ.get("MYSQL_DATABASE")
    if not database:
        raise SystemExit(
            "Set DATABASE_URL or MYSQL_DATABASE/MYSQL_HOST/MYSQL_USER/MYSQL_PASSWORD"
        )

    return {
        "host": os.environ.get("MYSQL_HOST", "127.0.0.1"),
        "port": int(os.environ.get("MYSQL_PORT", "3306")),
        "user": os.environ.get("MYSQL_USER", "root"),
        "password": os.environ.get("MYSQL_PASSWORD", ""),
        "database": database,
        "charset": "utf8mb4",
        "collation": "utf8mb4_0900_ai_ci",
        "autocommit": False,
    }


def validate_batch(batch: dict, schema_path: Path) -> None:
    schema = json.loads(schema_path.read_text(encoding="utf-8"))
    validator = Draft202012Validator(schema)
    errors = sorted(validator.iter_errors(batch), key=lambda error: list(error.path))
    if not errors:
        return

    details = []
    for error in errors[:20]:
        location = ".".join(str(part) for part in error.path) or "<root>"
        details.append(f"{location}: {error.message}")
    raise SystemExit("Batch schema validation failed:\n- " + "\n- ".join(details))


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Import a generated content batch into MySQL staging tables."
    )
    parser.add_argument("batch", type=Path)
    parser.add_argument(
        "--schema",
        type=Path,
        default=Path(__file__).resolve().parents[1] / "content" / "batch.schema.json",
        help="Path to the generated-content JSON Schema.",
    )
    args = parser.parse_args()

    batch = json.loads(args.batch.read_text(encoding="utf-8"))
    validate_batch(batch, args.schema)

    conn = mysql.connector.connect(**mysql_config())
    try:
        cur = conn.cursor()
        try:
            cur.execute("SET time_zone = '+00:00'")
            cur.execute("SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci")

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

            # Keep UUID byte order identical to schema defaults:
            # UUID_TO_BIN(..., 1) / BIN_TO_UUID(..., 1).
            cur.execute("SELECT UUID_TO_BIN(UUID(), 1)")
            job_id = cur.fetchone()[0]

            cur.execute(
                """
                INSERT INTO generation_jobs (
                    id,
                    job_type,
                    target_language_id,
                    cefr_level_id,
                    parameters,
                    status,
                    started_at
                )
                VALUES (%s, 'content_batch_import', %s, %s, %s, 'running', CURRENT_TIMESTAMP(6))
                """,
                (
                    job_id,
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
                    VALUES (%s, %s, %s, %s, 'generated')
                    ON DUPLICATE KEY UPDATE fingerprint = fingerprint
                    """,
                    (
                        job_id,
                        kind,
                        json.dumps(payload, ensure_ascii=False),
                        fp,
                    ),
                )

                if cur.rowcount == 1:
                    inserted += 1
                else:
                    skipped += 1

            cur.execute(
                """
                UPDATE generation_jobs
                SET status = 'completed',
                    completed_at = CURRENT_TIMESTAMP(6),
                    stats = %s
                WHERE id = %s
                """,
                (
                    json.dumps(
                        {"inserted": inserted, "skipped_duplicates": skipped},
                        ensure_ascii=False,
                    ),
                    job_id,
                ),
            )

            conn.commit()
        except Exception:
            conn.rollback()
            raise
        finally:
            cur.close()
    finally:
        conn.close()

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
