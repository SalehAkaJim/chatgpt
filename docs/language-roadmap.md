# Nova Language Roadmap

Updated: 2026-09-13

## Core curriculum policy

A curriculum level ends when its educational coverage is complete, not when its unit count reaches a multiple of ten.

- Work batches may contain **1 to 10 units**.
- Ten units is a maximum batch size for manageable authoring, QA, database validation and audio generation.
- The final batch of a level may contain any number from 1 to 10.
- Before closing every CEFR level, run a **coverage/gap audit**.
- Add only the units needed to close real communicative or language-specific gaps.
- Finish each level with an integrated capstone when appropriate.
- Never add filler units only to reach 10, 20, 30, 40, 50, etc.

## Language priority

### 1. English (fa -> en-US)

Status: curriculum/production exists through C2.

Priority: **maintenance only** unless QA finds a concrete issue or content is intentionally revised.

### 2. German (fa -> de-DE)

Status:

- Pre-A1: complete
- A1: complete
- A2: complete
- B1: complete at **45 units**, including MySQL/audio validation
- B2: **in progress**; dedicated coverage map exists in `docs/german-b2-coverage-map.md`; Batch 1 = 10 units
- C1: after B2
- C2: after C1

Execution rule for every remaining German level:

1. Design a language-specific coverage map before production.
2. Do not copy the English unit count.
3. Author in batches of at most 10 units.
4. For each batch: content -> QA -> cumulative audit -> MySQL 9 -> paid audio -> audio SQL -> validation/commit.
5. Near the end of the level, run a gap audit.
6. Use a smaller final batch if that is all the level needs.
7. Close the level with a capstone only after the coverage audit is green.

### 3. Arabic (fa -> ar-MSA)

Status: existing Pre-A1 content remains in the repository.

Priority: **frozen / no further development**.

Do not create new Arabic levels, units, audio or curriculum expansion unless the product owner explicitly reactivates Arabic later. Existing Arabic data should be preserved, not deleted.

### 4. Turkish (fa -> tr-TR)

Priority: **next new language immediately after German is complete through C2**.

Do not start French, Spanish, Italian, Portuguese or additional Arabic work before Turkish unless the product owner changes the priority.

Turkish must be designed as a language-specific Persian-speaker course, not as a translation of English or German.

Initial Turkish design requirements:

- Target language: `tr`
- Target variant: `tr-TR`
- Learner language: `fa`
- Learner variant: `fa-IR`
- Planned course slug: `fa-tr-tr`
- Start with a dedicated foundation/Pre-A1 decision based on actual learner needs rather than forcing the German/English shape.
- Explicitly cover Turkish orthography and sound mappings important for Persian speakers: `ı/i`, `o/ö`, `u/ü`, `ç`, `ş`, `ğ`, `c/j`.
- Build grammar progression around Turkish structure: agglutination, vowel harmony, personal endings, case suffixes, possession, negation/questions, tense/aspect/evidential forms, participles and clause linking.
- Teach suffix chains incrementally rather than presenting long forms as unanalyzed vocabulary.
- Keep conversational usefulness primary; grammar exists to support real interactions.
- Character rotation and audio voice-lock rules remain the same product-wide.
- Determine each Turkish CEFR level length through coverage, not copied unit totals.

## German B1 closure decision

The first 40 German B1 units already covered the major everyday domains: narrative, opinions, disagreement, work/study, practical problem solving, health, travel, media/technology, community, housing, applications, workplace communication, learning, environment, complaints, money, relationships, culture, public services, transport disruption, news, volunteering, nutrition, family responsibility, projects, unexpected situations, future change, moving, repairs, contracts, privacy, feedback/teamwork, exam stress, hosting, city services, doctor follow-up and goals/priorities.

The gap audit identified five remaining coverage needs:

41. `Erklären & Präsentieren` — structured explanations and short presentations
42. `Zusammenfassen & Weitergeben` — summarizing and relaying practical information
43. `Nachrichten & E-Mails` — practical connected writing with appropriate tone
44. `Hinweise & Anleitungen` — understanding and explaining notices/instructions
45. `B1 Alltag: Alles zusammen` — integrated multi-step B1 capstone

Therefore German B1 closed at **45 units**. No units 46-50 should be created unless a later QA audit finds a concrete missing B1 capability.

## German B2 start decision

B2 starts from a fresh language-specific coverage map rather than extending the B1 topic list mechanically. Batch 1 establishes the B2 discourse layer with argument/evidence, nuanced agreement and disagreement, presentations and analytical follow-up questions, negotiation, meetings and decisions, formal escalation, source comparison, media uncertainty, data/trend interpretation and social-issue discussion.

The final B2 unit count remains intentionally **undecided** until later coverage audits.
