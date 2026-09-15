# MySQL Content Architecture v1

This database is the canonical target for the language-learning content pipeline.

The design borrows useful structural ideas from open-source language-learning projects, without copying their database implementation. In particular:

- LibreLingo: separates course structure and reusable course content, and treats lessons/exercises as data-driven content.
- Lingo Lessons: uses a learning path organized into sections, units, lesson nodes, exercises, practice and spaced repetition.
- OpenLingo: exposes multiple exercise modalities including matching, listening, word-bank, speaking and flashcards.
- FreeLingo: explicitly models CEFR-aligned curriculum/plans and progressive learning goals.

References:
- https://github.com/LibreLingoCommunity/course-template
- https://github.com/Open-Apps-Studio/lingo-lessons
- https://github.com/pretzelai/openlingo
- https://github.com/ArtCC/freelingo

## Core principles

### 1. MySQL is the final source of truth

JSON schemas in `/schemas` remain useful for authoring and validation, but all finalized language content must be exportable into the relational MySQL structure in `/database/schema.sql`.

### 2. Lesson counts are not fixed

`language_levels.planned_lesson_count` is nullable and starts unassessed. It becomes provisional only after CEFR and language-specific coverage have been mapped. It becomes final only when the level has adequate coverage.

German A1 and English A1 are not expected to have the same lesson count.

### 3. Activity counts and sequences are dynamic

A lesson can contain 2 activities, 10 activities, or another justified number.

The only fixed sequencing rule is:

- activity position `1` must be `conversation_speaking`.

After that, the number, type and order of activities depend on the lesson content. There is intentionally no global pattern such as:

`conversation -> multiple choice -> word order -> fill blank -> review`

`activities.position` stores the final order. `lessons.template_signature` exists only for QA so repetitive neighboring patterns can be detected.

### 4. Source provenance is first-class

`sources` stores the publication/site/course-level source.

`source_items` stores the exact reusable location: lesson, unit, page, section, corpus item, or other locator.

Final content entities have explicit source-link tables, including lessons, activities, activity items, dialogues, dialogue turns, lexemes, grammar notes and example sentences.

This allows the app to maintain a source list and lets editorial QA trace each target-language item back to where it came from.

### 5. Original target-language teaching content is source-backed

Target-language dialogues, sentences, words, phrases, examples and grammar explanations are not generated from scratch for the course.

Allowed app transformations include things such as:

- adding a Persian translation;
- tokenizing a source sentence for word order;
- removing a portion of a source sentence to create a blank;
- grouping source-backed words or phrases for matching;
- selecting options from source-backed material;
- assigning character metadata when a source does not provide it;
- assigning CEFR placement after content review.

### 6. Persian is the support language

Persian translations should be natural and readable while remaining faithful to the source meaning.

### 7. Conversation-first lessons

Every lesson begins with a speaking conversation activity.

Dialogues are modeled independently from activities so the same conversation can keep structured turns, characters, provenance, translations and later audio.

Each dialogue turn stores:

- speaker character;
- original target-language text;
- Persian translation;
- whether it is the learner's turn;
- speaker identity origin;
- gender evidence;
- optional future audio.

### 8. Character consistency is enforceable data

Characters are independent entities. Their gender, age band, roles, context and future ElevenLabs voice metadata are stored explicitly.

When the source indicates a female speaker, a female character must be used. The same applies to male speakers. Character assignment must also fit age, role, relationship and situation.

### 9. Audio is deliberately deferred

Content can reach `final` without audio.

Audio production starts only after the entire language is finalized. `audio_files` is already present so ElevenLabs output can later be attached without redesigning content tables.

Conversation voices should be clear, calm, low-stress, non-aggressive and reasonably consistent in tone.

Standalone word/phrase pronunciation should use a consistent voice such as Hope or Lori.

### 10. Words and phrases are reusable entities

`lexemes` represents both words and phrases and gives each one a stable `public_id`.

This supports:

- tap-to-learn content;
- Persian meaning;
- usage notes;
- grammar links;
- examples;
- pronunciation audio;
- lesson/activity/dialogue references;
- future flashcard review.

The future user flashcard table should reference `lexemes.id`; it should not duplicate lexical content.

## Why the schema is hybrid relational + JSON

Stable relationships are relational and protected with foreign keys: languages, CEFR levels, lessons, activities, dialogues, characters, lexemes, grammar notes, examples and source provenance.

Exercise-specific configuration varies greatly by activity type, so `activities.payload` and `activity_items.metadata` are JSON. This prevents every new activity type from requiring a database migration while preserving relational rows for ordering, analytics and source links.

## Curriculum and CEFR coverage

`curriculum_targets` is the main planning table for dynamic course sizing. A target belongs to a specific language + CEFR level and can represent, for example:

- communicative function;
- listening skill;
- spoken interaction;
- vocabulary domain;
- grammar requirement;
- pronunciation requirement;
- real-world situation;
- reading or writing skill.

`lesson_targets` connects one or more lessons to those targets.

A level should not be considered final merely because it has reached an arbitrary lesson count. It should be final when mandatory curriculum targets have adequate coverage and editorial QA has accepted the content.

## Current scope

Included now:

- languages and CEFR levels;
- dynamic level planning;
- curriculum coverage;
- source provenance;
- characters;
- conversations and turns;
- lessons;
- dynamic activity sequencing;
- activity items/options/tokens;
- words and phrases;
- grammar notes;
- example sentences;
- future ElevenLabs audio references.

Intentionally postponed until product behavior is defined:

- user accounts;
- lesson completion/progress;
- streaks/XP;
- placement-test answers;
- flashcard scheduling/SRS state;
- subscriptions/payments.

Those product tables can reference the stable content IDs created here.

## Import order

For an empty database:

1. Run `database/schema.sql`.
2. Run `database/seed_reference.sql`.
3. Import sources and source items.
4. Import curriculum targets.
5. Import characters, lexemes, grammar notes and examples.
6. Import dialogues and dialogue turns.
7. Import lessons and activities.
8. Add provenance/junction rows.
9. Run content QA before marking lessons/levels final.
