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
   - stable `turnKey`/`activityKey` identities: preserve keys on edits/reordering, never renumber or reuse them for a different item;
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

6. **Audio generation and validation**
   - route character, learner-reference and lexical audio from explicit voice mappings;
   - reuse verified lexical assets across Lessons through the Course registry;
   - text/voice/model changes get a distinct lexical asset identity and path;
   - existing paid lexical assets are adopted from valid manifests without regeneration;
   - validate actual decode, duration, voice, text, file hash and exact Lesson source hash;
   - retain checkpoints when generation fails so a retry can reuse completed work.

7. **Compiler output**
   - the compiler itself runs canonical/Course/Level and Content Quality gates;
   - a score below 90 rejects both direct Python calls and command-line compilation;
   - compile audio paths and durations from the validated manifest;
   - compilation without an audio manifest emits a draft with null audio fields;
   - SQL records both Lesson and Course source hashes;
   - update existing Turns/Activities in place by canonical key; stage child order slots before upserts so reordering preserves IDs;
   - review.pendingDecisions stays outside runtime rows.

8. **Database validation**
   - reset a disposable MySQL Server 9.0.1 test database;
   - import every generated Lesson and retrieve its actual parent/content/audio fields;
   - derive row expectations from canonical data, not a fixed Pilot count;
   - test repeated imports and Level deletion while preserving sibling Levels.
   - verify child IDs and external test references survive edits, reordering and insertion; remove only absent keys from the imported Lesson.

9. **Prototype and audit**
   - the prototype reads the selected canonical Lesson, Course and audio manifest;
   - generated courses/index.json enables Lesson selection without embedded content;
   - stale source/audio pairs cannot be played as a current validated Lesson;
   - english_audit.md records the Lesson source hash for the reviewed text.

10. **Completion gate**
   - technical completion requires every gate for the same source hashes;
   - manual/model review and final publication approval remain separate;
   - bulk production stays disabled until the three-Lesson Pilot exit criteria pass.

## Pending owner decisions

A decision that needs product-owner input is not a reason to halt the content factory. Use the recommended defensible default, record the issue in `review.pendingDecisions`, finish the Lesson and continue authoring later Lessons. Resolve the decision when the owner reviews the file.

## Hash integrity

SQL and database evidence record Course and Lesson SHA-256 hashes. Audit metadata and audio manifests record the exact Lesson source hash. A mismatched derivative is stale.

## Repair rule

Fix learner-visible or semantic content in canonical source and regenerate. Do not patch generated SQL/audio as the normal unpublished-content workflow.

## Batch rule

During Pilot, deterministic validation/import failures must be repaired before that Lesson is treated as valid. Pending product-owner decisions are explicitly exempt from stopping authoring of later Lessons. After repeated clean Pilot results, generation can be batched without changing quality gates.
# Played characters

Canonical schema 2.2.0 gives both character and learner Turns a `characterKey`. `role=learner` identifies the person the user plays in this Lesson; it is not a separate permanent character. The existing `lesson_turns.character_id` points to the corresponding character for both roles. No schema migration is required. The Lesson's `curriculum.story.learnerRoleKey` selects the played role, and every Turn uses that character's voice mapping. System Turns remain unassigned. Course-wide learner identity and voice defaults are not used for story Lessons.
