# English educational fixes — selected scope

User-selected items: 1 (translation), 2 (grammar), 3 (natural phrasing),
5 (audio coverage), 6 (pronunciation teaching), 7 (feedback), 8 (practice/review).

- Corrected 22 existing records, including dependent dialogue translations and
  exercise options. Stable entity IDs and existing answer/option order remain.
- Added 44 exercises: 32 tasks in eight previously single-exercise A1/A2 lessons,
  plus 12 sound-discrimination/read-aloud activities in Pre-A1.
- Added 26 individual letter-name models, eight sound-example words and ten
  pronunciation explanations. Existing lessons and character casts are reused.
- Added Persian explanatory feedback to all 1,909 exercises through C2, including
  model answers and retry guidance. The eight strengthened lessons have five
  exercises each; review activities identify their earlier source units.
- Generators apply the same enrichment, so regenerating a batch retains the fixes.

## Importing into an existing database

1. Rerun the normal level importers (`database/import/en/pre_a1.py` through `c2.py`)
   to insert the additional items and persist `exercises.metadata.feedback` and
   `exercises.metadata.review_of`.
2. Generate and apply `database/import/en/educational_content_updates.sql` with
   `python scripts/export_english_content_updates.py`. This updates the selected
   existing source records and feedback without changing option order or progress.
3. After audio refresh succeeds, apply the regenerated `*_audio.sql` files.

No live user database is modified by the GitHub workflow. Its MySQL test uses a
disposable service database and applies the update SQL twice.

## Audio refresh

Listening exercises now receive an `audio_assets` reference with entity type
`exercise`, even when their audio text does not occur elsewhere. Identical
text/voice/settings reuse one asset. Selected grammar/pronunciation examples use
entity type `grammar_point`; the `entity_key` ends in `:example:N`. Display
feedback only after an answer/attempt so its transcript does not reveal a
listening answer prematurely.

The user explicitly requested new audio for every changed English text. The
checked-in audio request authorizes the incremental refresh with two TTS workers
and existing voice locks. Changed source text obtains a new content-addressed
filename; audio SQL archives stale links. Unchanged English audio is reused when
only its Persian translation changed. Production audio validation checks source
hashes, voice settings, MP3 decoding, duration and checksums.

The workflow publishes its per-level generated/reused counts and completion
evidence in `audio/reports/english-quality-refresh.json` after every level passes.

## Scope controls

Runtime shuffling is left to the app. Existing multiple-answer questions, the
self-introduction grading contract, C1 conversation construction, and lesson-goal
redesign are not changed. The regression check locks all 2,542 original exercise
and dialogue records, allowing only the selected exact linguistic corrections
and added feedback. It also verifies all listening and selected grammar examples
have matching manifest references. It does not certify subjective TTS accent or
intonation through a human listening review.
