-- German Pre-A1 modernization pass: greetings, names, family, legacy spelling.
-- Target: MySQL 9.0.1
-- Modern CC BY-SA 3.0 ZPE content replaces active teaching strings that used dated
-- address forms or pre-reform spellings (Fräulein / heisse / heissen / grosse / Schloß).
-- Safe to run repeatedly after the preceding German Pre-A1 batches.

SET NAMES utf8mb4;

-- -----------------------------------------------------------------------------
-- Modern OER source records.
-- -----------------------------------------------------------------------------
INSERT INTO sources
(public_id,title,organization_or_author,source_language_code,source_type,base_url,license_name,license_url,attribution_text,reuse_status,notes)
VALUES
('src_zpe_de_greetings','Wie geht es dir? — modern greetings','Contentplus.pl Sp. z o.o. / ZPE','de','website',
 'https://zpe.gov.pl/a/plik-audio/DOKvuGQXx','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/',
 '“Wie geht es dir?”, Contentplus.pl Sp. z o.o., via ZPE; CC BY-SA 3.0','reuse_with_attribution',
 'Modern source transcripts include Guten Morgen with Frau, Guten Tag with Herr, and Guten Abend with Herr.'),
('src_zpe_de_hello_goodbye','Hallo! Guten Tag! — greetings and farewells','Contentplus.pl Sp. z o.o. / ZPE','de','website',
 'https://zpe.gov.pl/pdf/PMHsUdVIf','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/',
 '“Hallo! Guten Tag!”, Contentplus.pl Sp. z o.o., via ZPE; CC BY-SA 3.0','reuse_with_attribution',
 'Modern beginner material explicitly includes Gute Nacht and Auf Wiedersehen and time-of-day greeting tasks.'),
('src_zpe_de_names','Wie heißt du? — names and introductions','Contentplus.pl Sp. z o.o. / ZPE','de','website',
 'https://zpe.gov.pl/a/sprawdz-sie/Dfa49w3TH','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/',
 '“Wie heißt du?”, Contentplus.pl Sp. z o.o., via ZPE; CC BY-SA 3.0','reuse_with_attribution',
 'Modern orthography source containing Wie heißt du?, Ich heiße Mia, Wie heißen Sie?, Mein Name ist Ida Gunther and related beginner name patterns.'),
('src_zpe_de_siblings','Hast du Geschwister?','Contentplus.pl Sp. z o.o. / ZPE','de','website',
 'https://zpe.gov.pl/a/przeczytaj/DYRtcRfdT','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/',
 '“Hast du Geschwister?”, Contentplus.pl Sp. z o.o., via ZPE; CC BY-SA 3.0','reuse_with_attribution',
 'Modern beginner sibling dialogue: Hast du Geschwister? / Ich habe einen Bruder / eine Schwester / Ich bin Einzelkind.')
ON DUPLICATE KEY UPDATE
 title=VALUES(title),organization_or_author=VALUES(organization_or_author),source_language_code=VALUES(source_language_code),source_type=VALUES(source_type),base_url=VALUES(base_url),license_name=VALUES(license_name),license_url=VALUES(license_url),attribution_text=VALUES(attribution_text),reuse_status=VALUES(reuse_status),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_modern_greetings','ZPE modern greetings transcript','Transcript examples: Guten Morgen, Frau Klein!; Guten Tag, Herr Meyer!; Guten Abend, Herr Hermann!',s.base_url,
       'Exact current greeting examples with Frau/Herr; no Fräulein.'
FROM sources s WHERE s.public_id='src_zpe_de_greetings'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_modern_goodnight','ZPE modern greeting/farewell task','Aufgabe 4/5: Guten Tag, Gute Nacht, Auf Wiedersehen, Guten Morgen, Guten Abend',s.base_url,
       'Exact beginner greeting/farewell strings in modern teaching material.'
FROM sources s WHERE s.public_id='src_zpe_de_hello_goodbye'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_modern_names','ZPE modern name dialogues/exercises','Aufgaben 2–8: Wie heißt du?; Ich heiße Mia.; Wie heißen Sie?; Mein Name ist Ida Gunther.',s.base_url,
       'Modern standard orthography for heißen and exact beginner name/identity phrases.'
