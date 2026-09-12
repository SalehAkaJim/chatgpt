# Language Learning Core

Fresh start for a multilingual language-learning platform.

## Goal
Build one canonical content system that can support multiple learning languages, multiple learner-native languages, CEFR Pre-A1–C2, language-specific curricula, reusable semantic content, morphology, generated exercises, dialogue, listening, speaking, and automated QA.

## Current foundation
- MySQL 9.0.1-first schema
- InnoDB + `utf8mb4`
- UUID primary keys stored as `BINARY(16)`
- CEFR Pre-A1–C2
- Concept-centered multilingual model
- Course-centered curriculum (`learner language -> target language/variant`)
- Language variants such as `en-US`, `en-GB`, `ar-MSA`, `ar-EG`, `ar-LEV`
- Orthography profiles for script, direction, normalization and diacritics policy
- `lexeme -> word_forms` morphology model
- Reusable sentence/dialogue banks
- Lessons assembled from approved content
- Generated content goes through staging + validation before approval
- Audio stored as metadata/URLs, not binary database blobs

## Core hierarchy

```text
Course
  -> CEFR / Pre-A1
    -> Skill
      -> Topic
        -> Concept
          -> Lexeme -> Word Forms
          -> Utterance
          -> Dialogue
          -> Grammar
        -> Lesson
          -> Exercise
          -> Audio
```

A course is not the same thing as a language. For example:

- `fa-en-us` — English (US) for Persian speakers
- `fa-ar-msa` — Modern Standard Arabic for Persian speakers

Arabic dialects are separate variants and can receive separate courses/curricula rather than being treated as informal MSA.

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
All application timestamps are stored as UTC `DATETIME(6)`. Database sessions used by project scripts set `time_zone = '+00:00'`.

## Bootstrap order
Run these files in order:

1. `database/schema.sql`
2. `database/migrations/001_curriculum.sql`
3. `database/migrations/002_multilingual_core.sql`
4. `database/seed/cefr.sql`
5. `database/seed/languages.sql`
6. `database/seed/skills-topics.sql`
7. `database/seed/english-a1-curriculum.sql`
8. `database/seed/language-variants-courses.sql`
9. `database/seed/arabic-msa-prea1-curriculum.sql`

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

V2 batches may identify `course`, `learner_language`, `learner_variant`, and `target_variant`. Legacy V1 batches remain importable through the compatibility path.

The importer validates the batch JSON Schema, resolves course/language/variant/CEFR/curriculum references, creates a generation job, and deduplicates staged content by SHA-256 fingerprint.

## Repository layout
- `database/schema.sql` — MySQL 9.0.1 core relational schema
- `database/migrations/` — curriculum and multilingual schema extensions
- `database/seed/` — language, variant, course and curriculum bootstrap data
- `content/batch.schema.json` — contract for generated content batches
- `scripts/import_content.py` — MySQL staging importer
- `scripts/validate_content.py` — semantic content validator
- `docs/content-system.md` — content architecture and generation pipeline

## Archived previous project state
The repository state before this rebuild is preserved on:

`archive/pre-rebuild-2026-09-12`
