# Nova Database v9 Audit

Audit date: 2026-09-04  
Canonical source: `SalehAkaJim/chatgpt` / `main`  
Database implementation revision: **v9.1.1**

Runtime requirement: **MySQL 8.0.21 or newer**. The baseline is used for
enforced `CHECK` constraints, windowed JSON aggregation, generated identity
hashes and `JSON_TABLE` validation.

## Recovered checkpoint

- A1 and A2 are complete through Series 080.
- B1 begins at Series 081. Its live generation status is controlled by
  `nova/production_state.json`, not by this database audit snapshot.
- The exact historical archive is now stored at
  `nova/archive/nova_v9_production_series_001_080_fixed.zip`.
- Its SHA-256 is
  `11e5b8834dcee6002ccf6981650069309ba9df0bdb10063b82fcc5dfb293e8c2`
  and its size is 502,504 bytes, exactly matching the prior canonical manifest.
- All 105 archive members are also stored as searchable source files under
  `nova/archive/series_001_080_fixed/extracted/`.

The independent static scan in
`nova/archive/series_001_080_fixed/FULL_SCAN_REPORT.json` passed with no errors
or warnings. It verified safe ZIP paths, UTF-8/JSON readability, exact Series
001-080 coverage, canonical revisions, transactional guards, ordered
dependencies, lesson/turn/activity structure, token-to-dictionary matches and
the bundled audit report.

| Canonical content | Count |
|---|---:|
| Levels | 2 |
| Modules | 16 |
| Chapters / Series | 80 |
| Lessons | 320 |
| Turns | 1,524 |
| Token objects | 3,826 |
| Activities | 2,275 |
| Lesson-word rows | 3,260 |
| Explicit targets | 244 |
| Unique word/phrase tuples | 377 |
| Characters | 24 |
| Storylines | 51 |

The archive exactly matches all 377 word-state tuples and their target history,
and all 24 character-state records. It also exposed two stale storyline summary
rows: `anna-jonas-couple` and `lena-ben-language-class` begin at order 1 in
Series 001, not order 3 in Series 004. Their GitHub snapshot rows are corrected
in this revision without changing the storyline count or max order.

## Audit result

The original v9.0 schema represented the course content, but was not sufficient
as the only backend/UI contract. v9.1.1 preserves compatibility with all
historical INSERTs and adds deterministic identity and ordering, archive/batch
lineage, cacheable runtime payloads and provider-neutral learner progress.

| Area | v9.0 finding | v9.1.1 resolution |
|---|---|---|
| Hierarchy | Duplicate sibling order values were possible | Unique sibling order keys and range checks |
| Stable identity | Most content relied on auto-increment IDs | Stable keys plus a generated canonical word-tuple hash |
| Historical restore | Exact A1/A2 SQL was absent from GitHub | Exact ZIP, extracted sources, hashes, manifest and repeatable scanner |
| Legacy metadata | Old INSERTs cannot populate new keys/history | Idempotent post-import migration with exact backfills |
| Batch publishing | Five-by-eight lineage was not represented | Ten `content_batches` records linked to the canonical archive |
| Runtime story | Aggregate order was undefined | Ordered window aggregation in `v_lesson_story` |
| Runtime payload | Story content repeated for each activity | One-row `v_lesson_runtime` payload |
| Token lookup | Initial v9.1 draft assumed nonexistent `wordId` tokens | Validator and lookup use the real tuple contract |
| Activities | Source rules did not match canonical meaning-choice variants | Database and validator accept exactly one turn or word source |
| Progress | No learner state existed | Learner, enrollment, session, lesson, activity and word progress tables |
| Validation | QA lived only in generation reports | Executable cross-table validation in `validate_database_v9.sql` |

## Runtime contracts

### Immutable lesson payload

The backend loads a complete, cacheable lesson row with:

```sql
SELECT * FROM v_lesson_runtime WHERE lesson_id = ?;
```