FROM sources s WHERE s.public_id='src_zpe_de_names'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_modern_siblings','ZPE sibling dialogue','Nach der Schule transcript: Sophie asks Lina/Tim about siblings; answers include einen Bruder, eine Schwester, Einzelkind.',s.base_url,
       'Modern compact family/sibling exchange suitable for Pre-A1.'
FROM sources s WHERE s.public_id='src_zpe_de_siblings'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

-- -----------------------------------------------------------------------------
-- Lesson 2: keep the source-backed leave-taking dialogue, but replace the dated
-- Headstart time-of-day matching examples with modern ZPE examples.
-- -----------------------------------------------------------------------------
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id IN ('srcitem_zpe_modern_greetings','srcitem_zpe_modern_goodnight') WHERE l.public_id='de_pre_a1_l002';

DELETE acs FROM activity_sources acs JOIN activities a ON a.id=acs.activity_id
JOIN source_items si ON si.id=acs.source_item_id
WHERE a.public_id='de_pre_a1_a002_02' AND si.public_id='srcitem_headstart_m2_u3';
INSERT IGNORE INTO activity_sources (activity_id,source_item_id)
SELECT a.id,si.id FROM activities a JOIN source_items si ON si.public_id IN ('srcitem_zpe_modern_greetings','srcitem_zpe_modern_goodnight') WHERE a.public_id='de_pre_a1_a002_02';

UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id
SET ai.text_target=CASE ai.position
      WHEN 1 THEN 'Guten Morgen, Frau Klein!'
      WHEN 2 THEN 'Guten Tag, Herr Meyer!'
      WHEN 3 THEN 'Guten Abend, Herr Hermann!'
      WHEN 4 THEN 'Gute Nacht!'
    END,
    ai.text_fa=CASE ai.position
      WHEN 1 THEN 'صبح بخیر خانم کلاین!'
      WHEN 2 THEN 'روز بخیر آقای مایر!'
      WHEN 3 THEN 'عصر بخیر آقای هرمان!'
      WHEN 4 THEN 'شب بخیر!'
    END,
    ai.group_key=CASE ai.position WHEN 1 THEN 'morning' WHEN 2 THEN 'day' WHEN 3 THEN 'evening' WHEN 4 THEN 'night' END
WHERE a.public_id='de_pre_a1_a002_02';

DELETE ais FROM activity_item_sources ais JOIN activity_items ai ON ai.id=ais.activity_item_id JOIN activities a ON a.id=ai.activity_id WHERE a.public_id='de_pre_a1_a002_02';
INSERT IGNORE INTO activity_item_sources (activity_item_id,source_item_id)
SELECT ai.id,si.id FROM activity_items ai JOIN activities a ON a.id=ai.activity_id JOIN source_items si
  ON si.public_id=CASE WHEN ai.position=4 THEN 'srcitem_zpe_modern_goodnight' ELSE 'srcitem_zpe_modern_greetings' END
WHERE a.public_id='de_pre_a1_a002_02';

UPDATE activities SET selection_reason='Modern CC-licensed greeting examples replace the dated Headstart address form while preserving time-of-day practice.',
 transformations=JSON_OBJECT('sourceTransformation','exact modern ZPE greeting examples grouped by time of day')
WHERE public_id='de_pre_a1_a002_02';
UPDATE lessons SET source_title='Headstart leave-taking + ZPE modern time-of-day greetings' WHERE public_id='de_pre_a1_l002';

-- Modern lexeme provenance for greeting strings.
DELETE ls FROM lexeme_sources ls JOIN lexemes lx ON lx.id=ls.lexeme_id JOIN source_items si ON si.id=ls.source_item_id
WHERE lx.public_id IN ('de_lex_guten_morgen','de_lex_guten_abend','de_lex_gute_nacht') AND si.public_id='srcitem_headstart_m2_u3';
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_zpe_modern_greetings' WHERE lx.public_id IN ('de_lex_guten_morgen','de_lex_guten_abend');
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_zpe_modern_goodnight' WHERE lx.public_id='de_lex_gute_nacht';

