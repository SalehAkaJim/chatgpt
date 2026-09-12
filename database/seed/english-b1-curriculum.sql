-- English (en-US) B1 curriculum for Persian-speaking learners
-- Action-oriented intermediate continuation after A2.
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
         'b1-catching-up-in-depth' AS slug,'Catching Up in Depth' AS title,
         'Sustain a friendly conversation about recent changes, current routines, and upcoming plans with natural follow-up questions.' AS objective,
         3 AS expected_lessons,
         JSON_OBJECT('can_do','I can keep a familiar conversation going and ask relevant follow-up questions.','grammar_focus',JSON_ARRAY('present perfect vs past simple','present perfect continuous introduction','follow-up question forms')) AS metadata
  UNION ALL SELECT 20,'communication','simple-messages','b1-personal-stories','Personal Stories',
         'Tell a clear personal story with a beginning, key events, reactions, and an ending.',3,
         JSON_OBJECT('can_do','I can tell a connected story about something that happened to me.','grammar_focus',JSON_ARRAY('past simple vs past continuous','sequence markers','adverbs for narrative detail'))
  UNION ALL SELECT 30,'daily-life','common-actions','b1-life-changes','Life Changes',
         'Describe important changes in life and explain how the situation was different before.',3,
         JSON_OBJECT('can_do','I can describe a change in my life and compare past and present.','grammar_focus',JSON_ARRAY('used to','no longer/still','present perfect with for/since'))
  UNION ALL SELECT 40,'daily-life','daily-routine','b1-habits-and-change','Habits & Change',
         'Discuss habits, attempts to change them, and practical strategies for building or breaking routines.',3,
         JSON_OBJECT('can_do','I can describe habits and explain how I am trying to change them.','grammar_focus',JSON_ARRAY('used to/be used to','gerunds after common verbs','frequency and degree adverbs'))
  UNION ALL SELECT 50,'communication','simple-messages','b1-events-in-progress','Events in Progress',
         'Describe what was happening around an event and explain interruptions, causes, and consequences.',3,
         JSON_OBJECT('can_do','I can describe background events and interruptions in a past situation.','grammar_focus',JSON_ARRAY('past continuous','when/while','past simple for interruptions'))
  UNION ALL SELECT 60,'communication','simple-messages','b1-storytelling','Better Storytelling',
         'Tell an engaging everyday story using connected clauses, time references, and reactions.',3,
         JSON_OBJECT('can_do','I can tell a reasonably detailed story that is easy to follow.','grammar_focus',JSON_ARRAY('narrative tenses review','linking expressions','so/such for emphasis'))
  UNION ALL SELECT 70,'social','hobbies','b1-memorable-experiences','Memorable Experiences',
         'Talk about memorable experiences, explain why they mattered, and ask others about similar experiences.',3,
         JSON_OBJECT('can_do','I can describe and react to memorable experiences in some detail.','grammar_focus',JSON_ARRAY('present perfect vs past simple','ever/never/already/yet','relative clauses introduction'))
  UNION ALL SELECT 80,'time-plans','future-plans','b1-plans-predictions','Plans & Predictions',
         'Distinguish arrangements, intentions, spontaneous decisions, and predictions when discussing the future.',3,
         JSON_OBJECT('can_do','I can choose appropriate future forms for plans and predictions.','grammar_focus',JSON_ARRAY('will','going to','present continuous for arrangements'))
  UNION ALL SELECT 90,'time-plans','future-plans','b1-goals-ambitions','Goals & Ambitions',
         'Explain medium-term goals, motivations, obstacles, and steps toward achieving them.',3,
         JSON_OBJECT('can_do','I can explain a personal goal and the steps I plan to take.','grammar_focus',JSON_ARRAY('hope/plan/expect to','first conditional','purpose with to/in order to'))
  UNION ALL SELECT 100,'time-plans','future-plans','b1-arrangements-changes','Arrangements & Changes',
         'Make detailed arrangements, negotiate changes, and confirm updated times, places, and responsibilities.',3,
         JSON_OBJECT('can_do','I can negotiate and update everyday arrangements when plans change.','grammar_focus',JSON_ARRAY('future arrangements','might/may','conditionals for alternatives'))
  UNION ALL SELECT 110,'social','polite-language','b1-invitations-hosting','Invitations & Hosting',
         'Invite, host, accept, decline, and manage practical details in informal social situations.',3,
         JSON_OBJECT('can_do','I can manage invitations and hosting with appropriate polite language.','grammar_focus',JSON_ARRAY('would/could','offers and requests','indirect questions introduction'))
  UNION ALL SELECT 120,'social','likes-dislikes','b1-opinions-reasons','Opinions & Reasons',
         'State and develop an opinion with reasons, examples, and simple qualification.',3,
         JSON_OBJECT('can_do','I can explain my opinion and support it with reasons and examples.','grammar_focus',JSON_ARRAY('opinion frames','because/since/as','although/even though'))
  UNION ALL SELECT 130,'social','likes-dislikes','b1-agree-disagree','Agreeing & Disagreeing',
         'Agree, partly agree, disagree politely, and respond to another person’s argument.',3,
         JSON_OBJECT('can_do','I can agree or disagree politely and explain my position.','grammar_focus',JSON_ARRAY('so/neither','contrast markers','softening language'))
  UNION ALL SELECT 140,'shopping-money','prices','b1-choices-tradeoffs','Choices & Trade-offs',
         'Compare several options, discuss advantages and disadvantages, and reach a reasoned choice.',3,
         JSON_OBJECT('can_do','I can compare options and explain a practical decision.','grammar_focus',JSON_ARRAY('comparatives review','on the one hand/on the other hand','would rather/prefer'))
  UNION ALL SELECT 150,'communication','requests','b1-advice-decisions','Advice & Decisions',
         'Ask for advice, weigh suggestions, and explain a decision and its likely consequences.',3,
         JSON_OBJECT('can_do','I can discuss advice and explain why I chose a particular option.','grammar_focus',JSON_ARRAY('should/ought to','if I were you','first conditional'))
  UNION ALL SELECT 160,'work-study','jobs','b1-rules-obligations','Rules & Obligations',
         'Explain workplace or institutional rules, obligations, permissions, and exceptions.',3,
         JSON_OBJECT('can_do','I can explain common rules and what people are required or allowed to do.','grammar_focus',JSON_ARRAY('must/have to','mustnt/dont have to','be allowed to'))
  UNION ALL SELECT 170,'communication','requests','b1-solving-problems','Solving Problems Together',
         'Explain a problem clearly, suggest alternatives, evaluate them, and agree on a practical solution.',3,
         JSON_OBJECT('can_do','I can work with someone to solve a familiar practical problem.','grammar_focus',JSON_ARRAY('could/might','first conditional','why dont we/how about'))
  UNION ALL SELECT 180,'communication','requests','b1-complaints-solutions','Complaints & Solutions',
         'Make a clear complaint, provide relevant details, request a solution, and respond to service options.',3,
         JSON_OBJECT('can_do','I can make and handle a straightforward complaint.','grammar_focus',JSON_ARRAY('present perfect for current problems','polite requests','passive introduction'))
  UNION ALL SELECT 190,'shopping-money','shopping','b1-shopping-decisions','Shopping Decisions',
         'Evaluate products using features, reviews, price, durability, and suitability for a specific need.',3,
         JSON_OBJECT('can_do','I can discuss product information and make an informed purchase.','grammar_focus',JSON_ARRAY('relative clauses','comparatives/superlatives','too/enough'))
  UNION ALL SELECT 200,'shopping-money','shopping','b1-services-returns','Services, Returns & Repairs',
         'Arrange a repair or service, explain faults, understand options, and negotiate a reasonable outcome.',3,
         JSON_OBJECT('can_do','I can deal with a routine service or repair problem in some detail.','grammar_focus',JSON_ARRAY('have/get something done introduction','passive voice','reported information chunks'))
  UNION ALL SELECT 210,'food-drink','restaurants','b1-food-preferences','Food, Preferences & Dietary Needs',
         'Discuss food preferences, dietary needs, ingredients, preparation, and suitable alternatives.',3,
         JSON_OBJECT('can_do','I can explain food preferences and dietary needs and ask relevant questions.','grammar_focus',JSON_ARRAY('relative clauses','quantifiers review','would rather/prefer'))
  UNION ALL SELECT 220,'health-body','basic-health','b1-health-wellbeing','Health & Wellbeing',
         'Describe lifestyle factors, common health concerns, and habits that support physical and mental wellbeing.',3,
         JSON_OBJECT('can_do','I can discuss everyday health and wellbeing in connected language.','grammar_focus',JSON_ARRAY('should/ought to','gerunds and infinitives','cause and effect links'))
  UNION ALL SELECT 230,'health-body','basic-health','b1-medical-appointments','Medical Appointments',
         'Describe symptoms and their development, answer routine questions, and understand straightforward medical advice.',3,
         JSON_OBJECT('can_do','I can explain a routine health problem with relevant detail.','grammar_focus',JSON_ARRAY('present perfect with for/since','past simple for onset','reported advice'))
  UNION ALL SELECT 240,'travel-transport','transport','b1-travel-planning','Independent Travel Planning',
         'Research and discuss routes, costs, schedules, accommodation, and preferences for an independent trip.',3,
         JSON_OBJECT('can_do','I can plan a trip by comparing practical travel information.','grammar_focus',JSON_ARRAY('future forms review','conditionals','relative clauses'))
  UNION ALL SELECT 250,'travel-transport','transport','b1-travel-disruptions','Travel Disruptions',
         'Explain delays, cancellations, missed connections, and baggage problems and negotiate next steps.',3,
         JSON_OBJECT('can_do','I can manage common travel disruptions and understand proposed solutions.','grammar_focus',JSON_ARRAY('passive voice','present perfect','conditionals'))
  UNION ALL SELECT 260,'travel-transport','places-town','b1-local-experiences','Hotels & Local Experiences',
         'Handle accommodation details and ask for recommendations, local information, and practical help.',3,
         JSON_OBJECT('can_do','I can manage accommodation and discuss local activities with staff or hosts.','grammar_focus',JSON_ARRAY('indirect questions','relative clauses','modals for recommendations'))
  UNION ALL SELECT 270,'work-study','jobs','b1-work-responsibilities','Work Responsibilities',
         'Describe responsibilities, priorities, deadlines, and progress on routine workplace tasks.',3,
         JSON_OBJECT('can_do','I can explain my responsibilities and give a clear progress update.','grammar_focus',JSON_ARRAY('present perfect','have to/need to','by/until/deadline expressions'))
  UNION ALL SELECT 280,'work-study','jobs','b1-meetings-teamwork','Meetings & Teamwork',
         'Participate in a straightforward meeting by giving updates, suggestions, opinions, and action points.',3,
         JSON_OBJECT('can_do','I can contribute to a routine meeting and agree on next steps.','grammar_focus',JSON_ARRAY('suggestion forms','reported points','conditionals for planning'))
  UNION ALL SELECT 290,'work-study','jobs','b1-job-search','Job Search & Interviews',
         'Discuss experience and skills, understand common vacancy information, and answer routine interview questions.',3,
         JSON_OBJECT('can_do','I can describe my experience and handle a straightforward job interview.','grammar_focus',JSON_ARRAY('present perfect for experience','past simple details','relative clauses'))
  UNION ALL SELECT 300,'work-study','school-study','b1-study-strategies','Study Strategies',
         'Discuss learning difficulties, study methods, deadlines, goals, and ways to improve performance.',3,
         JSON_OBJECT('can_do','I can discuss how I learn and evaluate different study strategies.','grammar_focus',JSON_ARRAY('gerunds/infinitives','should/ought to','first conditional'))
  UNION ALL SELECT 310,'work-study','school-study','b1-learning-progress','Learning Progress',
         'Describe progress over time, strengths, challenges, feedback, and next learning priorities.',3,
         JSON_OBJECT('can_do','I can describe my learning progress and explain what I need to improve.','grammar_focus',JSON_ARRAY('present perfect with for/since','comparatives over time','yet/already/still'))
  UNION ALL SELECT 320,'social','hobbies','b1-media-entertainment','Media & Entertainment',
         'Discuss films, series, books, music, and other media, including plots, reactions, and recommendations without revealing too much.',3,
         JSON_OBJECT('can_do','I can describe and recommend entertainment and explain my reaction to it.','grammar_focus',JSON_ARRAY('relative clauses','-ed/-ing adjectives','reported opinions'))
  UNION ALL SELECT 330,'communication','simple-messages','b1-news-stories','Everyday News Stories',
         'Understand and retell the main points of a short everyday news story and distinguish key facts from supporting detail.',3,
         JSON_OBJECT('can_do','I can summarize the main points of a straightforward news story.','grammar_focus',JSON_ARRAY('passive voice','reported speech introduction','time and cause links'))
  UNION ALL SELECT 340,'communication','simple-messages','b1-digital-life','Digital Life',
         'Discuss apps, online services, privacy choices, common technical issues, and digital habits.',3,
         JSON_OBJECT('can_do','I can discuss common digital tools, habits, and problems.','grammar_focus',JSON_ARRAY('relative clauses','passive voice','conditionals for troubleshooting'))
  UNION ALL SELECT 350,'social','polite-language','b1-relationships-social','Relationships & Social Situations',
         'Discuss friendships and social situations, explain misunderstandings, and give tactful suggestions.',3,
         JSON_OBJECT('can_do','I can discuss familiar relationship issues and suggest ways forward.','grammar_focus',JSON_ARRAY('reported speech','should/could','conditionals'))
  UNION ALL SELECT 360,'travel-transport','places-town','b1-places-culture','Places & Culture',
         'Describe places, traditions, events, and cultural experiences and compare them with familiar contexts.',3,
         JSON_OBJECT('can_do','I can describe a place or cultural experience and make simple comparisons.','grammar_focus',JSON_ARRAY('relative clauses','passive voice','comparative structures'))
  UNION ALL SELECT 370,'daily-life','common-actions','b1-everyday-environment','Everyday Environment',
         'Discuss practical environmental choices at home, work, and while traveling, including causes and possible solutions.',3,
         JSON_OBJECT('can_do','I can discuss familiar environmental issues and practical actions.','grammar_focus',JSON_ARRAY('first conditional','passive voice','cause/effect links'))
  UNION ALL SELECT 380,'communication','questions','b1-explaining-presenting','Explaining & Presenting',
         'Give a short organized explanation or presentation and respond to straightforward follow-up questions.',3,
         JSON_OBJECT('can_do','I can give a short prepared presentation on a familiar topic.','grammar_focus',JSON_ARRAY('signposting language','relative clauses','question handling'))
  UNION ALL SELECT 390,'communication','simple-messages','b1-summarizing-relaying','Summarizing & Relaying Information',
         'Relay the main points of a message, conversation, notice, or short text to another person accurately enough for practical use.',3,
         JSON_OBJECT('can_do','I can pass on the main practical information from a straightforward source.','grammar_focus',JSON_ARRAY('reported speech','say/tell','time and pronoun shifts introduction'))
  UNION ALL SELECT 400,'communication','simple-messages','b1-integrated-capstone','B1 Real-World Challenge',
         'Complete a connected multi-step scenario combining narrative, opinions, problem solving, planning, mediation, and practical interaction.',4,
         JSON_OBJECT('can_do','I can manage a connected sequence of familiar B1 tasks with reasonable independence.','capstone',TRUE,'coverage',JSON_ARRAY('reception','interaction','production','mediation'))
) AS u
JOIN courses c ON c.slug = 'fa-en-us'
JOIN cefr_levels lvl ON lvl.code = 'B1'
JOIN skills s ON s.slug = u.skill_slug
JOIN topics t ON t.slug = u.topic_slug;