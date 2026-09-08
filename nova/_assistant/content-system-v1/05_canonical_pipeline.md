# 05 — Canonical Lesson pipeline

## Goal

Prevent drift between authored content, runtime SQL, QA files, manifests and audio while keeping MySQL simple.

## Canonical hierarchy

The Course source owns Level definitions. Each product Lesson starts from one rich source file and references exactly one parent Level with `levelKey`:

`Course → Level → Lesson → Activity`

Lesson source path remains:

`nova/courses/{course}/lessons/{lesson-number}/lesson.source.json`

Curriculum and QA detail may be richer than the runtime database. Generated files are disposable outputs and must never be edited as a second source of truth.

## Pipeline

1. **Curriculum decision**
   - select the parent Level and Lesson learning job/outcome;
   - verify prerequisites;
   - define what may be scored and what is support only.

2. **Author canonical Lesson source**
   - `courseCode` + `levelKey` parent references;
   - learner scenario;
   - dialogue/Turns when useful;
   - Activities;
   - English text;
   - Persian support;
   - lexical items and their learning roles;
   - curriculum annotations and accepted speech;
   - unresolved owner choices under `review.pendingDecisions` when needed.

3. **Canonical validation**
   - JSON schema;
   - Course/Level membership;
   - IDs/order/references;
   - lexical atomicity;
   - Activity-specific requirements;
   - no hidden prerequisite in scored tasks;
   - Pilot interaction coverage when the Lesson is marked as Pilot.

4. **Content quality gate**
   - run deterministic hard gates and quality warnings;
   - automated quality score must be **>= 90**;
   - score below 90 stops SQL compilation/import until the canonical Lesson is revised;
   - `review.pendingDecisions` do not block authoring or later Lessons.

5. **Linguistic/pedagogical audit**
   - English correctness/naturalness;
   - Persian accuracy;
   - beginner load and sequencing;
   - option/distractor quality;
   - accepted speech quality;
   - meaningful learning progression.

6. **Compiler output**
   - deterministic runtime SQL generated from canonical Course/Level/Lesson data;
   - Course-owned Level records are upserted before the Lesson;
   - only product-needed fields are compiled to MySQL;
   - Level-wide data is never duplicated into Lesson rows;
   - authoring-only review decisions are not compiled into runtime metadata.

7. **Database validation**
   - reset/create a clean **MySQL Server 9.0.1** database;
   - apply the simple runtime schema;
   - import the candidate Course/Level/Lesson SQL;
   - execute representative Level/Lesson/Activity/Turn/lexical retrieval queries.

8. **Human English audit during Pilot**
   - render all learner-visible English into `english_audit.md`;
   - corrections are made only in `lesson.source.json`, then derivatives regenerate.

9. **Audio generation — mandatory**
   - generate from the exact validated Lesson source;
   - route character, learner-reference and lexical-item audio by explicit type/voice mapping;
   - generate valid multiword lexical-item audio when the item is truly one vocabulary unit;
   - full Turn sentences stay Turn audio;
   - decode/duration/hash checks and manifest validation are mandatory.

10. **Completion gate**
   - a Pilot Lesson is technically complete only when canonical validation, quality score >=90, language audit, MySQL 9.0.1 execution and required audio pass for the same source hash.

## Pending owner decisions

A decision that needs product-owner input is not a reason to halt the content factory. Use the recommended defensible default, record the issue in `review.pendingDecisions`, finish the Lesson and continue authoring later Lessons. Resolve the decision when the owner reviews the file.

## Hash integrity

SQL, audit metadata and audio manifest are tied to the SHA-256 of the canonical Lesson source. A mismatched derivative is stale.

## Repair rule

Fix learner-visible or semantic content in canonical source and regenerate. Do not patch generated SQL/audio as the normal unpublished-content workflow.

## Batch rule

During Pilot, deterministic validation/import failures must be repaired before that Lesson is treated as valid. Pending product-owner decisions are explicitly exempt from stopping authoring of later Lessons. After repeated clean Pilot results, generation can be batched without changing quality gates.
