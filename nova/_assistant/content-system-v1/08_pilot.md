# 08 — Pilot protocol

The new system does not begin with bulk generation.

## Pilot scope

- Course: English → Persian
- Level: A1
- One Chapter at a time
- First pilot window: 3 Chapters
- Human English audit required before publication
- Audio generation and Audio QA required for every Pilot Chapter
- Database execution target: MySQL Server 9.0.1

## Pilot goals

The pilot is designed to discover rule failures before automation scale-up.

Measure defects in these categories:
- unnatural English;
- wrong/awkward Persian;
- hidden prerequisite;
- excessive new-language load;
- fake/repetitive dialogue;
- ambiguous distractor/answer;
- weak transfer;
- bad lexical classification;
- lexical-item/span mapping error;
- audio routing/voice/source mismatch;
- stale, corrupt or missing audio;
- schema/compiler/MySQL 9.0.1 inconsistency.

## Defect-to-rule loop

Every meaningful defect must cause one of:
1. source correction only, when truly isolated;
2. generator rule change, when pattern-based;
3. validator rule change, when mechanically detectable;
4. curriculum/prerequisite change, when sequencing is wrong;
5. schema change, when the data model encourages the error;
6. audio pipeline rule change, when routing/voice/source validation failed.

Do not repeatedly repair the same defect class manually.

## Exit criteria for pilot

Bulk generation remains disabled until:
- three consecutive Chapters pass structural, linguistic, pedagogical and MySQL 9.0.1 gates;
- the human audit finds no blocking English defect in the final candidate versions;
- lexical items contain only justified vocabulary units, including valid multiword expressions where appropriate;
- no sentence/clause is misclassified as a lexical item;
- all corrections regenerate cleanly from canonical source;
- every required Turn and lexical-item audio asset passes manifest QA;
- audio regeneration is deterministic with respect to source/voice/path state;
- cumulative review/transfer from earlier Pilot Chapters works naturally.

After this, production cadence may be increased gradually. Quality gates remain unchanged.
