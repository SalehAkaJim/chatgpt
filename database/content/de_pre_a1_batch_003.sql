-- German Pre-A1 content batch 003: lessons 11–15
-- Target: MySQL 9.0.1
-- Sources: DLI/FSI German Headstart Modules II, IV, VII and VIII.
-- All German teaching strings are source-backed or transparent source transformations.
-- Audio intentionally remains blocked.

SET NAMES utf8mb4;

-- -----------------------------------------------------------------------------
-- Exact source locations
-- -----------------------------------------------------------------------------
INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_headstart_m4_u2_bus_number','Headstart Module IV Unit 2 — Bus Number Exchange',
       'Module IV, Unit 2, exercise 6, printed p.32 / PDF p.33 area',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192521.pdf',
       'Short A/B exchange: going to the station and taking bus number five. Source does not establish A/B gender.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_headstart_m2_u2_numbers','Headstart Module II Unit 2 — Numbers 0–20',
       'Module II, Unit 2, exercises 14–22, printed pp.23–24 / PDF pp.26–27',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192519.pdf',
       'Explicit source lists/drills for null through zwanzig.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_headstart_m2_u2_distance','Headstart Module II Unit 2 — Airport Distance/Bus Dialogue',
       'Module II, Unit 2, exercise 5, printed p.23 / PDF p.26',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192519.pdf',
       'Mike asks distance to airport; male German local answers with six kilometers, twenty minutes, bus number three.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_headstart_m7_u1_phone','Headstart Module VII Unit 1 — Post Office Phone Number Dialogue',
       'Module VII, Unit 1, “Auf der Post”, printed p.3 / PDF p.6',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192524.pdf',
       'Male official asks “Welche Nummer?”; Mike gives (212) 260-4512.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_headstart_m4_u2_days','Headstart Module IV Unit 2 — Days of the Week',
       'Module IV, Unit 2, exercise 17, printed p.28 / PDF p.29',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192521.pdf',
       'Explicit source list: Montag through Sonntag, with Samstag (Sonnabend).'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_headstart_m4_u2_station_time','Headstart Module IV Unit 2 — Station/Official Time Dialogue',
       'Module IV, Unit 2, “Im Bahnhof”, printed pp.26–27 / PDF pp.27–28',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192521.pdf',
       'Source explicitly marks the ticket official as female (Beamtin) in the first station exchange; exact time answer: “Um 14.30 Uhr von Gleis vier.”'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

-- Add exact content sources to lesson provenance.
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_headstart_m4_u2_bus_number' WHERE l.public_id='de_pre_a1_l011';
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id IN ('srcitem_headstart_m2_u2_numbers','srcitem_headstart_m2_u2_distance') WHERE l.public_id='de_pre_a1_l012';
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_headstart_m7_u1_phone' WHERE l.public_id='de_pre_a1_l013';
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id IN ('srcitem_headstart_m4_u2_days','srcitem_headstart_m8_u2') WHERE l.public_id='de_pre_a1_l014';
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_headstart_m4_u2_station_time' WHERE l.public_id='de_pre_a1_l015';

-- -----------------------------------------------------------------------------
-- Characters
-- -----------------------------------------------------------------------------
INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_transit_traveler',l.id,'Transit traveler','app_created','unspecified','adult',JSON_ARRAY('traveler'),
       'Headstart exercise labels this speaker only A; no gender is inferred.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_transit_helper',l.id,'Transit helper','app_created','unspecified','adult',JSON_ARRAY('local_helper','learner_surrogate'),
       'Headstart exercise labels this speaker only B; no gender is inferred.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_headstart_german_local',l.id,'German local','app_created','male','adult',JSON_ARRAY('local_helper','learner_surrogate'),
       'Source speaker label is “Deutscher”, explicitly masculine.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_post_official',l.id,'Post office official','app_created','male','adult',JSON_ARRAY('post_office_official'),
       'German source speaker label is “Beamter”, masculine.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_station_official_f',l.id,'Station ticket official','app_created','female','adult',JSON_ARRAY('ticket_official','learner_surrogate'),
       'Headstart explicitly labels this source role “Official (f)” / “Beamtin”; character must be female.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

