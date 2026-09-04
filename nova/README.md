# Nova German→Persian Content Production

This repository is the persistent source of truth for Nova educational content
and database artifacts.

## Current checkpoint

- A1 complete
- A2 complete through Series 080
- B1 starts at Series 081
- Content generation is intentionally frozen while runtime/UI implementation is finalized
- Database contract: v9 / implementation revision v9.1.0

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

The exact historical A1/A2 SQL archive is identified by checksum in the
migration manifests but is not currently present in GitHub. This does not affect
the canonical B1 resume state, but it blocks a clean full A1/A2 restore test.

No future production workflow may depend on temporary ChatGPT sandbox files.
