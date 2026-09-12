# Production Import Runbook

Validated against a clean **MySQL 9.0.1** instance on 2026-09-12.

Validation run: https://github.com/SalehAkaJim/chatgpt/actions/runs/34713647897

## Important release gate

The database/import chain is technically valid, but the English educational review gate is still pending for all 251 batches. Do **not** use `--allow-unreviewed` in production unless bypassing that review gate is an explicit decision. The technical preflight used it only to prove that the full data materializes correctly on MySQL 9.0.1.

## Production order — English

Run these in order.

### 1. Schema and migrations

1. [`database/schema.sql`](schema.sql)
2. [`database/migrations/001_curriculum.sql`](migrations/001_curriculum.sql)
3. [`database/migrations/002_multilingual_core.sql`](migrations/002_multilingual_core.sql)
4. [`database/migrations/003_lesson_item_lexemes.sql`](migrations/003_lesson_item_lexemes.sql)
5. [`database/migrations/004_level_import_audio.sql`](migrations/004_level_import_audio.sql)
6. [`database/migrations/005_writing_exercises.sql`](migrations/005_writing_exercises.sql)

### 2. Shared seeds and English curricula

7. [`database/seed/cefr.sql`](seed/cefr.sql)
8. [`database/seed/languages.sql`](seed/languages.sql)
9. [`database/seed/skills-topics.sql`](seed/skills-topics.sql)
10. [`database/seed/english-a1-curriculum.sql`](seed/english-a1-curriculum.sql)
11. [`database/seed/language-variants-courses.sql`](seed/language-variants-courses.sql)
12. [`database/seed/english-prea1-curriculum.sql`](seed/english-prea1-curriculum.sql)
13. [`database/seed/english-a2-curriculum.sql`](seed/english-a2-curriculum.sql)
14. [`database/seed/english-b1-curriculum.sql`](seed/english-b1-curriculum.sql)
15. [`database/seed/english-b2-curriculum.sql`](seed/english-b2-curriculum.sql)
16. [`database/seed/english-c1-curriculum.sql`](seed/english-c1-curriculum.sql)
17. [`database/seed/english-c2-curriculum.sql`](seed/english-c2-curriculum.sql)

### 3. English content importers

After the educational review gate is approved, run each importer in this order with its normal production approval requirement:

18. [`database/import/en/pre_a1.py`](import/en/pre_a1.py)
19. [`database/import/en/a1.py`](import/en/a1.py)
20. [`database/import/en/a2.py`](import/en/a2.py)
21. [`database/import/en/b1.py`](import/en/b1.py)
22. [`database/import/en/b2.py`](import/en/b2.py)
23. [`database/import/en/c1.py`](import/en/c1.py)
24. [`database/import/en/c2.py`](import/en/c2.py)

### 4. Educational fixes

25. [`database/import/en/educational_content_updates.sql`](import/en/educational_content_updates.sql)
26. [`database/import/en/educational_quality_updates.sql`](import/en/educational_quality_updates.sql)

### 5. Audio metadata

27. [`database/import/en/pre_a1_audio.sql`](import/en/pre_a1_audio.sql)
28. [`database/import/en/a1_audio.sql`](import/en/a1_audio.sql)
29. [`database/import/en/a2_audio.sql`](import/en/a2_audio.sql)
30. [`database/import/en/b1_audio.sql`](import/en/b1_audio.sql)
31. [`database/import/en/b2_audio.sql`](import/en/b2_audio.sql)
32. [`database/import/en/c1_audio.sql`](import/en/c1_audio.sql)
33. [`database/import/en/c2_audio.sql`](import/en/c2_audio.sql)

## Optional language seeds

These files were also executed successfully in the full MySQL 9.0.1 preflight, but they are **not required for the English production release**. Defer them unless the corresponding language should appear in production:

- [`database/seed/arabic-msa-prea1-curriculum.sql`](seed/arabic-msa-prea1-curriculum.sql)
- [`database/seed/german-a1-curriculum.sql`](seed/german-a1-curriculum.sql)

## Preflight results

- MySQL server: `9.0.1`
- SQL files tested one-by-one: `28`
- English level importers tested one-by-one: `7`
- Final lessons: `753`
- Final exercises: `11164`
- Final audio assets: `12208`
- Jack active audio rows with wrong voice: `0`
- Eli active audio rows with non-female voice metadata: `0`
- Liam distinct active voice IDs: `1`
- Idempotency: `753:11164:12208` before re-import and `753:11164:12208` after re-import
- Result: **PASS**

## Preflight-only note

The test used `--allow-unreviewed` only after separately confirming that the production `--require-approved` gate currently blocks all seven English levels. This bypass was used solely to test schema compatibility, referential integrity, materialization, update SQL, audio SQL, voice metadata, and idempotency. It is not the recommended production command while review status remains pending.
