-- Arabic MSA Pre-A1 curriculum for Persian-speaking learners
-- Deliberately language-specific: this is not a translation of the English path.
-- Requires languages, CEFR, skills/topics, migration 002 and language-variants-courses seed.

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
         'prea1-ar-script-direction' AS slug, 'Arabic Script Orientation' AS title,
         'Recognize Arabic writing direction and identify familiar versus Arabic-specific letter shapes.' AS objective,
         1 AS expected_lessons,
         JSON_OBJECT('focus','script','persian_transfer',TRUE) AS metadata
  UNION ALL SELECT 20,'literacy','script-basics','prea1-ar-core-letters-1','Core Letters I',
         'Recognize and pronounce a first high-frequency set of Arabic letters in isolation.',2,
         JSON_OBJECT('focus','letter_recognition','script','Arabic')
  UNION ALL SELECT 30,'literacy','script-basics','prea1-ar-core-letters-2','Core Letters II',
         'Recognize and pronounce the remaining core Arabic letter inventory, including letters that differ from Persian usage.',2,
         JSON_OBJECT('focus','letter_recognition','contrast_with_persian',TRUE)
  UNION ALL SELECT 40,'literacy','letter-connections','prea1-ar-connected-forms','Letters in Words',
         'Recognize initial, medial, final, and isolated letter shapes in connected Arabic writing.',3,
         JSON_OBJECT('focus','joining_forms')
  UNION ALL SELECT 50,'literacy','letter-connections','prea1-ar-nonconnectors','Letters That Do Not Connect',
         'Recognize Arabic letters that do not connect to the following letter and read simple combinations containing them.',2,
         JSON_OBJECT('focus','non_connecting_letters')
  UNION ALL SELECT 60,'literacy','diacritics','prea1-ar-short-vowels','Short Vowels',
         'Read simple syllables and beginner words with fatḥa, kasra, and ḍamma.',3,
         JSON_OBJECT('focus','short_vowels','diacritics',JSON_ARRAY('fatḥa','kasra','ḍamma'))
  UNION ALL SELECT 70,'literacy','diacritics','prea1-ar-sukun-shadda','Sukūn & Shadda',
         'Recognize sukūn and shadda and use them to decode short beginner words.',2,
         JSON_OBJECT('focus','reading_marks','diacritics',JSON_ARRAY('sukūn','shadda'))
  UNION ALL SELECT 80,'literacy','sound-letter-mapping','prea1-ar-distinct-sounds','Arabic-Specific Sounds',
         'Hear and distinguish a small set of Arabic sounds that require special attention for Persian-speaking learners.',3,
         JSON_OBJECT('focus','phonology','learner_language','fa')
  UNION ALL SELECT 90,'literacy','early-reading','prea1-ar-first-words','Your First Arabic Words',
         'Decode a small bank of highly frequent fully or partially vocalized Arabic words without relying on translation first.',3,
         JSON_OBJECT('focus','decoding','vocalization','supported')
  UNION ALL SELECT 100,'foundations','greetings','prea1-ar-first-greetings','First Greetings',
         'Recognize, hear, and use a few essential MSA greetings while connecting spoken forms to Arabic script.',2,
         JSON_OBJECT('focus','survival_language','variant','ar-MSA')
  UNION ALL SELECT 110,'foundations','introductions','prea1-ar-name-patterns','My Name',
         'Recognize and use very short patterns for giving a name and asking another person’s name.',2,
         JSON_OBJECT('focus','survival_language','variant','ar-MSA')
  UNION ALL SELECT 120,'foundations','numbers','prea1-ar-digits','Arabic Numbers 0–10',
         'Recognize Arabic-Indic digits and understand and say numbers from zero to ten.',2,
         JSON_OBJECT('focus','digits','range','0-10')
) AS u
JOIN courses c ON c.slug = 'fa-ar-msa'
JOIN cefr_levels lvl ON lvl.code = 'Pre-A1'
JOIN skills s ON s.slug = u.skill_slug
JOIN topics t ON t.slug = u.topic_slug;
