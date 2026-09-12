# Language Learning Core

Fresh start for a multilingual language-learning platform.

## Goal
Build one canonical content system that can support multiple learning languages, multiple learner-native languages, CEFR A1–C2, reusable content, generated exercises, dialogue, listening, speaking, and automated QA.

## Current foundation
- MySQL 9.0.1-first schema
- InnoDB + `utf8mb4`
- UUID primary keys stored as `BINARY(16)`
- CEFR A1–C2
- Concept-centered multilingual model
- Reusable sentence/dialogue banks
- Lessons assembled from approved content
- Generated content goes through staging + validation before approval
- Audio stored as metadata/URLs, not binary database blobs

## UUID convention
UUIDs are stored in compact binary form. The project consistently uses MySQL's swap flag so indexed UUID values are stored more efficiently:

```sql
UUID_TO_BIN('uuid-string', 1)
BIN_TO_UUID(id, 1)
```

Schema-generated UUIDs use:

```sql
DEFAULT (UUID_TO_BIN(UUID(), 1))
```

## Time convention
MySQL has no PostgreSQL-style `timestamptz`, so all application timestamps are stored as UTC `DATETIME(6)`. Database sessions used by project scripts set `time_zone = '+00:00'`.

## Bootstrap order
Run these files in order:

1. `database/schema.sql`
2. `database/migrations/001_curriculum.sql`
3. `database/seed/cefr.sql`
4. `database/seed/languages.sql`
5. `database/seed/skills-topics.sql`
6. `database/seed/english-a1-curriculum.sql`

## Content importer
Install dependencies:

```bash
pip install -r requirements.txt
```

Set a MySQL connection URL:

```bash
export DATABASE_URL='mysql://user:password@127.0.0.1:3306/language_learning'
```

Then import a generated batch into staging:

```bash
python scripts/import_content.py path/to/batch.json
```

The importer validates the batch JSON Schema, verifies language/CEFR/curriculum references, creates a generation job, and deduplicates staged content by SHA-256 fingerprint.

## Repository layout
- `database/schema.sql` — MySQL 9.0.1 core relational schema
- `database/migrations/` — schema extensions
- `database/seed/` — curriculum/bootstrap data
- `content/batch.schema.json` — contract for generated content batches
- `scripts/import_content.py` — MySQL staging importer
- `docs/content-system.md` — content architecture and generation pipeline

## Archived previous project state
The repository state before this rebuild is preserved on:

`archive/pre-rebuild-2026-09-12`
