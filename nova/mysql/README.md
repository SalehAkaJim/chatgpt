# Nova MySQL import order — fresh v3

Canonical manifest: [`import_order_v3.json`](./import_order_v3.json).

The active dataset on `main` starts from zero. The previous dataset is preserved only on branch `archive/nova-pre-v3-reset-2026-09-07` and must never be imported into the fresh native-v3 database.

## Core — always first

1. [`reset_all_v10.sql`](../database/reset_all_v10.sql)
2. [`schema_v9.sql`](../database/schema_v9.sql)
3. [`semantic_layer_v10.sql`](../database/semantic_layer_v10.sql)

## Published German → Persian chapters

1. `DE-CH-0001` — Series 1 — A1 — [`chapter.sql`](../courses/de-fa/staging/batch_01/chapter_0001/chapter.sql)

## Published English → Persian chapters

1. `EN-CH-0001` — Series 1 — A1 — [`chapter.sql`](../courses/en-fa/staging/batch_01/chapter_0001/chapter.sql)
2. `EN-CH-0002` — Series 2 — A1 — [`chapter.sql`](../courses/en-fa/staging/batch_01/chapter_0002/chapter.sql)
3. `EN-CH-0003` — Series 3 — A1 — [`chapter.sql`](../courses/en-fa/staging/batch_01/chapter_0003/chapter.sql)

## Localized course metadata repair

Run this after the published Chapter SQL files and before audio updates:

1. [`course_metadata_v3.sql`](./course_metadata_v3.sql)

This idempotent repair keeps `courses`, `levels`, `modules` and the currently published German Chapter metadata complete and localized correctly. It also repairs an already-imported database where English descriptions were NULL or German descriptions were accidentally stored in English.

## Audio updates

German → Persian:
- [`update_turn_audio.sql`](../audio/de-fa/update_turn_audio.sql)
- [`update_word_audio.sql`](../audio/de-fa/update_word_audio.sql)

English → Persian:
- [`update_turn_audio.sql`](../audio/en-fa/update_turn_audio.sql)
- [`update_word_audio.sql`](../audio/en-fa/update_word_audio.sql)

Only native-v3 Chapters with contract version 3.0.0 and real PASS evidence for foundation/native-v3 validation, linguistic audit, curriculum mapping, review ledger, MySQL 8 execution, Turn audio and eligible learning-unit/word audio may appear here. File presence or a QA flag by itself is never publication evidence.

There is no fixed Course or Level Chapter count. Series numbers are global course sequence only; Level boundaries and `active_level` come from curriculum/mastery state.

## Maintenance rule

This README is the human-readable import index for `nova/mysql`. After every publication-pointer reconciliation or newly published Chapter, it must be updated in the same change set as `import_order_v3.json`.

Every `.sql` entry in this README must be a relative Markdown link to the exact file on `main`; plain backticked SQL paths are not allowed. Published sequences must remain contiguous and must match the canonical manifest and course publication state.

Localized metadata is required: target-language `title`/`description` fields must be in the learning language, Persian translation fields must be complete, and new native-v3 generation must not leave structural descriptions NULL.

Current English state is reconciled through Series 3: `generated_through_series = 3`, `published_through_series = 3`, `last_completed_series = 3`, and the next generation Series is 4.
