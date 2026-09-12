# Content System

## Core principle
The database is concept-centered, not lesson-centered. Lessons consume approved reusable content; they are not the canonical source of words, meanings, sentences, grammar, or dialogues.

## Learning hierarchy
Language -> CEFR level -> Skill -> Topic -> Concept -> Content -> Lesson -> Exercise

The app UI may hide most of this hierarchy and only expose the learner's next lesson and progress.

## Canonical content banks
1. Concepts and localized lexical forms
2. Sentences and translations
3. Grammar points and localized explanations
4. Dialogues and dialogue turns
5. Characters/personas
6. Lessons and lesson items
7. Exercises and answer options
8. Audio metadata

## Generation pipeline
1. Curriculum generation
2. Concept generation
3. Vocabulary/localization generation
4. Sentence generation
5. Dialogue generation
6. Exercise generation
7. Translation/localization
8. Automated validation
9. Human/AI review when required
10. Approval into production content

## Content lifecycle
`generated -> validated -> approved`

Any item may instead become `rejected` or return to `generated` after revision.

## Automated QA gates
- duplicate/near-duplicate detection
- language/script detection
- required translation coverage
- CEFR plausibility
- grammar and spelling checks
- naturalness check
- answer ambiguity detection
- multiple-correct-answer detection
- dialogue role consistency
- character consistency
- topic/concept coverage
- prohibited leakage of the answer in prompts
- audio/text consistency

## Multilingual strategy
Every semantic unit receives a stable concept/content ID. Localized forms attach to that ID. This avoids creating separate disconnected databases for every language pair.

Example:

concept: `airport`
- en: airport
- de: Flughafen
- es: aeropuerto
- fr: aéroport
- fa: فرودگاه

## Lesson strategy
Lessons should be lightweight assemblies of approved content. A sentence or dialogue can generate several exercise variants without duplicating the source content.

Initial exercise families:
- dialogue comprehension
- listening
- speaking/read-aloud
- sentence building
- translation/meaning matching
- fill in the blank

## Audio strategy
Store only metadata in PostgreSQL: source content ID, language, voice, provider, URL/path, duration, status, and checksum. Audio files live in object storage or a repository/CDN.

## Scaling target
The model is designed to support thousands of concepts, tens of thousands of sentences, thousands of dialogues, and hundreds of thousands of generated exercises while retaining traceability back to canonical source content.
