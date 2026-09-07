# 05 — Canonical Lesson pipeline

## Goal

Prevent drift between authored content, runtime SQL, QA files, manifests and audio while keeping MySQL simple.

## Single canonical source

Each product Lesson starts from one rich source file:

`nova/courses/{course}/lessons/{lesson-number}/lesson.source.json`

Curriculum and QA detail may be richer than the runtime database. Generated files are disposable outputs and must never be edited as a second source of truth.

## Pipeline

1. **Curriculum decision**
   - select the Lesson learning job/outcome;
   - verify prerequisites;
   - define what may be scored and what is support only.

2. **Author canonical Lesson source**
   - learner scenario;
   - dialogue/Turns when useful;
   - Activities;
   - English text;
   - Persian support;
   - lexical items and their learning roles;
   - curriculum annotations and accepted speech.

3. **Canonical validation**
   - JSON schema;
   - IDs/order/references;
   - lexical atomicity;
   - Activity-specific requirements;
   - no hidden prerequisite in scored tasks;
   - Pilot interaction coverage when the Lesson is marked as Pilot.

4. **Linguistic/pedagogical audit**
   - English correctness/naturalness;
   - Persian accuracy;
   - beginner load and sequencing;
   - option/distractor quality;
   - accepted speech quality;
   - meaningful learning progression.

5. **Compiler output**
   - deterministic runtime SQL generated from the canonical Lesson;
   - only product-needed fields are compiled to MySQL;
   - curriculum detail may remain source-only.

6. **Database validation**
   - reset/create a clean **MySQL Server 9.0.1** database;
   - apply the simple runtime schema;
   - import the candidate Lesson SQL;
   - execute representative Lesson/Activity/Turn/lexical retrieval queries.

7. **Human English audit during Pilot**
   - render all learner-visible English into `english_audit.md`;
   - corrections are made only in `lesson.source.json`, then derivatives regenerate.

8. **Audio generation — mandatory**
   - generate from the exact validated Lesson source;
   - route character, learner-reference and lexical-item audio by explicit type/voice mapping;
   - generate valid multiword lexical-item audio when the item is truly one vocabulary unit;
   - full Turn sentences stay Turn audio;
   - decode/duration/hash checks and manifest validation are mandatory.

9. **Completion gate**
   - a Pilot Lesson is complete only when canonical validation, language audit, MySQL 9.0.1 execution and required audio pass for the same source hash.

## Hash integrity

SQL, audit metadata and audio manifest are tied to the SHA-256 of the canonical Lesson source. A mismatched derivative is stale.

## Repair rule

Fix learner-visible or semantic content in canonical source and regenerate. Do not patch generated SQL/audio as the normal unpublished-content workflow.

## Batch rule

During Pilot, build one Lesson at a time. A failure blocks advancement to the next Lesson. After repeated clean Pilot results, generation can be batched without changing quality gates.
