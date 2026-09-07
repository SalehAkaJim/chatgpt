# 07 — Database/schema alignment

The runtime database models the product, not the full curriculum-planning process.

## Active runtime decision

`Course → Lesson → Activity`

Core content tables:
- `courses`
- `characters`
- `lessons`
- `activities`
- `lesson_turns`
- `lexical_items`
- `lesson_lexical_items`

There are no runtime `levels`, `modules`, `chapters`, semantic-learning-unit tables or review-obligation tables in the Pilot foundation.

## Why this does not constrain content

The canonical `lesson.source.json` may contain richer curriculum data: CEFR, outcomes, prerequisites, constructions, support language, lexical roles, QA annotations and future planning metadata. Only the subset the application needs is compiled into MySQL.

`activities.config` stores interaction-specific payload, so adding a new Activity interaction usually does not require a new table.

## Lexical model

`lexical_items` represents conventional learnable vocabulary units, including justified multiword expressions. Token count does not define lexical validity.

## Audio

Turn and lexical-item audio are first-class runtime fields and mandatory Pilot dependencies.

## Database target

Production/test target: **MySQL Server 9.0.1**. Lesson SQL is not validated until it executes on that exact target.

## Future product data

User progress, learned-item state, bookmarks, flashcards and review scheduling will be added separately after the content/runtime Pilot. They should extend this model rather than complicate the core content hierarchy prematurely.
