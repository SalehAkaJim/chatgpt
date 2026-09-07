# Nova MySQL import order — fresh v3

Canonical manifest: `import_order_v3.json`.

The active dataset on `main` starts from zero. The previous dataset is preserved on branch `archive/nova-pre-v3-reset-2026-09-07` and must not be imported into the fresh v3 database.

Base order:
1. `nova/database/reset_all_v10.sql`
2. `nova/database/schema_v9.sql`
3. `nova/database/semantic_layer_v10.sql`
4. Published `de-fa` Chapter SQL files in strict Series order
5. Published `en-fa` Chapter SQL files in strict Series order
6. Current Turn/Word audio update files when present

Only a Chapter that passes structural, linguistic, curriculum, review-ledger, MySQL 8 and audio gates may enter the manifest. There is no fixed Course or Level Chapter count.