-- -----------------------------------------------------------------------------
-- Dialogues
-- -----------------------------------------------------------------------------
INSERT INTO dialogues (public_id,language_level_id,scenario,status)
SELECT x.public_id,ll.id,x.scenario,'source_checked'
FROM language_levels ll
JOIN languages l ON l.id=ll.language_id AND l.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN (
  SELECT 'de_pre_a1_dlg_011' public_id,'Bus number exchange (Headstart Module IV Unit 2)' scenario UNION ALL
  SELECT 'de_pre_a1_dlg_012','Airport distance and numbers (Headstart Module II Unit 2)' UNION ALL
  SELECT 'de_pre_a1_dlg_013','Giving a phone number at the post office (Headstart Module VII Unit 1)' UNION ALL
  SELECT 'de_pre_a1_dlg_014','Monday leave-taking (Headstart Module VIII Unit 2 excerpt)' UNION ALL
  SELECT 'de_pre_a1_dlg_015','Train departure time at station (Headstart Module IV Unit 2)'
) x ON 1=1
ON DUPLICATE KEY UPDATE scenario=VALUES(scenario),status=VALUES(status);

INSERT IGNORE INTO dialogue_characters (dialogue_id,character_id,role_label)
SELECT d.id,ch.id,x.role_label
FROM (
  SELECT 'de_pre_a1_dlg_011' did,'de_char_transit_traveler' cid,'speaker' role_label UNION ALL
  SELECT 'de_pre_a1_dlg_011','de_char_transit_helper','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_012','de_char_mike_halloway','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_012','de_char_headstart_german_local','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_013','de_char_post_official','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_013','de_char_mike_halloway','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_014','de_char_herr_mueller','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_014','de_char_mike_halloway','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_015','de_char_mike_halloway','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_015','de_char_station_official_f','learner_role'
) x
JOIN dialogues d ON d.public_id=x.did
JOIN characters ch ON ch.public_id=x.cid;

INSERT INTO dialogue_turns
(dialogue_id,position,speaker_character_id,speaker_identity_origin,speaker_gender_evidence,text_target,translation_fa,learner_turn)
SELECT d.id,x.pos,ch.id,x.identity_origin,x.gender_evidence,x.text_target,x.translation_fa,x.learner_turn
FROM (
  SELECT 'de_pre_a1_dlg_011' did,1 pos,'de_char_transit_traveler' cid,'app_assigned' identity_origin,'unspecified' gender_evidence,
         'Ich möchte zum Bahnhof fahren.' text_target,'می‌خواهم به ایستگاه قطار بروم.' translation_fa,0 learner_turn UNION ALL
  SELECT 'de_pre_a1_dlg_011',2,'de_char_transit_helper','app_assigned','unspecified','Sie können Bus Nummer fünf nehmen.','می‌توانید اتوبوس شماره پنج را سوار شوید.',1 UNION ALL

  SELECT 'de_pre_a1_dlg_012',1,'de_char_mike_halloway','source','male','Entschuldigen Sie, wie weit ist es zum Flughafen?','ببخشید، تا فرودگاه چقدر راه است؟',0 UNION ALL
  SELECT 'de_pre_a1_dlg_012',2,'de_char_headstart_german_local','app_assigned','male','Sechs Kilometer. Zwanzig Minuten mit Bus Nummer drei.','شش کیلومتر. با اتوبوس شماره سه، بیست دقیقه.',1 UNION ALL

  SELECT 'de_pre_a1_dlg_013',1,'de_char_post_official','app_assigned','male','Welche Nummer?','چه شماره‌ای؟',0 UNION ALL
  SELECT 'de_pre_a1_dlg_013',2,'de_char_mike_halloway','source','male','(212) 260-4512.','(۲۱۲) ۲۶۰-۴۵۱۲.',1 UNION ALL

  SELECT 'de_pre_a1_dlg_014',1,'de_char_herr_mueller','source','male','Bis Montag, Mike.','تا دوشنبه، مایک.',0 UNION ALL
  SELECT 'de_pre_a1_dlg_014',2,'de_char_mike_halloway','source','male','Bis Montag. Auf Wiedersehen.','تا دوشنبه. خداحافظ.',1 UNION ALL

  SELECT 'de_pre_a1_dlg_015',1,'de_char_mike_halloway','source','male','Danke. Wann fährt der nächste Zug ab?','ممنون. قطار بعدی چه زمانی حرکت می‌کند؟',0 UNION ALL
  SELECT 'de_pre_a1_dlg_015',2,'de_char_station_official_f','app_assigned','female','Um 14.30 Uhr von Gleis vier.','ساعت ۱۴:۳۰ از خط چهار.',1
) x
JOIN dialogues d ON d.public_id=x.did
JOIN characters ch ON ch.public_id=x.cid
ON DUPLICATE KEY UPDATE speaker_character_id=VALUES(speaker_character_id),speaker_identity_origin=VALUES(speaker_identity_origin),
 speaker_gender_evidence=VALUES(speaker_gender_evidence),text_target=VALUES(text_target),translation_fa=VALUES(translation_fa),learner_turn=VALUES(learner_turn);

