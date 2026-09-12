-- German A1 curriculum seed for Persian-speaking learners
-- Requires multilingual core and language-variants-courses seed.

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
  'a1-de-introductions',
  'Sich vorstellen',
  'Give your name, ask another person’s name, and use the core A1 forms of heißen and sein in a short introduction.',
  10,
  2,
  'approved',
  JSON_OBJECT(
    'language_specific', TRUE,
    'focus', JSON_ARRAY('heißen','sein','noun_capitalization','ß'),
    'target_variant', 'de-DE'
  )
FROM courses c
JOIN cefr_levels lvl ON lvl.code = 'A1'
JOIN skills s ON s.slug = 'foundations'
JOIN topics t ON t.slug = 'introductions'
WHERE c.slug = 'fa-de-de';
