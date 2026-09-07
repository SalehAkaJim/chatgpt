# Nova audio — native v3.2

Canonical audio locators are written directly into Chapter SQL rows before TTS runs.

- Turns: `nova/audio/turns/{course}/{level}/sNNNN/lNN/tNN.mp3`
- Words: `nova/audio/words/{course}/{sha256(display_form)}.mp3`

TTS materializes files at the locator already stored in the row. It must not emit or require post-import audio UPDATE SQL.

Audio manifests and MP3 files are generated artifacts. A fresh foundation reset may delete them; publication remains blocked until the current source rows have complete matching audio again.