INSERT IGNORE INTO dialogue_sources (dialogue_id,source_item_id)
SELECT d.id,si.id FROM (
  SELECT 'de_pre_a1_dlg_011' did,'srcitem_headstart_m4_u2_bus_number' sid UNION ALL
  SELECT 'de_pre_a1_dlg_012','srcitem_headstart_m2_u2_distance' UNION ALL
  SELECT 'de_pre_a1_dlg_013','srcitem_headstart_m7_u1_phone' UNION ALL
  SELECT 'de_pre_a1_dlg_014','srcitem_headstart_m8_u2' UNION ALL
  SELECT 'de_pre_a1_dlg_015','srcitem_headstart_m4_u2_station_time'
) x JOIN dialogues d ON d.public_id=x.did JOIN source_items si ON si.public_id=x.sid;

INSERT IGNORE INTO dialogue_turn_sources (dialogue_turn_id,source_item_id)
SELECT dt.id,si.id
FROM dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id
JOIN (
  SELECT 'de_pre_a1_dlg_011' did,'srcitem_headstart_m4_u2_bus_number' sid UNION ALL
  SELECT 'de_pre_a1_dlg_012','srcitem_headstart_m2_u2_distance' UNION ALL
  SELECT 'de_pre_a1_dlg_013','srcitem_headstart_m7_u1_phone' UNION ALL
  SELECT 'de_pre_a1_dlg_014','srcitem_headstart_m8_u2' UNION ALL
  SELECT 'de_pre_a1_dlg_015','srcitem_headstart_m4_u2_station_time'
) x ON x.did=d.public_id JOIN source_items si ON si.public_id=x.sid;