-- -----------------------------------------------------------------------------
-- Modern name characters reused by lessons 5, 6 and review lesson 30.
-- -----------------------------------------------------------------------------
INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_zpe_mia_name',l.id,'Mia','source','unspecified','unspecified',JSON_ARRAY('learner_surrogate'),
       'Source reply explicitly says “Ich heiße Mia.” Gender is not inferred from the name alone.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_zpe_name_partner',l.id,'Name partner','app_created','unspecified','unspecified',JSON_ARRAY('conversation_partner'),
       'Generic persona assigned to an exact ZPE name-question line; source does not establish speaker gender.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_zpe_ida_gunther',l.id,'Ida Gunther','source','unspecified','unspecified',JSON_ARRAY('conversation_partner'),
       'Named source speaker in ZPE telephone dialogue. Gender is not inferred solely from the name.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_zpe_name_learner',l.id,'Name learner','app_created','unspecified','unspecified',JSON_ARRAY('learner_surrogate'),
       'Generic learner persona for the exact formal source question “Wie heißen Sie?”.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

-- -----------------------------------------------------------------------------
-- Lesson 5: giving a name, with modern orthography/source.
-- -----------------------------------------------------------------------------
DELETE ls FROM lesson_sources ls JOIN lessons l ON l.id=ls.lesson_id JOIN source_items si ON si.id=ls.source_item_id
WHERE l.public_id='de_pre_a1_l005' AND si.public_id='srcitem_basic_u2_passport_customs';
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_zpe_modern_names' WHERE l.public_id='de_pre_a1_l005';

DELETE FROM dialogue_characters WHERE dialogue_id=(SELECT id FROM dialogues WHERE public_id='de_pre_a1_dlg_005');
INSERT IGNORE INTO dialogue_characters (dialogue_id,character_id,role_label)
SELECT d.id,ch.id,x.role_label FROM (
 SELECT 'de_char_zpe_name_partner' cid,'speaker' role_label UNION ALL
 SELECT 'de_char_zpe_mia_name','learner_role'
) x JOIN dialogues d ON d.public_id='de_pre_a1_dlg_005' JOIN characters ch ON ch.public_id=x.cid;

UPDATE dialogues SET scenario='Modern name exchange (ZPE CC BY-SA)' WHERE public_id='de_pre_a1_dlg_005';
UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_name_partner'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='app_assigned',dt.speaker_gender_evidence='unspecified',dt.text_target='Wie heißt du?',dt.translation_fa='اسمت چیست؟',dt.learner_turn=0
WHERE d.public_id='de_pre_a1_dlg_005' AND dt.position=1;
UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_mia_name'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='source',dt.speaker_gender_evidence='unspecified',dt.text_target='Ich heiße Mia. Und du?',dt.translation_fa='من میا هستم. تو چطور؟',dt.learner_turn=1
WHERE d.public_id='de_pre_a1_dlg_005' AND dt.position=2;

DELETE ds FROM dialogue_sources ds JOIN dialogues d ON d.id=ds.dialogue_id WHERE d.public_id='de_pre_a1_dlg_005';
INSERT IGNORE INTO dialogue_sources (dialogue_id,source_item_id) SELECT d.id,si.id FROM dialogues d JOIN source_items si ON si.public_id='srcitem_zpe_modern_names' WHERE d.public_id='de_pre_a1_dlg_005';
DELETE dts FROM dialogue_turn_sources dts JOIN dialogue_turns dt ON dt.id=dts.dialogue_turn_id JOIN dialogues d ON d.id=dt.dialogue_id WHERE d.public_id='de_pre_a1_dlg_005';
INSERT IGNORE INTO dialogue_turn_sources (dialogue_turn_id,source_item_id) SELECT dt.id,si.id FROM dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN source_items si ON si.public_id='srcitem_zpe_modern_names' WHERE d.public_id='de_pre_a1_dlg_005';

