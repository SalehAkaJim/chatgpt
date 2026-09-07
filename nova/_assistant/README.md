# Nova assistant internals

Only `content-system-v1/` is an active authority for new Nova content.

Old content contracts, old validators, old policies, old workflow definitions, and previous content-specific voice maps are intentionally removed from the active tree so the rebuild cannot silently inherit legacy assumptions.

The user-facing Nova directories remain:
- `../mysql/`
- `../audio/`
- `../courses/`

Reusable infrastructure may be reintroduced under this folder only after it is adapted to Content System v1.
