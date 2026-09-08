# Story batch 01 — ten new Lessons

Scope: Lessons 0004–0013, added to the original three for a 13-Lesson evaluation. This is an early A1 slice, not a complete A1 course. Original Lesson/Turn/Activity keys are retained. Lesson 0002 introduces Nora rather than making Alex meet Maya twice.

## Cast

| Character | Role and continuity | Debut | Voice |
| --- | --- | --- | --- |
| Alex | Learner role; from Iran; these facts do not describe the real user | 0001 | Brent reference voice |
| Maya | Classmate already known after 0001 | 0001 | Vexa |
| Nora | Classmate, from Canada; returns in class and as a cafe companion | 0002 | Lori |
| Ben | Cafe worker; returns at the same counter | 0009 | Adam |

Ben's voice ID is the Adam pre-made voice in the [ElevenLabs streaming example](https://elevenlabs.io/docs/eleven-api/guides/how-to/text-to-speech/streaming). Actual generation and validity must pass the build. Nora shares the lexical teaching voice, but her dialogue voice is distinct from Maya, Ben and Alex.

## Arc

| Lesson | Situation | Learning job | Reuse |
| --- | --- | --- | --- |
| 0004 | Noisy corridor with Nora | Ask for repetition | Wellbeing question |
| 0005 | Break with Nora | Say/ask country | Distinguish country, name and wellbeing |
| 0006 | Classroom task with Maya | Ask/name an object | Person-name versus object-name question |
| 0007 | Borrowing from Maya | Request a pen | Object names become practical requests |
| 0008 | Nora's missing book | Locate an object | Book/pen, giving an object, thanks |
| 0009 | First cafe visit, Ben | Request a drink | Request pattern and repair in a new setting |
| 0010 | Return to cafe | Choose between drinks | Changed offer and social-visit choice |
| 0011 | At a cafe table with Nora | Accept/decline | Drinks and requests with a peer |
| 0012 | Ben brings wrong order | Correct a request | Transfer correction to classroom objects |
| 0013 | Back in class | Combine request and repair | Delayed listening, changed object; no new targets |

## Review boundaries

The author reviewed relationship continuity, role consistency, short English, Persian meaning, prerequisite explanations, options and changed-context reuse. This is author review, not independent learner evidence. The story validator checks declared references and chronology; it cannot infer facts or naturalness from prose.

Visible-response dialogue is supported reading practice. STT matching is not pronunciation grading. Some comprehension tasks reuse the displayed dialogue and test recognition; separate clips appear in 0007–0010 and the cumulative Lesson. Lesson 0013 asks for a request before displaying its guided model, then changes the intended object in the final task.

The current guided renderer needs a character prompt before a learner response. Requests therefore start after a natural short greeting. No new interaction type or runtime hierarchy was introduced.

Generated reports contain canonical quality, decoded audio, source/voice/hash checks and MySQL 9.0.1 results. Prototype DOM tests discover every canonical Lesson and cover completion, errors/retry, speaker identity, story context, navigation, session progress and stale manifests. Speech/audio events are mocked: real microphone permission, STT recognition, accent quality, mobile rendering and learning remain separate tests.

## Owner test

1. See Nora's introduction in 0002, then follow 0004–0013 in order.
2. Read one response incorrectly, then correctly; listen to all character/reference voices and check clarity and turn identity.
3. Try 0009 with a microphone and in explicit review mode. Skipped speech must be labeled review.
4. Try 0013's opening tasks before the guided model. Check whether previous Lessons made them answerable.
5. Report Lesson/task when a line feels artificial, language is unexplained, options are ambiguous or a valid response is blocked.

Final owner/learner review and unrestricted generation remain pending. Progress is limited to the current page session. No whole-language production-rate estimate is inferred from this batch.
