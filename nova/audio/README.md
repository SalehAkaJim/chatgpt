# Nova Audio — Content System v1

All pre-reset audio was removed. Audio is now an active, mandatory part of the rebuilt English → Persian pilot.

## Publication rule

A Chapter cannot be `complete` or publishable until all required audio has been generated and its audio manifest passes QA.

## Audio classes

- **Turn audio** — exact canonical Turn text, using the assigned character voice where applicable.
- **Lexical-item audio** — exact validated lexical item, whether single-word or a legitimate multiword expression, using the course lexical voice policy.
- **Construction/example audio** — only when explicitly authored; otherwise use the relevant Turn/example audio.

## Required QA

Every generated asset must be traceable to canonical source text/hash and record:
- source key and exact text;
- audio class;
- language/locale;
- voice key;
- output path;
- file/hash metadata;
- decode/non-empty check;
- duration sanity status;
- source-match/staleness status;
- final PASS/FAIL.

A file merely existing at the expected path is not enough.

Audio generation is enabled for the Pilot, but no asset is generated until its canonical Chapter content is ready for the audio gate.
