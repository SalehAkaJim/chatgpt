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

### Naturalness gate

Grammatical correctness is not enough. A learner response must also be a natural response to the exact preceding situation.

Hard reject when the lesson forces a target construction into a context where a normal speaker would strongly prefer a different communicative move merely so the target sentence can appear.

Examples:
- `Coffee?` -> `I like coffee.` is not a natural preference exchange; ask a preference question if preference is the target.
- `Water or tea?` -> `I want water.` is unnecessarily forced when the ordinary answer is simply `Water, please.`. If `want` is the target, use a context that naturally elicits `want`, or a correction such as `Tea?` -> `No, I want water.`.

The factory must validate pragmatic adjacency, not only grammar and translation.

## Persian translation rules

Translation is sense- and context-specific.

- Translate the meaning used in that occurrence, not every dictionary sense.
- Prefer natural Persian learner meaning over structural mimicry.
- When literal structure is pedagogically useful, store it as separate teaching metadata rather than corrupting the natural translation.
- Persian explanation and translation must remain distinguishable fields.

### Persian orthography — hard gate with explicit exceptions

All Persian learner-facing text uses Persian orthography by default. This is a blocking publication rule, not a style preference.

Blocked by default:
- standalone hamza and hamza-carrier forms such as `ء`, `ئ`, `ؤ`, `أ`, `إ`;
- Arabic tanwin or vowel/reading marks such as `ً`, `ٌ`, `ٍ`, fatha, kasra, damma, shadda and sukun;
- Arabic letter variants `ي` and `ك`; use Persian `ی` and `ک` instead;
- Arabic-only forms such as `ة`, `ى`, `ٱ`, `ۀ` and tatweel;
- Arabic presentation-form or Quranic annotation characters.

An exception is allowed only when the exact complete word genuinely requires the otherwise-blocked character for its correct intended spelling. Exceptions are stored in `persian_orthography_exceptions.json` and must include:
- the exact complete `term`;
- the exact `allowedCharacters` for that term;
- a non-empty `reason` explaining why the spelling is required.

The exception is word-specific, not character-wide. Allowing a word such as `رئیس` does not make `ئ` valid anywhere else. Partial matches, related words, accidental variants and unlisted spellings still fail validation.

Do not add an exception merely to make validation pass. Prefer the clean Persian spelling whenever both forms are acceptable. Add an exception only when changing the blocked character would make the intended word incorrect, nonstandard for the intended context, or materially change what is being represented.

This rule applies to Course data, Lesson data, translations, instructions, answer choices, UI copy and prototypes. Automated validation must fail before publication if an unapproved forbidden character is present.

## Word / lexeme model

The reusable **words layer contains words/lexemes only**.

A word is not defined by whitespace. In some languages, and sometimes in English, one lexical word/lexeme can be written with two or more whitespace-separated parts. That is allowed only when the complete form is itself a conventional lexical unit.

Examples of valid word-layer units can include:
- `hello`;
- a genuinely lexicalized multi-token compound or lexeme when dictionary/reference evidence treats the complete form as one vocabulary unit;
- a phrasal verb when the whole phrasal verb is the lexical target and has its own conventional meaning/use.

Whitespace alone never makes a phrase a word.

Hard reject from the words layer:
- `a bus` — article + noun, not one lexical word;
- `room six` — ordinary noun + number composition, not one lexical word;
- `five dollars` — productive numeral + noun phrase, not one lexical word;
- `I like coffee` — sentence;
- `Can I have ...?` — construction;
- `Room one`, `At six`, `Nice to meet you`, and similar lesson chunks when they are being used as phrases/formulas rather than as independently lexicalized words;
- any phrase created only because it appears together in a Turn.

A multi-token candidate may enter the word layer only with positive lexicalization evidence, such as a trusted reference sense or explicit `metadata.lexicalized=true` backed by a real lexical reason. Do not mark something lexicalized merely to pass validation.

## Separate language-unit layers

Nova separately represents:
1. **word / lexeme / sense** — reusable vocabulary; this is the only class stored in the reusable words/lexical-audio layer;
2. **construction** — a productive pattern such as `I'm + name`, `Room + number`, or `Do you have + item?`;
3. **formula/chunk used for teaching** — a contextual phrase that may be practiced as a whole but is not automatically a word;
4. **grammar concept** — an explanatory abstraction used only when useful;
5. **pronunciation target** — a sound/stress/linking/intelligibility feature;
6. **communicative outcome** — what the learner can do.

Do not put a construction or compositional phrase into the words table just because it is useful to practice as one chunk.

## Generativity / dechunk rule

Chunk-first teaching is allowed when it lowers beginner cognitive load, but chunking is temporary scaffolding, not a permanent vocabulary model.

For productive constructions, Nova must follow:

**Chunk -> Decompose -> Recombine**

Within a short configured window after first exposure, the learner must see at least two different fillers for a productive slot, and lexical fillers that are real words must exist independently in the word layer.

Examples:
- `Room one` / `Room two` may be introduced as easy contextual labels, but `one` and `two` remain independent words and `Room + number` remains a construction.
- `At six` / `At seven` may be practiced as time chunks, but `six`, `seven`, and relevant grammar must not be replaced by permanent phrase rows such as `at six` in the words table.
- later practice should require a novel recombination rather than only replaying an exact memorized phrase.

The factory must fail when a productive construction keeps using only one fixed filler or when its lexical fillers never become independent word units within the configured dechunk window.

## Tokenization and lexical spans

Turn text is canonical. Tokenization must reconstruct the exact learner-visible Turn text.

A true lexical word may map to one token or a span of multiple tokens. Token boundaries therefore do not define vocabulary boundaries.

Punctuation and whitespace are not lexical items by themselves. A tokenizer/span-mapping failure is blocking and must not be repaired by inventing word entries.

## New vs support language

Every first meaningful occurrence of an unfamiliar unit is classified as:
- `target` — intentionally learned now;
- `support` — needed for context but meaning is immediately supplied and it is not assessed yet;
- `incidental` — allowed only when comprehension does not depend on learning it.

A scored answer cannot require an incidental item.

## Audio eligibility

Word audio is generated only for validated word/lexeme records.

- validated word/lexeme, single- or multi-token -> word audio eligible when useful;
- formula/chunk/construction -> no word-audio record; use Turn audio or an explicit construction-example audio path if one is intentionally supported;
- full sentence/Turn -> Turn audio;
- punctuation/metadata -> never audio.

Audio generation must consume validated canonical unit type. It must never guess that a phrase is a word from whitespace or from the fact that the phrase appears in a Lesson.
