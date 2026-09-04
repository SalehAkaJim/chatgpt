# Nova German→Persian Content Production

This repository is the persistent source of truth for Nova educational content
and database artifacts.

## Current checkpoint

- A1 complete
- A2 complete through Series 080
- B1 starts at Series 081
- Content generation is intentionally frozen while runtime/UI implementation is finalized
- Database contract: v9 / implementation revision v9.1.1

## Reliability model

Generation is atomic by chapter. A level contains 40 chapters, while export
artifacts are batched into 5 files of 8 chapters each. A batch is committed only
after all chapter-level and batch-level QA pass. `production_state.json` advances
only after a successful batch commit.

The freeze is machine-readable in both `production_state.json` and
`pipeline_config.json`. B1 must not be generated until an explicit unfreeze.

## Database

Database artifacts and the completed audit are in `nova/database/`. Start with
`AUDIT_v9.md`, then use the schema, bootstrap seed, runtime examples and
validation SQL in the documented order.

## Canonical A1/A2 archive

The exact Series 001-080 archive is preserved at
`nova/archive/nova_v9_production_series_001_080_fixed.zip`. All 105 members are
also extracted under `nova/archive/series_001_080_fixed/extracted/` so GitHub and
future production tooling can inspect the SQL and JSON directly.

The archive checksum, per-file checksums and complete independent scan are in:

- `nova/archive/series_001_080_fixed/manifest.json`
- `nova/archive/series_001_080_fixed/FULL_SCAN_REPORT.json`
- `nova/tools/scan_canonical_archive.py`

The static archive scan passes. The remaining database verification gate is a
clean execution on MySQL 8.0.21+, followed by
`nova/database/migrate_canonical_a1_a2_v9_1.sql` and
`nova/database/validate_database_v9.sql`.

No future production workflow may depend on temporary ChatGPT sandbox files.
