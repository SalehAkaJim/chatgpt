# Content System

## Core principle
The database is concept-centered, not lesson-centered. Lessons consume approved reusable content; they are not the canonical source of words, meanings, sentences, grammar, or dialogues.

## Database foundation
The canonical database target is **MySQL 9.0.1** using InnoDB and `utf8mb4`.

UUID primary keys are stored as `BINARY(16)` and use the MySQL swap convention consistently:

```sql
UUID_TO_BIN(uuid_string, 1)
BIN_TO_UUID(id, 1)
```

Schema-generated IDs use `DEFAULT (UUID_TO_BIN(UUID(), 1))`.

All application timestamps are UTC `DATETIME(6)`. Project database sessions set `time_zone = '+00:00'`.

Native MySQL `JSON` columns are used for flexible metadata, generation payloads, validation results, prompts, answers, and similar structured data.

## Learning hierarchy
Language -> CEFR level -> Skill -> Topic -> Concept -> Content -> Lesson -> Exercise

The app UI may hide most of this hierarchy and only expose the learner's next lesson and progress.

## Canonical content banks
1. Concepts and localized lexical forms
2. Sentences and translations
3. Grammar points and localized explanations
4. Dialogues and dialogue turns
5. Characters/personas
6. Lessons and lesson items
7. Exercises and answer options
8. Audio metadata

## Generation pipeline
1. Curriculum generation
2. Concept generation
3. Vocabulary/localization generation
4. Sentence generation
5. Dialogue generation
6. Exercise generation
7. Translation/localization
8. Automated validation
9. Human/AI review when required
10. Approval into production content

## Content lifecycle
`generated -> validated -> approved`

Any item may instead become `rejected` or return to `generated` after revision.

## Automated QA gates
- duplicate/near-duplicate detection
- language/script detection
- required translation coverage
- CEFR plausibility
- grammar and spelling checks
- naturalness check
- answer ambiguity detection
- multiple-correct-answer detection
- dialogue role consistency
- character consistency
- topic/concept coverage
- prohibited leakage of the answer in prompts
- audio/text consistency

## MySQL integrity notes
MySQL 9.0.1 enforces normal foreign keys, unique indexes, native JSON validation, and supported `CHECK` constraints.

One deliberate exception is `lesson_items`: the content pipeline must enforce that exactly one of `concept_id`, `utterance_id`, `dialogue_id`, or `grammar_point_id` is populated. This invariant is kept outside a multi-column `CHECK` because MySQL restricts `CHECK` constraints involving columns that participate in foreign-key referential actions.

`generated_content.fingerprint` is nullable and unique. MySQL permits multiple `NULL` values in a unique index, so this directly replaces the previous PostgreSQL partial unique-index behavior.

## Multilingual strategy
Every semantic unit receives a stable concept/content ID. Localized forms attach to that ID. This avoids creating separate disconnected databases for every language pair.

Example:

concept: `airport`
- en: airport
- de: Flughafen
- es: aeropuerto
- fr: aéroport
- fa: فرودگاه

## Lesson strategy
Lessons should be lightweight assemblies of approved content. A sentence or dialogue can generate several exercise variants without duplicating the source content.

Initial exercise families:
- dialogue comprehension
- listening
- speaking/read-aloud
- sentence building
- translation/meaning matching
- fill in the blank

## Audio strategy
Store only metadata in MySQL: source content ID, language, voice, provider, URL/path, duration, status, and checksum. Audio files live in object storage or a repository/CDN.

## Staging strategy
Generators do not write directly to canonical production content. Generated batches are first written into `generation_jobs` and `generated_content`.

The Python importer:
- validates `content/batch.schema.json`
- resolves the target language, CEFR level, and curriculum unit
- computes a deterministic SHA-256 fingerprint
- skips already-staged fingerprints
- records import statistics on the generation job

## Scaling target
The model is designed to support thousands of concepts, tens of thousands of sentences, thousands of dialogues, and hundreds of thousands of generated exercises while retaining traceability back to canonical source content.