-- -----------------------------------------------------------------------------
-- Activities — counts intentionally vary: 4, 3, 4, 2, 4
-- -----------------------------------------------------------------------------
INSERT INTO activities
(public_id,lesson_id,position,type_code,instruction_fa,selection_reason,dialogue_id,payload,transformations,audio_status)
SELECT x.public_id,l.id,x.pos,x.type_code,x.instruction_fa,x.selection_reason,d.id,x.payload,x.transformations,'pending_final_language'
FROM (
  SELECT 'de_pre_a1_a011_01' public_id,'de_pre_a1_l011' lid,1 pos,'conversation_speaking' type_code,'گوش کن و جمله دارای شماره اتوبوس را بخوان.' instruction_fa,'Opening source exchange with a single-digit number.' selection_reason,'de_pre_a1_dlg_011' did,JSON_OBJECT('learnerCharacterId','de_char_transit_helper') payload,JSON_OBJECT('sourceTransformation','exact two-turn source exchange') transformations UNION ALL
  SELECT 'de_pre_a1_a011_02','de_pre_a1_l011',2,'matching','عددهای ۰ تا ۱۰ را با شکل آلمانی‌شان تطبیق بده.','Headstart explicit number list.',NULL,JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','exact source number-word list') UNION ALL
  SELECT 'de_pre_a1_a011_03','de_pre_a1_l011',3,'multiple_choice','کلمه آلمانیِ عدد ۸ را انتخاب کن.','Quick recognition check from source list.',NULL,JSON_OBJECT('shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','source number words used as options') UNION ALL
  SELECT 'de_pre_a1_a011_04','de_pre_a1_l011',4,'pronunciation_read','عبارت کوتاه را واضح بخوان.','Contextual speaking reinforcement.',NULL,JSON_OBJECT('targetText','Bus Nummer fünf'),JSON_OBJECT('sourceTransformation','exact phrase extracted from source turn') UNION ALL

  SELECT 'de_pre_a1_a012_01','de_pre_a1_l012',1,'conversation_speaking','گوش کن و پاسخ شامل عددها را بخوان.','Opening Headstart number-in-context exchange.','de_pre_a1_dlg_012',JSON_OBJECT('learnerCharacterId','de_char_headstart_german_local'),JSON_OBJECT('sourceTransformation','exact source turn') UNION ALL
  SELECT 'de_pre_a1_a012_02','de_pre_a1_l012',2,'matching','عددهای ۱۳ تا ۲۰ را با شکل آلمانی‌شان تطبیق بده.','Headstart explicit 13–20 list.',NULL,JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','exact source number-word list') UNION ALL
  SELECT 'de_pre_a1_a012_03','de_pre_a1_l012',3,'multiple_choice','شکل آلمانیِ ۲۰ را انتخاب کن.','Recognition checkpoint.',NULL,JSON_OBJECT('shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','source number words used as options') UNION ALL

  SELECT 'de_pre_a1_a013_01','de_pre_a1_l013',1,'conversation_speaking','گوش کن و شماره تلفن نقش مایک را بخوان.','Opening source phone-number exchange.','de_pre_a1_dlg_013',JSON_OBJECT('learnerCharacterId','de_char_mike_halloway'),JSON_OBJECT('sourceTransformation','exact source excerpt') UNION ALL
  SELECT 'de_pre_a1_a013_02','de_pre_a1_l013',2,'matching','رقم‌های شماره را با واژه آلمانی عدد تطبیق بده.','Connects the source phone number to already source-backed number forms.',NULL,JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','phone digits plus Headstart number list') UNION ALL
  SELECT 'de_pre_a1_a013_03','de_pre_a1_l013',3,'fill_blank','جای خالی سؤال منبع را کامل کن.','Reinforces the exact phone-number question.',NULL,JSON_OBJECT('promptTarget','Welche ____?','shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','one source word blanked') UNION ALL
  SELECT 'de_pre_a1_a013_04','de_pre_a1_l013',4,'pronunciation_read','شماره تلفن را از روی متن بخوان.','Direct phone-number production.',NULL,JSON_OBJECT('targetText','(212) 260-4512.'),JSON_OBJECT('sourceTransformation','exact source phone number') UNION ALL

  SELECT 'de_pre_a1_a014_01','de_pre_a1_l014',1,'conversation_speaking','گوش کن و خداحافظی مربوط به دوشنبه را بخوان.','Opening source leave-taking with a weekday.','de_pre_a1_dlg_014',JSON_OBJECT('learnerCharacterId','de_char_mike_halloway'),JSON_OBJECT('sourceTransformation','exact Headstart excerpt') UNION ALL
  SELECT 'de_pre_a1_a014_02','de_pre_a1_l014',2,'matching','روزهای هفته را با معنی فارسی‌شان تطبیق بده.','Headstart explicit weekday list; two activities are sufficient.',NULL,JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','exact source weekday list') UNION ALL

  SELECT 'de_pre_a1_a015_01','de_pre_a1_l015',1,'conversation_speaking','گوش کن و پاسخ ساعت حرکت قطار را بخوان.','Opening station exchange with female source role.','de_pre_a1_dlg_015',JSON_OBJECT('learnerCharacterId','de_char_station_official_f'),JSON_OBJECT('sourceTransformation','exact source excerpt') UNION ALL
  SELECT 'de_pre_a1_a015_02','de_pre_a1_l015',2,'matching','زمان‌های رسمی منبع را با نمایش عددی‌شان تطبیق بده.','Official-time recognition from Headstart exercises.',NULL,JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','exact source time strings') UNION ALL
  SELECT 'de_pre_a1_a015_03','de_pre_a1_l015',3,'fill_blank','زمان رسیدن قطار را در جمله منبع کامل کن.','Reads time in a second short source sentence.',NULL,JSON_OBJECT('promptTarget','Der Zug kommt um ____ Uhr an.','shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','source time blanked from exact sentence') UNION ALL
  SELECT 'de_pre_a1_a015_04','de_pre_a1_l015',4,'pronunciation_read','پاسخ ساعت را واضح و با صدای بلند بخوان.','Short production close.',NULL,JSON_OBJECT('targetText','Um 14.30 Uhr von Gleis vier.'),JSON_OBJECT('sourceTransformation','exact source learner turn')
) x
JOIN lessons l ON l.public_id=x.lid LEFT JOIN dialogues d ON d.public_id=x.did
ON DUPLICATE KEY UPDATE lesson_id=VALUES(lesson_id),position=VALUES(position),type_code=VALUES(type_code),instruction_fa=VALUES(instruction_fa),selection_reason=VALUES(selection_reason),dialogue_id=VALUES(dialogue_id),payload=VALUES(payload),transformations=VALUES(transformations),audio_status=VALUES(audio_status);

