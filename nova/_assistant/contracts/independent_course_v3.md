# Nova Independent Course Contract — native v3 / foundation 3.2

`main` is the only active source of truth. `archive/nova-pre-v3.2-clean-reset-2026-09-07` is archive-only and must never be reused for active generation.

## Core model

- Each language course is authored independently for Persian speakers.
- Series numbers are ordering only. Course and Level chapter totals are dynamic.
- A Chapter has exactly 4 pedagogical phases: exposure, explicit form, retrieval, mastery.
- Each Lesson has 8–14 Turns and 12–18 Activities according to learning need.
- Speaking, listening, reading and pronunciation begin at A1. Writing becomes a completion requirement from A2.
- Reviews use deterministic offsets 1/2/4/8/16 and real evidence.

## Semantic storage

All physical semantic tables use the `sem_` prefix:

`sem_learning_units`, `sem_learning_unit_words`, `sem_lesson_learning_units`, `sem_turn_learning_units`, `sem_review_obligations`, `sem_curriculum_outcomes`.

Unprefixed semantic compatibility tables/views are not part of the active foundation and new Chapter SQL must never reference them.

## Audio

Audio locators are declared directly in the original source rows.

- Turn: `nova/audio/turns/{course}/{level}/s{series4}/l{lesson2}/t{turn2}.mp3`
- Word: `nova/audio/words/{course}/{sha256_display_form}.mp3`

No database trigger and no post-import `update_*_audio.sql` is allowed. TTS only materializes the MP3 at the path already stored in `turns.audio_url` or `words.audio_url`. `audio_duration_ms` may remain NULL at import time.

## Acquisition-quality gate — mandatory from Series 1

1. Story dialogue must sound like a real conversation; drill belongs mainly in Activities.
2. Target units need surface variation and transfer, not repetition only.
3. Pronunciation is taught through listen → notice → produce; learner understanding must not depend on phonetic metalanguage.
4. Persian-speaker contrasts are taught when relevant.
5. Lesson 4 mastery must use a genuinely new context and independent recombination.

## Publication

Generation and publication are separate. `generated_through_series` advances after deterministic local gates pass. `published_through_series` advances only after Content Quality/MySQL8, Turn audio and eligible Word/Learning-unit audio all pass contiguously.
