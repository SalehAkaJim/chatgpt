# 12 — Story continuity and bounded production batches

The owner requested a recurring story, new characters, and ten additional English A1 Lessons after the first three. This is the active rule for future story content, not permission for unattended unlimited generation. The current evaluation batch is Lessons 0004–0013; the prototype contains all thirteen Lessons.

## Story rules

1. Start with a useful real-life task. Each Lesson advances one coherent communicative job and one small story event. Never add conversation merely to reach a Turn or Lesson quota.
2. Keep the learner role explicit and stable. In this course the learner plays Alex. Fictional country and name facts belong to that role, not the real user's identity.
3. Use a small recurring cast. Introduce at most one new interlocutor in an early A1 Lesson, when the situation needs them. A name and a clear role are sufficient; a service encounter does not need a forced first-meeting dialogue.
4. Remember relationships. Once two people have met, do not restart their first meeting. A deliberate classroom rehearsal must be explicitly framed as rehearsal and is not a new story meeting.
5. Preserve character facts, occupation, relationship and voice mapping. New information must be compatible with earlier scenes. A change needs a stated story reason. Do not change a canonical character key merely to obtain a different voice.
6. Give characters reasons to return. Nora returns as a classmate/social companion; Ben returns as a cafe worker. Do not turn every character into the same question-asking tutor.
7. Early A1 normally has one clear interlocutor per guided exchange. Separate listening clips can involve another person when the task clearly identifies that change. Keep the current scene and learner role visible in the prototype.
8. Reuse language in a changed communicative demand, context or required information. Changing only a name does not establish transfer. First-meeting language can still be taught with a genuinely new person, but that alone does not prove transfer.
9. Plan later retrieval before increasing volume. `curriculum.reviewLinks` points to earlier Lessons and the current Activities that actually revisit them. Mere appearances in a transcript are not successful review evidence.
10. Do not pad Lessons with all interaction types. Use the smallest useful set; the first product pilot's interaction coverage is not the production template. Include a cumulative Lesson in this ten-Lesson batch without adding new target language.
11. Guided speech with a visible answer is supported reading practice. STT checks wording, not pronunciation quality or spontaneous mastery. Listening to an already displayed line is recognition/review; only a clip not previously shown in that Lesson can provide new listening evidence, and even that is not a full proficiency assessment.
12. Story support must not reveal the answer to a listening task. Check the setting, character label, prompt, transcript timing and options together. Teach every required unfamiliar expression before assessment.

## Authoring contract (no additional database tables)

The Course owns `narrative.version`, `learnerRoleKey`, the learner name and stable facts. Each character has a canonical key, voice mapping, and `metadata.debutLessonKey` plus stable facts. The Lesson owns `curriculum.story`: unique scene key, arc key, learner role, participants, first meetings, earlier dependency keys, setting and story event.

`curriculum.reviewLinks` records the earlier Lesson, current Activity keys, learning demand and rationale. These are authoring fields, not a module/chapter layer or new user tables.

`tools/validate_story.py` blocks missing scene contracts, role drift, undeclared speakers, repeated first meetings, incorrect debuts, future dependencies, invalid review references, or more than one debut in an early scene. It runs before paid audio in `build_pilot.py`.

These checks verify references and declared chronology. They do **not** infer semantic truth from English/Persian prose. Naturalness, plausible sequence, country/occupation facts, learning load, distractors and meaningful transfer still require a reading review of the complete batch.

## Production loop

Plan a short arc and its review links → author canonical Lessons → review the story as a whole → run deterministic gates → generate/reuse audio → validate MySQL imports and stable IDs → test every Lesson through the prototype → obtain learner/owner feedback.

Keep quality thresholds and paid-audio checkpoints. Record failures and revise canonical source before regenerating derivatives. Do not call a technically passing batch pedagogically complete, and do not extrapolate whole-language production time from unmeasured per-Lesson estimates.

The owner-authorized ten-Lesson batch may proceed while final learner review is pending. Broad unattended generation and final course publication remain separate from this private testing release.
