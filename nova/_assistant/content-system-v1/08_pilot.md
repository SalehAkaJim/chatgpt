# 08 — Pilot protocol

## Scope

- Course: English → Persian
- Level: A1 from absolute zero
- Runtime hierarchy: `Course → Level → Lesson → Activity`
- One Lesson at a time for deterministic QA/import validation
- First Pilot window: 3 Lessons
- Current owner-authorized story evaluation: 10 additional Lessons (0004–0013), 13 total in the prototype; this bounded batch may proceed before final learner review.
- Human/model language and pedagogy audit required before final publish approval
- Audio generation + Audio QA required for every Pilot Lesson
- Automated content-quality score must be at least **90** before runtime import
- Database target: MySQL Server 9.0.1

## First product Pilot

Lesson 0001 intentionally covers the core product capabilities requested for the app:
1. guided dialogue where learner speaking is integrated into each exchange;
2. lexical teaching;
3. audio-first sentence ordering;
4. one-blank / three-option choice;
5. dialogue/listening comprehension with 2–3 options.

Guided dialogue speaking is practice inside the dialogue rather than a mandatory separate `speak` Activity.

This coverage requirement validates product capability; future Lessons are not required to contain every Activity type.

## Defect categories

Track unnatural English, Persian errors, hidden prerequisites, excessive load, fake/repetitive dialogue, ambiguous options, weak learning progression, bad lexical classification, audio routing/source/voice errors, stale/corrupt audio, compiler errors, Level-parent errors and MySQL 9.0.1 failures.

Every repeated defect class should change a rule, validator, compiler, curriculum plan or audio pipeline rather than being manually patched forever.

## Product-owner decisions

If a Lesson raises a genuine product/pedagogy choice that needs the owner, record it under `review.pendingDecisions`, use the recommended defensible default, complete the Lesson and continue later authoring. Do not stop the content pipeline solely because the decision is still open.

## Exit criteria

Unattended bulk generation stays disabled until three consecutive Pilot Lessons:
- pass canonical validation including Course/Level membership;
- score at least 90 on automated Content Quality;
- pass English/Persian/pedagogical audit for final publish approval;
- compile/import and retrieve successfully on MySQL 9.0.1;
- contain only justified lexical items;
- regenerate cleanly from canonical source;
- have complete Turn + eligible lexical audio with manifest QA PASS;
- demonstrate sensible reuse/progression across the Lesson sequence.

After that, production cadence may increase gradually while the gates remain mandatory.