-- Activity provenance. L13 matching draws from both phone dialogue and number list.
INSERT IGNORE INTO activity_sources (activity_id,source_item_id)
SELECT a.id,si.id FROM activities a JOIN (
  SELECT 'de_pre_a1_a011_01' aid,'srcitem_headstart_m4_u2_bus_number' sid UNION ALL
  SELECT 'de_pre_a1_a011_02','srcitem_headstart_m2_u2_numbers' UNION ALL
  SELECT 'de_pre_a1_a011_03','srcitem_headstart_m2_u2_numbers' UNION ALL
  SELECT 'de_pre_a1_a011_04','srcitem_headstart_m4_u2_bus_number' UNION ALL
  SELECT 'de_pre_a1_a012_01','srcitem_headstart_m2_u2_distance' UNION ALL
  SELECT 'de_pre_a1_a012_02','srcitem_headstart_m2_u2_numbers' UNION ALL
  SELECT 'de_pre_a1_a012_03','srcitem_headstart_m2_u2_numbers' UNION ALL
  SELECT 'de_pre_a1_a013_01','srcitem_headstart_m7_u1_phone' UNION ALL
  SELECT 'de_pre_a1_a013_02','srcitem_headstart_m7_u1_phone' UNION ALL
  SELECT 'de_pre_a1_a013_02','srcitem_headstart_m2_u2_numbers' UNION ALL
  SELECT 'de_pre_a1_a013_03','srcitem_headstart_m7_u1_phone' UNION ALL
  SELECT 'de_pre_a1_a013_04','srcitem_headstart_m7_u1_phone' UNION ALL
  SELECT 'de_pre_a1_a014_01','srcitem_headstart_m8_u2' UNION ALL
  SELECT 'de_pre_a1_a014_02','srcitem_headstart_m4_u2_days' UNION ALL
  SELECT 'de_pre_a1_a015_01','srcitem_headstart_m4_u2_station_time' UNION ALL
  SELECT 'de_pre_a1_a015_02','srcitem_headstart_m4_u2_station_time' UNION ALL
  SELECT 'de_pre_a1_a015_03','srcitem_headstart_m4_u2_station_time' UNION ALL
  SELECT 'de_pre_a1_a015_04','srcitem_headstart_m4_u2_station_time'
) x ON x.aid=a.public_id JOIN source_items si ON si.public_id=x.sid;

