-- English (en-US) Pre-A1 curriculum for Persian-speaking learners
-- Short bridge into A1; deliberately course-specific rather than a generic translation.
-- Requires schema.sql, migrations 001-003, CEFR/language/skills seeds, and language-variants-courses seed.

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
  SELECT 10 AS sort_order, 'literacy' AS skill_slug, 'script-basics' AS topic_slug,
         'prea1-en-alphabet' AS slug, 'The English Alphabet' AS title,
         'Recognize the 26 English letters, distinguish uppercase and lowercase forms, and follow left-to-right text.' AS objective,
         2 AS expected_lessons,
         JSON_OBJECT('focus','alphabet','learner_language','fa','variant','en-US') AS metadata
  UNION ALL SELECT 20,'literacy','sound-letter-mapping','prea1-en-letter-names','Letter Names & Spelling',
         'Understand common English letter names and spell a very short name or word aloud.',2,
         JSON_OBJECT('focus','letter_names','spelling',TRUE)
  UNION ALL SELECT 30,'literacy','sound-letter-mapping','prea1-en-first-sounds','First English Sounds',
         'Connect a small set of high-frequency letters and letter groups to beginner-friendly English sounds.',2,
         JSON_OBJECT('focus','phonology','persian_transfer',TRUE)
  UNION ALL SELECT 40,'foundations','greetings','prea1-en-first-greetings','Hello & Goodbye',
         'Recognize and use a few essential greetings and farewells in very short exchanges.',2,
         JSON_OBJECT('focus','survival_language','variant','en-US')
  UNION ALL SELECT 50,'social','polite-language','prea1-en-survival-words','Yes, No, Please & Thanks',
         'Understand and use yes, no, please, thank you, and sorry in highly predictable situations.',1,
         JSON_OBJECT('focus','survival_language','high_frequency',TRUE)
  UNION ALL SELECT 60,'foundations','introductions','prea1-en-my-name','My Name',
         'Say a name, ask another person’s name, and understand the two most common beginner name patterns.',2,
         JSON_OBJECT('focus','introductions','patterns',JSON_ARRAY("I'm …","My name is …"))
  UNION ALL SELECT 70,'foundations','numbers','prea1-en-numbers-0-10','Numbers 0–10',
         'Recognize, understand, and say the numbers zero through ten in simple contexts.',2,
         JSON_OBJECT('focus','numbers','range','0-10')
  UNION ALL SELECT 80,'communication','requests','prea1-en-classroom','Listen, Repeat, Read',
         'Understand a small set of essential learning instructions such as listen, repeat, read, write, and look.',2,
         JSON_OBJECT('focus','classroom_survival','commands',TRUE)
  UNION ALL SELECT 90,'describing','objects','prea1-en-first-objects','First Everyday Words',
         'Recognize a small bank of concrete everyday words and use this/that with strong visual support.',2,
         JSON_OBJECT('focus','concrete_vocabulary','demonstratives','introductory')
  UNION ALL SELECT 100,'communication','simple-messages','prea1-en-first-conversation','Your First Conversation',
         'Follow and take part in a very short supported exchange combining greetings, names, yes/no, and a farewell.',1,
         JSON_OBJECT('focus','integration','capstone',TRUE)
) AS u
JOIN courses c ON c.slug = 'fa-en-us'
JOIN cefr_levels lvl ON lvl.code = 'Pre-A1'
JOIN skills s ON s.slug = u.skill_slug
JOIN topics t ON t.slug = u.topic_slug;
