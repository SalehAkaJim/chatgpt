# Story evaluation — variable played roles

Thirteen early A1 Lessons now alternate independent casts and situations. Both the played character and the interlocutor change between adjacent Lessons. This replaces the earlier fixed-Alex sequence. Lesson, Turn and Activity keys remain stable; content, role references and audio are regenerated from canonical sources.

| Lesson | User plays | Interlocutor | Situation | Previous episode |
| --- | --- | --- | --- | --- |
| 0001 | Alex | Maya | First introduction at class | — |
| 0002 | Owen | Nora | Meeting a neighbor in the building | — |
| 0003 | Nina | Iris | Greeting a familiar receptionist at the community center | — |
| 0004 | Liam | Leo | Asking the librarian to repeat an unheard question | — |
| 0005 | Ruby | Sara | Country of origin before a group walk | — |
| 0006 | Alex | Maya | Paired classroom task naming objects | 0001 |
| 0007 | Owen | Nora | Borrowing a pen to sign for a delivery | 0002 |
| 0008 | Nina | Iris | Helping find an item at the community-center desk | 0003 |
| 0009 | Ava | Ben | First drink order at a cafe | — |
| 0010 | Ruby | Sara | Choosing a drink after the group's walk | 0005 |
| 0011 | Liam | Leo | Accepting/refusing refreshments at a library event | 0004 |
| 0012 | Alex | Maya | Correcting a misunderstood request before writing | 0006 |
| 0013 | Owen | Nora | Cumulative borrowing/repair between neighbors | 0007 |

Return distances in this slice are 5, 6 and 7 Lesson positions. No adjacent Lessons share a played role, interlocutor, listening speaker or arc. The cafe arc can return in a later batch when a useful task and sufficient gap exist; it is not forced to recur inside these thirteen Lessons.

The learner role is selected per Lesson from the Course character roster. There is no permanent learner biography or global story learner voice. Every spoken Turn names its character, and audio resolves that person's configured voice. Alex and Maya remain classmates; Owen and Nora are neighbors; Ruby is from Iran and Sara from Canada. Nina and Iris already know each other at their first Course appearance.

Narrative rotation does not reset language knowledge: a new cast may reuse a construction learned in an earlier arc. Lesson 0013 has no new target vocabulary and retrieves requests, location and correction language. Guided read-aloud practice and choice tasks are not claims of free-speaking mastery.

Voice mappings use the existing verified Vexa, Lori, Brent and Adam assets, plus Brian and Rachel. Primary lookup references: [ElevenLabs Brian sample](https://elevenlabs.io/audiobooks), [ElevenLabs Rachel voice example](https://elevenlabs.io/docs/api-reference/voices/get). Generation and file validity must pass the build independently of those references. A voice actor can be assigned to separate fictional characters; each character's assignment stays stable.

## Validation and owner test

Canonical checks cover played-character references. Cross-Lesson tests reject an adjacent recurring learner even when the interlocutor changes, recurring listening cameos, renamed arcs hiding repeated speakers, premature arc continuation, and reorder-induced violations. MySQL checks both roles' character foreign keys and stable IDs. Audio QA checks the voice selected for every Turn. DOM tests complete all thirteen Lessons and verify that the displayed played role changes on navigation.

Start with Lessons 0001–0005 and check that both people and the situation change. Then compare 0001→0006→0012 and 0002→0007→0013 to test continuity after a gap. Microphone permissions, real STT behavior, vocal naturalness and learning effectiveness still need real-user testing; speech/audio events in DOM tests are mocked. Progress lasts only for the current page session.
