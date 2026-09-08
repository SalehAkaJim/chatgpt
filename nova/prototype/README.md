# Nova Lesson prototype

Serve the repository over localhost or HTTPS and open `nova/prototype/index.html`. The page loads `nova/courses/index.json`, then the chosen canonical Course, Lesson and audio manifest. Run the Pilot build first to produce the catalog and verified manifests.

Choose a Lesson in the selector, or use `?course=en-fa&lesson=0002`.

STT uses the browser's supported English speech recognition. It checks canonical accepted speech and does not claim to measure pronunciation. `?test=1` adds an explicit test-only completion button for browser checks without a microphone; it is absent from the normal flow.

The page supports guided exchanges, lexical teaching, audio-first sentence ordering, cloze, comprehension and response choice. Content and answers belong only in the canonical Lesson. It refuses a manifest whose source hash does not match the Lesson.
