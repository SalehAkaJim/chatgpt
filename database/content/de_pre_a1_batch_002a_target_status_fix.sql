-- Correct target-status annotation from batch 002.
-- Target: MySQL 9.0.1
-- Safe to run repeatedly after de_pre_a1_batch_002.sql.

SET NAMES utf8mb4;

-- Target 010 is the general numbers target; it must not inherit the age-answer gap.
UPDATE curriculum_targets ct
JOIN language_levels ll ON ll.id=ct.language_level_id
JOIN languages l ON l.id=ll.language_id
JOIN cefr_levels c ON c.id=ll.cefr_level_id
SET ct.coverage_status='uncovered',
    ct.notes=NULL
WHERE l.code='de' AND c.code='Pre-A1' AND ct.public_id='de_pre_a1_ct_010'
  AND ct.notes LIKE '%age question%';

-- Target 006 is the actual age target.
UPDATE curriculum_targets ct
JOIN language_levels ll ON ll.id=ct.language_level_id
JOIN languages l ON l.id=ll.language_id
JOIN cefr_levels c ON c.id=ll.cefr_level_id
SET ct.coverage_status='partial',
    ct.notes='Source-backed age question/recognition is implemented in lesson 10; a source-backed simple age answer is still required before this target can be covered/verified.'
WHERE l.code='de' AND c.code='Pre-A1' AND ct.public_id='de_pre_a1_ct_006';