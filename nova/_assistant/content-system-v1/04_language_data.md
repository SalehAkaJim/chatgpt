# 04 — Language and data rules

## English baseline

The first active learning language is English for Persian speakers.

For v1 authoring, use consistent contemporary American English spelling and a General American pronunciation baseline unless a context explicitly requires another variety. Common alternative forms may be accepted when natural, but the learner should not be forced to juggle spelling/accent variants at absolute beginner stage.

## English text rules

Every learner-visible English item must have a clear function and context.

Reject:
- unnatural textbook dialogue;
- literal translation from Persian;
- unnecessary synonyms introduced together;
- advanced idioms used only for variety;
- unexplained contractions or reductions in scored beginner tasks;
- inconsistent register inside the same interaction;
- sentence complexity beyond prerequisites.

Contractions such as `I'm`, `you're`, `it's`, and `don't` are normal English and may be taught when appropriate rather than artificially avoided.

## Persian translation rules

Translation is sense- and context-specific.

- Translate the meaning used in that occurrence, not every dictionary sense.
- Prefer natural Persian learner meaning over structural mimicry.
- When literal structure is pedagogically useful, store it as separate teaching metadata rather than corrupting the natural translation.
- Persian explanation and translation must remain distinguishable fields.

## Lexical model

The system distinguishes:

1. **word token** — one orthographic token such as `hello`, `name`, `I'm`;
2. **lexeme/sense** — a word in a particular meaning/POS;
3. **chunk** — a multiword conventional expression such as `thank you`;
4. **construction** — a reusable pattern such as `I'm + name/adjective`;
5. **grammar concept** — an explanatory abstraction used only when useful;
6. **pronunciation target** — a sound/stress/linking/intelligibility feature;
7. **communicative outcome** — what the learner can do.

These are not interchangeable records.

## Critical `words` rule

The `words` table is for single orthographic tokens only.

A `words.display_form` must not contain whitespace. Apostrophes/hyphens that are part of one normal English token are allowed.

Hard reject from `words`:
- sentences;
- phrases/chunks with spaces;
- full questions;
- clauses;
- punctuation-delimited utterances;
- strings created by accidental tokenization/concatenation.

Multiword expressions belong to the learning-unit/chunk layer and may have phrase/turn audio, but they must never masquerade as a Word record.

This is a blocking invariant because Word TTS operates only on validated Word records.

## Word sense rules

A Word/lexeme occurrence must preserve:
- surface form;
- normalized lemma where applicable;
- POS in the actual context;
- sense-specific Persian meaning;
- source sentence/turn reference;
- whether the item is target, review, or transparent support.

Do not infer a fake lemma/POS mapping merely to satisfy a schema.

## Tokenization

Turn text is canonical. Token records must reconstruct the exact visible Turn text when combined with their stored spacing/punctuation metadata.

Tokenization must never alter learner-visible English.

Punctuation is not a Word. Whitespace is not a Word. A tokenizer failure is blocking and must not be repaired by inventing lexical entries.

## New vs support language

Every first meaningful occurrence of an unfamiliar item is classified as:
- `target` — intentionally learned now;
- `support` — needed for context but meaning is immediately supplied and it is not assessed yet;
- `incidental` — allowed only when comprehension does not depend on learning it.

A scored answer cannot require an incidental item.

## Audio eligibility

Word audio eligibility begins only after lexical validation passes.

- single validated word token → Word audio eligible;
- multiword chunk → separate chunk/utterance audio if product needs it;
- full sentence/Turn → Turn audio;
- punctuation/metadata → never audio.

Audio generation must consume validated canonical records, not infer unit type from arbitrary strings.
