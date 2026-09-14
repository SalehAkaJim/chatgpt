-- Standard French course for Persian-speaking learners.
INSERT IGNORE INTO courses (
  slug,learner_language_id,learner_variant_id,target_language_id,target_variant_id,title,description,metadata
)
SELECT 'fa-fr-fr', learner.id, learner_variant.id, target.id, target_variant.id,
       'French for Persian speakers',
       'Contemporary standard French course localized for Persian-speaking learners.',
       JSON_OBJECT('curriculum_family','french','default_variant','fr-FR','standard','standard_french')
FROM languages learner
JOIN language_variants learner_variant ON learner_variant.code='fa-IR'
JOIN languages target ON target.code='fr'
JOIN language_variants target_variant ON target_variant.code='fr-FR'
WHERE learner.code='fa';
