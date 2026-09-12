# Production audio policy

Audio is a derived artifact. Content JSON and canonical database rows remain the source of truth.

## Required targets

1. **Lexical audio** — every approved English lexeme/word form that is shown as a learnable word or short expression.
2. **Utterance audio** — every approved target-language sentence/utterance.
3. **Dialogue audio** — every dialogue turn, rendered with the persistent voice assigned to its character.

## Voice rules

- English target locale is `en-US` unless a course explicitly says otherwise.
- The lexical narrator is **Lori**, carried forward from the archived Nova audio workflow. A canonical lexical text reuses the same audio across lessons and units.
- Neutral sentence audio uses a stable narrator voice. For English it defaults to Lori unless the course voice registry selects a separate narrator.
- Dialogue characters never use an anonymous/global fallback. Each character must resolve to a persistent voice profile before paid generation is allowed.
- A character's provider voice is stable across units. Delivery settings may change slightly by scene, but the underlying voice does not.
- Do not infer a character's gender, age, or personality from the spelling of a name. Those traits must come from an explicit character/voice profile.
- Prefer verified/studio-quality voices whose verified language/locale matches the target course. For `en-US`, prefer a clear natural American-English voice.

## ElevenLabs defaults

- Provider: ElevenLabs.
- Stable high-quality default model: `eleven_multilingual_v2`.
- Dialogue model may be overridden with `ELEVENLABS_DIALOGUE_MODEL_ID` (for example a current expressive model) after listening QA.
- Preferred output: `mp3_44100_192`; generator automatically retries `mp3_44100_128` if the account tier does not allow 192 kbps.
- Default concurrency: 2.
- Paid generation requires an explicit `--confirm-paid-generation` flag.

## Reuse and identity

The cache identity is based on target locale, normalized source text, logical voice key, provider model, and voice settings. Reusing a word or sentence with the same voice/settings must reuse the same audio file rather than paying to generate it again.

## QA inherited from the archived workflow

Every generated asset stores:

- source-text SHA-256,
- final file SHA-256,
- provider voice ID and logical voice key,
- provider model and output format,
- duration when decodable,
- generation timestamp.

An asset is **stale** if the source hash, voice, model, or relevant settings no longer match its manifest entry. Stale audio must never be treated as approved.

## Quality gates

Generation fails or blocks an item when:

- the character has no explicit voice profile,
- the requested voice cannot be resolved exactly enough,
- target locale is incompatible with the selected voice profile,
- returned audio is empty or cannot be decoded as MP3,
- duration is implausibly short for non-empty text,
- source text changed after generation.

Provider generation and database linking are separate steps. This keeps paid TTS retryable without mutating content rows.
