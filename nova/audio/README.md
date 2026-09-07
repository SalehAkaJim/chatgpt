# Nova Audio — Lesson Pilot

All pre-reset audio was removed. Audio is mandatory in the rebuilt English → Persian Pilot.

## Completion rule

A Pilot Lesson cannot be complete until every required audio asset is generated and the manifest passes QA against the exact canonical `lesson.source.json` hash.

## Audio classes

- **Turn audio** — exact canonical Turn text, using the assigned character/learner-reference voice.
- **Lexical-item audio** — exact validated lexical item, including justified multiword expressions, using the course lexical voice.

## Paths

- Turn: `nova/audio/turns/{course}/{lessonKey}/{turnKey}.mp3`
- Lexical item: `nova/audio/lexical/{course}/{sha256(lexicalKey)}.mp3`

## Required QA

Every asset records source key/text/hash, audio class, voice, path, file hash, decode result, duration and PASS/FAIL. File existence alone is never sufficient.
