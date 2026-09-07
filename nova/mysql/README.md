# Nova MySQL — Content System v1

This folder contains database infrastructure only. No Chapter content is active yet.

## Run order

1. `01_reset_all.sql`
2. `02_schema.sql`
3. `03_semantic_layer.sql`
4. `04_runtime_lesson_query.sql` — example runtime query, run only after content exists

## Current foundation

The schema has been redesigned for the clean English → Persian A1 rebuild:

- flexible Lesson types instead of story-only Lessons;
- canonical Chapter source hash stored on each Chapter;
- `words` restricted to single orthographic tokens at DB level;
- lexical sense fields (`word_key`, `sense_key`) are explicit;
- Word distractors are no longer stored as lexical properties;
- learning roles are `target / review / support / incidental`;
- activities separate type from pedagogical purpose;
- communicative outcomes are separated from enabling learning units;
- review obligations use recurrence windows rather than fixed Series offsets;
- Turn tokens are derived data, not an independently authored source.

There is currently no Course seed and no Chapter import list. The English A1 foundation and Chapter 1 will be created only from Content System v1 canonical sources after schema/validator checks pass.
