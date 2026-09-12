# Content System

## Core principle
The database is concept-centered and course-aware, not lesson-centered. Lessons consume approved reusable content; they are not the canonical source of words, meanings, sentences, grammar, or dialogues.

A language is not a course. A course combines a learner language with a target language and, when needed, a target variety.

Examples:
- Persian -> American English (`fa-en-us`)
- Persian -> Modern Standard Arabic (`fa-ar-msa`)
- future: English -> Mexican Spanish
- future: Persian -> Egyptian Arabic

## Database foundation
The canonical database target is **MySQL 9.0.1** using InnoDB and `utf8mb4`.

UUID primary keys are stored as `BINARY(16)` and use the MySQL swap convention consistently:

```sql
UUID_TO_BIN(uuid_string, 1)
BIN_TO_UUID(id, 1)
```

All application timestamps are UTC `DATETIME(6)`.

## Learning hierarchy

```text
Course
  -> CEFR / Pre-A1
    -> Skill
      -> Topic
        -> Concept
          -> Lexeme -> Word Forms
          -> Utterance
          -> Dialogue
          -> Grammar
        -> Lesson
          -> Exercise
          -> Audio
```

The app UI should normally hide most of this hierarchy and expose the learner's next lesson and progress.

## CEFR strategy
The shared proficiency spine is Pre-A1, A1, A2, B1, B2, C1, C2.

CEFR levels are not treated as a universal translated syllabus. Each target language can have its own curriculum sequence while using the same proficiency framework.

For example, Arabic MSA Pre-A1 includes script orientation, connected letter forms, short vowels, sukūn/shadda, Arabic-specific sounds and early decoding. English does not need that same sequence.

## Language variants
`languages` represents the broad language. `language_variants` represents standard/regional/dialect varieties.

Examples:
- English -> `en-US`, `en-GB`
- Spanish -> `es-ES`, `es-MX`
- Portuguese -> `pt-BR`, `pt-PT`
- Arabic -> `ar-MSA`, `ar-EG`, `ar-LEV`, `ar-GULF`

Arabic dialects are not modeled as merely formal/informal registers of MSA. They can receive distinct lexical realizations, audio, utterances, curricula and courses.

## Writing systems and orthography
`orthography_profiles` describes how a language variant is written:
- script
- text direction
- case behavior
- diacritics support/policy
- Unicode normalization policy
- language-specific normalization metadata

Text-bearing tables can attach to a language variant and orthography profile. They may store:
- canonical text
- normalized text
- learner-facing display text
- transliteration

This allows Arabic content to keep a canonical form while progressively showing or hiding tashkīl, and allows future scripts such as Japanese or Chinese without redesigning the content model.

## Concepts, lexemes and word forms
A `concept` is language-neutral meaning or communicative function.

A `lexeme` is a language-specific dictionary unit/lemma. A concept can map to one or several lexemes depending on language, region or context.

A `word_form` is an inflected/derived surface form of a lexeme and carries structured grammatical features.

Example:

```text
Concept: GO
English lexeme: go
  -> go / goes / went / gone
German lexeme: gehen
  -> gehe / gehst / geht / ging / gegangen
Arabic lexeme: كتب-like language-specific lexical unit
  -> word forms with person/gender/number/tense features
```

`concept_terms` remains as a compact compatibility layer for V1 content, but new multilingual production should prefer `lexemes + word_forms` for lexical content.

## Canonical content banks
1. Concepts
2. Lexemes and word forms
3. Utterances and localized/variant text
4. Grammar points and learner-language explanations
5. Dialogues and dialogue turns
6. Characters/personas
7. Lessons and lesson items
8. Exercises and answer options
9. Audio metadata

## Generation pipeline
1. Course-specific curriculum generation
2. Concept generation
3. Lexeme and morphology generation
4. Utterance generation
5. Dialogue generation
6. Grammar generation
7. Exercise generation
8. Translation/localization for the learner language
9. Automated validation
10. Human/AI review when required
11. Approval into production content

## Content lifecycle
`generated -> validated -> approved`

Any item may instead become `rejected` or return to `generated` after revision.

## Automated QA gates
- duplicate external IDs
- duplicate/near-duplicate content
- course/language/variant consistency
- language/script detection
- required learner-language translation coverage
- lexeme -> word-form reference integrity
- concept -> lexeme reference integrity
- CEFR plausibility
- grammar and spelling checks
- naturalness check
- answer ambiguity detection
- multiple-correct-answer detection
- dialogue role consistency
- character pair repetition rules
- topic/concept coverage
- audio/text consistency

## Lesson strategy
Lessons are lightweight assemblies of approved content. A canonical sentence, dialogue or lexeme can support several exercise variants without duplicating source content.

Initial exercise families:
- dialogue comprehension
- listening
- speaking/read-aloud
- sentence building
- translation/meaning matching
- fill in the blank
- multiple choice

## Audio strategy
Store only metadata in MySQL: source content ID, language, language variant, voice, provider, URL/path, duration, status and checksum. Audio files live in object storage or a repository/CDN.

Variant-aware audio matters: `en-US`, `en-GB`, `ar-MSA` and `ar-EG` must not silently share pronunciation assets.

## Staging strategy
Generators do not write directly to canonical production content. Generated batches first enter `generation_jobs` and `generated_content`.

V2 batches can specify:
- `course`
- `learner_language`
- `learner_variant`
- `target_language`
- `target_variant`
- `cefr`
- `curriculum_unit`

Legacy V1 batches remain accepted during migration.

The Python importer:
- validates `content/batch.schema.json`
- resolves target language and optional language variant
- resolves an optional course and verifies that it matches the batch target
- resolves CEFR and curriculum unit
- computes a deterministic SHA-256 fingerprint
- skips already-staged fingerprints
- records import statistics on the generation job

## MySQL integrity notes
MySQL 9.0.1 enforces normal foreign keys, unique indexes, native JSON validation and supported `CHECK` constraints.

One deliberate exception is `lesson_items`: the content pipeline must enforce that exactly one of `concept_id`, `utterance_id`, `dialogue_id`, or `grammar_point_id` is populated.

`generated_content.fingerprint` is nullable and unique. MySQL permits multiple `NULL` values in a unique index, which preserves the intended optional-fingerprint behavior.

## Scaling target
The model is designed for multiple learner/target language combinations, thousands of concepts, large morphology tables, tens of thousands of sentences, thousands of dialogues, and hundreds of thousands of generated exercises while retaining traceability back to canonical source content.
