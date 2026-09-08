# English six-level production map

Status: curriculum blueprint, not completed course coverage. The active runtime Course remains A1. Upper-level calibration drafts are authorized for comparing task demand; they are not inserted into the beginner learning path.

CEFR anchors: [Council of Europe global scale](https://www.coe.int/en/web/common-european-framework-reference-languages/table-1-cefr-3.3-common-reference-levels-global-scale). Display labels below are product labels, not official equivalences to a fixed Lesson count.

| Level / display label | Reception | Interaction and production | Written work / mediation | Exit evidence to plan |
|---|---|---|---|---|
| A1 · Beginner | Short clear questions, signs, prices, names, times | Introductions, immediate needs, simple requests, descriptions and repair | Short personal details/forms and very short messages | Perform familiar tasks with slowly delivered input; recombine taught language with less support |
| A2 · Elementary | Short everyday messages, announcements and directions | Routine transactions, past events, plans, simple comparisons | Practical messages and simple relaying of concrete details | Handle a changed everyday situation with simple connected language |
| B1 · Intermediate | Main points and relevant details in familiar work/travel/life material | Narrate experience, explain problems, give reasons and negotiate routine solutions | Connected descriptions, messages and summaries of familiar content | Complete a multi-step task, explain a choice and respond to an unexpected but familiar complication |
| B2 · Upper Intermediate | Main ideas and arguments in complex concrete/abstract input | Discuss alternatives, defend a position, qualify recommendations | Clear detailed text, reasoned comparisons, faithful summaries | Sustain a reasoned response and distinguish evidence, tradeoffs and speaker intention |
| C1 · Advanced | Demanding extended texts, implicit meaning and qualified claims | Flexible professional/academic interaction and structured argument | Well-organized complex writing, register adaptation and synthesis | Preserve nuance and uncertainty while communicating effectively to a defined audience |
| C2 · Proficient | Fine distinctions of stance, implication and rhetoric across sources | Precise spontaneous expression, reformulation and handling subtle disagreement | Integrated source synthesis and sensitive mediation across audiences | Reconstruct arguments faithfully, control shades of meaning and adapt register without losing substance |

## Coverage records

For each outcome, record: stable outcome key; prerequisites; introduction Lesson; guided practice; recognition; hidden-response recall; delayed review; changed-context performance; teacher/model review; learner evidence. Use `not_planned`, `drafted`, `reviewed_for_testing`, `learner_tested` and `covered` separately. A stored reference or completed activity never automatically upgrades an outcome to covered.

The detailed A1 starting map remains [A1_OUTCOMES.md](../../_assistant/content-system-v1/A1_OUTCOMES.md). The existing 13 Lessons cover introductory greetings, first meetings, countries, object names, requests, location, refreshments and repair. They do not yet cover all numbers, time, routine, family, basic writing and other A1 outcomes.

## Ordering and review

- Design the whole outcome/prerequisite graph before committing to Lesson counts. The earlier 1,200-Lesson figure is a sizing scenario, not a target or a CEFR requirement.
- Each Lesson has one coherent communicative job. Higher levels increase reasoning, text length, interaction and independence, not just rare vocabulary.
- Interleave independent arcs. Both played and other characters change between neighboring Lessons. Revisit familiar pairs at variable distances under the existing rotation rule; learning review can cross story arcs.
- Introduce → supported practice → meaning choice → hidden-answer retrieval → delayed changed-context task. Not every step requires a new activity type or database table.
- Reduce translations and models gradually. Higher-level writing/speaking uses rubrics, acceptable meaning ranges and feedback, not equality to one model answer.
- Sample each stage for perceptual audio review and real learner trials. Early A1 difficulty and C2 nuance cannot be validated by the same readability or sentence-length threshold.

## Production benchmark

Calibrate using the 25 texts listed in [the sample index](../../calibration/en-fa/index.json). Keep these measurements separate: authoring time, review time, number of substantive rewrites, validation time, new audio count/time, cache reuse, error/retry rate and learner-task success. Report per-level ranges, not a single short-A1 average.

The implemented pipeline now performs parallel text preflight before any paid audio and retains the existing verified audio cache. Model-generation workers and arbitrary all-output incremental build caching are not implemented here: adding them safely requires a runner with isolated outputs and one integration writer. Estimate a speedup only after measuring actual contention, quality and rework.
