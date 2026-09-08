# 07 — Database/schema alignment

The runtime database models the product, not the full curriculum-planning process.

## Active runtime decision

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

There are no runtime modules, chapters, semantic-learning-unit tables or review-obligation tables in the Pilot foundation.

## Level ownership

A Course owns its Levels. A Lesson belongs to exactly one Level through `lessons.level_id`.

Level-wide data such as display name, framework/standard code, ordering, description and status lives only in `levels`. It must not be duplicated in every Lesson row.

The `lessons` table therefore does **not** store `course_id` or `cefr_level`. Course membership is derived through `levels.course_id`.

This makes Level-level replacement explicit: deleting a Level cascades its Lessons and their dependent Activity/Turn/mapping rows without affecting sibling Levels.

## Why this does not overcomplicate content

The canonical Course source owns Level definitions. Each canonical `lesson.source.json` carries only `levelKey` as its parent reference plus Lesson-specific curriculum data such as outcomes, prerequisites, constructions, support language, lexical roles and QA annotations.

`activities.config` stores interaction-specific payload, so adding a new Activity interaction usually does not require a new table.

## Lexical model

`lexical_items` represents conventional learnable vocabulary units, including justified multiword expressions. Token count does not define lexical validity.

## Audio

Turn and lexical-item audio are first-class runtime fields and mandatory Pilot dependencies.

## Database target

Production/test target: **MySQL Server 9.0.1**. Lesson SQL is not validated until it executes on that exact target.

## Future product data

User progress, learned-item state, bookmarks, flashcards and review scheduling will be added separately after the content/runtime Pilot. They should extend this model rather than complicate the core content hierarchy prematurely.
