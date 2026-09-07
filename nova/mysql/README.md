# Nova MySQL import order — native v3.2 clean foundation

The active dataset on `main` is fresh native-v3.2 only. Archive branches are backup-only and are never active inputs.

## Core — always first

1. [`reset_all_v10.sql`](../database/reset_all_v10.sql)
2. [`schema_v9.sql`](../database/schema_v9.sql)
3. [`semantic_layer_v10.sql`](../database/semantic_layer_v10.sql)
4. [`foundation_seed_v3.sql`](../database/foundation_seed_v3.sql)

`semantic_layer_v10.sql` creates only `sem_*` semantic objects. `foundation_seed_v3.sql` owns shared Course / Level / Module metadata for both courses.

Audio URLs are stored directly in each `words` and `turns` row by `chapter.sql`. TTS only materializes MP3 files at those deterministic paths. There is no audio trigger file and no post-import audio UPDATE SQL.

## German → Persian published Chapters

1. DE-CH-0001 — [`chapter_0001/chapter.sql`](../courses/de-fa/staging/batch_01/chapter_0001/chapter.sql)
2. DE-CH-0002 — [`chapter_0002/chapter.sql`](../courses/de-fa/staging/batch_01/chapter_0002/chapter.sql)

Published through Series **2**. Generated through Series **2**. Next generated Series is **3**.

## English → Persian published Chapters

1. EN-CH-0001 — [`chapter_0001/chapter.sql`](../courses/en-fa/staging/batch_01/chapter_0001/chapter.sql)

Published through Series **1**. Generated through Series **1**. Next generated Series is **2**.

## Publication evidence

Publication requires the complete native-v3.2 package plus clean linguistic/acquisition/curriculum/review gates, real MySQL8 execution, complete Turn audio, and complete eligible Word/Learning-unit audio. File presence or QA flags alone do not advance the manifest.

## Maintenance rules

- Every `.sql` entry in this README stays a clickable relative Markdown link.
- Chapter SQL must not create or overwrite Course / Level / Module metadata.
- All physical semantic tables use the `sem_` prefix.
- `words.audio_url` and `turns.audio_url` are final deterministic locators in the original INSERT.
- There is no fixed Course or Level Chapter count; Level completion is curriculum/mastery-driven.
