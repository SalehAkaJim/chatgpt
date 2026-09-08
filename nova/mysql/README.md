# Nova MySQL — simple Lesson runtime

The product database intentionally models the app, not the full curriculum-planning process.

## Production/test target

**MySQL Server 9.0.1** is authoritative.

## Run order

1. `01_reset_all.sql`
2. `02_schema.sql`
3. generated Course/Level/Lesson import SQL in numeric order
4. `03_runtime_lesson_query.sql` only when you want to test retrieval

## Runtime content model

`Course → Level → Lesson → Activity`

Core content tables:
- `courses`
- `levels`
- `characters`
- `lessons`
- `activities`
- `lesson_turns`
- `lexical_items`
- `lesson_lexical_items`

A Lesson stores `level_id`, not duplicated `course_id` or `cefr_level`. Course membership and Level-wide data are resolved through the parent Level.

This makes Level-level maintenance simple. Deleting/rebuilding A1 can cascade only through A1 Lessons and their dependent runtime rows while leaving other Levels intact.

There are no runtime modules, chapters, semantic-learning-unit tables or review-obligation tables.

Curriculum information such as can-do outcomes, prerequisites, review intent, teaching notes and QA evidence stays in canonical source files. Level definitions are Course-owned and compiled once into `levels` rather than copied into every Lesson row.

`activities.config` intentionally carries activity-specific payloads, so new activity types can be added without creating a new database table for each interaction.

User progress, bookmarks and flashcards will be added as separate product tables after the content/runtime pilot proves this foundation.
