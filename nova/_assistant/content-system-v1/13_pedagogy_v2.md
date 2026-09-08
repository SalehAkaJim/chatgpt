# Pedagogy and production v2

The 13 canonical A1 Lessons are revised for model-reviewed testing. This is not evidence of effectiveness with learners or of a completed CEFR stage. Sites is excluded from this delivery.

## Lesson contract

1. Give the played character a concrete purpose and give every request an in-story reason. A new character name does not by itself create a new story.
2. Preserve the course's cast/arc rotation, including the played role and incidental listening speakers. Continue prior episodes with enough local context to understand the task without remembering biographies.
3. Teach a small amount of useful language. First-exposure scaffolds may be easy; later tasks must remove the support or change the communicative demand.
4. Choice options must reflect plausible misunderstandings. Do not invent untaught vocabulary merely to make distractors harder. The reviewed first Lesson retains a documented beginner scaffold.
5. Every choice has an explanation for every option. Explain the relevant meaning, referent or intent; do not use generic right/wrong strings.
6. Audio sentence reconstruction is supported practice, never independent production. Use at least three pieces and neutralize case/punctuation clues in the displayed token bank; preserve canonical text and IDs.
7. End with a meaning-cued `speak` task in `mode=retrieval`. Hide the answer and model audio initially. Explicit help may reveal them, but must mark the attempt assisted. Typed responses are allowed and must be distinguished from speech.
8. Record first attempt, help, subsequent attempts and skipped evaluation separately. Never convert a corrected or assisted result into first-attempt independent evidence, including across navigation. Starting a fresh practice resets this evidence.
9. Bounded matching recognizes a finite set of patterns. Failure to match is not proof of bad English; do not score pronunciation, fluency or general mastery from STT text. Open responses in higher-level calibration require rubric review.
10. A listening answer must be supported by its referenced source. Do not infer an unseen handover from an apology; include the question when the answer's referent depends on it.

## Deterministic gates

`CQ-H13`: versioned pedagogy contract and hidden, meaning-cued retrieval with a bounded answer contract.
`CQ-H14`: complete, distinct option explanations.
`CQ-H15`: nontrivial, neutral-token, practice-only reconstruction.
Existing gates, stable identities and the 90/100 automated threshold remain enforced. These gates validate contracts, not the truth or naturalness of text.

## Explicit semantic review

Each source has `pedagogy.review.json`, with ten scored dimensions, specific evidence, reviewer type, limitations and hashes of the Lesson and Course sources. A changed Lesson or Course invalidates the review. Model review is labelled as model review; it is not represented as an independent teacher or learner trial. The current records assess text and static interaction design; learner-experience confidence remains limited and audio prosody is unaudited.

The build validates review freshness and the configured mean/minimum before any paid audio generation. Missing, stale or failing reviews do not delete the draft or stop authoring subsequent drafts. They block that batch's audio/runtime-ready output until corrected. Pending owner decisions remain nonblocking for authoring and do not automatically reduce scores.

## Short production path

- Plan outcomes, prerequisites, story slots and intended recall before writing dialogue.
- Author in bounded batches; run a second semantic pass and resolve routine defects without owner approval.
- Run `build_pilot.py --text-only` as a no-paid-audio preflight. Text checks run on four independent Lesson workers by default; the shared lexical/audio writer remains serial to prevent collisions.
- Only after the whole text preflight passes, generate missing/changed speech. Verified unchanged assets are reused by the existing cache.
- Compile stable-ID SQL, then run real MySQL import/retrieval tests.
- Measure validation and audio separately from model authoring. `text_build_report.json` explicitly does not measure authoring speed. Its milliseconds must not be extrapolated into time to write a six-level course.
- Parallel model authoring is a separate future runner; this change does not claim to have implemented four autonomous content writers. Shared manifests/catalog/SQL order need a single integration owner.

## Calibration and remaining release evidence

`nova/calibration/en-fa/` adds 12 text samples, two per CEFR level, to the 13 revised canonical Lessons: 25 texts for calibration. They are not a sequential course and are excluded from runtime discovery, SQL and paid audio. Prerequisites and open-response rubrics are explicit. Their example answers are illustrations, not exact-match keys. A1/A2 examples include Persian turn translations; higher-level input deliberately reduces translation support.

Still needed before claiming learning effectiveness: real learner observation, delayed recall, independent teacher calibration, audio perception/intonation review and open-response evaluation for advanced levels. The six-level production time remains an estimate until authoring and rework have been measured, separately, across this sample set.
