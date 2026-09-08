# 02 — Curriculum rules

## CEFR usage

CEFR is an outcome framework, not a Lesson-count template.

Nova now has a lightweight runtime `Level` hierarchy for product/data management. A Level may map to a CEFR stage such as A1, but the Level row is only the product container; CEFR outcome planning remains richer than that row.

Nova maps each Level to learner actions such as reception, interaction and production. A CEFR stage ends when its required outcomes have enough learning and assessment evidence, not at a predefined Lesson number.

## Scope control

Only A1 is produced initially. A2/B1/B2 begin only after the A1 system and Pilot demonstrate acceptable quality.

## Outcome model

Curriculum planning may track, outside the runtime Level/Lesson hierarchy:
- stable outcome ID;
- learner-facing can-do statement in Persian;
- CEFR mode(s);
- real-world contexts;
- prerequisite outcomes;
- core lexical items;
- constructions/grammar;
- pronunciation needs;
- evidence/review needs;
- planning status.

These planning records may live in canonical curriculum files. They do not require additional runtime MySQL tables unless the product later needs them.

## Lesson sequence planning

A Lesson belongs to exactly one Level and has one coherent instructional job. It may introduce or reinforce one or more tightly related outcome components.

An outcome may span several Lessons when learning load requires it. Conversely, a compact Lesson may complete a small outcome when adequate practice is possible.

Reject a Lesson plan when it bundles unrelated goals for volume, exists only to fill a quota, introduces excessive independent concepts, depends on unavailable language, or lacks a clear real-world/learning purpose.

## A1 progression

Control progression across:
1. communicative demand;
2. sentence complexity;
3. lexical load;
4. listening load;
5. reading load;
6. pronunciation load;
7. support level;
8. context variation.

No single numeric difficulty value substitutes for these dimensions.

## New-language budget

New language is capped, not quota-filled. Absolute-zero and early A1 Lessons should prefer a small set of language that can actually be understood and practiced. One or two important new items can be enough.

## Review system

Review intent is curriculum metadata, not a mandatory runtime review table.

Important language must recur through meaningful later recognition, retrieval, comprehension or production. Natural reuse in new Lessons is preferred to artificial review drills. Mere appearance in a dialogue is not evidence of successful review.

If later product features need personalized review scheduling, that belongs in user-learning/progress tables, not the core content hierarchy.

## A1 completion

A1 is complete only when required outcomes have adequate evidence across contexts, high-frequency language recurs, reception/interaction go beyond scripted repetition, pronunciation/intelligibility is addressed, reading/basic written-language handling is represented, and cumulative tasks show recombination.

The number of Lessons is whatever this actually requires.
