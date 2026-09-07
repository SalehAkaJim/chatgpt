# Nova Content System v1

This directory is the only active rule/tool set for the clean Nova rebuild.

## Scope

- Active Course: English → Persian (`en-fa`)
- Learner: Persian speaker starting from absolute zero
- Current curriculum scope: A1
- Runtime product model: `Course → Lesson → Activity`
- Authoring source: one rich `lesson.source.json` per Lesson
- Database target: MySQL Server 9.0.1
- Audio: mandatory before Pilot completion

## Core separation

**Canonical source may be pedagogically rich; Runtime MySQL stays product-simple.**

CEFR, outcomes, prerequisites, constructions, support language, lexical roles and QA metadata may exist in source/curriculum files without becoming runtime hierarchy tables.

## Active files

- `01_principles.md` — pedagogical/product principles
- `02_curriculum.md` — outcome and sequence planning
- `03_lesson_activity.md` — Lesson/Activity construction
- `04_language_data.md` — language + lexical model
- `05_canonical_pipeline.md` — source → validation → SQL → MySQL → audio
- `06_qa_publication.md` — blocking gates
- `07_schema_alignment.md` — simple runtime architecture
- `08_pilot.md` — three-Lesson Pilot protocol
- `09_next_step.md` — current execution order
- `10_status.json` — machine-readable state
- `lesson.source.schema.json` — canonical Lesson schema
- `tools/` — validator, audit renderer, SQL compiler and audio tools
- `A1_OUTCOMES.md` — curriculum planning reference; it does not define runtime tables

## Rule change

No generator/validator may silently introduce a content rule absent from this active system. Repeated Pilot defects must become explicit rule/tool/schema improvements before scale-up.
