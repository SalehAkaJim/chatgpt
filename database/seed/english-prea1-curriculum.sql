-- English (en-US) Pre-A1 curriculum for Persian-speaking learners
-- Zero-learner bridge into A1; deliberately course-specific rather than a generic translation.
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
  UNION ALL SELECT 25,'literacy','sound-letter-mapping','prea1-en-letter-sound-bridge','Letters Become Sounds',
         'Hear the full alphabet in manageable groups, distinguish letter names from sounds in words, and recognize the five main vowel letters without assuming English spelling is perfectly regular.',2,
         JSON_OBJECT('focus','zero_learner_sound_bridge','letter_names',TRUE,'vowel_awareness',TRUE,'persian_transfer',TRUE)
  UNION ALL SELECT 30,'literacy','sound-letter-mapping','prea1-en-first-sounds','First English Sounds',
         'Connect a small set of high-frequency letters and letter groups to beginner-friendly English sounds.',2,
         JSON_OBJECT('focus','phonology','persian_transfer',TRUE)
  UNION ALL SELECT 40,'foundations','greetings','prea1-en-first-greetings','Hello & Goodbye',
         'Recognize and use a few essential greetings and farewells in very short exchanges.',2,
         JSON_OBJECT('focus','survival_language','variant','en-US')
  UNION ALL SELECT 50,'social','polite-language','prea1-en-survival-words','Yes, No, Please & Thanks',
         'Understand and use yes, no, please, thank you, and sorry in highly predictable situations.',1,
         JSON_OBJECT('focus','survival_language','high_frequency',TRUE)
  UNION ALL SELECT 55,'communication','requests','prea1-en-learning-survival','I Don''t Understand Yet',
         'Keep a beginner interaction alive by saying that you do not understand and asking for repetition, slower speech, or a meaning.',2,
         JSON_OBJECT('focus','communication_repair','zero_learner',TRUE,'chunk_first',TRUE)
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
  UNION ALL SELECT 65,'foundations','introductions','prea1-en-about-me','About Me',
         'Give very basic personal information about origin, age, feelings and family with short supported chunks.',2,
         JSON_OBJECT('focus','personal_information','cefr_can_do',TRUE,'personalized',TRUE)
  UNION ALL SELECT 75,'foundations','numbers','prea1-en-real-life-numbers','Numbers in Real Life',
         'Use and recognize small numbers in phone numbers, prices, days and simple dates.',2,
         JSON_OBJECT('focus','real_world_numbers','phone',TRUE,'prices',TRUE,'dates',TRUE)
  UNION ALL SELECT 95,'communication','simple-messages','prea1-en-forms-signs','Forms & Signs',
         'Read a few highly familiar form labels and public signs and fill a three-field personal-information form.',2,
         JSON_OBJECT('focus','functional_reading_writing','visual_support',TRUE,'writing',TRUE)
  UNION ALL SELECT 120,'communication','simple-messages','prea1-en-real-world-gate','Real-World Pre-A1 Check',
         'Complete tiny real-world tasks with personal speaking, form writing, listening, visual reading and communication repair.',2,
         JSON_OBJECT('focus','prea1_real_world_exit','personalized',TRUE,'writing',TRUE,'visual',TRUE,'repair',TRUE)

  UNION ALL SELECT 110,'communication','simple-messages','prea1-en-ready-for-a1','Ready for A1',
         'Demonstrate zero-learner readiness by recognizing basic script, following very short supported audio, using survival chunks, introducing yourself, and repairing a simple misunderstanding.',2,
         JSON_OBJECT('focus','prea1_exit_gate','zero_learner',TRUE,'script',TRUE,'listening',TRUE,'repair',TRUE,'speaking',TRUE)
) AS u
JOIN courses c ON c.slug = 'fa-en-us'
JOIN cefr_levels lvl ON lvl.code = 'Pre-A1'
JOIN skills s ON s.slug = u.skill_slug
JOIN topics t ON t.slug = u.topic_slug;
