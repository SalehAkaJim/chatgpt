# 08 — Pilot protocol

## Scope

- Course: English → Persian
- Stage: A1 from absolute zero
- One Lesson at a time
- First Pilot window: 3 Lessons
- Human English audit required
- Audio generation + Audio QA required for every Pilot Lesson
- Database target: MySQL Server 9.0.1

## First product Pilot

Lesson 0001 intentionally covers the five core interactions requested for the app:
1. dialogue;
2. speak with visible text + STT;
3. sentence ordering;
4. one-blank / three-option choice;
5. dialogue/listening comprehension with 2–3 options.

This coverage requirement validates product capability; future Lessons are not required to contain every Activity type.

## Defect categories

Track unnatural English, Persian errors, hidden prerequisites, excessive load, fake/repetitive dialogue, ambiguous options, weak learning progression, bad lexical classification, audio routing/source/voice errors, stale/corrupt audio, compiler errors and MySQL 9.0.1 failures.

Every repeated defect class should change a rule, validator, compiler, curriculum plan or audio pipeline rather than being manually patched forever.

## Exit criteria

Bulk generation stays disabled until three consecutive Pilot Lessons:
- pass canonical validation;
- pass English/Persian/pedagogical audit;
- compile/import and retrieve successfully on MySQL 9.0.1;
- contain only justified lexical items;
- regenerate cleanly from canonical source;
- have complete Turn + eligible lexical audio with manifest QA PASS;
- demonstrate sensible reuse/progression across the Lesson sequence.

After that, production cadence may increase gradually while the gates remain mandatory.
