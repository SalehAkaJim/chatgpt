# Database

MySQL 8.0.16+ content database for the language-learning app.

## Files

- `schema.sql` — core tables, foreign keys, indexes and helper views.
- `seed_reference.sql` — CEFR levels, German/English language rows and supported activity types.
- `qa_queries.sql` — editorial/content QA checks.
- `migrations/002_fix_level_status_view.sql` — corrected level-status helper view.

## Fresh database setup

Run in this order:

```sql
SOURCE database/schema.sql;
SOURCE database/migrations/002_fix_level_status_view.sql;
SOURCE database/seed_reference.sql;
```

Then import finalized content data.

## Final content export

When a language is ready, the final deliverable can be generated as a standalone MySQL `.sql` dump containing the inserts for that language, while keeping this schema as the reusable database structure.

Recommended final export structure:

```text
database/
  schema.sql
  seed_reference.sql
  exports/
    de_full.sql
    en_full.sql
```

Audio is intentionally excluded from initial content completion. Audio metadata/URLs can be attached after the whole language has reached final status.

## Important invariants

- Lesson count per CEFR level is dynamic.
- Activity count per lesson is dynamic.
- Activity order after the opening conversation is dynamic.
- Activity position 1 must be `conversation_speaking`.
- Target-language teaching content must be source-backed.
- Persian text is a faithful, natural translation/support layer.
- Source provenance should be present before content is marked final.
- Character gender/age/role must match the source dialogue and scenario.
- Word/phrase rows have stable IDs so future flashcards can reference `lexemes.id` instead of duplicating content.
