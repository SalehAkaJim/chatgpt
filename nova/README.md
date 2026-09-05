# Nova German→Persian Content Production

This repository is the persistent source of truth for Nova educational content and database artifacts.

## Current checkpoint

- A1 and A2 are complete through Series 080.
- The active database contract is the unchanged canonical Nova v9.0 contract from the preserved archive.
- B1 Series 081 through 085 have passed chapter QA and are staged.
- The next atomic generation unit is B1 Series 086.
- Content is generated one chapter per hourly run. Published state advances only after all eight chapters and batch QA pass.

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

QA-passed chapters are stored under `nova/staging/B1/`. Series 081-085 are v9.0-only content INSERTs and contain no schema DDL. Series 086 is the next pending chapter.

No future production workflow may depend on temporary sandbox files.

## Turn audio

The ElevenLabs automation is isolated under `nova/tts/`. It reads the unchanged v9.0 database, assigns one distinct verified German voice to every character, and stores generated MP3 files under `nova/audio/turns/` with a resumable Turn-to-file manifest.

GitHub is temporary audio storage. The live database is not updated with private GitHub paths. After the audio is moved to a public host, `nova_tts.py export-sql` creates guarded URL updates for `characters.voice_key`, `turns.audio_url`, `turns.audio_duration_ms`, and TTS metadata.

See `nova/tts/README.md` for the initial run and the command to run after each imported Series.
