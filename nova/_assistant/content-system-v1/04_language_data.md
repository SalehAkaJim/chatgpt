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

## Lexical model

The core dictionary/audio object is a **lexical item**, not necessarily one whitespace-delimited token.

A lexical item may be:
- a single orthographic word;
- a contraction or language-specific bound-looking form that is taught as one unit;
- a phrasal verb;
- a fixed or semi-fixed multiword expression;
- another language-specific lexical unit whose meaning/use is conventionally learned as a unit.

Examples in English include `hello`, `thank you`, `of course`, and phrasal-verb senses such as `wake up` when the multiword form is the actual lexical target.

The system separately represents:
1. **lexical item / sense** — a conventional learnable vocabulary unit, single- or multiword;
2. **construction** — a productive pattern such as `I'm + name/adjective`;
3. **grammar concept** — an explanatory abstraction used only when useful;
4. **pronunciation target** — a sound/stress/linking/intelligibility feature;
5. **communicative outcome** — what the learner can do.

## Lexical-item atomicity rule

Whitespace count is never the acceptance criterion.

A candidate is a lexical item only when it is reasonable to teach, retrieve, translate and pronounce as one conventional vocabulary unit in that language/context.

Hard reject as lexical items:
- full sentences or clauses created for one Lesson;
- arbitrary fragments copied from a Turn;
- accidental concatenations/tokenization errors;
- strings whose only reason for existing is to route Turn audio through lexical audio;
- productive sentence patterns that belong in the construction layer.

There is deliberately no global one-, two-, or three-token limit because Nova must remain language-agnostic.

## Lexical sense rules

Each lexical item occurrence must preserve where applicable:
- canonical display form;
- normalized lemma/head form;
- lexical kind (`word` or `multiword_expression`) as operational metadata, not as a quality judgment;
- POS/function in the actual context;
- sense-specific Persian meaning;
- source sentence/Turn reference;
- whether the item is target, review, support or incidental.

Do not infer a fake lemma/POS mapping merely to satisfy a schema.

## Tokenization and lexical spans

Turn text is canonical. Tokenization must reconstruct the exact learner-visible Turn text.

A lexical item may map to one token or a span of multiple tokens. Token boundaries therefore do not define vocabulary boundaries.

Punctuation and whitespace are not lexical items by themselves. A tokenizer/span-mapping failure is blocking and must not be repaired by inventing lexical entries.

## New vs support language

Every first meaningful occurrence of an unfamiliar unit is classified as:
- `target` — intentionally learned now;
- `support` — needed for context but meaning is immediately supplied and it is not assessed yet;
- `incidental` — allowed only when comprehension does not depend on learning it.

A scored answer cannot require an incidental item.

## Audio eligibility

Audio eligibility begins only after lexical validation passes.

- validated lexical item, single- or multiword → lexical-item audio eligible when useful to the learner;
- full sentence/Turn → Turn audio;
- construction → example/Turn audio unless a dedicated construction example is intentionally authored;
- punctuation/metadata → never audio.

Audio generation must consume validated canonical records and explicit unit type. It must never guess unit type from whitespace or arbitrary strings.
