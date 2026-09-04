# Nova Database v9 Audit

Audit date: 2026-09-04  
Canonical source reviewed: `SalehAkaJim/chatgpt` / `main`  
Database revision produced by this audit: **v9.1.0**

Runtime requirement: **MySQL 8.0.21 or newer**. This baseline is required for
enforced `CHECK` constraints, ordered window use with `JSON_ARRAYAGG`, and the
current `JSON_TABLE` null/error behavior:

- https://dev.mysql.com/doc/refman/8.0/en/create-table-check-constraints.html
- https://dev.mysql.com/doc/refman/8.0/en/aggregate-functions.html#function_json-arrayagg
- https://dev.mysql.com/doc/refman/8.0/en/json-table-functions.html

## Recovered checkpoint

- A1 and A2 are complete through Series 080.
- B1 begins at Series 081, but content production is frozen.
- Production unit: one atomic chapter containing four lessons.
- Publication unit: one SQL artifact containing eight chapters.
- One level contains forty chapters in five artifacts.
- Canonical resume state contains 377 word/phrase tuples, 244 explicit targets,
  24 characters and 51 storylines.

## Audit result

The original v9.0 schema represented the content hierarchy, but was not ready to
be the only contract used by a backend and UI. It lacked deterministic ordering
constraints, stable optional keys, content-batch lineage, a complete one-row
runtime payload, full-lesson audio, language direction/locale metadata, and all
learner progress/attempt tables.

v9.1.0 keeps every original v9 table and column and adds the missing contracts.
Legacy v9 content INSERTs remain structurally compatible because new content
columns are nullable or have defaults.

| Area | v9.0 finding | v9.1 resolution |
|---|---|---|
| Hierarchy | Duplicate sibling `sort_order` values were possible | Unique sibling order keys and range checks |
| Stable identity | Content relied mainly on auto-increment IDs | Optional stable keys for course, level, module, chapter, lesson, turn, activity and word |
| Batch publishing | Five-by-eight artifact model was not represented | `content_batches` with ranges, checksum, commit, QA report and publish state |
| Runtime story | `JSON_ARRAYAGG` order was undefined | Ordered window aggregation in `v_lesson_story` |
| Runtime payload | Story repeated once per activity row | Cacheable one-row `v_lesson_runtime` payload |
| Lesson audio | Only turn audio existed | Optional full-lesson audio URL and duration |
| Dictionary | Related words, homographs and future scripts were incomplete | Related-word JSON, `sense_key`, pronunciation hint and romanization |
| Activities | Missing translated UI fields and scoring metadata | Translation, required flag, score and duration fields |
| Progress | No learner state existed | Provider-neutral learner, enrollment, session, lesson, activity and word progress tables |
| Validation | QA rules lived only in pipeline text | Executable `validate_database_v9.sql` checks |
| Runtime navigation | No catalog/resume queries | `v_lesson_path` and `runtime_catalog_queries_v9.sql` |

## Runtime contracts

### Immutable content payload

The backend loads one lesson with:

```sql
SELECT * FROM v_lesson_runtime WHERE lesson_id = ?;
```

The row contains hierarchy labels, both declared characters, ordered story
turns, ordered activities, and the lesson dictionary. Learner data is excluded
so this payload can be cached by lesson ID and `content_version`.

### Token contract

`turns.tokens` is a JSON array in display order. Every lexical token must have:

```json
{"text":"...","wordId":123}
```

Punctuation-only tokens may omit `wordId` only when they contain
`"isPunctuation": true`. `validate_database_v9.sql` verifies that lexical
`wordId` values exist and belong to the same course.

### Activity source contract

- `listen`, `speak`, and `word_order` reference a `turn_id`.
- `new_word` and `meaning_choice` reference a `word_id`.
- `speak` references a learner turn.
- `reading_comprehension` has both a prompt and a learner instruction.
- Every referenced activity word also exists in `lesson_words`.

### Word identity

Words are selected by numeric ID or stable `word_key`, never by lemma alone.
`sense_key` distinguishes a lemma with multiple meanings or grammatical uses.
This preserves the canonical tuples instead of incorrectly merging homographs.

### Learner identity

Nova stores no password. The pair `learners.auth_provider` and
`learners.external_subject` stores the stable identity issued by whichever
authentication provider is selected during backend work. This keeps the
database independent from that future decision.

## Import and verification order

For a clean development database:

1. `reset_all_v9.sql` only when a destructive reset is explicitly intended.
2. `schema_v9.sql`.
3. `de_fa_base_seed_v9.sql`.
4. Canonical A1/A2 batch artifacts in Series order.
5. `validate_database_v9.sql`; every violation count must be zero.
6. Use `runtime_lesson_query_v9.sql` and `runtime_catalog_queries_v9.sql` as
   executable examples, replacing session variables with bound parameters.

## Remaining restore blocker

The repository manifest identifies ten canonical A1/A2 compressed batch files
and their checksums, but those files and the source ZIP are not present in the
GitHub tree. The GitHub state is sufficient to resume future generation, but a
fresh database cannot restore the completed A1/A2 lessons from GitHub alone.

Do not regenerate those lessons. The exact historical archive must be recovered,
verified against SHA-256
`11e5b8834dcee6002ccf6981650069309ba9df0bdb10063b82fcc5dfb293e8c2`, and
then added as the ten text-safe `.sql.gz.b64` artifacts already named in
`nova/migration/migration_manifest.json`.

Until that happens, schema/runtime/UI implementation can proceed against fixture
data, but full A1/A2 restore testing remains blocked.