-- Activity items.
INSERT INTO activity_items (activity_id,position,item_role,text_target,text_fa,is_correct,group_key,metadata)
SELECT a.id,x.pos,x.item_role,x.text_target,x.text_fa,x.is_correct,x.group_key,x.metadata
FROM (
  -- Lesson 11: 0–10
  SELECT 'de_pre_a1_a011_02' aid,1 pos,'match' item_role,'null' text_target,'۰' text_fa,NULL is_correct,'0' group_key,JSON_OBJECT() metadata UNION ALL
  SELECT 'de_pre_a1_a011_02',2,'match','eins','۱',NULL,'1',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a011_02',3,'match','zwei','۲',NULL,'2',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a011_02',4,'match','drei','۳',NULL,'3',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a011_02',5,'match','vier','۴',NULL,'4',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a011_02',6,'match','fünf','۵',NULL,'5',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a011_02',7,'match','sechs','۶',NULL,'6',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a011_02',8,'match','sieben','۷',NULL,'7',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a011_02',9,'match','acht','۸',NULL,'8',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a011_02',10,'match','neun','۹',NULL,'9',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a011_02',11,'match','zehn','۱۰',NULL,'10',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a011_03',1,'option','acht','هشت',1,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a011_03',2,'option','drei','سه',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a011_03',3,'option','zehn','ده',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a011_04',1,'prompt','Bus Nummer fünf','اتوبوس شماره پنج',NULL,NULL,JSON_OBJECT() UNION ALL

  -- Lesson 12: 13–20
  SELECT 'de_pre_a1_a012_02',1,'match','dreizehn','۱۳',NULL,'13',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a012_02',2,'match','vierzehn','۱۴',NULL,'14',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a012_02',3,'match','fünfzehn','۱۵',NULL,'15',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a012_02',4,'match','sechzehn','۱۶',NULL,'16',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a012_02',5,'match','siebzehn','۱۷',NULL,'17',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a012_02',6,'match','achtzehn','۱۸',NULL,'18',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a012_02',7,'match','neunzehn','۱۹',NULL,'19',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a012_02',8,'match','zwanzig','۲۰',NULL,'20',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a012_03',1,'option','zwanzig','بیست',1,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a012_03',2,'option','vierzehn','چهارده',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a012_03',3,'option','siebzehn','هفده',0,NULL,JSON_OBJECT() UNION ALL

  -- Lesson 13: phone number
  SELECT 'de_pre_a1_a013_02',1,'match','zwei','۲',NULL,'2',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a013_02',2,'match','eins','۱',NULL,'1',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a013_02',3,'match','sechs','۶',NULL,'6',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a013_02',4,'match','null','۰',NULL,'0',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a013_02',5,'match','vier','۴',NULL,'4',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a013_02',6,'match','fünf','۵',NULL,'5',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a013_03',1,'option','Nummer','شماره',1,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a013_03',2,'option','Freund','دوست',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a013_04',1,'prompt','(212) 260-4512.','(۲۱۲) ۲۶۰-۴۵۱۲.',NULL,NULL,JSON_OBJECT() UNION ALL

  -- Lesson 14: weekdays
  SELECT 'de_pre_a1_a014_02',1,'match','Montag','دوشنبه',NULL,'mon',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a014_02',2,'match','Dienstag','سه‌شنبه',NULL,'tue',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a014_02',3,'match','Mittwoch','چهارشنبه',NULL,'wed',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a014_02',4,'match','Donnerstag','پنج‌شنبه',NULL,'thu',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a014_02',5,'match','Freitag','جمعه',NULL,'fri',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a014_02',6,'match','Samstag','شنبه',NULL,'sat',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a014_02',7,'match','Sonntag','یکشنبه',NULL,'sun',JSON_OBJECT() UNION ALL

  -- Lesson 15: official time
  SELECT 'de_pre_a1_a015_02',1,'match','um 15.00 Uhr','۱۵:۰۰',NULL,'15:00',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a015_02',2,'match','um 15.30 Uhr','۱۵:۳۰',NULL,'15:30',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a015_02',3,'match','um 23.08 Uhr','۲۳:۰۸',NULL,'23:08',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a015_03',1,'option','14.45','۱۴:۴۵',1,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a015_03',2,'option','15.30','۱۵:۳۰',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a015_04',1,'prompt','Um 14.30 Uhr von Gleis vier.','ساعت ۱۴:۳۰ از خط چهار.',NULL,NULL,JSON_OBJECT()
) x
JOIN activities a ON a.public_id=x.aid
ON DUPLICATE KEY UPDATE item_role=VALUES(item_role),text_target=VALUES(text_target),text_fa=VALUES(text_fa),is_correct=VALUES(is_correct),group_key=VALUES(group_key),metadata=VALUES(metadata);

