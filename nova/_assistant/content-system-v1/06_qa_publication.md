# 06 — QA and publication

## Philosophy

QA must fail loudly when content is questionable. Passing structural counts is never enough.

The candidate Chapter remains unpublished until every blocking gate below refers to the same canonical content hash.

## Gate A — curriculum

PASS requires:
- one clear primary communicative outcome;
- prerequisites already available or explicitly scaffolded;
- instructional load appropriate to current A1 stage;
- target language selected for usefulness/frequency/context, not variety for its own sake;
- a real transfer requirement defined.

## Gate B — English language

Review every learner-visible English Turn, prompt, option, answer, example and lexical item.

BLOCK on:
- grammar error;
- unnatural/awkward wording;
- wrong register;
- ambiguous scored answer;
- advanced unexplained language;
- dialogue created mainly to repeat a target;
- inconsistent spelling/usage baseline;
- accepted answer a fluent speaker would not naturally use.

## Gate C — Persian learner support

BLOCK on:
- wrong meaning;
- misleading literal translation;
- Persian explanation that teaches a false English rule;
- ambiguity that changes what the learner is expected to do;
- unnecessarily technical wording for a beginner.

## Gate D — learning design

PASS requires evidence that new target units move beyond exposure.

BLOCK when:
- learner is scored on untaught material;
- activities are repetitive without a changed cognitive demand;
- correct answer can be guessed from formatting rather than language;
- transfer is only a cosmetic rewrite;
- listening at zero level is blind guessing;
- a Lesson is padded to satisfy a count;
- story naturalness is sacrificed for drilling.

## Gate E — lexical/data integrity

BLOCK when:
- any `words` record contains whitespace or sentence-like content;
- POS/sense does not match the source context;
- token reconstruction differs from canonical Turn text;
- punctuation becomes a lexical entry;
- a target/support/review classification is missing where required;
- chunk/construction/word types are conflated.

## Gate F — activities

Each scored Activity must have:
- one unambiguous task goal;
- valid source evidence/prerequisite;
- correct answer(s) that are natural;
- distractors appropriate to the exact distinction when choices are used;
- no answer-position/template artifacts.

Speaking accepted alternatives must be meaningfully different valid forms, not punctuation/case duplicates.

## Gate G — database

PASS requires real MySQL 8 execution from a clean test database.

Test both:
1. candidate Chapter in the expected contiguous course state;
2. representative runtime retrieval for Lesson/Turn/Activity/Word data.

A SQL file that parses visually but has not executed does not pass.

## Gate H — audio

Audio runs only after Gates A–G pass.

PASS requires:
- exact source hash match;
- correct voice/locale policy;
- every required Turn audio present;
- every eligible single-token Word audio present;
- zero phrase/sentence records routed through Word TTS;
- no stale audio after source text changes.

## Pilot human audit

For the initial English pilot, publication additionally requires a human-review artifact containing all learner-visible English in presentation order.

Pilot rule:
- one Chapter generated at a time;
- human audit before publication;
- defects are categorized and converted into validator/generator rules where possible;
- after a meaningful defect-free streak, the manual gate may be reconsidered, but never silently removed.

## Failure behavior

A failed Chapter does not advance `next_chapter`.

Repair the canonical source, regenerate all dependent outputs, and rerun every affected gate. Never patch a derivative and call the source fixed.
