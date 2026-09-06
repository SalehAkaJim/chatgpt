# Nova German→Persian Content Production

This repository is the persistent source of truth for Nova educational content and database artifacts.

## MySQL import order

Use [`nova/mysql/README.md`](mysql/README.md) as the single operator entry point for manual MySQL imports. It contains stable Stage IDs, exact execution order, direct SQL links, blocked staging/audio files, and the error-reporting format.

## Current checkpoint

- A1 and A2 are complete through Series 080.
- The active database contract is the unchanged canonical Nova v9.0 contract from the preserved archive.
- B1 Series 081 through 089 have passed chapter QA; Batch 01 is published and later QA-passed chapters are staged.
- The next atomic generation unit is B1 Series 090.
- Content is generated as up to two strictly sequential chapters per hourly run. Each chapter is independently QA-checked and committed before the next chapter starts. Published state advances only after all eight chapters and batch QA pass.

## Canonical database

The four active files in `nova/database/` are byte-for-byte v9.0 copies from the checksum-matched archive:

- `schema_v9.sql`
- `de_fa_base_seed_v9.sql`
- `reset_all_v9.sql`
- `runtime_lesson_query_v9.sql`

No schema upgrade or database migration is active. Repository changes do not alter the live Liara MySQL database.

## Canonical A1/A2 archive

The exact Series 001-080 archive is preserved at `nova/archive/nova_v9_production_series_001_080_fixed.zip`.
Its SHA-256 is `11e5b8834dcee6002ccf6981650069309ba9df0bdb10063b82fcc5dfb293e8c2`, its size is 502,504 bytes, and all 105 members remain extracted under `nova/archive/series_001_080_fixed/extracted/`.

The complete independent scan is stored in:

- `nova/archive/series_001_080_fixed/manifest.json`
- `nova/archive/series_001_080_fixed/FULL_SCAN_REPORT.json`
- `nova/tools/scan_canonical_archive.py`

The archive and extracted Series 001-080 files must not be edited.

## B1 staging

QA-passed chapters are stored under `nova/staging/B1/`. Series 081-089 are v9.0-only content INSERTs and contain no schema DDL. Series 090 is the next pending chapter.

No future production workflow may depend on temporary sandbox files.

## Turn audio

The ElevenLabs automation is isolated under `nova/tts/`. It never connects to a
database: it parses canonical and staged repository SQL, assigns one distinct
profile-matched German voice per character, and stores generated MP3 files under
`nova/audio/turns/` with a resumable source-locator manifest.

GitHub is temporary audio storage. The generated standalone file
`nova/audio/update_turn_audio.sql` is run manually by the operator and updates
only `turns.audio_url` and `turns.audio_duration_ms`, after validating every row
against its hierarchy, character, role, and text hash.

See `nova/tts/README.md` for the initial run and the command to run after each imported Series.

## Language production roadmap

Nova now has ten courses in one fixed priority order:

1. German → Persian — active
2. English → Persian — active concurrently
3. French → Persian — CEFR / DELF-DALF, A1-C2
4. Italian → Persian — CEFR / CILS, A1-C2
5. Korean → Persian — TOPIK 1-6
6. Spanish → Persian — CEFR / DELE, A1-C2
7. Turkish → Persian — CEFR / European Language Portfolio, A1-C2
8. Arabic → Persian — CEFR-aligned Modern Standard Arabic, A1-C2, with controlled dialect exposure after the foundation
9. Japanese → Persian — JLPT N5-N1
10. Mandarin Chinese → Persian — HSK 3.0, HSK 1-9

Only German and English are active. All other courses remain queued and cannot generate content until an isolated course root, a complete independent curriculum, curriculum QA, language-specific turn voices and Word-pronunciation sample QA are ready. The concurrency limit remains two.

The machine-readable queue is stored in `nova/plans/language_production_queue.json`, and the standard-selection plan and QA report are stored in `nova/plans/future_language_level_models_v9.json` and `nova/audits/future_language_level_models_qa.json`.

Each language starts from absolute zero with an independently designed curriculum, word state, characters and storylines. Level names, count, ordering and final level follow that language's selected standard; future courses are not forced into A1-C2. Later courses reuse only the Nova v9.0 content engine, and German content must not be translated or copied into them. The next curriculum and its language-specific audio configuration are prepared during the final eight chapters before activation, but queued content does not start until the required transition gate passes.

## English master curriculum

The English → Persian course is fully planned and may run concurrently with German after the course-isolation contract passes. German keeps its legacy-exclusive paths; English writes only under `nova/courses/en-fa/` plus its own audio and TTS files. Its learner-facing levels are:

1. Start (Series 001-040)
2. Everyday (Series 041-080)
3. Independent (Series 081-120)
4. Confident (Series 121-160)
5. Advanced (Series 161-200)
6. Mastery (Series 201-240)

The plan contains 48 modules, 240 chapters, 960 planned lessons and 30 final eight-chapter SQL batch files. CEFR is retained only as internal alignment; the product uses the six names above. The curriculum is independent rather than a translation of German and includes priorities specific to Persian-speaking English learners.

Machine-readable files:

- `nova/plans/en_fa_curriculum_master_plan_v9.json`
- `nova/plans/en_fa_curriculum_master_plan_v9_qa.json`
- `nova/plans/en_fa_audio_preflight_v9.json`

## Audio production

Turn audio and Word pronunciation are required for every course and are generated incrementally after each QA-passed chapter. Turn voices are distinct per character and verified for the target language. All dictionary Words and phrases use the pinned Lori voice (ID `TbMNBJ27fH2U0VgpSNko`) after language-specific pronunciation verification. Content generation may continue while audio jobs finish, but a course cannot be marked complete until both audio manifests reach 100% coverage and their update SQL files are ready. The machine-readable policy is `nova/plans/audio_production_policy.json`.

## Concurrent course isolation

German and English use two isolated content lanes on the same `main` branch. German retains the legacy Nova paths exclusively. English owns `nova/courses/en-fa/`, `nova/audio/en-fa/`, `nova/audio/turns/en-fa/`, `nova/audio/words/en-fa/`, and its two course-specific voice files. Course automations must not write the shared queue during a run and must use course-local leases plus fast-forward compare-and-swap commits.

The unchanged v9.0 database stores short English level codes in `levels.cefr_level`: ST, ED, IN, CF, AD and MA. Learner-facing names remain Start, Everyday, Independent, Confident, Advanced and Mastery in `levels.title`.

See `nova/plans/concurrent_course_isolation_v9.json` and `nova/audits/concurrent_course_isolation_qa.json`.

