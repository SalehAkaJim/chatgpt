-- Complete German A1 curriculum for Persian-speaking learners.
-- Requires multilingual core, shared skills/topics and language-variants-courses seeds.
-- The sequence is language-specific: German noun capitalization, gender/articles,
-- verb inflection, separable verbs, case marking and modal verbs are introduced
-- progressively instead of mirroring English mechanically.

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
  JSON_OBJECT(
    'language_specific', TRUE,
    'target_variant', 'de-DE',
    'grammar_focus', u.grammar_focus,
    'persian_learner_notes', u.persian_learner_notes
  )
FROM (
  SELECT 10 AS sort_order, 'foundations' AS skill_slug, 'greetings' AS topic_slug,
         'a1-de-greetings' AS slug, 'Hallo!' AS title,
         'Use common German greetings and farewells and respond to a simple wellbeing question.' AS objective,
         2 AS expected_lessons, 'greeting register; fixed expressions; noun capitalization in greeting phrases' AS grammar_focus,
         'Distinguish informal Tschüss from formal Auf Wiedersehen and preserve German capitalization.' AS persian_learner_notes
  UNION ALL SELECT 20,'foundations','introductions','a1-de-introductions','Sich vorstellen','Give your name, ask another person’s name, and say where you come from.',2,'sein; heißen; kommen; ich/du; W-questions','German finite verbs change with person; do not omit the subject as Persian sometimes allows.'
  UNION ALL SELECT 30,'literacy','sound-letter-mapping','a1-de-spelling','Buchstaben & Buchstabieren','Recognize the German alphabet, umlauts and ß and spell short names and words.',2,'ä/ö/ü/ß; letter names; capitalization','Treat umlauts and ß as meaningful spelling, not optional decoration.'
  UNION ALL SELECT 40,'foundations','numbers','a1-de-numbers','Zahlen & Alter','Understand and use numbers, ages and simple quantities.',2,'numbers 0–100; wie alt; sein','German number order from 21 upward differs from Persian and English.'
  UNION ALL SELECT 50,'foundations','countries-nationalities','a1-de-countries','Länder & Sprachen','Say where people come from, where they live, and which languages they speak.',2,'kommen aus; wohnen in; sprechen; country names','Most country names appear without an article; selected exceptions are taught as chunks.'
  UNION ALL SELECT 60,'social','polite-language','a1-de-polite','Bitte, Danke & Sie','Use basic polite language and distinguish informal du from formal Sie.',2,'du/Sie; bitte; danke; Entschuldigung','Sie is capitalized when it is the formal pronoun.'
  UNION ALL SELECT 70,'family-home','family','a1-de-family','Meine Familie','Name close family members and describe simple family relationships.',2,'mein/dein; er/sie; haben','Teach family nouns with their articles because grammatical gender must be learned with the noun.'
  UNION ALL SELECT 80,'describing','objects','a1-de-articles','der, die oder das?','Recognize the three German noun genders and use basic definite and indefinite articles.',2,'der/die/das; ein/eine; noun capitalization','Persian has no grammatical gender or articles, so article+noun chunks are the default learning unit.'
  UNION ALL SELECT 90,'family-home','possessions','a1-de-possessions','Was hast du?','Talk about simple possessions and ownership.',2,'haben; mein/dein; kein/keine','Contrast ein/eine with kein/keine in high-frequency noun phrases.'
  UNION ALL SELECT 100,'daily-life','daily-routine','a1-de-routine','Mein Tag','Describe a simple daily routine with high-frequency present-tense verbs.',3,'present tense; verb-second word order; frequency words','Keep the finite verb in second position in simple statements.'
  UNION ALL SELECT 110,'time-plans','time','a1-de-time','Wie spät ist es?','Ask for and tell the time and connect activities to simple times.',2,'um + time; am Morgen/Abend; Uhr','German uses Uhr in clock-time expressions and often the 24-hour clock in formal contexts.'
  UNION ALL SELECT 120,'daily-life','common-actions','a1-de-separable-verbs','Aufstehen & Einkaufen','Understand and use common separable verbs in simple present-tense sentences.',2,'separable prefixes; aufstehen/einkaufen/anrufen','The prefix moves to the end of the clause in simple present statements.'
  UNION ALL SELECT 130,'food-drink','food-basics','a1-de-food','Essen & Trinken','Name common foods and drinks and express simple preferences.',3,'essen/trinken; gern; noun gender','Food nouns are taught together with their article.'
  UNION ALL SELECT 140,'food-drink','restaurants','a1-de-cafe','Im Café','Order simple food and drinks and respond to basic service questions.',3,'ich möchte; hätte gern; accusative chunks','Use polite chunks before giving a full case explanation.'
  UNION ALL SELECT 150,'shopping-money','shopping','a1-de-accusative','Einen Kaffee, bitte','Use the most common accusative article patterns with familiar direct objects.',2,'accusative articles; einen/eine/ein; haben/möchten','The masculine article changes most visibly: ein → einen, der → den.'
  UNION ALL SELECT 160,'family-home','home','a1-de-home','Zu Hause','Name common rooms and household objects and say what is in a home.',3,'es gibt; articles; simple compounds','German compound nouns keep the gender of the final noun.'
  UNION ALL SELECT 170,'family-home','home','a1-de-locations','Wo ist das?','Describe simple locations using high-frequency prepositional chunks.',2,'in/auf/neben; wo; dative chunks','Introduce location case forms as useful chunks before full two-way-preposition analysis.'
  UNION ALL SELECT 180,'shopping-money','shopping','a1-de-shopping','Im Geschäft','Ask for common items, sizes and availability in a shop.',2,'haben Sie; ich suche; demonstratives','Formal Sie remains the default with unknown shop staff.'
  UNION ALL SELECT 190,'shopping-money','prices','a1-de-prices','Wie viel kostet das?','Ask about prices and understand simple euro amounts and quantities.',2,'wie viel; kosten; numbers and currency','Practice decimal price listening as used in everyday German.'
  UNION ALL SELECT 200,'travel-transport','places-town','a1-de-town','In der Stadt','Recognize and talk about common places in a town or city.',2,'es gibt; place nouns; articles','Learn place nouns with articles and common location chunks.'
  UNION ALL SELECT 210,'travel-transport','directions','a1-de-directions','Entschuldigung, wo ist…?','Ask for and understand very simple directions.',3,'wo/wohin; links/rechts/geradeaus; imperative chunks','Focus first on fixed direction phrases rather than full case theory.'
  UNION ALL SELECT 220,'travel-transport','transport','a1-de-transport','Unterwegs','Talk about common transport and basic travel actions.',2,'fahren; nehmen; mit + dative chunks','Transport phrases commonly use mit; teach article forms with the phrase.'
  UNION ALL SELECT 230,'social','likes-dislikes','a1-de-likes','Das mag ich','Express basic likes, dislikes and preferences.',2,'mögen; gern/lieber; negation','Differentiate ich mag + noun from ich + verb + gern.'
  UNION ALL SELECT 240,'social','hobbies','a1-de-hobbies','Freizeit','Talk about simple hobbies and free-time activities.',2,'spielen/machen/gehen; gern; present tense','Recycle present-tense endings through personally meaningful activities.'
  UNION ALL SELECT 250,'communication','requests','a1-de-modal-verbs','Kannst du…?','Make and respond to basic requests and talk about ability or necessity.',3,'können; müssen; möchten; infinitive-final','With a modal verb, the lexical infinitive moves to the end of the clause.'
  UNION ALL SELECT 260,'work-study','school-study','a1-de-work-study','Arbeit & Lernen','Talk about basic work, study activities and common jobs.',2,'arbeiten/studieren/lernen; job nouns; bei/als chunks','Job nouns and compounds are capitalized; feminine job forms are introduced where useful.'
  UNION ALL SELECT 270,'describing','people','a1-de-describing','Personen beschreiben','Use simple adjectives to describe people without requiring adjective declension.',2,'sein + predicative adjective; haben + noun','Start with predicative adjectives so learners can describe people before adjective endings.'
  UNION ALL SELECT 280,'describing','weather','a1-de-weather','Wie ist das Wetter?','Understand and use simple weather expressions and temperatures.',2,'es ist; es regnet; temperature expressions','German weather commonly uses impersonal es.'
  UNION ALL SELECT 290,'health-body','basic-health','a1-de-health','Mir geht es nicht gut','Name common body parts and express a few everyday health problems.',2,'mir tut … weh; haben; body nouns','Teach dative mir and weh expressions as communicative chunks at A1.'
  UNION ALL SELECT 300,'time-plans','future-plans','a1-de-plans','Termine & Pläne','Arrange a simple meeting and talk about immediate plans, days and dates.',3,'am/um; present tense for future; können; dates','German commonly uses the present tense with a future time expression for near plans.'
) AS u
JOIN courses c ON c.slug = 'fa-de-de'
JOIN cefr_levels lvl ON lvl.code = 'A1'
JOIN skills s ON s.slug = u.skill_slug
JOIN topics t ON t.slug = u.topic_slug;
