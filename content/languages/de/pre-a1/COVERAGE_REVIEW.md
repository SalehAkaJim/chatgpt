# German Pre-A1 Coverage Review

Status: source-backed draft complete; final count pending QA
Current lesson count: 30
Target database: MySQL 9.0.1

## Decision rule

Thirty lessons are not accepted merely because there are thirty curriculum targets. A target counts as covered only when the course contains appropriate source-backed material and an activity modality that actually exercises the target. Multiple lessons may cover one target and one lesson may cover multiple targets.

`covered` below means curriculum coverage exists. It does **not** yet mean final pedagogical QA has passed.

| Target | Coverage | Main lesson evidence | Review note |
|---|---|---|---|
| CT001 greetings / leave-taking | covered | 1, 2 | Dedicated greeting recognition + time-of-day/leave-taking source material. |
| CT002 courtesy formulas | covered | 3 | Source-backed courtesy expressions with conversational use. |
| CT003 very short clear questions/statements | covered | 1, 4, 6, 19, 21 | Repeated two-turn source conversations provide predictable short input. |
| CT004 understand basic personal information | covered | 7, 8, 9, 10, 17, 29 | Origin, residence, family, age, birth data and personal particulars. |
| CT005 give/ask name | covered | 5, 6 | Source name introduction plus explicit source question. |
| CT006 give/understand age | covered | 10 | FAST provides age question; DLI SOLT supplies the exact source template `Ich heiße ... und bin ... Jahre alt.` |
| CT007 minimal origin/nationality | covered | 7, 29 | Spoken origin plus authentic nationality field. |
| CT008 minimal residence information | covered | 8, 29 | Spoken residence plus authentic residence/address fields. |
| CT009 family labels/minimal family info | covered | 9 | Exact Basic-course family exchange and family labels. |
| CT010 simple numbers | covered | 11, 12, 13, 25 | 0–20 recognition plus phone/price use in context. |
| CT011 phone number | covered | 13 | Exact post-office number question/number response. |
| CT012 day/time/date | covered | 14, 15, 16 | Weekdays, official time and date/month exchange. |
| CT013 date of birth | covered | 17 | Exact Basic personal-particulars exchange and authentic form reinforcement. |
| CT014 familiar words/numbers/dates in slow input | covered | 1, 11–16 | Repeated source conversations and recognition work across greeting/number/time/date. |
| CT015 very simple location information | covered | 18, 19 | Picture-supported familiar places and exact location exchange. |
| CT016 simple concrete information question | covered | 6, 19, 21 | Name/location/naming questions with short predictable answers. |
| CT017 short familiar action instructions | covered | 20, 22 | Source directions plus exact household instructions. |
| CT018 known words/names/numbers in short recordings | covered | 11–13, 30 | Number/name/phone recognition and cumulative review. |
| CT019 familiar words supported by pictures | covered | 18, 23 | Headstart picture-supported places and food/drink. |
| CT020 time/place in simple note/message | covered | 27 | Authentic invitation card contains date, time, venue and address. |
| CT021 event/day/time/location from invitation | covered | 27 | Authentic FAST printed invitation card used directly. |
| CT022 simplest informational material with familiar words + pictures | covered | 18, 23, 26 | Picture place vocabulary, picture drink material, categorized menu/list reading. |
| CT023 extremely short signs/instructions | covered | 30 | Consolidation includes exact Headstart short signs `kein Zutritt`, `Ruhetag`, `geöffnet`, displayed as sign cards. |
| CT024 simple purchase/order food or drink | covered | 24, 25 | Exact restaurant order and department-store purchase exchanges. |
| CT025 prices / transactional numbers | covered | 25 | Exact source price question and DM 35 response. |
| CT026 rehearsed self-description | covered | 5–10, 30 | Name, origin, residence, family and age are all source-backed; cumulative review reconnects the repertoire. |
| CT027 simple feeling | covered | 4 | Dedicated fixed feeling-response lesson. |
| CT028 write basic personal information | covered | 29 | `guided_writing` uses only authentic form labels; learner supplies their own name/address/nationality data. |
| CT029 short personal-info phrases / simple form | covered | 28, 29 | Authentic FAST Meldeschein + `form_fill` and guided writing. |
| CT030 simple word order + intelligible pronunciation | covered | distributed + 30 | Word-order/pronunciation activities are distributed through the course and sampled again in consolidation. |

## Current count assessment

No mandatory Pre-A1 target currently requires an additional standalone lesson. Earlier age-production and sign-reading gaps have been closed by additional source material rather than by inventing German or automatically increasing the lesson count.

Therefore **30 remains the current candidate final lesson count**. It should only become `final` after all of the following pass:

1. MySQL 9.0.1 cumulative CI with all 30 lessons.
2. All 30 opening activities are source-backed conversations.
3. Every dialogue turn has provenance.
4. No speaker/character gender mismatch.
5. Activity-sequence repetition QA shows acceptable variety.
6. Every lesson has enough activity depth for its own content; no lesson is padded merely to match another lesson.
7. Persian translations receive a final fidelity pass.
8. Target-language strings receive a transcription/source-fidelity pass against the source pages.

If any of those checks reveals a pedagogical gap that cannot be fixed inside an existing lesson without overloading it, the lesson count must increase. The number 30 is not protected.
