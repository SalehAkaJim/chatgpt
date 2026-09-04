# Nova German→Persian Content Production

This repository is the persistent source of truth for Nova educational content
and database artifacts.

## Current checkpoint

- A1 complete
- A2 complete through Series 080
- B1 starts at Series 081
- B1 content generation is active from Series 081 with one atomic chapter scheduled per hourly run
- Database contract: v9 / implementation revision v9.1.1

## Reliability model

Generation is atomic by chapter. A level contains 40 chapters, while export
artifacts are batched into 5 files of 8 chapters each. A batch is committed only
after all chapter-level and batch-level QA pass. `production_state.json` advances
only after a successful batch commit.

The explicit production resume is machine-readable in both `production_state.json` and
`pipeline_config.json`. Every run must re-read GitHub, generate at most one atomic
chapter, and keep published state unchanged until all eight chapters and batch QA pass.

## Database

Database artifacts and the completed audit are in `nova/database/`. Start with
`AUDIT_v9.md`. For a clean database use `schema_v9.sql`; for an existing v9.0
database that already contains Series 001-080, first back it up and run
`upgrade_existing_v9_0_to_v9_1_1.sql`, then run the canonical migration and
validator.

## Canonical A1/A2 archive

The exact Series 001-080 archive is preserved at
`nova/archive/nova_v9_production_series_001_080_fixed.zip`. All 105 members are
also extracted under `nova/archive/series_001_080_fixed/extracted/` so GitHub and
future production tooling can inspect the SQL and JSON directly.

The archive checksum, per-file checksums and complete independent scan are in:

- `nova/archive/series_001_080_fixed/manifest.json`
- `nova/archive/series_001_080_fixed/FULL_SCAN_REPORT.json`
- `nova/tools/scan_canonical_archive.py`

The static archive scan passes. Live verification requires MySQL 8.0.21+.
Both clean-install and existing-v9.0 upgrade orders are documented in
`nova/database/AUDIT_v9.md`; either route ends with the canonical migration and
`nova/database/validate_database_v9.sql`.

No future production workflow may depend on temporary ChatGPT sandbox files.
