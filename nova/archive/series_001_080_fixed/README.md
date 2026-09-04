# Nova canonical A1/A2 archive

This directory preserves the exact production history through Series 080.

- Source ZIP: `../nova_v9_production_series_001_080_fixed.zip`
- SHA-256: `11e5b8834dcee6002ccf6981650069309ba9df0bdb10063b82fcc5dfb293e8c2`
- ZIP size: 502,504 bytes
- Extracted files: 105 (84 SQL and 21 JSON)
- Canonical Series SQL: 80 files, Series 001-080
- Static scan status: PASS

`extracted/` is a byte-for-byte extraction of the ZIP and must not be edited.
The historical schema, seed, reset and runtime-query files inside it are v9.0
archive members; implementation uses the current v9.1.1 files in
`nova/database/`.

Canonical corrected Series files are:

- Series 004: `nova_DE_FA_A1_M01_C04_series_004_v9_r2.sql`
- Series 015: `nova_DE_FA_A1_M03_C05_series_015_v9_r3.sql`
- Series 020: `nova_DE_FA_A1_M04_C05_series_020_v9_r2.sql`

Re-run the complete static scan from the repository root:

```bash
python nova/tools/scan_canonical_archive.py \
  nova/archive/series_001_080_fixed/extracted \
  --archive nova/archive/nova_v9_production_series_001_080_fixed.zip \
  --state-dir nova/state \
  --output nova/archive/series_001_080_fixed/FULL_SCAN_REPORT.json \
  --manifest nova/archive/series_001_080_fixed/manifest.json
```

`manifest.json` contains a SHA-256 and byte count for every extracted member.
`FULL_SCAN_REPORT.json` contains per-Series counts and validation results. A live
MySQL restore remains a separate execution test and must follow the order in
`nova/database/AUDIT_v9.md`.
