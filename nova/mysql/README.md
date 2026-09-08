# Nova MySQL — simple Lesson runtime

The product database intentionally models the app, not the full curriculum-planning process.

## Production/test target

**MySQL Server 9.0.1** is authoritative.

## Run order

Use [IMPORT_ORDER.md](IMPORT_ORDER.md) for the generated, exact Lesson import list. It is refreshed after each successful Pilot build.

- New/explicitly reset database: `02_schema.sql`, then the listed Lesson SQL files.
- Existing compatible database: import the needed generated Lesson files.
- `01_reset_all.sql` is a destructive clean reset, used automatically only in disposable CI tests.
- `03_runtime_lesson_query.sql` accepts `@course_key` and `@lesson_key` to inspect a chosen Lesson.

All generated SQL runs the compiler's canonical and >=90 quality gates. Audio paths and durations come from verified manifests. A compiler call without audio produces draft SQL; the full Pilot requires audio before runtime validation.

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

## Stable content identifiers

Reimporting a Lesson preserves `lessons.id` and the IDs of existing `lesson_turns` and `activities`. Child rows are matched by `(lesson_id, turn_key)` and `(lesson_id, activity_key)`, then updated in place. Changing text, configuration or presentation order does not allocate a replacement ID.

Canonical keys are identities, not positions: keep `lessonKey`, `turnKey` and `activityKey` unchanged when editing or reordering existing content. Use a new, previously unused key for a new item; never renumber existing keys to match array order. Array order alone determines child `sort_order`.

The importer temporarily moves retained child rows above both the existing and incoming order ranges inside the transaction before assigning final positions. This prevents the unique order constraint from making an upsert match a different item. Newly added keys receive new IDs; keys absent from the incoming source are removed from that Lesson only. Deletion/archival policy for user-referenced content remains a separate future change.

No schema reset or migration is needed: import the regenerated Lesson SQL into an existing compatible database. Preserving IDs applies within that database; a destructive reset or importing into another database does not promise the same numeric IDs. MySQL may leave gaps in auto-increment sequences during upserts.

Disposable MySQL 9.0.1 checks cover identical imports, edits, order reversal, insertion into an occupied position, removal of test-only keys, sibling isolation, and existing foreign-key references. The resulting evidence is recorded in each Lesson's `runtime_validation.json` under `stableIdsPassed` and `stableIdChecks`.

Both learner and character Turns use the existing `lesson_turns.character_id`. `role=learner` selects the person played in that Lesson, not a permanent Course persona. No schema migration is needed; reimport the regenerated Lesson SQL.
