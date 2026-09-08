# Nova Audio — Lesson Pilot

Audio is mandatory for technical Pilot completion. Every required Turn and eligible lexical item is generated from canonical text and an explicit Course voice map. Lexical items use Lori.

## Shared lexical assets

`nova/audio/lexical/{course}/index.json` owns the verified Course audio registry. Asset identity includes source text, voice ID and model ID. A second Lesson reuses the same verified asset without another paid request. A text/voice/model change creates another path, preserving files referenced by earlier manifests.

Existing lexical files and manifests are adopted after file-hash/decode checks, without renaming or regenerating them. Legacy lexical paths can therefore remain in the registry.

Turn audio remains `nova/audio/turns/{course}/{lessonKey}/{turnKey}.mp3`.

## Validation and recovery

The manifest records exact Lesson source hash, text, voice, path, file SHA-256 and measured duration. Validation independently decodes the actual file and verifies the Course voice mapping. Merely declaring decoded=true never passes a corrupt file.

The generator checkpoints successful items during a run. `--reuse-only` permits verification/reuse without new paid synthesis. Runtime SQL obtains paths and durations from the validated manifest.