INSERT IGNORE INTO activity_item_sources (activity_item_id,source_item_id)
SELECT ai.id,asrc.source_item_id FROM activity_items ai JOIN activity_sources asrc ON asrc.activity_id=ai.activity_id WHERE ai.text_target IS NOT NULL;

-- -----------------------------------------------------------------------------
-- Lexemes: numbers 0–20, weekdays, and key contextual phrases
-- -----------------------------------------------------------------------------
INSERT INTO lexemes
(public_id,language_id,language_level_id,lexeme_type,surface,lemma,part_of_speech,translation_fa,flashcard_eligible,audio_status)
SELECT x.public_id,l.id,ll.id,x.lexeme_type,x.surface,x.lemma,x.pos,x.translation_fa,1,'blocked_until_language_final'
FROM languages l JOIN language_levels ll ON ll.language_id=l.id JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN (
  SELECT 'de_num_00' public_id,'word' lexeme_type,'null' surface,'null' lemma,'numeral' pos,'صفر' translation_fa UNION ALL
  SELECT 'de_num_01','word','eins','eins','numeral','یک' UNION ALL SELECT 'de_num_02','word','zwei','zwei','numeral','دو' UNION ALL
  SELECT 'de_num_03','word','drei','drei','numeral','سه' UNION ALL SELECT 'de_num_04','word','vier','vier','numeral','چهار' UNION ALL
  SELECT 'de_num_05','word','fünf','fünf','numeral','پنج' UNION ALL SELECT 'de_num_06','word','sechs','sechs','numeral','شش' UNION ALL
  SELECT 'de_num_07','word','sieben','sieben','numeral','هفت' UNION ALL SELECT 'de_num_08','word','acht','acht','numeral','هشت' UNION ALL
  SELECT 'de_num_09','word','neun','neun','numeral','نه' UNION ALL SELECT 'de_num_10','word','zehn','zehn','numeral','ده' UNION ALL
  SELECT 'de_num_11','word','elf','elf','numeral','یازده' UNION ALL SELECT 'de_num_12','word','zwölf','zwölf','numeral','دوازده' UNION ALL
  SELECT 'de_num_13','word','dreizehn','dreizehn','numeral','سیزده' UNION ALL SELECT 'de_num_14','word','vierzehn','vierzehn','numeral','چهارده' UNION ALL
  SELECT 'de_num_15','word','fünfzehn','fünfzehn','numeral','پانزده' UNION ALL SELECT 'de_num_16','word','sechzehn','sechzehn','numeral','شانزده' UNION ALL
  SELECT 'de_num_17','word','siebzehn','siebzehn','numeral','هفده' UNION ALL SELECT 'de_num_18','word','achtzehn','achtzehn','numeral','هجده' UNION ALL
  SELECT 'de_num_19','word','neunzehn','neunzehn','numeral','نوزده' UNION ALL SELECT 'de_num_20','word','zwanzig','zwanzig','numeral','بیست' UNION ALL
  SELECT 'de_day_montag','word','Montag','Montag','noun','دوشنبه' UNION ALL SELECT 'de_day_dienstag','word','Dienstag','Dienstag','noun','سه‌شنبه' UNION ALL
  SELECT 'de_day_mittwoch','word','Mittwoch','Mittwoch','noun','چهارشنبه' UNION ALL SELECT 'de_day_donnerstag','word','Donnerstag','Donnerstag','noun','پنج‌شنبه' UNION ALL
  SELECT 'de_day_freitag','word','Freitag','Freitag','noun','جمعه' UNION ALL SELECT 'de_day_samstag','word','Samstag','Samstag','noun','شنبه' UNION ALL
  SELECT 'de_day_sonntag','word','Sonntag','Sonntag','noun','یکشنبه' UNION ALL
  SELECT 'de_lex_welche_nummer','phrase','Welche Nummer?',NULL,NULL,'چه شماره‌ای؟' UNION ALL
  SELECT 'de_lex_wann_faehrt_der_naechste_zug_ab','phrase','Wann fährt der nächste Zug ab?',NULL,NULL,'قطار بعدی چه زمانی حرکت می‌کند؟' UNION ALL
  SELECT 'de_lex_uhr','word','Uhr','Uhr','noun','ساعت'
) x ON 1=1 WHERE l.code='de'
ON DUPLICATE KEY UPDATE surface=VALUES(surface),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),translation_fa=VALUES(translation_fa),language_level_id=VALUES(language_level_id);

