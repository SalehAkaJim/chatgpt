# Nova Content System v1

This directory is the only active rule/tool set for the clean Nova rebuild.

## Scope

- Active Course: English → Persian (`en-fa`)
- Learner: Persian speaker starting from absolute zero
- Current curriculum scope: A1
- Runtime product model: `Course → Level → Lesson → Activity`
- Authoring source: Course source owns Level definitions; each Lesson source references one `levelKey`
- Database target: MySQL Server 9.0.1
- Audio: mandatory before Pilot completion
- Automated Lesson quality score must be at least **90** before runtime import

## Core separation

**Canonical source may be pedagogically rich; Runtime MySQL stays product-simple.**

Level identity and Level-wide metadata live once at the Course/Level layer. Lessons store only their Level relationship, not duplicated CEFR/Level fields. Outcomes, prerequisites, constructions, support language, lexical roles and QA metadata may remain in canonical source without becoming extra runtime hierarchy tables.

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
- `11_content_quality.md` — automated quality, review and decision policy
- `lesson.source.schema.json` — canonical Lesson schema
- `tools/` — validator, audit renderer, SQL compiler and audio tools
- `A1_OUTCOMES.md` — curriculum planning reference

## Decision handling

A Lesson may record unresolved product-owner choices under `review.pendingDecisions`. These decisions do **not** stop authoring, derivative generation, QA, or work on later Lessons. They remain visible for later review and are resolved when the product owner returns to them.

## Rule change

No generator/validator may silently introduce a content rule absent from this active system. Repeated Pilot defects must become explicit rule/tool/schema improvements before scale-up.