The payload includes the ordered hierarchy path, declared characters, turns,
activities and lesson dictionary. Learner state is intentionally queried
separately so content can be cached by lesson ID and `content_version`.

### Canonical token contract

`turns.tokens` is a display-order JSON array. Every token in Series 001-080 is
self-contained and has these required fields:

```json
{
  "surface": "habe",
  "lemma": "haben",
  "translation": "داشتن",
  "partOfSpeech": "verb"
}
```

Observed optional fields are `meaning`, `form` and `suffix`. Punctuation is
stored in `suffix`; there are no standalone punctuation tokens and no numeric
`wordId` in the historical payload. A click resolves against the unique
`(course, lemma, part_of_speech, translation)` identity. The lesson dictionary
is already included in the runtime payload, and
`runtime_catalog_queries_v9.sql` also demonstrates a server-side fallback.

### Activity source contract

- `listen`, `speak` and `word_order` reference one `turn_id` and no `word_id`.
- `new_word` references one `word_id` and no `turn_id`.
- `meaning_choice` references exactly one of `turn_id` or `word_id`; the archive
  contains both valid modes.
- `reading_comprehension` references neither and carries its learner task in
  `prompt` plus `config`.
- Choice tasks require a question, at least two choices and an in-range
  `correctIndex`.
- A `speak` activity references a learner turn.

### Word identity and history

Words are never resolved by lemma alone. The schema generates a SHA-256 identity
from the exact lemma, part of speech and translation tuple, and enforces its
uniqueness within a course. `sense_key` remains available for application-level
meaning labels. The post-import migration backfills the exact introduction and
explicit-target history represented by the canonical state files.

### Learner identity

Nova stores no password. `learners.auth_provider` plus
`learners.external_subject` stores the stable identity issued by the future
authentication provider, keeping the data model independent from that product
choice.

## Installation, upgrade and verification order

### Clean installation

For a new or intentionally reset A1/A2 development database:

1. Run `reset_all_v9.sql` only when a destructive reset is explicitly intended.
2. Run `schema_v9.sql`.
3. Run `de_fa_base_seed_v9.sql`.
4. Import the 80 canonical Series SQL files from the extracted archive in
   numeric Series order, using the corrected r2/r3 files already present.
5. Run `migrate_canonical_a1_a2_v9_1.sql`.
6. Run `validate_database_v9.sql`; every violation count must be zero.
7. Exercise `runtime_lesson_query_v9.sql` and
   `runtime_catalog_queries_v9.sql` with bound application parameters.

### Existing v9.0 database with Series 001-080 already imported

`schema_v9.sql` is a clean-install schema; it is not an in-place `ALTER`
script. Running only `migrate_canonical_a1_a2_v9_1.sql` against a v9.0 schema
fails because columns such as `courses.course_key` do not exist yet.

For the existing canonical database, preserve the content and use this order:

1. Take a database backup.
2. Run `upgrade_existing_v9_0_to_v9_1_1.sql` once. It adds the v9.1.1
   columns, keys, constraints, runtime views, content-batch table and empty
   learner-progress tables without deleting A1/A2 content.
3. Run `migrate_canonical_a1_a2_v9_1.sql` to backfill stable keys, Series and
   batch lineage, dictionary order and exact word-target history.
4. Run `validate_database_v9.sql`; every `violations` value must be zero.
5. Exercise both runtime query files with bound application parameters.

Do not apply isolated column fixes after a migration error: the v9.1.1
migration depends on the complete schema bridge, not only `course_key`.

The repository scanner and SQL parser checks pass. A live MySQL restore and
execution of step 6 was not run in the current environment because no MySQL
server/client is available. This is the remaining database verification gate;
it is no longer blocked by missing content artifacts.

The archived `nova_schema_v9.sql`, seed, reset and runtime query under the
extracted directory are historical v9.0 inputs. New implementation must use the
current files in `nova/database/`.