-- Number source links 0–20.
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_headstart_m2_u2_numbers'
WHERE lx.public_id BETWEEN 'de_num_00' AND 'de_num_20';
-- Weekday source links.
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_headstart_m4_u2_days'
WHERE lx.public_id IN ('de_day_montag','de_day_dienstag','de_day_mittwoch','de_day_donnerstag','de_day_freitag','de_day_samstag','de_day_sonntag');
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_headstart_m7_u1_phone' WHERE lx.public_id='de_lex_welche_nummer';
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_headstart_m4_u2_station_time' WHERE lx.public_id IN ('de_lex_wann_faehrt_der_naechste_zug_ab','de_lex_uhr');

-- Lesson lexical links.
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id BETWEEN 'de_num_00' AND 'de_num_10' WHERE l.public_id='de_pre_a1_l011';
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id BETWEEN 'de_num_11' AND 'de_num_20' WHERE l.public_id='de_pre_a1_l012';
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id IN ('de_num_00','de_num_01','de_num_02','de_num_04','de_num_05','de_num_06','de_lex_welche_nummer') WHERE l.public_id='de_pre_a1_l013';
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id IN ('de_day_montag','de_day_dienstag','de_day_mittwoch','de_day_donnerstag','de_day_freitag','de_day_samstag','de_day_sonntag') WHERE l.public_id='de_pre_a1_l014';
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id IN ('de_lex_wann_faehrt_der_naechste_zug_ab','de_lex_uhr','de_num_04') WHERE l.public_id='de_pre_a1_l015';

-- -----------------------------------------------------------------------------
-- Lesson status / signatures
-- -----------------------------------------------------------------------------
UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching>multiple_choice>pronunciation_read',
 activity_count_rationale='4 activities: a contextual single-digit conversation, full 0–10 matching, one recognition check, and short contextual speaking.',
 sequence_rationale='Context → inventory recognition → quick discrimination → speaking.'
WHERE public_id='de_pre_a1_l011';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching>multiple_choice',
 activity_count_rationale='3 activities are sufficient for 13–20 after the earlier 0–10 lesson.',
 sequence_rationale='Numbers appear in a real exchange first, then in explicit source drills and a short recognition check.'
WHERE public_id='de_pre_a1_l012';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching>fill_blank>pronunciation_read',
 activity_count_rationale='4 activities cover phone-number response, digit-word mapping, the exact number question, and spoken production.',
 sequence_rationale='Phone context → digit decoding → question form → spoken number.'
WHERE public_id='de_pre_a1_l013';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching',
 activity_count_rationale='2 activities: a real Monday leave-taking plus the complete source weekday list; more would be filler.',
 sequence_rationale='Contextual weekday first, then compact seven-day recognition.'
WHERE public_id='de_pre_a1_l014';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching>fill_blank>pronunciation_read',
 activity_count_rationale='4 activities are useful because official-time reading requires several exposures in context.',
 sequence_rationale='Station dialogue → official-time recognition → second source sentence → spoken time response.'
WHERE public_id='de_pre_a1_l015';

SELECT l.public_id,l.status,l.template_signature,COUNT(DISTINCT a.id) activity_count
FROM lessons l LEFT JOIN activities a ON a.lesson_id=l.id
WHERE l.public_id BETWEEN 'de_pre_a1_l011' AND 'de_pre_a1_l015'
GROUP BY l.id,l.public_id,l.status,l.template_signature
ORDER BY l.sequence_number;