UPDATE activities SET payload=JSON_OBJECT('learnerCharacterId','de_char_zpe_mia_name'),selection_reason='Modern CC-licensed name dialogue with current orthography.',transformations=JSON_OBJECT('sourceTransformation','exact ZPE two-turn name exchange') WHERE public_id='de_pre_a1_a005_01';
UPDATE activities SET payload=JSON_OBJECT('promptTarget','Ich heiße ____.','shuffleOptions',TRUE),selection_reason='Name-form recognition from the modern source exchange.',transformations=JSON_OBJECT('sourceTransformation','one source name blanked') WHERE public_id='de_pre_a1_a005_02';
UPDATE activities SET payload=JSON_OBJECT('targetText','Ich heiße Mia. Und du?'),transformations=JSON_OBJECT('sourceTransformation','exact source learner turn') WHERE public_id='de_pre_a1_a005_03';

UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id
SET ai.text_target=CASE ai.position WHEN 1 THEN 'Mia' WHEN 2 THEN 'Lea' END,
    ai.text_fa=CASE ai.position WHEN 1 THEN 'میا' WHEN 2 THEN 'لیا' END,
    ai.is_correct=CASE ai.position WHEN 1 THEN 1 ELSE 0 END
WHERE a.public_id='de_pre_a1_a005_02';
UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id SET ai.text_target='Ich heiße Mia. Und du?',ai.text_fa='من میا هستم. تو چطور؟' WHERE a.public_id='de_pre_a1_a005_03';

DELETE acs FROM activity_sources acs JOIN activities a ON a.id=acs.activity_id WHERE a.public_id LIKE 'de_pre_a1_a005_%';
INSERT IGNORE INTO activity_sources (activity_id,source_item_id) SELECT a.id,si.id FROM activities a JOIN source_items si ON si.public_id='srcitem_zpe_modern_names' WHERE a.public_id LIKE 'de_pre_a1_a005_%';
DELETE ais FROM activity_item_sources ais JOIN activity_items ai ON ai.id=ais.activity_item_id JOIN activities a ON a.id=ai.activity_id WHERE a.public_id LIKE 'de_pre_a1_a005_%';
INSERT IGNORE INTO activity_item_sources (activity_item_id,source_item_id) SELECT ai.id,si.id FROM activity_items ai JOIN activities a ON a.id=ai.activity_id JOIN source_items si ON si.public_id='srcitem_zpe_modern_names' WHERE a.public_id LIKE 'de_pre_a1_a005_%' AND ai.text_target IS NOT NULL;
UPDATE lessons SET source_title='ZPE modern name dialogue (CC BY-SA 3.0)' WHERE public_id='de_pre_a1_l005';

-- -----------------------------------------------------------------------------
-- Lesson 6: asking a name. Assemble only exact phrases from the same modern source:
-- greeting + formal source question + source name answer. No German is authored.
-- -----------------------------------------------------------------------------
DELETE ls FROM lesson_sources ls JOIN lessons l ON l.id=ls.lesson_id JOIN source_items si ON si.id=ls.source_item_id
WHERE l.public_id='de_pre_a1_l006' AND si.public_id='srcitem_fast_l1_intro';
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id) SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_zpe_modern_names' WHERE l.public_id='de_pre_a1_l006';

DELETE FROM dialogue_characters WHERE dialogue_id=(SELECT id FROM dialogues WHERE public_id='de_pre_a1_dlg_006');
INSERT IGNORE INTO dialogue_characters (dialogue_id,character_id,role_label)
SELECT d.id,ch.id,x.role_label FROM (
 SELECT 'de_char_zpe_ida_gunther' cid,'speaker' role_label UNION ALL
 SELECT 'de_char_zpe_name_learner','learner_role'
) x JOIN dialogues d ON d.public_id='de_pre_a1_dlg_006' JOIN characters ch ON ch.public_id=x.cid;
UPDATE dialogues SET scenario='Formal name question assembled from exact modern ZPE phrases' WHERE public_id='de_pre_a1_dlg_006';

UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_ida_gunther'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='app_assigned',dt.speaker_gender_evidence='unspecified',dt.text_target='Guten Morgen!',dt.translation_fa='صبح بخیر!',dt.learner_turn=0
WHERE d.public_id='de_pre_a1_dlg_006' AND dt.position=1;
UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_name_learner'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='app_assigned',dt.speaker_gender_evidence='unspecified',dt.text_target='Wie heißen Sie?',dt.translation_fa='اسم شما چیست؟',dt.learner_turn=1
WHERE d.public_id='de_pre_a1_dlg_006' AND dt.position=2;
INSERT INTO dialogue_turns (dialogue_id,position,speaker_character_id,speaker_identity_origin,speaker_gender_evidence,text_target,translation_fa,learner_turn)
SELECT d.id,3,ch.id,'source','unspecified','Mein Name ist Ida Gunther.','اسم من ایدا گونتر است.',0
FROM dialogues d JOIN characters ch ON ch.public_id='de_char_zpe_ida_gunther' WHERE d.public_id='de_pre_a1_dlg_006'
ON DUPLICATE KEY UPDATE speaker_character_id=VALUES(speaker_character_id),speaker_identity_origin=VALUES(speaker_identity_origin),speaker_gender_evidence=VALUES(speaker_gender_evidence),text_target=VALUES(text_target),translation_fa=VALUES(translation_fa),learner_turn=VALUES(learner_turn);

DELETE ds FROM dialogue_sources ds JOIN dialogues d ON d.id=ds.dialogue_id WHERE d.public_id='de_pre_a1_dlg_006';
INSERT IGNORE INTO dialogue_sources (dialogue_id,source_item_id) SELECT d.id,si.id FROM dialogues d JOIN source_items si ON si.public_id='srcitem_zpe_modern_names' WHERE d.public_id='de_pre_a1_dlg_006';
DELETE dts FROM dialogue_turn_sources dts JOIN dialogue_turns dt ON dt.id=dts.dialogue_turn_id JOIN dialogues d ON d.id=dt.dialogue_id WHERE d.public_id='de_pre_a1_dlg_006';
INSERT IGNORE INTO dialogue_turn_sources (dialogue_turn_id,source_item_id) SELECT dt.id,si.id FROM dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN source_items si ON si.public_id='srcitem_zpe_modern_names' WHERE d.public_id='de_pre_a1_dlg_006';

UPDATE activities SET payload=JSON_OBJECT('learnerCharacterId','de_char_zpe_name_learner'),selection_reason='Modern source-backed formal name question; conversation is assembled solely from exact phrases on the same ZPE source page.',transformations=JSON_OBJECT('sourceTransformation','three exact ZPE phrases assembled into partner-first microdialogue') WHERE public_id='de_pre_a1_a006_01';
UPDATE activities SET payload=JSON_OBJECT('targetText','Wie heißen Sie?'),selection_reason='Modern source explicitly includes the formal question Wie heißen Sie?.',transformations=JSON_OBJECT('sourceTransformation','exact source exercise phrase') WHERE public_id='de_pre_a1_a006_02';
UPDATE activities SET payload=JSON_OBJECT('shuffleTokens',TRUE,'canonicalText','Wie heißen Sie?'),transformations=JSON_OBJECT('sourceTransformation','exact source question split into tokens') WHERE public_id='de_pre_a1_a006_03';
UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id SET ai.text_target='Wie heißen Sie?',ai.text_fa='اسم شما چیست؟' WHERE a.public_id='de_pre_a1_a006_02';
UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id SET ai.text_target='heißen' WHERE a.public_id='de_pre_a1_a006_03' AND ai.position=2;

DELETE acs FROM activity_sources acs JOIN activities a ON a.id=acs.activity_id WHERE a.public_id LIKE 'de_pre_a1_a006_%';
INSERT IGNORE INTO activity_sources (activity_id,source_item_id) SELECT a.id,si.id FROM activities a JOIN source_items si ON si.public_id='srcitem_zpe_modern_names' WHERE a.public_id LIKE 'de_pre_a1_a006_%';
DELETE ais FROM activity_item_sources ais JOIN activity_items ai ON ai.id=ais.activity_item_id JOIN activities a ON a.id=ai.activity_id WHERE a.public_id LIKE 'de_pre_a1_a006_%';
INSERT IGNORE INTO activity_item_sources (activity_item_id,source_item_id) SELECT ai.id,si.id FROM activity_items ai JOIN activities a ON a.id=ai.activity_id JOIN source_items si ON si.public_id='srcitem_zpe_modern_names' WHERE a.public_id LIKE 'de_pre_a1_a006_%' AND ai.text_target IS NOT NULL;
UPDATE lessons SET source_title='ZPE modern names/introductions (CC BY-SA 3.0)' WHERE public_id='de_pre_a1_l006';

