INSERT IGNORE INTO curriculum_units (
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
  'approved'
FROM (
  SELECT 10 AS sort_order, 'foundations' AS skill_slug, 'greetings' AS topic_slug, 'a1-greetings' AS slug, 'Hello & Goodbye' AS title, 'Understand and use basic greetings, farewells, and simple social openings.' AS objective, 2 AS expected_lessons
  UNION ALL SELECT 20,'foundations','introductions','a1-introductions','Introduce Yourself','Say your name, ask someone else’s name, and exchange very basic personal information.',2
  UNION ALL SELECT 30,'foundations','countries-nationalities','a1-countries','Where Are You From?','Talk about countries, nationalities, and where people are from.',2
  UNION ALL SELECT 40,'foundations','numbers','a1-numbers','Numbers & Ages','Understand and use common numbers, ages, and simple quantities.',2
  UNION ALL SELECT 50,'social','polite-language','a1-polite','Please, Thanks & Sorry','Use basic polite expressions in everyday situations.',1
  UNION ALL SELECT 60,'family-home','family','a1-family','My Family','Identify family members and describe simple family relationships.',2
  UNION ALL SELECT 70,'family-home','possessions','a1-possessions','Things I Have','Talk about basic possessions and ownership.',2
  UNION ALL SELECT 80,'daily-life','daily-routine','a1-routine','My Day','Describe a simple daily routine using high-frequency verbs.',3
  UNION ALL SELECT 90,'time-plans','time','a1-time','What Time Is It?','Ask for and tell the time and connect activities to simple times of day.',2
  UNION ALL SELECT 100,'food-drink','food-basics','a1-food','Food & Drinks','Name common foods and drinks and express simple preferences.',3
  UNION ALL SELECT 110,'food-drink','restaurants','a1-restaurant','At a Café','Order simple food and drinks and respond to basic service questions.',3
  UNION ALL SELECT 120,'family-home','home','a1-home','At Home','Name common rooms and household objects and say where things are.',3
  UNION ALL SELECT 130,'shopping-money','shopping','a1-shopping','Shopping Basics','Ask for common items, sizes, and simple availability in a shop.',2
  UNION ALL SELECT 140,'shopping-money','prices','a1-prices','How Much Is It?','Understand and ask about simple prices and quantities.',2
  UNION ALL SELECT 150,'travel-transport','places-town','a1-town','Around Town','Recognize and talk about common places in a town or city.',2
  UNION ALL SELECT 160,'travel-transport','directions','a1-directions','Finding the Way','Ask for and understand very simple directions.',3
  UNION ALL SELECT 170,'travel-transport','transport','a1-transport','Getting Around','Talk about common transport and basic travel actions.',2
  UNION ALL SELECT 180,'social','likes-dislikes','a1-likes','Things I Like','Express basic likes, dislikes, and preferences.',2
  UNION ALL SELECT 190,'social','hobbies','a1-hobbies','Free Time','Talk about simple hobbies and free-time activities.',2
  UNION ALL SELECT 200,'work-study','jobs','a1-jobs','Jobs','Name common jobs and say what someone does.',2
  UNION ALL SELECT 210,'work-study','school-study','a1-study','School & Study','Talk about basic study activities, subjects, and classroom needs.',2
  UNION ALL SELECT 220,'describing','people','a1-people','Describing People','Use simple adjectives to describe people and basic appearance.',3
  UNION ALL SELECT 230,'describing','objects','a1-objects','Describing Things','Describe common objects by basic color, size, and quality.',2
  UNION ALL SELECT 240,'describing','weather','a1-weather','Weather','Understand and use simple weather expressions.',2
  UNION ALL SELECT 250,'health-body','body','a1-body','The Body','Name common body parts and understand simple physical descriptions.',2
  UNION ALL SELECT 260,'health-body','basic-health','a1-health','I Don’t Feel Well','Express a few common health problems and understand simple responses.',2
  UNION ALL SELECT 270,'communication','questions','a1-questions','Ask Simple Questions','Form and understand high-frequency everyday questions.',3
  UNION ALL SELECT 280,'communication','requests','a1-requests','Simple Requests','Make and respond to basic requests in familiar situations.',2
  UNION ALL SELECT 290,'time-plans','dates-calendar','a1-calendar','Days & Dates','Talk about days of the week, simple dates, and recurring activities.',2
  UNION ALL SELECT 300,'time-plans','future-plans','a1-plans','Simple Plans','Talk about immediate plans and simple future intentions.',3
) AS u
JOIN languages AS lang ON lang.code = 'en'
JOIN cefr_levels AS lvl ON lvl.code = 'A1'
JOIN skills AS s ON s.slug = u.skill_slug
JOIN topics AS t ON t.slug = u.topic_slug;
