WITH lang AS (
  SELECT id FROM languages WHERE code = 'en'
), lvl AS (
  SELECT id FROM cefr_levels WHERE code = 'A1'
), units(sort_order, skill_slug, topic_slug, slug, title, objective, expected_lessons) AS (
  VALUES
  (10,'foundations','greetings','a1-greetings','Hello & Goodbye','Understand and use basic greetings, farewells, and simple social openings.',2),
  (20,'foundations','introductions','a1-introductions','Introduce Yourself','Say your name, ask someone else’s name, and exchange very basic personal information.',2),
  (30,'foundations','countries-nationalities','a1-countries','Where Are You From?','Talk about countries, nationalities, and where people are from.',2),
  (40,'foundations','numbers','a1-numbers','Numbers & Ages','Understand and use common numbers, ages, and simple quantities.',2),
  (50,'social','polite-language','a1-polite','Please, Thanks & Sorry','Use basic polite expressions in everyday situations.',1),
  (60,'family-home','family','a1-family','My Family','Identify family members and describe simple family relationships.',2),
  (70,'family-home','possessions','a1-possessions','Things I Have','Talk about basic possessions and ownership.',2),
  (80,'daily-life','daily-routine','a1-routine','My Day','Describe a simple daily routine using high-frequency verbs.',3),
  (90,'time-plans','time','a1-time','What Time Is It?','Ask for and tell the time and connect activities to simple times of day.',2),
  (100,'food-drink','food-basics','a1-food','Food & Drinks','Name common foods and drinks and express simple preferences.',3),
  (110,'food-drink','restaurants','a1-restaurant','At a Café','Order simple food and drinks and respond to basic service questions.',3),
  (120,'family-home','home','a1-home','At Home','Name common rooms and household objects and say where things are.',3),
  (130,'shopping-money','shopping','a1-shopping','Shopping Basics','Ask for common items, sizes, and simple availability in a shop.',2),
  (140,'shopping-money','prices','a1-prices','How Much Is It?','Understand and ask about simple prices and quantities.',2),
  (150,'travel-transport','places-town','a1-town','Around Town','Recognize and talk about common places in a town or city.',2),
  (160,'travel-transport','directions','a1-directions','Finding the Way','Ask for and understand very simple directions.',3),
  (170,'travel-transport','transport','a1-transport','Getting Around','Talk about common transport and basic travel actions.',2),
  (180,'social','likes-dislikes','a1-likes','Things I Like','Express basic likes, dislikes, and preferences.',2),
  (190,'social','hobbies','a1-hobbies','Free Time','Talk about simple hobbies and free-time activities.',2),
  (200,'work-study','jobs','a1-jobs','Jobs','Name common jobs and say what someone does.',2),
  (210,'work-study','school-study','a1-study','School & Study','Talk about basic study activities, subjects, and classroom needs.',2),
  (220,'describing','people','a1-people','Describing People','Use simple adjectives to describe people and basic appearance.',3),
  (230,'describing','objects','a1-objects','Describing Things','Describe common objects by basic color, size, and quality.',2),
  (240,'describing','weather','a1-weather','Weather','Understand and use simple weather expressions.',2),
  (250,'health-body','body','a1-body','The Body','Name common body parts and understand simple physical descriptions.',2),
  (260,'health-body','basic-health','a1-health','I Don’t Feel Well','Express a few common health problems and understand simple responses.',2),
  (270,'communication','questions','a1-questions','Ask Simple Questions','Form and understand high-frequency everyday questions.',3),
  (280,'communication','requests','a1-requests','Simple Requests','Make and respond to basic requests in familiar situations.',2),
  (290,'time-plans','dates-calendar','a1-calendar','Days & Dates','Talk about days of the week, simple dates, and recurring activities.',2),
  (300,'time-plans','future-plans','a1-plans','Simple Plans','Talk about immediate plans and simple future intentions.',3)
)
INSERT INTO curriculum_units (
  target_language_id,
  cefr_level_id,
  skill_id,
  topic_id,
  slug,
  title,
  learning_objective,
  sort_order,
  expected_lessons,
  status
)
SELECT
  lang.id,
  lvl.id,
  s.id,
  t.id,
  u.slug,
  u.title,
  u.objective,
  u.sort_order,
  u.expected_lessons,
  'approved'::content_status
FROM units u
CROSS JOIN lang
CROSS JOIN lvl
JOIN skills s ON s.slug = u.skill_slug
JOIN topics t ON t.slug = u.topic_slug
ON CONFLICT (target_language_id, cefr_level_id, slug) DO NOTHING;
