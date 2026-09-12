# C2 educational continuation: units 1–10

This bounded continuation addresses coherence and practical task alignment in the
first ten C2 curriculum units. It does not mark the whole C2 course as reviewed.

## Authored content

- Replaced 30 dialogues, preserving all 120 turn IDs, orders, speakers and voice
  profiles. Each exchange establishes its own situation and develops a connected
  interpretation, correction, decision or next step.
- Added ten open-response tasks: five writing and five speaking. Each has a new
  bilingual source, a non-exclusive bilingual model answer, four task-specific
  required points and a weighted rubric. All scenarios are fictional teaching
  material. The ten source texts and ten models receive narration audio.
- Corrected two concept models and their dependent prompts, answer text and
  translation options. Option positions and unrelated answer contracts are kept.
  Misgiving expresses doubt or unease; support cannot be inferred from the word
  alone ([Cambridge Dictionary](https://dictionary.cambridge.org/us/dictionary/english/misgiving)).
  A sound deductive argument must be valid with true premises, not merely credible
  ones ([Stanford Encyclopedia of Philosophy](https://plato.stanford.edu/entries/argument/)).

| Unit | New transfer task |
| --- | --- |
| Implicit stance | Distinguish explicit commitment, inference and an alternative reading |
| Layered narrative | Reframe a remembered event while separating past and present knowledge |
| Lexical precision | Repair claim strength, connotation and collocation in a report |
| Strategic ambiguity | Replace an open-ended promise with a conditional, accountable announcement |
| Pragmatic meaning | Correct a date privately, then publicly without assigning blame |
| Evidential reasoning | Separate a recorded fact, attributed claim and dependent reporting |
| Causal complexity | Evaluate a causal claim with a counterfactual and a qualified comparison |
| Argument diagnostics | Expose a premise and test a concrete alternative to a false dilemma |
| Qualification and scope | Report group averages without universal or causal overclaims |
| Rhetorical concession | Revise a proposal in response to the strongest opposing concern |

These are focused C2-oriented practice activities, not an official proficiency
test. Length ranges are practice guidance, not CEFR scoring thresholds. The other
35 C2 units retain their existing dialogue/task content and remain to be reviewed.

## Durable generation and application use

Canonical authored inputs are `content/enrichment/en/c2-dialogue-overrides.json`
and `c2-performance-additions.json`. Both enrichment and the C2 generator preserve
them. Generation is checked against all 45 C2 source batches, including the 35
outside this rewrite. Earlier C1 and lower-level fixes remain protected by tests.

The open-response application contract is unchanged from
`docs/english-remaining-fixes-2026-09-12.md`: show the source before the attempt,
hide the answer and model audio until afterwards, and assess using the rubric,
not exact text matching. Without human or semantic evaluation, provide rubric
self-review rather than a fabricated automatic pass/fail result.

Items remain structurally `validated`, with educational review `pending`. This
change does not create blanket educational approvals or claim human listening QA.

## Database and audio

No live database is modified. Import the ten new tasks using the existing C2 level
entrypoint after approval, or with explicit `--allow-unreviewed` in a review/test
database. Apply the regenerated `educational_content_updates.sql`, then
`educational_quality_updates.sql`, and finally the refreshed `c2_audio.sql`.
Migration `005_writing_exercises.sql` is still required. Existing content, voice
and lesson identities are retained; outdated audio links are archived, not deleted.

The gated audio request is `2026-09-12-c2-first-ten-educational-fixes`. It uses the
existing ElevenLabs voice locks and two workers. The refresh rebuilds the entire
C2 manifest and generates only missing or changed assets, then validates actual
MP3 files and exports the new audio links. A manifest alone is not completion.

## Verification

Local regression tests check all 251 English batches and 1,969 exercises, preserve
legacy ordering, compare regenerated output for all 45 C2 units, reject exact-match
grading on the ten new tasks and verify every new source/model/dialogue audio
reference. Disposable MySQL CI also checks all C1 and C2 dialogue texts and seeds
a stale C2 turn before applying the correction SQL twice.

Audio generation and remote integration results will be recorded after the gated
refresh completes.