-- Remove the dated cultural note from the active lesson/lexeme learning path.
DELETE lgn FROM lesson_grammar_notes lgn JOIN lessons l ON l.id=lgn.lesson_id JOIN grammar_notes gn ON gn.id=lgn.grammar_note_id
WHERE l.public_id='de_pre_a1_l006' AND gn.public_id='de_gn_fast_l1_introduction';
DELETE lgn FROM lexeme_grammar_notes lgn JOIN grammar_notes gn ON gn.id=lgn.grammar_note_id
WHERE gn.public_id='de_gn_fast_l1_introduction';

-- Modernize reusable name lexemes and provenance while preserving stable public IDs.
UPDATE lexemes SET surface='heißen',lemma='heißen' WHERE public_id='de_lex_heissen';
UPDATE lexemes SET surface='Wie heißen Sie?' WHERE public_id='de_lex_wie_heissen_sie';
DELETE ls FROM lexeme_sources ls JOIN lexemes lx ON lx.id=ls.lexeme_id JOIN source_items si ON si.id=ls.source_item_id
WHERE lx.public_id IN ('de_lex_heissen','de_lex_wie_heissen_sie','de_lex_mein_name_ist') AND si.public_id IN ('srcitem_basic_u2_passport_customs','srcitem_fast_l1_intro');
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_zpe_modern_names' WHERE lx.public_id IN ('de_lex_heissen','de_lex_wie_heissen_sie','de_lex_mein_name_ist');

-- -----------------------------------------------------------------------------
-- Lesson 9: replace old-orthography family exchange with a modern sibling dialogue.
-- -----------------------------------------------------------------------------
INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_zpe_sophie',l.id,'Sophie','source','unspecified','unspecified',JSON_ARRAY('conversation_partner'),
       'Named source speaker. Gender is left unspecified unless independently encoded by the source.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);
INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_zpe_lina',l.id,'Lina','source','unspecified','unspecified',JSON_ARRAY('learner_surrogate'),
       'Named source speaker whose exact response is “Ja, ich habe einen Bruder.” Gender is not inferred solely from name.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

DELETE ls FROM lesson_sources ls JOIN lessons l ON l.id=ls.lesson_id JOIN source_items si ON si.id=ls.source_item_id WHERE l.public_id='de_pre_a1_l009' AND si.public_id='srcitem_basic_u4_personal_family';
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id) SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_zpe_modern_siblings' WHERE l.public_id='de_pre_a1_l009';
DELETE FROM dialogue_characters WHERE dialogue_id=(SELECT id FROM dialogues WHERE public_id='de_pre_a1_dlg_009');
INSERT IGNORE INTO dialogue_characters (dialogue_id,character_id,role_label)
SELECT d.id,ch.id,x.role_label FROM (SELECT 'de_char_zpe_sophie' cid,'speaker' role_label UNION ALL SELECT 'de_char_zpe_lina','learner_role') x
JOIN dialogues d ON d.public_id='de_pre_a1_dlg_009' JOIN characters ch ON ch.public_id=x.cid;
UPDATE dialogues SET scenario='Modern sibling exchange (ZPE CC BY-SA)' WHERE public_id='de_pre_a1_dlg_009';
UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_sophie'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='source',dt.speaker_gender_evidence='unspecified',dt.text_target='Lina, hast du Geschwister?',dt.translation_fa='لینا، خواهر یا برادر داری؟',dt.learner_turn=0
WHERE d.public_id='de_pre_a1_dlg_009' AND dt.position=1;
UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_lina'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='source',dt.speaker_gender_evidence='unspecified',dt.text_target='Ja, ich habe einen Bruder.',dt.translation_fa='بله، یک برادر دارم.',dt.learner_turn=1
WHERE d.public_id='de_pre_a1_dlg_009' AND dt.position=2;
DELETE ds FROM dialogue_sources ds JOIN dialogues d ON d.id=ds.dialogue_id WHERE d.public_id='de_pre_a1_dlg_009';
INSERT IGNORE INTO dialogue_sources (dialogue_id,source_item_id) SELECT d.id,si.id FROM dialogues d JOIN source_items si ON si.public_id='srcitem_zpe_modern_siblings' WHERE d.public_id='de_pre_a1_dlg_009';
DELETE dts FROM dialogue_turn_sources dts JOIN dialogue_turns dt ON dt.id=dts.dialogue_turn_id JOIN dialogues d ON d.id=dt.dialogue_id WHERE d.public_id='de_pre_a1_dlg_009';
INSERT IGNORE INTO dialogue_turn_sources (dialogue_turn_id,source_item_id) SELECT dt.id,si.id FROM dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN source_items si ON si.public_id='srcitem_zpe_modern_siblings' WHERE d.public_id='de_pre_a1_dlg_009';

