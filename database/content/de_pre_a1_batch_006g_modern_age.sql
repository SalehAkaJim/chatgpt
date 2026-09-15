-- German Pre-A1 modernization: replace the supplemental DLI SOLT age-production
-- source with a modern ZPE OER source carrying explicit CC BY-SA 3.0 metadata.
-- Target: MySQL 9.0.1
-- Safe to run repeatedly after 006f.

SET NAMES utf8mb4;

INSERT INTO sources
(public_id,title,organization_or_author,source_language_code,source_type,base_url,license_name,license_url,attribution_text,reuse_status,notes)
VALUES
('src_zpe_de_age','Willkommen auf meiner Burg! — age question and answer','Contentplus.pl Sp. z o.o. / ZPE','de','website',
 'https://zpe.gov.pl/a/plik-audio/DEsgCliAI','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/',
 '“Willkommen auf meiner Burg!”, Contentplus.pl Sp. z o.o., via ZPE; CC BY-SA 3.0','reuse_with_attribution',
 'Modern beginner material. Transcript contains “Wie alt bist du?” and “Ich bin 100 Jahre alt!”; Übung 3 gives the reusable source template “Ich bin ... Jahre alt.”')
ON DUPLICATE KEY UPDATE
 title=VALUES(title),organization_or_author=VALUES(organization_or_author),source_language_code=VALUES(source_language_code),source_type=VALUES(source_type),base_url=VALUES(base_url),license_name=VALUES(license_name),license_url=VALUES(license_url),attribution_text=VALUES(attribution_text),reuse_status=VALUES(reuse_status),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_age_template','ZPE modern age question/answer template',
       'Transcript: “Wie alt bist du?” / “Ich bin 100 Jahre alt!”; Übung 3 Tipp: “Ich bin ... Jahre alt.”',
       s.base_url,
       'Exact modern source template used for learner age production in Lesson 10.'
FROM sources s WHERE s.public_id='src_zpe_de_age'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

-- Remove the older SOLT source from the active lesson path. The historical source
-- inventory record remains available, but it is no longer an active teaching source.
DELETE ls
FROM lesson_sources ls
JOIN lessons l ON l.id=ls.lesson_id
JOIN source_items si ON si.id=ls.source_item_id
WHERE l.public_id='de_pre_a1_l010'
  AND si.public_id='srcitem_solt_m2_l1_age';

INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id
FROM lessons l
JOIN source_items si ON si.public_id='srcitem_zpe_age_template'
WHERE l.public_id='de_pre_a1_l010';

DELETE acs
FROM activity_sources acs
JOIN activities a ON a.id=acs.activity_id
JOIN source_items si ON si.id=acs.source_item_id
WHERE a.public_id='de_pre_a1_a010_04'
  AND si.public_id='srcitem_solt_m2_l1_age';

INSERT IGNORE INTO activity_sources (activity_id,source_item_id)
SELECT a.id,si.id
FROM activities a
JOIN source_items si ON si.public_id='srcitem_zpe_age_template'
WHERE a.public_id='de_pre_a1_a010_04';

UPDATE activities
SET instruction_fa='سن خودت را در قالب منبع قرار بده.',
    selection_reason='Modern ZPE CC-licensed age template closes the age-production target without authored German.',
    payload=JSON_OBJECT('promptTarget','Ich bin ... Jahre alt.','slotTypes',JSON_ARRAY('learner_age')),
    transformations=JSON_OBJECT('sourceTransformation','replace only the source ellipsis with the learner-provided age; no new German frame is authored')
WHERE public_id='de_pre_a1_a010_04';

UPDATE lessons
SET source_title='FAST Lesson 4 age question + ZPE modern age answer',
    activity_count_rationale='4 activities: source age question, recognition, pronunciation, then a modern ZPE source template for giving the learner’s own age.',
    sequence_rationale='Recognise the age question first; only then produce age using a separately sourced modern template.'
WHERE public_id='de_pre_a1_l010';

UPDATE curriculum_targets
SET notes='Lesson 10 combines the FAST age-question source with the modern ZPE CC BY-SA age template “Ich bin ... Jahre alt.”; both asking/recognising and giving age are source-backed.'
WHERE public_id='de_pre_a1_ct_006';
