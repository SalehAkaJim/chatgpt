# 08 — Pilot protocol

The new system does not begin with bulk generation.

## Pilot scope

- Course: English → Persian
- Level: A1
- One Chapter at a time
- First pilot window: 3 Chapters
- Human English audit required before publication

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
- Word-vs-chunk tokenization error;
- audio routing/voice issue;
- schema/compiler/MySQL inconsistency.

## Defect-to-rule loop

Every meaningful defect must cause one of:
1. source correction only, when truly isolated;
2. generator rule change, when pattern-based;
3. validator rule change, when mechanically detectable;
4. curriculum/prerequisite change, when sequencing is wrong;
5. schema change, when the data model encourages the error.

Do not repeatedly repair the same defect class manually.

## Exit criteria for pilot

Bulk generation remains disabled until:
- three consecutive Chapters pass structural, linguistic, pedagogical and MySQL gates;
- the human audit finds no blocking English defect in the final candidate versions;
- zero sentence/phrase has entered the Word pipeline;
- all corrections regenerate cleanly from canonical source;
- audio generation can be rerun without changing content state;
- cumulative review/transfer from earlier pilot Chapters works naturally.

After this, production cadence may be increased gradually. Quality gates remain unchanged.
