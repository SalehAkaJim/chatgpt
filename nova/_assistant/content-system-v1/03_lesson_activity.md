# 03 — Lesson and Activity rules

## Lesson purpose

Every Lesson has one explicit instructional job. It may introduce, clarify, practice, retrieve or transfer language needed for a communicative outcome.

Lesson length is determined by that job. There is no required Turn or Activity count in normal production.

## Interaction model

The learner should usually interact with one clear interlocutor at a time in early A1.

- The learner role must be stable and obvious.
- Every task must make clear what the learner should understand or do.
- Dialogue exists for natural communication, not to manufacture repetition.

## Product Activity types

The runtime currently supports:
- `dialogue`
- `speak`
- `sentence_order`
- `fill_blank`
- `comprehension`
- `listen`
- `reading`
- `pronunciation`
- `writing`
- `lexical_teach`
- `response_choice`

Normal Lessons use only the smallest useful set. The first Pilot Lesson deliberately includes the five core interactions requested for product testing: dialogue, speak/STT, sentence order, three-option fill blank, and dialogue comprehension.

## Exposure

New English first appears where meaning is recoverable. At absolute zero, listening must include enough Persian/contextual support to avoid blind guessing.

## Speaking

Speaking may serve:
1. modelled production with visible target;
2. retrieval from a clear cue;
3. transfer to a changed context.

STT checks expected wording or valid alternatives. STT alone is not treated as an exact pronunciation score.

## Listening and comprehension

State what the learner listens for. Begin with short clear speech. Transcript/translation may be visible for teaching activities or revealed after an attempt when comprehension is being tested.

## Sentence order — audio-first

Sentence-order tasks are listening + reconstruction activities, not merely visual puzzles.

- The exact natural target sentence must be available as audio before and during the attempt.
- The learner hears the sentence and reconstructs it from shuffled tokens.
- Do not display the completed target sentence before the first attempt.
- Audio replay must be available.
- The audio source must resolve to the same canonical English sentence as `answerEn`.
- Tokens must reconstruct one exact natural target sentence; shuffling must not change/add/remove tokens.
- Do not use punctuation/tokenization tricks as difficulty.

## Fill blank

- exactly one meaningful blank;
- exactly three options for the current product interaction;
- one unambiguous correct answer;
- distractors should test the intended distinction rather than randomness when learner prerequisites allow it.

At absolute zero, clarity outranks artificial distractor difficulty.

## Dialogue comprehension

Use a real short dialogue or listening source. Ask a question that requires understanding the target-language message.

A comprehension question fails QA if the answer can be obtained reliably without understanding the audio, for example from:
- speaker gender or avatar;
- who speaks first/last;
- visible names or UI metadata;
- obvious answer wording or option patterns;
- information already revealed by the question itself.

Prefer questions about meaning, intention, request, response, or a concrete detail carried by the target-language utterance. Provide two or three unambiguous options. At beginner level, Persian answer options are allowed when the skill being tested is listening comprehension rather than English reading.

## Reading / writing

Reading uses actual target-language text for a purpose. Writing may begin with arranging/selecting/completing language before free typing is introduced.

## Grammar and constructions

Explain grammar only when it helps comprehension or production. Prefer examples and usable constructions before terminology. A scored grammar-dependent task requires prior exposure or explanation.

## Pronunciation

Teach pronunciation through listen → notice/contrast → produce when relevant. Focus on intelligibility, including predictable Persian-speaker difficulties, not accent elimination.

## Transfer

Across the Lesson sequence, important outcomes must eventually be used beyond the original memorized model. This can occur in the same Lesson or a later Lesson depending on instructional load. Changing only a name or punctuation is not meaningful transfer.
