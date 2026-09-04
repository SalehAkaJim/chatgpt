# Nova German→Persian Content Production

This repository is the persistent source of truth for Nova educational content and database artifacts.

## Current checkpoint
- A1 complete
- A2 complete through Series 080
- B1 starts at Series 081
- Content generation is intentionally frozen while database/runtime/UI implementation is finalized

## Reliability model
Generation is atomic by chapter. A level still contains 40 chapters, but export artifacts are batched into 5 files of 8 chapters each. A batch is committed only after all chapter-level QA and batch-level QA pass. `production_state.json` advances only after a successful batch commit.

This avoids relying on temporary ChatGPT sandbox files as production state.
