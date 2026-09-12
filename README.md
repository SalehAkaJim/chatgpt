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
- Language variants such as `en-US`, `en-GB`, `de-DE`, `ar-MSA`, `ar-EG`, `ar-LEV`
- Orthography profiles for script, direction, normalization and diacritics policy
- `lexeme -> word_forms` morphology model
- Lesson items can directly reference concepts, lexemes, word forms, utterances, dialogues, or grammar points
- Reusable sentence/dialogue banks
- Lessons assembled from approved content
- Generated content goes through staging + validation before approval
- One stable production import entrypoint per completed level
- Production audio for vocabulary, utterances and dialogue turns
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
- `fa-de-de` — Standard German for Persian speakers
- `fa-ar-msa` — Modern Standard Arabic for Persian speakers

Arabic dialects are separate variants and can receive separate courses/curricula rather than being treated as informal MSA.

## UUID convention
UUIDs are stored in compact binary form. The project consistently uses MySQL's swap flag so indexed UUID values are stored more efficiently:

```sql
UUID_TO_BIN('uuid-string', 1)
BIN_TO_UUID(id, 1)
```

Schema-generated IDs use:

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
4. `database/migrations/003_lesson_item_lexemes.sql`
5. `database/migrations/004_level_import_audio.sql`
6. `database/seed/cefr.sql`
7. `database/seed/languages.sql`
8. `database/seed/skills-topics.sql`
9. `database/seed/english-a1-curriculum.sql`
10. `database/seed/language-variants-courses.sql`
11. `database/seed/english-prea1-curriculum.sql`
12. `database/seed/english-a2-curriculum.sql`
13. `database/seed/english-b1-curriculum.sql`
14. `database/seed/english-b2-curriculum.sql`
15. `database/seed/english-c1-curriculum.sql`
16. `database/seed/english-c2-curriculum.sql`
17. `database/seed/arabic-msa-prea1-curriculum.sql`
18. `database/seed/german-a1-curriculum.sql`

The English A1 seed is intentionally loaded before courses for backward compatibility; the course seed attaches those existing A1 units to `fa-en-us`. New course-specific curricula such as English Pre-A1, A2, B1, B2, C1, C2, German, and Arabic are loaded after the course seed.

## English production status

English (US) for Persian speakers is production-complete from Pre-A1 through C2:

- **Pre-A1:** 10-unit curriculum and production content complete; production audio generated and validated.
- **A1:** 30-unit curriculum and production content complete; production audio generated and validated.
- **A2:** 36-unit curriculum and production content complete; production audio generated and validated.
- **B1:** 40-unit curriculum and production content complete; production audio generated and validated.
- **B2:** 45-unit curriculum and production content complete; production audio generated and validated.
- **C1:** 45-unit curriculum and production content complete; production audio generated and validated.
- **C2:** 45-unit curriculum and production content complete; production audio generated and validated.

The MySQL import integration and production pipeline validation cover the full English course through C2.

## Content staging importer
Install dependencies:

```bash
pip install -r requirements.txt
```

Set a MySQL connection URL:

```bash
export DATABASE_URL='mysql://user:password@127.0.0.1:3306/language_learning'
```

Import a generated batch into staging:

```bash
python scripts/import_content.py path/to/batch.json
```

V2 batches may identify `course`, `learner_language`, `learner_variant`, and `target_variant`. Legacy V1 batches remain importable through the compatibility path.

The staging importer validates the batch JSON Schema, resolves course/language/variant/CEFR/curriculum references, creates a generation job, and deduplicates staged content by SHA-256 fingerprint.

## Final level imports

The production JSON batches remain the source of truth while a level is being built. Once a level is ready, use one stable entrypoint for the entire level instead of importing lesson files manually.

Current English entrypoints:

```bash
python database/import/en/pre_a1.py --dry-run
python database/import/en/a1.py --dry-run
python database/import/en/a2.py --dry-run
python database/import/en/b1.py --dry-run
python database/import/en/b2.py --dry-run
python database/import/en/c1.py --dry-run
python database/import/en/c2.py --dry-run
```

Remove `--dry-run` to materialize the complete level into canonical tables. Level imports are idempotent and run inside a transaction. They also validate/sync the explicit character cast before dialogue rows are imported.

