-- English (en-US) A2 curriculum for Persian-speaking learners
-- Practical action-oriented continuation after A1.
-- Requires schema.sql, migrations 001-004, CEFR/language/skills seeds, and language-variants-courses seed.

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
         'a2-catching-up' AS slug,'Catching Up' AS title,
         'Take part in a short friendly catch-up conversation about recent life, work, study, and free time.' AS objective,
         2 AS expected_lessons,
         JSON_OBJECT('can_do','I can catch up with someone I know using simple everyday language.','grammar_focus',JSON_ARRAY('present simple review','present continuous review','short follow-up questions')) AS metadata
  UNION ALL SELECT 20,'foundations','introductions','a2-personal-background','Personal Background',
         'Give and ask for simple background information about where someone lives, studies, works, and grew up.',2,
         JSON_OBJECT('can_do','I can exchange basic background information beyond a first introduction.','grammar_focus',JSON_ARRAY('be','live/work/study','past of be'))
  UNION ALL SELECT 30,'family-home','family','a2-family-relationships','Family & Relationships',
         'Describe family members, relationships, ages, occupations, and simple similarities or differences.',2,
         JSON_OBJECT('can_do','I can describe my family and basic relationships.','grammar_focus',JSON_ARRAY('possessives','have got/have','comparatives introduction'))
  UNION ALL SELECT 40,'family-home','home','a2-home-neighborhood','Home & Neighborhood',
         'Describe a home and neighborhood and explain what is nearby, convenient, or missing.',3,
         JSON_OBJECT('can_do','I can describe where I live and what my neighborhood is like.','grammar_focus',JSON_ARRAY('there is/are','prepositions','too/enough introduction'))
  UNION ALL SELECT 50,'daily-life','daily-routine','a2-routines-frequency','Routines & Frequency',
         'Describe regular routines with more detail and say how often activities happen.',2,
         JSON_OBJECT('can_do','I can describe routines and frequency clearly.','grammar_focus',JSON_ARRAY('adverbs of frequency','time expressions','present simple'))
  UNION ALL SELECT 60,'daily-life','common-actions','a2-last-weekend','Last Weekend',
         'Talk about completed activities in the recent past and ask simple follow-up questions about them.',3,
         JSON_OBJECT('can_do','I can say what I did last weekend and ask what someone else did.','grammar_focus',JSON_ARRAY('past simple regular','past simple common irregular','did questions'))
  UNION ALL SELECT 70,'daily-life','common-actions','a2-past-events','Past Events',
         'Tell a short sequence of past events using basic time markers and simple connected sentences.',3,
         JSON_OBJECT('can_do','I can tell a short simple story about something that happened.','grammar_focus',JSON_ARRAY('past simple','first/then/after that/finally','because'))
  UNION ALL SELECT 80,'time-plans','time','a2-sequencing-time','Sequence & Time',
         'Explain when events happen and put simple actions in chronological order.',2,
         JSON_OBJECT('can_do','I can organize a simple account using time and sequence words.','grammar_focus',JSON_ARRAY('before/after','when','sequence markers'))
  UNION ALL SELECT 90,'time-plans','future-plans','a2-future-arrangements','Future Arrangements',
         'Make and discuss fixed personal arrangements for the near future.',2,
         JSON_OBJECT('can_do','I can talk about arrangements already made.','grammar_focus',JSON_ARRAY('present continuous for future','time expressions'))
  UNION ALL SELECT 100,'time-plans','future-plans','a2-going-to-plans','Plans & Intentions',
         'Talk about personal intentions and simple predictions based on present evidence.',3,
         JSON_OBJECT('can_do','I can explain what I am going to do and why.','grammar_focus',JSON_ARRAY('be going to','because','probably'))
  UNION ALL SELECT 110,'social','polite-language','a2-invitations','Invitations & Arrangements',
         'Invite someone, accept or decline politely, suggest alternatives, and agree on a simple time and place.',3,
         JSON_OBJECT('can_do','I can make simple social arrangements.','grammar_focus',JSON_ARRAY('would you like','how about','can/could for arrangements'))
  UNION ALL SELECT 120,'describing','weather','a2-seasons-weather-plans','Weather & Seasonal Plans',
         'Discuss typical weather, seasons, suitable clothing, and simple plans affected by weather.',2,
         JSON_OBJECT('can_do','I can talk about weather and make simple decisions because of it.','grammar_focus',JSON_ARRAY('will for simple prediction','because/so','comparatives'))
  UNION ALL SELECT 130,'food-drink','food-basics','a2-food-quantities','Food & Quantities',
         'Talk about food amounts, shopping quantities, and common countable and uncountable items.',3,
         JSON_OBJECT('can_do','I can ask for and understand everyday food quantities.','grammar_focus',JSON_ARRAY('some/any','much/many','a few/a little'))
  UNION ALL SELECT 140,'food-drink','food-basics','a2-cooking-recipes','Cooking & Simple Recipes',
         'Follow and give short basic cooking instructions using common ingredients and sequence words.',3,
         JSON_OBJECT('can_do','I can understand and give a simple recipe.','grammar_focus',JSON_ARRAY('imperatives','sequence markers','quantity expressions'))
  UNION ALL SELECT 150,'food-drink','restaurants','a2-restaurant-service','Restaurant Service',
         'Order a meal, ask questions about menu items, make simple changes, and deal with a basic service problem.',3,
         JSON_OBJECT('can_do','I can manage a routine restaurant interaction including a small problem.','grammar_focus',JSON_ARRAY('could I','I would like','something/anything'))
  UNION ALL SELECT 160,'shopping-money','shopping','a2-clothes-sizes','Clothes & Sizes',
         'Ask for clothing, sizes, colors, fitting options, and describe whether something fits.',2,
         JSON_OBJECT('can_do','I can buy basic clothing and discuss size and fit.','grammar_focus',JSON_ARRAY('this/these','too + adjective','not + adjective + enough'))
  UNION ALL SELECT 170,'shopping-money','shopping','a2-compare-products','Compare Products',
         'Compare everyday products by price, size, quality, usefulness, and preference.',3,
         JSON_OBJECT('can_do','I can compare two everyday choices and explain a simple preference.','grammar_focus',JSON_ARRAY('comparatives','than','one/ones'))
  UNION ALL SELECT 180,'shopping-money','prices','a2-best-choice','The Best Choice',
         'Use simple superlatives and reasons to recommend or choose among familiar options.',2,
         JSON_OBJECT('can_do','I can choose among several options and give a short reason.','grammar_focus',JSON_ARRAY('superlatives','because','the one with'))
  UNION ALL SELECT 190,'travel-transport','transport','a2-trip-planning','Plan a Trip',
         'Discuss a simple trip plan including destination, transport, dates, cost, and basic preferences.',3,
         JSON_OBJECT('can_do','I can plan a simple trip with another person.','grammar_focus',JSON_ARRAY('going to','would like','comparatives'))
  UNION ALL SELECT 200,'travel-transport','transport','a2-tickets-timetables','Tickets & Timetables',
         'Understand basic transport schedules and buy or change a routine ticket.',3,
         JSON_OBJECT('can_do','I can understand a simple timetable and buy a ticket.','grammar_focus',JSON_ARRAY('leave/arrive','at/on','single/round trip language'))
  UNION ALL SELECT 210,'travel-transport','places-town','a2-accommodation','Hotels & Accommodation',
         'Check in, ask about facilities, understand basic rules, and make a simple request at accommodation.',3,
         JSON_OBJECT('can_do','I can manage a basic hotel or accommodation interaction.','grammar_focus',JSON_ARRAY('have/has','is there/are there','could I'))
  UNION ALL SELECT 220,'travel-transport','transport','a2-travel-problems','Travel Problems',
         'Explain a missed connection, delay, lost item, or wrong route and understand a simple solution.',3,
         JSON_OBJECT('can_do','I can explain a common travel problem and ask what to do next.','grammar_focus',JSON_ARRAY('past simple','have to','should'))
  UNION ALL SELECT 230,'travel-transport','directions','a2-detailed-directions','Better Directions',
         'Ask for and follow multi-step directions using landmarks, distance, and public transport references.',3,
         JSON_OBJECT('can_do','I can follow and give a short sequence of directions.','grammar_focus',JSON_ARRAY('imperatives','until/past/across','sequence markers'))
  UNION ALL SELECT 240,'work-study','jobs','a2-work-duties','Work Duties',
         'Describe routine job duties, schedules, workplace rules, and simple responsibilities.',3,
         JSON_OBJECT('can_do','I can describe basic duties and rules at work.','grammar_focus',JSON_ARRAY('have to/dont have to','can/cant','frequency'))
  UNION ALL SELECT 250,'work-study','school-study','a2-study-habits','Study Habits',
         'Talk about study routines, strengths, difficulties, deadlines, and simple ways to improve.',3,
         JSON_OBJECT('can_do','I can describe how I study and ask for simple study advice.','grammar_focus',JSON_ARRAY('should','need to','adverbs'))
  UNION ALL SELECT 260,'daily-life','common-actions','a2-abilities-skills','Abilities & Skills',
         'Talk about present and past abilities and describe things someone can do well or is learning to do.',2,
         JSON_OBJECT('can_do','I can describe my abilities now and in the past.','grammar_focus',JSON_ARRAY('can/cant','could/couldnt','well/better'))
  UNION ALL SELECT 270,'health-body','basic-health','a2-symptoms-pharmacy','Symptoms & Pharmacy',
         'Describe common symptoms, ask for basic pharmacy help, and understand simple dosage or care instructions.',3,
         JSON_OBJECT('can_do','I can explain a common health problem and understand basic advice.','grammar_focus',JSON_ARRAY('have + symptom','should','imperatives'))
  UNION ALL SELECT 280,'health-body','basic-health','a2-appointments-advice','Appointments & Advice',
         'Make or change a simple appointment and give or understand everyday advice.',2,
         JSON_OBJECT('can_do','I can arrange an appointment and exchange simple advice.','grammar_focus',JSON_ARRAY('should/shouldnt','have to','time expressions'))
  UNION ALL SELECT 290,'describing','people','a2-personality-appearance','Personality & Appearance',
         'Describe people using common appearance and personality adjectives and simple comparisons.',3,
         JSON_OBJECT('can_do','I can describe what someone looks like and what they are like.','grammar_focus',JSON_ARRAY('be/look like','adjective order introduction','comparatives'))
  UNION ALL SELECT 300,'travel-transport','places-town','a2-describe-places','Describe Places',
         'Describe familiar places in more detail and compare neighborhoods, towns, or travel destinations.',3,
         JSON_OBJECT('can_do','I can describe and compare familiar places.','grammar_focus',JSON_ARRAY('comparatives','superlatives','there is/are'))
  UNION ALL SELECT 310,'social','hobbies','a2-experiences','Life Experiences',
         'Talk simply about experiences someone has or has not had and add basic past details.',3,
         JSON_OBJECT('can_do','I can ask and answer simple questions about life experiences.','grammar_focus',JSON_ARRAY('present perfect experience','ever/never','past simple follow-up'))
  UNION ALL SELECT 320,'communication','simple-messages','a2-phone-messages','Calls & Messages',
         'Handle a short phone call, leave or take a basic message, and confirm key details.',3,
         JSON_OBJECT('can_do','I can manage a simple phone call or message exchange.','grammar_focus',JSON_ARRAY('can/could','object pronouns','reported message chunks'))
  UNION ALL SELECT 330,'communication','simple-messages','a2-online-communication','Everyday Online Communication',
         'Write and understand short practical chats, confirmations, updates, and simple online arrangements.',2,
         JSON_OBJECT('can_do','I can exchange short practical messages online.','grammar_focus',JSON_ARRAY('present/past/future review','short linking words'))
  UNION ALL SELECT 340,'social','likes-dislikes','a2-opinions-reasons','Opinions & Reasons',
         'Give a simple opinion, preference, agreement, or disagreement and support it with a short reason.',3,
         JSON_OBJECT('can_do','I can give a simple opinion and explain why.','grammar_focus',JSON_ARRAY('I think','because/so','too/either'))
  UNION ALL SELECT 350,'communication','requests','a2-everyday-problems','Everyday Problem Solving',
         'Explain a routine problem, ask for help, suggest a basic solution, and respond to alternatives.',3,
         JSON_OBJECT('can_do','I can solve a simple everyday problem through short interaction.','grammar_focus',JSON_ARRAY('could/can','should','if introduction'))
  UNION ALL SELECT 360,'communication','simple-messages','a2-integrated-capstone','A2 Everyday Challenge',
         'Complete an integrated everyday scenario combining past information, current needs, choices, arrangements, and simple problem solving.',4,
         JSON_OBJECT('can_do','I can manage a connected sequence of familiar A2 tasks with limited support.','capstone',TRUE,'coverage',JSON_ARRAY('reception','interaction','production','mediation'))
) AS u
JOIN courses c ON c.slug = 'fa-en-us'
JOIN cefr_levels lvl ON lvl.code = 'A2'
JOIN skills s ON s.slug = u.skill_slug
JOIN topics t ON t.slug = u.topic_slug;