UPDATE activities SET payload=JSON_OBJECT('learnerCharacterId','de_char_zpe_lina'),selection_reason='Modern compact sibling dialogue replaces the older family exchange.',transformations=JSON_OBJECT('sourceTransformation','exact consecutive ZPE turns') WHERE public_id='de_pre_a1_a009_01';
UPDATE activities SET instruction_fa='واژه‌ها و عبارت‌های مربوط به خواهر و برادر را با معنی فارسی‌شان تطبیق بده.',selection_reason='Modern sibling vocabulary from the same source lesson.',transformations=JSON_OBJECT('sourceTransformation','exact source vocabulary/phrases') WHERE public_id='de_pre_a1_a009_02';
UPDATE activities SET instruction_fa='طبق همان مکالمه، لینا چه دارد؟',selection_reason='Simple comprehension from the exact source answer.',transformations=JSON_OBJECT('sourceTransformation','answer comes directly from source response') WHERE public_id='de_pre_a1_a009_03';
UPDATE activities SET payload=JSON_OBJECT('targetText','Ich habe einen Bruder.'),transformations=JSON_OBJECT('sourceTransformation','exact source learner turn') WHERE public_id='de_pre_a1_a009_04';

UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id
SET ai.text_target=CASE ai.position WHEN 1 THEN 'Geschwister' WHEN 2 THEN 'einen Bruder' WHEN 3 THEN 'eine Schwester' WHEN 4 THEN 'Einzelkind' END,
    ai.text_fa=CASE ai.position WHEN 1 THEN 'خواهر و برادر / خواهر یا برادر' WHEN 2 THEN 'یک برادر' WHEN 3 THEN 'یک خواهر' WHEN 4 THEN 'تک‌فرزند' END,
    ai.group_key=CASE ai.position WHEN 1 THEN 'siblings' WHEN 2 THEN 'brother' WHEN 3 THEN 'sister' WHEN 4 THEN 'only_child' END
WHERE a.public_id='de_pre_a1_a009_02';
UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id
SET ai.text_target=CASE ai.position WHEN 1 THEN 'einen Bruder' WHEN 2 THEN 'eine Schwester' END,
    ai.text_fa=CASE ai.position WHEN 1 THEN 'یک برادر' WHEN 2 THEN 'یک خواهر' END,
    ai.is_correct=CASE ai.position WHEN 1 THEN 1 ELSE 0 END
WHERE a.public_id='de_pre_a1_a009_03';
UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id SET ai.text_target='Ich habe einen Bruder.',ai.text_fa='یک برادر دارم.' WHERE a.public_id='de_pre_a1_a009_04';
DELETE acs FROM activity_sources acs JOIN activities a ON a.id=acs.activity_id WHERE a.public_id LIKE 'de_pre_a1_a009_%';
INSERT IGNORE INTO activity_sources (activity_id,source_item_id) SELECT a.id,si.id FROM activities a JOIN source_items si ON si.public_id='srcitem_zpe_modern_siblings' WHERE a.public_id LIKE 'de_pre_a1_a009_%';
DELETE ais FROM activity_item_sources ais JOIN activity_items ai ON ai.id=ais.activity_item_id JOIN activities a ON a.id=ai.activity_id WHERE a.public_id LIKE 'de_pre_a1_a009_%';
INSERT IGNORE INTO activity_item_sources (activity_item_id,source_item_id) SELECT ai.id,si.id FROM activity_items ai JOIN activities a ON a.id=ai.activity_id JOIN source_items si ON si.public_id='srcitem_zpe_modern_siblings' WHERE a.public_id LIKE 'de_pre_a1_a009_%' AND ai.text_target IS NOT NULL;

