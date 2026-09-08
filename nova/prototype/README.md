# Nova Lesson prototype

Serve the repository over localhost or HTTPS and open `nova/prototype/index.html`. The home screen shows the learning language, progress for the current page session, and the next or unfinished Lesson. The user can select any available Lesson for content testing. Reloading clears the session; no user progress, bookmark or flashcard tables are implemented.

The page loads `nova/courses/index.json`, then the chosen canonical Course, Lesson and verified audio manifest. Run the Pilot build first to produce the catalog and manifests. Content, options, translations, answers and audio paths come from those files; they are not duplicated in the UI. A mismatched Lesson/audio source hash blocks playback.

Use the home screen or open a Lesson directly with `?course=en-fa&lesson=0002`. Returning home preserves the current activity/exchange by canonical key for the current session. Completion offers the next Lesson or a return home.

Speech recognition uses the browser's English recognition service when supported. It compares recognized text against canonical accepted speech, shows what was heard, and does not measure pronunciation. Microphone failures display guidance. The home screen's explicit review mode (also `?test=1`) allows skipping speech and labels completion as review without claiming a speech assessment.

Supported interactions: guided exchanges, lexical teaching, audio-first sentence ordering, cloze, comprehension, response choice and standalone speaking. The opening step shows the canonical story situation; every task shows the character played in this Lesson. Both the played character and the interlocutor rotate between adjacent Lessons. Tests discover all canonical Lessons (currently thirteen) and cover completion, speaker identity, story context, wrong-answer recovery, session progress, exact-exchange resume, explicit review mode, canonical answer changes, double-digit Lesson selection and stale-manifest rejection. Speech/audio in automated DOM tests are mocked; real microphone and visual browser testing remain separate. See [the story batch](../courses/en-fa/STORY_BATCH_01.md) for the owner test route.
