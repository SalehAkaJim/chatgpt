-- German Pre-A1 curriculum coverage review status
-- Target: MySQL 9.0.1
-- This does NOT mark the level or lesson count final. It records that every mandatory
-- CEFR target now has implemented source-backed lesson coverage and is pending final QA.
-- Safe to run repeatedly after all de_pre_a1_batch_*.sql files.

SET NAMES utf8mb4;

UPDATE curriculum_targets ct
JOIN language_levels ll ON ll.id=ct.language_level_id
JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
SET ct.coverage_status='covered',
    ct.notes=CASE
      WHEN ct.public_id='de_pre_a1_ct_006' THEN 'FAST supplies the age question and DLI SOLT supplies the exact name+age production frame; both receptive and productive age coverage are source-backed.'
      ELSE COALESCE(ct.notes,'Source-backed coverage implemented in the mapped German Pre-A1 lesson set; pending final fidelity and pedagogical QA.')
    END
WHERE ct.is_mandatory=1;

UPDATE language_levels ll
JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
SET ll.status='review',
    ll.planned_lesson_count=30,
    ll.lesson_count_status='provisional',
    ll.coverage=JSON_OBJECT(
      'planningVersion',2,
      'mandatoryTargetCount',30,
      'coveredTargetCount',30,
      'verifiedTargetCount',0,
      'candidateLessonCount',30,
      'coverageReviewStatus','covered_pending_final_qa',
      'principle','Lesson count remains provisional until source fidelity, Persian translation, conversation-flow and activity-variety QA pass.'
    ),
    ll.notes='All 30 mandatory Pre-A1 curriculum targets currently have source-backed implemented coverage. Candidate lesson count remains 30 pending final QA.';

SELECT
  COUNT(*) AS mandatory_targets,
  SUM(ct.coverage_status='covered') AS covered_targets,
  SUM(ct.coverage_status='verified') AS verified_targets
FROM curriculum_targets ct
JOIN language_levels ll ON ll.id=ct.language_level_id
JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
WHERE ct.is_mandatory=1;
