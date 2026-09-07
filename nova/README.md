# Nova

Nova builds independent Persian-first language courses with an outcome-driven curriculum.

## Active dataset

`main` is a fresh native-v3 dataset starting from Series 001 for each course. The previous generated dataset is preserved intact on branch `archive/nova-pre-v3-reset-2026-09-07` and is not part of active production.

- Contract: `nova/contracts/independent_course_v3.md` / `.json`
- German curriculum/state: `nova/courses/de-fa/`
- English curriculum/state: `nova/courses/en-fa/`
- Semantic learning layer: `nova/database/semantic_layer_v10.sql`
- Native v3 validator: `nova/validation/validate_content_v3.py`
- MySQL order: `nova/mysql/import_order_v3.json`

There is no fixed total Chapter count and no fixed numeric range for A1/A2/B1/B2. `Series` is sequence only. A Level continues until its required Can-Do outcomes, grammar/functions, lexical senses/chunks/constructions, pronunciation, listening/reading/writing requirements, review obligations and mastery gates are complete.