DELETE ll FROM lesson_lexemes ll JOIN lessons l ON l.id=ll.lesson_id WHERE l.public_id='de_pre_a1_l009';
INSERT INTO lexemes (public_id,language_id,language_level_id,lexeme_type,surface,lemma,part_of_speech,translation_fa,flashcard_eligible,audio_status)
SELECT x.public_id,lang.id,ll.id,x.lexeme_type,x.surface,x.lemma,x.pos,x.translation_fa,1,'blocked_until_language_final'
FROM languages lang JOIN language_levels ll ON ll.language_id=lang.id JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN (
 SELECT 'de_lex_geschwister' public_id,'word' lexeme_type,'Geschwister' surface,'Geschwister' lemma,'noun' pos,'خواهر و برادر / خواهر یا برادر' translation_fa UNION ALL
 SELECT 'de_lex_bruder','word','Bruder','Bruder','noun','برادر' UNION ALL
 SELECT 'de_lex_schwester','word','Schwester','Schwester','noun','خواهر' UNION ALL
 SELECT 'de_lex_einzelkind','word','Einzelkind','Einzelkind','noun','تک‌فرزند'
) x ON 1=1 WHERE lang.code='de'
ON DUPLICATE KEY UPDATE surface=VALUES(surface),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),translation_fa=VALUES(translation_fa),language_level_id=VALUES(language_level_id);
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_zpe_modern_siblings' WHERE lx.public_id IN ('de_lex_geschwister','de_lex_bruder','de_lex_schwester','de_lex_einzelkind');
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id IN ('de_lex_geschwister','de_lex_bruder','de_lex_schwester','de_lex_einzelkind') WHERE l.public_id='de_pre_a1_l009';
UPDATE lessons SET source_title='ZPE modern sibling dialogue (CC BY-SA 3.0)' WHERE public_id='de_pre_a1_l009';

-- -----------------------------------------------------------------------------
-- Remove the one remaining pre-reform Schloß item from active Lesson 19.
-- Four exact location-question items remain; no replacement sentence is invented.
-- -----------------------------------------------------------------------------
DELETE ai FROM activity_items ai JOIN activities a ON a.id=ai.activity_id WHERE a.public_id='de_pre_a1_a019_02' AND ai.text_target='Wo ist das Schloß?';

-- -----------------------------------------------------------------------------
-- Visibility of legacy forms after this patch (dialogue/activity/lexeme path only).
-- -----------------------------------------------------------------------------
SELECT
  (SELECT COUNT(*) FROM dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id WHERE d.public_id LIKE 'de_pre_a1_dlg_%' AND (dt.text_target LIKE '%Fräulein%' OR dt.text_target LIKE '%heisse%' OR dt.text_target LIKE '%heissen%' OR dt.text_target LIKE '%grosse%' OR dt.text_target LIKE '%Schloß%')) AS legacy_dialogue_count,
  (SELECT COUNT(*) FROM activity_items ai JOIN activities a ON a.id=ai.activity_id JOIN lessons l ON l.id=a.lesson_id WHERE l.public_id LIKE 'de_pre_a1_l%' AND (ai.text_target LIKE '%Fräulein%' OR ai.text_target LIKE '%heisse%' OR ai.text_target LIKE '%heissen%' OR ai.text_target LIKE '%grosse%' OR ai.text_target LIKE '%Schloß%')) AS legacy_activity_item_count,
  (SELECT COUNT(*) FROM lexemes lx JOIN lesson_lexemes ll ON ll.lexeme_id=lx.id JOIN lessons l ON l.id=ll.lesson_id WHERE l.public_id LIKE 'de_pre_a1_l%' AND (lx.surface LIKE '%heisse%' OR lx.surface LIKE '%heissen%' OR lx.surface LIKE '%grosse%' OR lx.surface LIKE '%Schloß%')) AS legacy_active_lexeme_count;
