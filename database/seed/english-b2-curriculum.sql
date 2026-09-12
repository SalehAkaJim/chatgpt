-- English (en-US) B2 curriculum for Persian-speaking learners
-- Independent upper-intermediate continuation after B1.
-- Requires schema.sql, migrations, CEFR/language/skills seeds, and language-variants-courses seed.

INSERT IGNORE INTO curriculum_units (
  course_id,
  target_language_id,
  cefr_level_id,
  skill_id,
  topic_id,
  slug,
  title,
  learning_objective,
  sort_order,
  expected_lessons,
  status,
  metadata
)
SELECT
  c.id,
  c.target_language_id,
  lvl.id,
  s.id,
  t.id,
  u.slug,
  u.title,
  u.objective,
  u.sort_order,
  u.expected_lessons,
  'approved',
  u.metadata
FROM (
  SELECT 10 AS sort_order,'social' AS skill_slug,'polite-language' AS topic_slug,
         'b2-catching-up-with-detail' AS slug,'Catching Up with Detail' AS title,
         'Sustain a natural catch-up conversation, describe recent developments in detail, and respond with relevant follow-up questions and reactions.' AS objective,
         3 AS expected_lessons,
         JSON_OBJECT('can_do','I can sustain a detailed social catch-up and respond naturally to new information.','grammar_focus',JSON_ARRAY('present perfect simple vs continuous','discourse markers','follow-up questions and reactions')) AS metadata
  UNION ALL SELECT 20,'communication','simple-messages','b2-detailed-personal-stories','Detailed Personal Stories',
         'Tell a coherent personal story with background, key events, reactions, causes, consequences, and a clear ending.',3,
         JSON_OBJECT('can_do','I can tell a detailed personal story that is easy to follow.','grammar_focus',JSON_ARRAY('narrative tenses','past perfect','narrative linking'))
  UNION ALL SELECT 30,'communication','simple-messages','b2-causes-consequences','Causes & Consequences',
         'Explain why something happened, distinguish immediate and underlying causes, and describe short- and longer-term consequences.',3,
         JSON_OBJECT('can_do','I can explain causes and consequences with clear connections between ideas.','grammar_focus',JSON_ARRAY('because/since/as','therefore/as a result','due to/because of'))
  UNION ALL SELECT 40,'daily-life','daily-routine','b2-habits-trends-change','Habits, Trends & Change',
         'Discuss changing habits and patterns over time and compare past, present, and emerging trends in familiar contexts.',3,
         JSON_OBJECT('can_do','I can discuss how habits and trends change over time.','grammar_focus',JSON_ARRAY('used to/would','present perfect continuous','increasingly/tend to'))
  UNION ALL SELECT 50,'social','hobbies','b2-experiences-achievements','Experiences & Achievements',
         'Describe meaningful experiences and achievements, explain their significance, and connect them to later choices or development.',3,
         JSON_OBJECT('can_do','I can describe important experiences and explain why they mattered.','grammar_focus',JSON_ARRAY('present perfect','past simple','relative clauses and emphasis'))
  UNION ALL SELECT 60,'time-plans','future-plans','b2-future-possibilities','Future Possibilities',
         'Discuss future possibilities with different degrees of certainty and explain what may influence an outcome.',3,
         JSON_OBJECT('can_do','I can discuss possible future outcomes and how likely they are.','grammar_focus',JSON_ARRAY('will/may/might/could','probably/likely/unlikely','future time clauses'))
  UNION ALL SELECT 70,'communication','requests','b2-hypothetical-choices','Hypothetical Choices',
         'Discuss unreal or unlikely situations, compare imagined options, and explain what you would do and why.',3,
         JSON_OBJECT('can_do','I can discuss hypothetical choices and their possible consequences.','grammar_focus',JSON_ARRAY('second conditional','would/could/might','if I were'))
  UNION ALL SELECT 80,'time-plans','future-plans','b2-goals-tradeoffs','Goals & Trade-offs',
         'Discuss longer-term goals, competing priorities, possible sacrifices, and practical steps toward a preferred outcome.',3,
         JSON_OBJECT('can_do','I can explain a goal and weigh the trade-offs involved in reaching it.','grammar_focus',JSON_ARRAY('conditionals','purpose clauses','despite/in spite of'))
  UNION ALL SELECT 90,'social','polite-language','b2-negotiating-arrangements','Negotiating Arrangements',
         'Negotiate times, responsibilities, alternatives, and compromises when plans or expectations differ.',3,
         JSON_OBJECT('can_do','I can negotiate practical arrangements and reach a compromise.','grammar_focus',JSON_ARRAY('would/could','conditionals','softening expressions'))
  UNION ALL SELECT 100,'social','polite-language','b2-social-tact','Social Tact',
         'Handle invitations, sensitive refusals, awkward situations, and changes of plan with tact and appropriate tone.',3,
         JSON_OBJECT('can_do','I can handle socially sensitive situations without sounding abrupt.','grammar_focus',JSON_ARRAY('hedging','indirect language','would rather/prefer'))
  UNION ALL SELECT 110,'social','likes-dislikes','b2-nuanced-opinions','Nuanced Opinions',
         'Express a developed opinion, qualify it, acknowledge exceptions, and support it with reasons and examples.',3,
         JSON_OBJECT('can_do','I can express and qualify an opinion instead of presenting it as absolute.','grammar_focus',JSON_ARRAY('hedging','although/whereas','to some extent'))
  UNION ALL SELECT 120,'social','likes-dislikes','b2-agreement-disagreement','Constructive Agreement & Disagreement',
         'Agree, partly agree, challenge an idea, or disagree while maintaining a cooperative tone and responding to counterarguments.',3,
         JSON_OBJECT('can_do','I can disagree constructively and respond to another person’s reasoning.','grammar_focus',JSON_ARRAY('concession','contrast markers','softening disagreement'))
  UNION ALL SELECT 130,'communication','simple-messages','b2-reasons-results','Reasons, Results & Evidence',
         'Build a clear explanation using reasons, supporting details, examples, results, and simple evidence.',3,
         JSON_OBJECT('can_do','I can support an explanation with reasons, examples, and results.','grammar_focus',JSON_ARRAY('cause/result connectors','for example/in particular','which clauses'))
  UNION ALL SELECT 140,'shopping-money','prices','b2-comparing-alternatives','Comparing Alternatives',
         'Compare several options across multiple criteria and explain advantages, disadvantages, and practical trade-offs.',3,
         JSON_OBJECT('can_do','I can compare complex choices across several relevant criteria.','grammar_focus',JSON_ARRAY('comparative structures','whereas/while','the more...the more'))
  UNION ALL SELECT 150,'communication','requests','b2-recommendations','Recommendations with Reasons',
         'Give recommendations that take another person’s needs and constraints into account and explain the reasoning behind them.',3,
         JSON_OBJECT('can_do','I can recommend an option and justify why it suits a particular situation.','grammar_focus',JSON_ARRAY('would recommend','should/ought to','conditionals'))
  UNION ALL SELECT 160,'communication','requests','b2-problem-solving','Collaborative Problem Solving',
         'Define a problem, identify constraints, propose alternatives, evaluate them, and agree on a workable solution.',3,
         JSON_OBJECT('can_do','I can collaborate to solve a practical problem with several constraints.','grammar_focus',JSON_ARRAY('could/might','conditionals','if we...then'))
  UNION ALL SELECT 170,'communication','requests','b2-complaints-escalation','Complaints & Escalation',
         'Make a detailed complaint, explain prior attempts to solve it, request a specific outcome, and respond to proposed remedies.',3,
         JSON_OBJECT('can_do','I can make a firm but appropriate complaint and negotiate a solution.','grammar_focus',JSON_ARRAY('present perfect','passive voice','formal polite requests'))
  UNION ALL SELECT 180,'shopping-money','shopping','b2-product-research','Product Research & Decisions',
         'Discuss features, reviews, reliability, price, warranties, and suitability when making a considered purchase.',3,
         JSON_OBJECT('can_do','I can evaluate product information and explain an informed buying decision.','grammar_focus',JSON_ARRAY('relative clauses','reported opinions','comparison structures'))
  UNION ALL SELECT 190,'shopping-money','shopping','b2-services-repairs','Services, Repairs & Follow-up',
         'Explain a fault in detail, discuss repair or service options, clarify guarantees, and follow up on unresolved work.',3,
         JSON_OBJECT('can_do','I can manage a detailed service or repair interaction.','grammar_focus',JSON_ARRAY('have/get something done','passive voice','reported speech'))
  UNION ALL SELECT 200,'shopping-money','prices','b2-money-budgeting','Money & Budgeting',
         'Discuss everyday budgets, priorities, recurring costs, savings choices, and financial trade-offs in practical terms.',3,
         JSON_OBJECT('can_do','I can discuss a budget and explain spending or saving priorities.','grammar_focus',JSON_ARRAY('quantifiers','conditionals','comparison and approximation'))
  UNION ALL SELECT 210,'food-drink','restaurants','b2-food-dietary-needs','Food & Dietary Needs',
         'Explain dietary preferences or restrictions, ask detailed questions about ingredients and preparation, and negotiate alternatives.',3,
         JSON_OBJECT('can_do','I can clearly explain dietary needs and discuss suitable alternatives.','grammar_focus',JSON_ARRAY('relative clauses','passive voice','would rather/prefer'))
  UNION ALL SELECT 220,'health-body','basic-health','b2-health-history','Symptoms & Health History',
         'Describe symptoms, duration, changes over time, relevant background, and the effect of a health problem on daily life.',3,
         JSON_OBJECT('can_do','I can describe a routine health problem with useful detail and chronology.','grammar_focus',JSON_ARRAY('present perfect continuous','past simple','for/since'))
  UNION ALL SELECT 230,'health-body','basic-health','b2-wellbeing-lifestyle','Wellbeing & Lifestyle',
         'Discuss lifestyle patterns, stress, sleep, exercise, and realistic changes that may improve wellbeing.',3,
         JSON_OBJECT('can_do','I can discuss lifestyle choices and evaluate practical ways to improve wellbeing.','grammar_focus',JSON_ARRAY('gerunds/infinitives','conditionals','cause/effect language'))
  UNION ALL SELECT 240,'travel-transport','transport','b2-independent-travel','Independent Travel Planning',
         'Compare routes, schedules, costs, risks, and preferences to build an independent multi-step travel plan.',3,
         JSON_OBJECT('can_do','I can compare travel options and build a practical plan independently.','grammar_focus',JSON_ARRAY('future forms','conditionals','comparison structures'))
  UNION ALL SELECT 250,'travel-transport','transport','b2-travel-disruptions','Complex Travel Disruptions',
         'Explain a travel disruption, reconstruct what happened, understand alternatives, and negotiate onward arrangements.',3,
         JSON_OBJECT('can_do','I can manage common travel disruption with reasonable independence.','grammar_focus',JSON_ARRAY('passive voice','narrative tenses','conditionals'))
  UNION ALL SELECT 260,'travel-transport','places-town','b2-accommodation-issues','Accommodation Issues',
         'Explain accommodation problems, refer to booking details or prior communication, and negotiate an acceptable solution.',3,
         JSON_OBJECT('can_do','I can resolve a routine accommodation problem using detailed practical language.','grammar_focus',JSON_ARRAY('reported speech','present perfect','polite insistence'))
  UNION ALL SELECT 270,'travel-transport','places-town','b2-local-recommendations','Local Recommendations & Experiences',
         'Ask for, compare, and give detailed recommendations about local places, activities, customs, and practical choices.',3,
         JSON_OBJECT('can_do','I can discuss local experiences and tailor recommendations to someone’s interests.','grammar_focus',JSON_ARRAY('relative clauses','modals','comparison structures'))
  UNION ALL SELECT 280,'work-study','jobs','b2-work-responsibilities','Work Responsibilities & Priorities',
         'Explain responsibilities, competing priorities, progress, blockers, and revised expectations in a workplace context.',3,
         JSON_OBJECT('can_do','I can give a detailed update on responsibilities, priorities, and progress.','grammar_focus',JSON_ARRAY('present perfect','modals of obligation','deadline language'))
  UNION ALL SELECT 290,'work-study','jobs','b2-meetings-decisions','Meetings & Decisions',
         'Participate actively in a meeting, present a position, respond to suggestions, clarify disagreement, and confirm decisions.',3,
         JSON_OBJECT('can_do','I can participate actively in a routine meeting and help reach a decision.','grammar_focus',JSON_ARRAY('reported points','hedging','conditionals'))
  UNION ALL SELECT 300,'work-study','jobs','b2-projects-deadlines','Projects & Deadlines',
         'Discuss project scope, dependencies, risks, delays, responsibilities, and realistic delivery options.',3,
         JSON_OBJECT('can_do','I can discuss project progress, dependencies, and deadline risks clearly.','grammar_focus',JSON_ARRAY('future forms','passive voice','cause/result connectors'))
  UNION ALL SELECT 310,'work-study','jobs','b2-job-applications','Job Applications & Interviews',
         'Present experience and achievements clearly, answer follow-up questions, and explain suitability for a role with supporting examples.',3,
         JSON_OBJECT('can_do','I can present my professional experience and suitability in a detailed interview.','grammar_focus',JSON_ARRAY('present perfect','past simple','relative clauses and emphasis'))
  UNION ALL SELECT 320,'work-study','school-study','b2-study-challenges','Study Challenges & Deadlines',
         'Discuss workload, deadlines, difficulties, feedback, and practical ways to improve academic or training performance.',3,
         JSON_OBJECT('can_do','I can explain study challenges and negotiate practical next steps.','grammar_focus',JSON_ARRAY('modals','conditionals','gerunds/infinitives'))
  UNION ALL SELECT 330,'work-study','school-study','b2-learning-strategies','Learning Strategies',
         'Compare learning strategies, evaluate what works, and explain how progress can be monitored and adjusted.',3,
         JSON_OBJECT('can_do','I can evaluate learning strategies and explain what works best for me.','grammar_focus',JSON_ARRAY('comparison structures','gerunds/infinitives','cause/effect language'))
  UNION ALL SELECT 340,'social','hobbies','b2-media-reviews','Media Reviews & Recommendations',
         'Summarize and evaluate films, series, books, podcasts, or other media and justify a recommendation without overexplaining the plot.',3,
         JSON_OBJECT('can_do','I can give a balanced review and explain who might enjoy something and why.','grammar_focus',JSON_ARRAY('participle adjectives','relative clauses','concession'))
  UNION ALL SELECT 350,'communication','simple-messages','b2-news-discussion','News & Everyday Current Events',
         'Summarize the main points of a straightforward news report, distinguish fact from comment, and discuss likely implications.',3,
         JSON_OBJECT('can_do','I can summarize and discuss a straightforward news story in some detail.','grammar_focus',JSON_ARRAY('passive voice','reported speech','probability language'))
  UNION ALL SELECT 360,'communication','simple-messages','b2-digital-communication','Digital Communication & Privacy',
         'Discuss digital habits, privacy choices, online misunderstandings, platform rules, and common technical or communication problems.',3,
         JSON_OBJECT('can_do','I can discuss digital communication and privacy choices with clear reasons.','grammar_focus',JSON_ARRAY('conditionals','passive voice','reported speech'))
  UNION ALL SELECT 370,'social','polite-language','b2-relationships-misunderstandings','Relationships & Misunderstandings',
         'Explain interpersonal misunderstandings, describe different perspectives, and suggest tactful ways to repair communication.',3,
         JSON_OBJECT('can_do','I can discuss a misunderstanding from more than one perspective.','grammar_focus',JSON_ARRAY('reported speech','modal deduction','conditionals'))
  UNION ALL SELECT 380,'social','simple-messages','b2-community-life','Community & Everyday Participation',
         'Discuss local services, shared responsibilities, community concerns, and practical participation in familiar public situations.',3,
         JSON_OBJECT('can_do','I can discuss a practical community issue and contribute possible solutions.','grammar_focus',JSON_ARRAY('passive voice','modals','cause/effect language'))
  UNION ALL SELECT 390,'daily-life','common-actions','b2-environment-choices','Environment & Everyday Choices',
         'Discuss familiar environmental issues, trade-offs, individual choices, and realistic local solutions without requiring specialist knowledge.',3,
         JSON_OBJECT('can_do','I can discuss practical environmental choices and their consequences.','grammar_focus',JSON_ARRAY('conditionals','passive voice','concession and cause'))
  UNION ALL SELECT 400,'communication','questions','b2-explaining-presenting','Explaining & Presenting Clearly',
         'Give a structured explanation or short presentation, signpost sections, add examples, and respond to follow-up questions.',3,
         JSON_OBJECT('can_do','I can give a clear structured presentation on a familiar topic and handle questions.','grammar_focus',JSON_ARRAY('signposting','relative clauses','question handling'))
  UNION ALL SELECT 410,'communication','simple-messages','b2-summarizing-sources','Summarizing Information',
         'Identify main points, remove less important detail, and produce a concise spoken or written summary of straightforward source material.',3,
         JSON_OBJECT('can_do','I can summarize the important points of a clear source without copying it.','grammar_focus',JSON_ARRAY('reporting verbs','relative clauses','cohesive devices'))
  UNION ALL SELECT 420,'communication','simple-messages','b2-relaying-information','Relaying Information Accurately',
         'Relay instructions, requests, decisions, and key details from one person or source to another with enough accuracy for practical use.',3,
         JSON_OBJECT('can_do','I can relay practical information accurately and make clear who said what.','grammar_focus',JSON_ARRAY('reported speech','say/tell/ask','time and pronoun shifts'))
  UNION ALL SELECT 430,'communication','simple-messages','b2-practical-writing','Practical Messages & Emails',
         'Write clear practical messages and emails that explain context, requests, updates, problems, and next steps with an appropriate level of formality.',3,
         JSON_OBJECT('can_do','I can write a clear practical email with appropriate tone and structure.','grammar_focus',JSON_ARRAY('register','linking devices','indirect requests'))
  UNION ALL SELECT 440,'communication','requests','b2-multi-step-problem-solving','Multi-step Problem Solving',
         'Manage an extended practical scenario that requires clarifying information, weighing alternatives, negotiating constraints, and confirming a solution.',4,
         JSON_OBJECT('can_do','I can manage a multi-step practical problem with limited support.','grammar_focus',JSON_ARRAY('conditionals','reported information','negotiation language'))
  UNION ALL SELECT 450,'communication','simple-messages','b2-integrated-capstone','B2 Independent Challenge',
         'Complete an integrated scenario combining comprehension, extended interaction, explanation, negotiation, summarizing, and mediation across familiar real-world contexts.',4,
         JSON_OBJECT('can_do','I can manage a connected sequence of B2 tasks with substantial independence.','capstone',TRUE,'coverage',JSON_ARRAY('reception','interaction','production','mediation'))
) AS u
JOIN courses c ON c.slug = 'fa-en-us'
JOIN cefr_levels lvl ON lvl.code = 'B2'
JOIN skills s ON s.slug = u.skill_slug
JOIN topics t ON t.slug = u.topic_slug;