Validated relative-path audio SQL exports are available alongside the level importers for every completed English level from Pre-A1 through C2.

When a new level is completed, add exactly one corresponding entrypoint under `database/import/<language>/` that points at the full production level directory.

## Production audio

Audio is derived from approved content and is generated for:

1. learnable words / word forms,
2. target-language utterances and sentences,
3. every dialogue turn.

For `en-US`, lexical audio uses the fixed **Lori** voice. Neutral sentence narration also currently uses Lori with sentence-specific delivery settings. Dialogue characters use the explicit cast in `audio/cast/en-US.json`; a character without a cast profile blocks generation instead of falling back to a random voice.

Character voices are persistent and distinct. The generator verifies configured voice labels, locks the resolved provider voice ID, and prevents two dialogue characters from resolving to the same provider voice. English profiles target clear General American pronunciation.

Build a deterministic level manifest, for example:

```bash
python scripts/build_audio_manifest.py content/production/en/C2 \
  --level C2 \
  --locale en-US \
  --strict-characters \
  --output audio/manifests/en/C2.json
```

Before spending any TTS credits, run the provider voice preflight:

```bash
export ELEVENLABS_API_KEY='...'
python scripts/resolve_audio_voices.py audio/manifests/en/C2.json \
  --write-lock
```

This step does not generate speech. It verifies that Lori and every required dialogue voice can be resolved against the connected ElevenLabs account, enforces required voice labels and character-voice uniqueness, and stores the resolved provider voice IDs in `audio/voices/en-US.lock.json` when `--write-lock` is used. The same preflight can also be run manually through the `Audio Voice Preflight` GitHub Actions workflow.

Only after preflight succeeds, generate paid ElevenLabs audio with explicit confirmation:

```bash
python scripts/generate_audio.py audio/manifests/en/C2.json \
  --confirm-paid-generation
```

Per-level GitHub Actions workflows require explicit paid-generation confirmation before calling ElevenLabs.

The generator reuses unchanged audio. Each MP3 receives a sidecar containing source hash, file hash, voice ID/name, voice key, provider model, settings, output format, duration and generation time.

Run strict QA before database linking:

```bash
python scripts/validate_audio_manifest.py audio/manifests/en/C2.json \
  --require-generated
```

Then link the QA-passed assets into `audio_assets`:

```bash
python scripts/import_audio_manifest.py audio/manifests/en/C2.json
```

The default linked state is `validated`, not `approved`. A changed source text creates a new audio identity and older audio for the same entity/voice is archived so stale audio cannot remain active.

The canonical audio flow is therefore:

```text
approved content
  -> strict manifest
  -> provider voice preflight + voice lock
  -> paid TTS generation
  -> generated-audio QA
  -> audio_assets linking
  -> optional human listening approval
```

## Repository layout
- `database/schema.sql` — MySQL 9.0.1 core relational schema
- `database/migrations/` — curriculum, multilingual, final-level and audio schema extensions
- `database/seed/` — language, variant, course and curriculum bootstrap data
- `database/import/` — one final production import entrypoint per completed level plus validated audio SQL exports
- `content/batch.schema.json` — contract for generated content batches
- `content/production/` — approved level source batches
- `audio/cast/` — explicit character persona + logical voice profile assignments
- `audio/voices/` — provider voice selection rules and persistent voice locks
- `audio/manifests/` — deterministic per-level TTS manifests
- `audio/generated/` — generated production audio and metadata sidecars
- `scripts/import_content.py` — MySQL staging importer
- `scripts/materialize_level.py` — canonical level materializer
- `scripts/validate_content.py` — semantic content validator
- `scripts/build_audio_manifest.py` — derives reusable word/sentence/dialogue TTS work
- `scripts/resolve_audio_voices.py` — zero-TTS provider preflight + persistent voice lock resolver
- `scripts/generate_audio.py` — guarded ElevenLabs generator
- `scripts/validate_audio_manifest.py` — stale/hash/decode/voice-collision QA
- `scripts/import_audio_manifest.py` — canonical `audio_assets` linker
- `docs/content-system.md` — content architecture and generation pipeline
