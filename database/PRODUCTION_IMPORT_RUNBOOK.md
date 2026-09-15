# Production Database Import Runbook

**Authoritative import order for the current Nova reference implementation**  
Updated: **2026-09-15**  
Database target: **MySQL 9.0.1**

Language generation and non-English production rollout are currently paused. English (`fa-en-us`) is the reference implementation for canonical lexical identity, tap-to-explain links, lesson delivery, API payloads and frontend integration.

The previous multilingual runbook is preserved at `database/PRODUCTION_IMPORT_RUNBOOK_LEGACY_2026-09-14.md`. Do not use the legacy per-language sequence for a new production database while the reference architecture is being finalized.

## 1. Build the empty schema

Import these SQL files in this exact order:

```text
database/schema.sql
database/migrations/001_curriculum.sql
database/migrations/002_multilingual_core.sql
database/migrations/003_lesson_item_lexemes.sql
database/migrations/004_level_import_audio.sql
database/migrations/005_writing_exercises.sql
database/migrations/006_lexical_annotations.sql
database/migrations/007_lesson_delivery.sql
```

Migration 007 is part of the required baseline. It adds the learner-facing delivery graph, normalized dialogue-turn translations, variant-aware dialogue uniqueness, and stronger lexical annotation target integrity.

## 2. Load shared seeds and the English course

Import the shared seed files needed by the existing English curriculum:

```text
database/seed/cefr.sql
database/seed/languages.sql
database/seed/skills-topics.sql
database/seed/language-variants-courses.sql
```

Then import all English curriculum seeds:

```text
database/seed/english-prea1-curriculum.sql
database/seed/english-a1-curriculum.sql
database/seed/english-a2-curriculum.sql
database/seed/english-b1-curriculum.sql
database/seed/english-b2-curriculum.sql
database/seed/english-c1-curriculum.sql
database/seed/english-c2-curriculum.sql
```

## 3. Preflight the complete English reference chain

From the repository root with Python dependencies installed:

```bash
python database/import/en/reference.py --dry-run --require-approved
```

This validates the dictionary, every English production batch, the educational approval gate, deterministic lesson delivery, and lexical sidecars without writing canonical content rows.

## 4. Materialize English canonical content

Configure the database with `DATABASE_URL` or the existing `MYSQL_*` environment variables, then run:

```bash
python database/import/en/reference.py --require-approved
```

This is the authoritative English content importer. It performs, in order:

1. app-wide English dictionary import;
2. Pre-A1 through C2 canonical content materialization;
3. canonical batch-independent lexeme/word-form identity for English;
4. lesson delivery-step materialization;
5. normalized dialogue-turn translations;
6. lexical tap-to-explain annotation materialization after all source rows exist.

Do not run the legacy English level entrypoints in addition to `reference.py` for the same fresh build.

## 5. Load existing English audio metadata

The reference importer does not regenerate paid TTS. After canonical content is present, import the existing English audio metadata SQL files for the levels you are deploying:

```text
database/import/en/pre_a1_audio.sql
database/import/en/a1_audio.sql
database/import/en/a2_audio.sql
database/import/en/b1_audio.sql
database/import/en/b2_audio.sql
database/import/en/c1_audio.sql
database/import/en/c2_audio.sql
```

The lesson API resolves audio by canonical entity ID first and falls back to `source_text_hash`. This preserves compatibility with already-generated audio while lexical identity is standardized. A later metadata-only regeneration can remove that compatibility bridge without regenerating TTS audio.

## 6. Start and verify the lesson API

```bash
python -m api.server --host 127.0.0.1 --port 8787
```

Health check:

```text
GET /api/v1/health
```

Useful verification endpoints:

```text
GET /api/v1/courses/fa-en-us/levels/A1/lessons
GET /api/v1/lessons/a1-calendar-01?course=fa-en-us
```

Exercise answers are intentionally absent from lesson GET payloads. Grade a submitted answer through:

```text
POST /api/v1/exercises/{exercise_uuid}/grade
```

The frontend payload contract is documented in `docs/english-reference-implementation.md` and validated by `api/lesson-payload.schema.json`.

## 7. Release rule

Do not resume language-by-language production imports until the English frontend consumes the v1 lesson payload successfully end to end. After that point, promote the proven identity/delivery contracts into the shared importer and migrate the paused languages one at a time.
