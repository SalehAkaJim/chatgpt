# 12 — Interleaved stories and variable played roles

The owner clarified that **both sides of a conversation change between adjacent Lessons**, including the character played by the learner. A Course has no permanent learner persona. Apply this rule to all canonical and future story Lessons.

## Rotation and story-quality rules

1. Each Lesson has a concrete situation, a small story event and an explicit played character. The user plays one person in that scene, not a permanent self-insert traveling through every Lesson.
2. Adjacent Lessons must have different story arcs and disjoint casts. The cast includes the played role, interlocutors, and speakers in short listening clips. A cameo does not bypass rotation.
3. Return to a cast or arc after a variable interval, normally 5–10 Lesson positions. The current minimum distance is 5: a character in Lesson 1 may next appear in Lesson 6. Later returns may exceed 10 when the story has a reason; never invent a scene just to meet a return quota.
4. Keep independent, canonical arc identities. Changing a scene title or a person's name does not turn the same story into a new arc. The pair and situation must actually change.
5. A returning arc continues from its latest episode. Keep relationships, personal facts, roles and voices consistent; do not restart the same first meeting. A character's first appearance in the Course may be between people who already know each other, and should say so.
6. Within a Lesson, the played role stays clear. It may be a different member of a returning cast in a later episode. Early A1 normally uses one clear interlocutor at a time, with a small cast appropriate to the task.
7. Keep story progression separate from language progression. A new cast can practise vocabulary learned in the preceding Lesson without continuing that Lesson's story. Curriculum prerequisites and review links can therefore cross arcs.
8. Each Lesson serves one communicative job. Do not add all Activity types or extra lines just to satisfy a count. A story change must not hide an abrupt language-load increase.
9. Important language recurs through actual recognition, retrieval or transfer tasks. Names and punctuation alone do not establish transfer. Record the earlier Lesson and current Activities in `curriculum.reviewLinks`.
10. Visible-response speech is supported read-aloud practice. STT matching is not a pronunciation score or spontaneous mastery. An already displayed transcript supports recognition; distinguish it from a new listening clip.
11. Scene support, character labels and questions must not leak listening answers. Teach every unfamiliar expression needed by scored tasks.
12. `scenarioFa` and `storyBeatFa` must describe an actual event grounded in the setting and canonical Turns. Meta-copy such as «در ادامه داستان ... درباره موضوع این درس گفت‌وگو می‌کنند» is not a story beat.
13. In each complete eight-Lesson Quality-v3 window, use at least four distinct story arcs. The Course may use cross-character arcs to expand variety while preserving stable character identities.
14. Do not add a new fictional character until an independent, verified audio voice is mapped for that character. Never invent or guess an ElevenLabs voice ID.

## Source and runtime contract

Course `characters` contains every fictional person, including characters the user plays. Each has a stable `characterKey`, profile, first-appearance Lesson and voice mapping. Course `narrative.version=2` remains the canonical schema version and owns independent arcs, cross-character arcs, rotation settings and the voice-safe expansion policy; it does not own a permanent `learnerRoleKey`, learner name or learner biography.

Each Lesson's `curriculum.story` owns `learnerRoleKey`, full `participants`, `arcKey`, unique `sceneKey`, `introducedCharacterKeys`, `relationshipState`, `continuesLessonKey`, dependencies, setting and story event. First appearance is separate from first meeting.

In canonical schema 2.2.0, both character and learner Turns have `characterKey`. `role=learner` means the user speaks that character's line in this Lesson. SQL assigns the existing `lesson_turns.character_id` for both roles, and audio uses that person's voice. Story audio has no global learner-voice fallback. No database table or migration is added.

The prototype shows the played role on every task and names that role next to its spoken response. Changing Lessons must update both the role display and the voice reference.

## Executable checks

`validate_story.py` runs before paid audio and rejects:

- a Course-wide fixed learner persona;
- a character or arc returning before the minimum interval, regardless of speaker role;
- undeclared speakers, a learner Turn belonging to the wrong played character, or participants outside the arc;
- a continuation pointing anywhere except the latest earlier episode;
- a repeated first meeting, incorrect debut, invalid review link or future dependency.

Product Quality v3 additionally rejects future Lessons that use generic/meta story copy, test an exact dialogue Turn before exposing the dialogue, or over-concentrate a wave on too few story arcs.

The sequence is checked in actual Course display order, so reordering content cannot silently make the same characters adjacent. Individual canonical validation, SQL execution and audio QA also verify the played-character references. Deterministic checks do not pretend to prove learning effectiveness; real learner testing remains a separate release gate.

## Production loop

Plan alternating arcs and played roles → author canonical Lessons → review the full sequence and language progression → run Quality v3 gates → generate/reuse audio → import/retrieve on disposable MySQL 9.0.1 → test the prototype → collect learner feedback.

The active A1 prefix is generated from canonical Lesson sources and must not be hard-coded in workflow logic or documentation. Pending owner decisions do not stop routine authoring/QA. Broad production and public educational readiness remain separate states.
