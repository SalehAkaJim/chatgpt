# Nova MySQL import order — native v3.1 foundation

Canonical manifest: [`import_order_v3.json`](./import_order_v3.json).

The active dataset on `main` starts from zero. Archive/v2 data is never an active input.

## Core — always first

1. [`reset_all_v10.sql`](../database/reset_all_v10.sql)
2. [`schema_v9.sql`](../database/schema_v9.sql)
3. [`semantic_layer_v10.sql`](../database/semantic_layer_v10.sql)
4. [`foundation_seed_v3.sql`](../database/foundation_seed_v3.sql)
5. [`audio_contract_v3.sql`](../database/audio_contract_v3.sql)

`semantic_layer_v10.sql` now creates physical semantic tables with the `sem_` prefix. The old unprefixed semantic names exist only as updatable compatibility **views** for generated Series 1–3; Series 4+ must use `sem_*` directly.

`audio_contract_v3.sql` assigns `words.audio_url` and `turns.audio_url` during the original INSERT. TTS only creates the MP3 at that already-known path. There are no post-import `update_turn_audio.sql` or `update_word_audio.sql` steps anymore.

## Generated German → Persian staging

These Series are generated and contiguous but are temporarily pending re-publication against the rewritten foundation:

1. `DE-CH-0001` — Series 1 — A1 — [`chapter.sql`](../courses/de-fa/staging/batch_01/chapter_0001/chapter.sql)
2. `DE-CH-0002` — Series 2 — A1 — [`chapter.sql`](../courses/de-fa/staging/batch_01/chapter_0002/chapter.sql)
3. `DE-CH-0003` — Series 3 — A1 — [`chapter.sql`](../courses/de-fa/staging/batch_01/chapter_0003/chapter.sql)

## Generated English → Persian staging

1. `EN-CH-0001` — Series 1 — A1 — [`chapter.sql`](../courses/en-fa/staging/batch_01/chapter_0001/chapter.sql)
2. `EN-CH-0002` — Series 2 — A1 — [`chapter.sql`](../courses/en-fa/staging/batch_01/chapter_0002/chapter.sql)
3. `EN-CH-0003` — Series 3 — A1 — [`chapter.sql`](../courses/en-fa/staging/batch_01/chapter_0003/chapter.sql)

## Publication state

The v3.1 foundation rewrite intentionally invalidates the old MySQL/audio publication evidence because schema naming and audio locators changed. `generated_through_series` stays at 3 for both courses and `next_series` stays 4; `published_through_series` is reset to 0 until the rewritten foundation passes Content Quality + MySQL8 + Turn Audio + eligible Word/Learning-unit Audio again in strict order.

## Maintenance rules

This README is the human-readable import index for `nova/mysql` and must be updated with `import_order_v3.json` whenever publication state changes.

Every `.sql` entry must remain a clickable relative Markdown link. Target-language `title`/`description` fields must be in the learning language, Persian translation fields must be complete, and structural descriptions must not be NULL.

There is no fixed Course or Level Chapter count. Series numbers are sequence only; Level completion remains curriculum/mastery-driven.
