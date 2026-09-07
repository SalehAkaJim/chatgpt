# Nova MySQL — Content System v1

This folder contains database infrastructure only. No Chapter content is active yet.

## Production/test target

**MySQL Server 9.0.1** is the authoritative database version for Nova. SQL is publishable only after real execution on 9.0.1.

## Run order

1. `01_reset_all.sql`
2. `02_schema.sql`
3. `03_semantic_layer.sql`
4. Chapter/import SQL generated from canonical content
5. `04_runtime_lesson_query.sql` — example runtime retrieval after content exists

## Current foundation

- flexible Lesson types instead of story-only Lessons;
- canonical Chapter source hash stored on each Chapter;
- `lexical_items` replaces the old single-token `words` assumption;
- lexical items may be single words or validated multiword expressions;
- `turn_lexical_items` maps one lexical item to one or multiple Turn tokens/spans;
- lexical sense fields are explicit;
- distractors live on Activities, not lexical entries;
- learning roles are `target / review / support / incidental`;
- activities separate type from pedagogical purpose;
- communicative outcomes are separated from enabling learning units;
- review obligations use recurrence windows rather than fixed Series offsets;
- Turn tokens are derived data, not an independently authored source;
- Turn and lexical-item audio URLs are first-class fields and audio is a mandatory publication gate.

There is currently no Course seed and no Chapter import list. The English A1 foundation and Chapter 1 will be generated only from Content System v1 canonical sources and must pass MySQL 9.0.1 plus mandatory Audio QA before completion.
