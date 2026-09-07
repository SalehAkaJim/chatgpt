# Nova Content System v1

This directory is the only active content-generation rule set after the September 2026 reset.

## Scope

- Active course: English → Persian (`en-fa`)
- Learner: Persian speaker starting from absolute zero
- First curriculum scope: A1 only
- Previous Nova curriculum, Chapter packages, production state, validators, and content contracts are not active inputs.

## Design principle

Learning outcomes drive the structure. Counts do not.

There is no fixed number of Chapters per Level, Lessons per Chapter, Turns per Lesson, or Activities per Lesson. A unit exists only when it contributes evidence toward a communicative outcome.

## Files

1. `01_principles.md` — non-negotiable pedagogical and product principles
2. `02_curriculum.md` — CEFR-aligned outcome planning and A1 completion rules
3. `03_lesson_activity.md` — Lesson and Activity construction rules
4. `04_language_data.md` — English, Persian, lexical-unit, token, and audio-data rules
5. `05_canonical_pipeline.md` — canonical source → validation → SQL → audio → publication
6. `06_qa_publication.md` — blocking QA gates and pilot requirements
7. `A1_OUTCOMES.md` — initial A1 communicative outcome map; chapter count remains dynamic

## External framework

CEFR is used as an outcome framework, not as a ready-made syllabus. The Council of Europe explicitly describes CEFR descriptors as adaptable to specific learning contexts and defines proficiency through communicative language activities / can-do performance.

Primary reference:
- Council of Europe, CEFR Companion Volume (2020)
- https://www.coe.int/en/web/common-european-framework-reference-languages/home
- https://www.coe.int/en/web/common-european-framework-reference-languages/cefr-descriptors

## Version rule

No generator or validator may silently encode a rule that is absent from this directory. Any rule change increments the Content System version and is reviewed before new content is published.
