# Nova MySQL import order — native v3.2 clean foundation

The active dataset on `main` starts from zero. The archive branch is backup only and is never an active input.

## Core — always first

1. [`reset_all_v10.sql`](../database/reset_all_v10.sql)
2. [`schema_v9.sql`](../database/schema_v9.sql)
3. [`semantic_layer_v10.sql`](../database/semantic_layer_v10.sql)
4. [`foundation_seed_v3.sql`](../database/foundation_seed_v3.sql)

`semantic_layer_v10.sql` creates only `sem_*` semantic objects. `foundation_seed_v3.sql` owns shared Course / Level / Module metadata for both courses.

Audio URLs are stored directly in each `words` and `turns` row by `chapter.sql`. TTS only materializes MP3 files at those deterministic paths. There is no audio trigger file and no post-import audio UPDATE SQL.

## German → Persian staging

No active Chapter yet. The next generated Series is **1**.

## English → Persian staging

No active Chapter yet. The next generated Series is **1**.

## Publication state

Both courses are reset to `generated_through_series = 0`, `published_through_series = 0`, and `next_series = 1`.

## Maintenance rules

- Every `.sql` entry in this README stays a clickable relative Markdown link.
- Chapter SQL must not create or overwrite Course / Level / Module metadata.
- All physical semantic tables use the `sem_` prefix.
- `words.audio_url` and `turns.audio_url` are final deterministic locators in the original INSERT.
- There is no fixed Course or Level Chapter count; Level completion is curriculum/mastery-driven.
