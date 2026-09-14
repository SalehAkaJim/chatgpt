-- Standard Italian course for Persian-speaking learners.
INSERT IGNORE INTO courses (
  slug, learner_language_id, learner_variant_id, target_language_id, target_variant_id,
  title, description, metadata
)
SELECT
  'fa-it-it', learner.id, learner_variant.id, target.id, target_variant.id,
  'Italian for Persian speakers',
  'Standard Italian course localized for Persian-speaking learners.',
  JSON_OBJECT('curriculum_family','italian','default_variant','it-IT','standard','standard_italian')
FROM languages learner
JOIN language_variants learner_variant ON learner_variant.language_id=learner.id AND learner_variant.code='fa-IR'
JOIN languages target ON target.code='it'
JOIN language_variants target_variant ON target_variant.language_id=target.id AND target_variant.code='it-IT'
WHERE learner.code='fa';
