# Nova MySQL import order — fresh v3

Canonical manifest: `import_order_v3.json`.

The active dataset on `main` starts from zero. The previous dataset is preserved only on branch `archive/nova-pre-v3-reset-2026-09-07` and must never be imported into the fresh native-v3 database.

## Core — always first

1. `nova/database/reset_all_v10.sql`
2. `nova/database/schema_v9.sql`
3. `nova/database/semantic_layer_v10.sql`

## Published German → Persian chapters

1. `DE-CH-0001` — Series 1 — A1 — `nova/courses/de-fa/staging/batch_01/chapter_0001/chapter.sql`

Then apply:
- `nova/audio/de-fa/update_turn_audio.sql`
- `nova/audio/de-fa/update_word_audio.sql`

## Published English → Persian chapters

1. `EN-CH-0001` — Series 1 — A1 — `nova/courses/en-fa/staging/batch_01/chapter_0001/chapter.sql`
2. `EN-CH-0002` — Series 2 — A1 — `nova/courses/en-fa/staging/batch_01/chapter_0002/chapter.sql`
3. `EN-CH-0003` — Series 3 — A1 — `nova/courses/en-fa/staging/batch_01/chapter_0003/chapter.sql`

Then apply:
- `nova/audio/en-fa/update_turn_audio.sql`
- `nova/audio/en-fa/update_word_audio.sql`

Only native-v3 Chapters with contract version 3.0.0 and real PASS evidence for foundation/native-v3 validation, linguistic audit, curriculum mapping, review ledger, MySQL 8 execution, Turn audio and eligible learning-unit/word audio may appear here. File presence or a QA flag by itself is never publication evidence.

There is no fixed Course or Level Chapter count. Series numbers are global course sequence only; Level boundaries and `active_level` come from curriculum/mastery state.

Current reconciliation note: English production/course-learning state still records `published_through_series = 1`, while Series 2 and 3 now have complete publication evidence and are therefore present in the install manifest. This mismatch is recorded in `import_order_v3.json` and should be removed only when the course publication pointers are independently reconciled. German state and manifest both publish through Series 1.
