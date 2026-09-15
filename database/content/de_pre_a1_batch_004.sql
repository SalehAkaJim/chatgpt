-- German Pre-A1 content batch 004: lessons 16–20
-- Target: MySQL 9.0.1
-- Source-backed target-language content only. Persian is translation/instruction support.
-- Sources visually/semantically checked: Headstart Modules I/V, FSI Basic Unit 19, FAST Lesson 2 form.
-- Audio intentionally remains blocked.

SET NAMES utf8mb4;

-- -----------------------------------------------------------------------------
-- Exact source locations
-- -----------------------------------------------------------------------------
INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_headstart_m5_u3_dates_months','German Headstart Module V Unit 3 — Date and Months',
       'Module V, Unit 3, printed p.41 / scanned PDF p.45: hotel date exchange + Exercise 14 Monate',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192522.pdf',
       'Exact exchange includes “Der wievielte ist heute?” / “Der 3. Mai.” The same page lists all twelve months January–December.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_basic_u19_personal_particulars','FSI German Basic Unit 19 — Personal Particulars',
       'Unit 19, Section II — Personal Particulars',
       'https://www.fsi-language-courses.org/fsi-german-basic-course/19-in-the-visa-section-in-der-visa-abteilung/',
       'Exact source exchange asks surname, given names, date/place of birth and answers with “Andreas Paul Schuster, geboren am 11.6.33 in Leipzig.”'
FROM sources s WHERE s.public_id='src_fsi_de_basic'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_headstart_m1_u2_places_directions','German Headstart Module I Unit 2 — Places and Directions',
       'Module I, Unit 2, printed pp.12–15 / scanned PDF pp.16–19; Exercises 1, 5, 14, 15',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192518.pdf',
       'Visual place vocabulary plus exact location/direction conversations. Source explicitly labels one German speaker male and the identification reply speaker female.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

-- Add exact sources to lesson-level provenance.
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_headstart_m5_u3_dates_months' WHERE l.public_id='de_pre_a1_l016';
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id IN ('srcitem_basic_u19_personal_particulars','srcitem_fast_l2_registration') WHERE l.public_id='de_pre_a1_l017';
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_headstart_m1_u2_places_directions' WHERE l.public_id IN ('de_pre_a1_l018','de_pre_a1_l019','de_pre_a1_l020');

UPDATE lessons SET source_title='Headstart Module V Unit 3 — date/months' WHERE public_id='de_pre_a1_l016';
UPDATE lessons SET source_title='FSI Basic Unit 19 + FAST Lesson 2 registration form' WHERE public_id='de_pre_a1_l017';
UPDATE lessons SET source_title='Headstart Module I Unit 2 — places/directions' WHERE public_id IN ('de_pre_a1_l018','de_pre_a1_l019','de_pre_a1_l020');

-- -----------------------------------------------------------------------------
-- Characters
-- -----------------------------------------------------------------------------
INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_hotel_reception_manager_m',l.id,'Hotel reception manager','app_created','male','adult',JSON_ARRAY('hotel_reception_manager','learner_surrogate'),
       'Headstart source role is “Empfangschef”, grammatically/source-role masculine; character is male.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_visa_officer',l.id,'Visa officer','app_created','unspecified','adult',JSON_ARRAY('vice_consul','interviewer'),
       'Source identifies Vice-Consul Thompson by role/name but selected excerpt does not independently establish gender; no gender is guessed.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_schuster',l.id,'Herr Schuster','source','male','adult',JSON_ARRAY('visa_applicant','learner_surrogate'),
       'FSI Basic source explicitly identifies the applicant as Herr Schuster; male.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_headstart_german_female',l.id,'German local (female)','app_created','female','adult',JSON_ARRAY('local_helper','learner_surrogate'),
       'Headstart Module I Unit 2 explicitly labels the identification-reply speaker “German (female)” / “Deutsche”.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_headstart_direction_male',l.id,'German local (male directions)','app_created','male','adult',JSON_ARRAY('local_helper','learner_surrogate'),
       'Headstart Module I Unit 2 explicitly labels the direction speaker “German (male)” / “Deutscher”.','high','low','none','high'
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
  SELECT 'de_pre_a1_dlg_016' public_id,'Asking today’s date at a hotel (Headstart Module V Unit 3 excerpt)' scenario UNION ALL
  SELECT 'de_pre_a1_dlg_017','Giving date and place of birth in visa personal particulars (FSI Basic Unit 19)' UNION ALL
  SELECT 'de_pre_a1_dlg_018','Identifying the train station (Headstart Module I Unit 2 female reply)' UNION ALL
  SELECT 'de_pre_a1_dlg_019','Asking where the train station is (Headstart Module I Unit 2)' UNION ALL
  SELECT 'de_pre_a1_dlg_020','Receiving fuller simple directions to the station (Headstart Module I Unit 2)'
) x ON 1=1
ON DUPLICATE KEY UPDATE scenario=VALUES(scenario),status=VALUES(status);

INSERT IGNORE INTO dialogue_characters (dialogue_id,character_id,role_label)
SELECT d.id,ch.id,x.role_label
FROM (
  SELECT 'de_pre_a1_dlg_016' did,'de_char_mike_halloway' cid,'speaker' role_label UNION ALL
  SELECT 'de_pre_a1_dlg_016','de_char_hotel_reception_manager_m','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_017','de_char_visa_officer','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_017','de_char_schuster','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_018','de_char_mike_halloway','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_018','de_char_headstart_german_female','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_019','de_char_mike_halloway','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_019','de_char_headstart_direction_male','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_020','de_char_mike_halloway','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_020','de_char_headstart_direction_male','learner_role'
) x JOIN dialogues d ON d.public_id=x.did JOIN characters ch ON ch.public_id=x.cid;

INSERT INTO dialogue_turns
(dialogue_id,position,speaker_character_id,speaker_identity_origin,speaker_gender_evidence,text_target,translation_fa,learner_turn)
SELECT d.id,x.pos,ch.id,x.identity_origin,x.gender_evidence,x.text_target,x.translation_fa,x.learner_turn
FROM (
  SELECT 'de_pre_a1_dlg_016' did,1 pos,'de_char_mike_halloway' cid,'source' identity_origin,'male' gender_evidence,
         'Der wievielte ist heute?' text_target,'امروز چندمه؟' translation_fa,0 learner_turn UNION ALL
  SELECT 'de_pre_a1_dlg_016',2,'de_char_hotel_reception_manager_m','app_assigned','male','Der 3. Mai.','سوم ماه مه.',1 UNION ALL

  SELECT 'de_pre_a1_dlg_017',1,'de_char_visa_officer','app_assigned','unspecified','Familienname, Vornamen, Geburtsdatum und -ort?','نام خانوادگی، نام‌ها، تاریخ و محل تولد؟',0 UNION ALL
  SELECT 'de_pre_a1_dlg_017',2,'de_char_schuster','source','male','Andreas Paul Schuster, geboren am 11.6.33 in Leipzig.','آندریاس پاول شوستر، متولد ۱۱.۶.۳۳ در لایپزیگ.',1 UNION ALL

  SELECT 'de_pre_a1_dlg_018',1,'de_char_mike_halloway','source','male','Was ist das bitte? Ist das der Bahnhof?','ببخشید، این چیست؟ آیا این ایستگاه قطار است؟',0 UNION ALL
  SELECT 'de_pre_a1_dlg_018',2,'de_char_headstart_german_female','app_assigned','female','Ja, das ist der Bahnhof.','بله، این ایستگاه قطار است.',1 UNION ALL

  SELECT 'de_pre_a1_dlg_019',1,'de_char_mike_halloway','source','male','Entschuldigen Sie, bitte. Wo ist der Bahnhof?','ببخشید، ایستگاه قطار کجاست؟',0 UNION ALL
  SELECT 'de_pre_a1_dlg_019',2,'de_char_headstart_direction_male','app_assigned','male','Gehen Sie geradeaus, die erste Straße links.','مستقیم بروید، خیابان اول سمت چپ.',1 UNION ALL

  SELECT 'de_pre_a1_dlg_020',1,'de_char_mike_halloway','source','male','Ich bin Amerikaner. Sprechen Sie bitte langsam.','من آمریکایی هستم. لطفاً آهسته صحبت کنید.',0 UNION ALL
  SELECT 'de_pre_a1_dlg_020',2,'de_char_headstart_direction_male','app_assigned','male','Gehen Sie geradeaus. Die erste Straße links. Dann die zweite rechts.','مستقیم بروید. خیابان اول چپ. بعد دومی راست.',1
) x
JOIN dialogues d ON d.public_id=x.did JOIN characters ch ON ch.public_id=x.cid
ON DUPLICATE KEY UPDATE speaker_character_id=VALUES(speaker_character_id),speaker_identity_origin=VALUES(speaker_identity_origin),speaker_gender_evidence=VALUES(speaker_gender_evidence),text_target=VALUES(text_target),translation_fa=VALUES(translation_fa),learner_turn=VALUES(learner_turn);

-- Provenance
INSERT IGNORE INTO dialogue_sources (dialogue_id,source_item_id)
SELECT d.id,si.id FROM (
  SELECT 'de_pre_a1_dlg_016' did,'srcitem_headstart_m5_u3_dates_months' sid UNION ALL
  SELECT 'de_pre_a1_dlg_017','srcitem_basic_u19_personal_particulars' UNION ALL
  SELECT 'de_pre_a1_dlg_018','srcitem_headstart_m1_u2_places_directions' UNION ALL
  SELECT 'de_pre_a1_dlg_019','srcitem_headstart_m1_u2_places_directions' UNION ALL
  SELECT 'de_pre_a1_dlg_020','srcitem_headstart_m1_u2_places_directions'
) x JOIN dialogues d ON d.public_id=x.did JOIN source_items si ON si.public_id=x.sid;

INSERT IGNORE INTO dialogue_turn_sources (dialogue_turn_id,source_item_id)
SELECT dt.id,si.id FROM dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id
JOIN (
  SELECT 'de_pre_a1_dlg_016' did,'srcitem_headstart_m5_u3_dates_months' sid UNION ALL
  SELECT 'de_pre_a1_dlg_017','srcitem_basic_u19_personal_particulars' UNION ALL
  SELECT 'de_pre_a1_dlg_018','srcitem_headstart_m1_u2_places_directions' UNION ALL
  SELECT 'de_pre_a1_dlg_019','srcitem_headstart_m1_u2_places_directions' UNION ALL
  SELECT 'de_pre_a1_dlg_020','srcitem_headstart_m1_u2_places_directions'
) x ON x.did=d.public_id JOIN source_items si ON si.public_id=x.sid;

-- -----------------------------------------------------------------------------
-- Activities — deliberately varied counts: 3, 2, 4, 3, 5
-- -----------------------------------------------------------------------------
INSERT INTO activities
(public_id,lesson_id,position,type_code,instruction_fa,selection_reason,dialogue_id,payload,transformations,audio_status)
SELECT x.public_id,l.id,x.pos,x.type_code,x.instruction_fa,x.selection_reason,d.id,x.payload,x.transformations,'pending_final_language'
FROM (
  SELECT 'de_pre_a1_a016_01' public_id,'de_pre_a1_l016' lid,1 pos,'conversation_speaking' type_code,'گوش کن و پاسخ تاریخ امروز را بخوان.' instruction_fa,'Opening source date exchange.' selection_reason,'de_pre_a1_dlg_016' did,JSON_OBJECT('learnerCharacterId','de_char_hotel_reception_manager_m') payload,JSON_OBJECT('sourceTransformation','exact two-turn Headstart excerpt') transformations UNION ALL
  SELECT 'de_pre_a1_a016_02','de_pre_a1_l016',2,'matching','ماه‌های آلمانی را با ماه متناظر تطبیق بده.','Headstart Exercise 14 gives all twelve months.',NULL,JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','exact source month list') UNION ALL
  SELECT 'de_pre_a1_a016_03','de_pre_a1_l016',3,'fill_blank','نام ماه را در پاسخ تاریخ کامل کن.','Reuses exact opening answer.',NULL,JSON_OBJECT('promptTarget','Der 3. ____.','shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','one source month token blanked') UNION ALL

  SELECT 'de_pre_a1_a017_01','de_pre_a1_l017',1,'conversation_speaking','گوش کن و پاسخ شامل تاریخ و محل تولد را بخوان.','Opening exact Basic Unit 19 personal-particulars exchange.','de_pre_a1_dlg_017',JSON_OBJECT('learnerCharacterId','de_char_schuster'),JSON_OBJECT('sourceTransformation','exact two-turn source exchange') UNION ALL
  SELECT 'de_pre_a1_a017_02','de_pre_a1_l017',2,'matching','فیلدهای فرم واقعی را با معنی فارسی‌شان تطبیق بده.','FAST real registration form reinforces date-of-birth recognition.',NULL,JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','exact printed form labels') UNION ALL

  SELECT 'de_pre_a1_a018_01','de_pre_a1_l018',1,'conversation_speaking','گوش کن و پاسخ شناسایی مکان را بخوان.','Opening visual-source identification exchange with explicitly female learner role.','de_pre_a1_dlg_018',JSON_OBJECT('learnerCharacterId','de_char_headstart_german_female'),JSON_OBJECT('sourceTransformation','exact Headstart exchange') UNION ALL
  SELECT 'de_pre_a1_a018_02','de_pre_a1_l018',2,'matching','نام مکان‌های تصویری منبع را با معنی فارسی‌شان تطبیق بده.','Picture-supported place recognition is directly aligned with Pre-A1.',NULL,JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','exact Exercise 15 labels') UNION ALL
  SELECT 'de_pre_a1_a018_03','de_pre_a1_l018',3,'multiple_choice','واژه آلمانی «هتل» را انتخاب کن.','One low-load discrimination check after visual matching.',NULL,JSON_OBJECT('shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','source place labels as options') UNION ALL
  SELECT 'de_pre_a1_a018_04','de_pre_a1_l018',4,'pronunciation_read','نام مکان را واضح بخوان.','Short speaking close.',NULL,JSON_OBJECT('targetText','der Bahnhof'),JSON_OBJECT('sourceTransformation','exact source place label') UNION ALL

  SELECT 'de_pre_a1_a019_01','de_pre_a1_l019',1,'conversation_speaking','گوش کن و پاسخ کوتاهِ مسیر را بخوان.','Opening exact source location exchange.','de_pre_a1_dlg_019',JSON_OBJECT('learnerCharacterId','de_char_headstart_direction_male'),JSON_OBJECT('sourceTransformation','first direction response from source') UNION ALL
  SELECT 'de_pre_a1_a019_02','de_pre_a1_l019',2,'matching','سؤال‌های «کجاست؟» منبع را با مکان درست تطبیق بده.','Headstart Exercise 14 provides several exact location-question patterns.',NULL,JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','exact source location questions') UNION ALL
  SELECT 'de_pre_a1_a019_03','de_pre_a1_l019',3,'fill_blank','نام مکان را در سؤال منبع کامل کن.','Reinforces the familiar location frame without new German.',NULL,JSON_OBJECT('promptTarget','Wo ist die ____?','shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','source noun blanked from exact question') UNION ALL

  SELECT 'de_pre_a1_a020_01','de_pre_a1_l020',1,'conversation_speaking','گوش کن و مسیر کامل‌تر نقش خودت را بخوان.','Opening exact source direction repetition.','de_pre_a1_dlg_020',JSON_OBJECT('learnerCharacterId','de_char_headstart_direction_male'),JSON_OBJECT('sourceTransformation','exact repeated source direction') UNION ALL
  SELECT 'de_pre_a1_a020_02','de_pre_a1_l020',2,'matching','واژه‌های جهت را با معنی فارسی‌شان تطبیق بده.','Direction chunks are taken directly from the source response.',NULL,JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','exact source direction chunks') UNION ALL
  SELECT 'de_pre_a1_a020_03','de_pre_a1_l020',3,'word_order','بخش‌های مسیر را به ترتیب منبع بچین.','Sequence comprehension from the exact response.',NULL,JSON_OBJECT('shuffleTokens',TRUE,'canonicalText','Gehen Sie geradeaus. Die erste Straße links. Dann die zweite rechts.'),JSON_OBJECT('sourceTransformation','source response split into three chunks') UNION ALL
  SELECT 'de_pre_a1_a020_04','de_pre_a1_l020',4,'choose_response','وقتی می‌خواهی طرف آهسته‌تر صحبت کند، عبارت موجود در همین مکالمه را انتخاب کن.','Reuses the source clarification line.',NULL,JSON_OBJECT('shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','exact source lines used as choices') UNION ALL
  SELECT 'de_pre_a1_a020_05','de_pre_a1_l020',5,'pronunciation_read','یک بخش کوتاه مسیر را واضح بخوان.','Final spoken reinforcement.',NULL,JSON_OBJECT('targetText','Gehen Sie geradeaus.'),JSON_OBJECT('sourceTransformation','exact source chunk')
) x
JOIN lessons l ON l.public_id=x.lid LEFT JOIN dialogues d ON d.public_id=x.did
ON DUPLICATE KEY UPDATE lesson_id=VALUES(lesson_id),position=VALUES(position),type_code=VALUES(type_code),instruction_fa=VALUES(instruction_fa),selection_reason=VALUES(selection_reason),dialogue_id=VALUES(dialogue_id),payload=VALUES(payload),transformations=VALUES(transformations),audio_status=VALUES(audio_status);

-- Activity provenance. Lesson 17 form activity uses FAST source; others use their exact content source.
INSERT IGNORE INTO activity_sources (activity_id,source_item_id)
SELECT a.id,si.id FROM activities a JOIN (
  SELECT 'de_pre_a1_a016_01' aid,'srcitem_headstart_m5_u3_dates_months' sid UNION ALL
  SELECT 'de_pre_a1_a016_02','srcitem_headstart_m5_u3_dates_months' UNION ALL
  SELECT 'de_pre_a1_a016_03','srcitem_headstart_m5_u3_dates_months' UNION ALL
  SELECT 'de_pre_a1_a017_01','srcitem_basic_u19_personal_particulars' UNION ALL
  SELECT 'de_pre_a1_a017_02','srcitem_fast_l2_registration' UNION ALL
  SELECT 'de_pre_a1_a018_01','srcitem_headstart_m1_u2_places_directions' UNION ALL
  SELECT 'de_pre_a1_a018_02','srcitem_headstart_m1_u2_places_directions' UNION ALL
  SELECT 'de_pre_a1_a018_03','srcitem_headstart_m1_u2_places_directions' UNION ALL
  SELECT 'de_pre_a1_a018_04','srcitem_headstart_m1_u2_places_directions' UNION ALL
  SELECT 'de_pre_a1_a019_01','srcitem_headstart_m1_u2_places_directions' UNION ALL
  SELECT 'de_pre_a1_a019_02','srcitem_headstart_m1_u2_places_directions' UNION ALL
  SELECT 'de_pre_a1_a019_03','srcitem_headstart_m1_u2_places_directions' UNION ALL
  SELECT 'de_pre_a1_a020_01','srcitem_headstart_m1_u2_places_directions' UNION ALL
  SELECT 'de_pre_a1_a020_02','srcitem_headstart_m1_u2_places_directions' UNION ALL
  SELECT 'de_pre_a1_a020_03','srcitem_headstart_m1_u2_places_directions' UNION ALL
  SELECT 'de_pre_a1_a020_04','srcitem_headstart_m1_u2_places_directions' UNION ALL
  SELECT 'de_pre_a1_a020_05','srcitem_headstart_m1_u2_places_directions'
) x ON x.aid=a.public_id JOIN source_items si ON si.public_id=x.sid;

-- Activity items.
INSERT INTO activity_items (activity_id,position,item_role,text_target,text_fa,is_correct,group_key,metadata)
SELECT a.id,x.pos,x.item_role,x.text_target,x.text_fa,x.is_correct,x.group_key,x.metadata
FROM (
  -- L16 months / date
  SELECT 'de_pre_a1_a016_02' aid,1 pos,'match' item_role,'Januar' text_target,'ژانویه' text_fa,NULL is_correct,'jan' group_key,JSON_OBJECT() metadata UNION ALL
  SELECT 'de_pre_a1_a016_02',2,'match','Februar','فوریه',NULL,'feb',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a016_02',3,'match','März','مارس',NULL,'mar',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a016_02',4,'match','April','آوریل',NULL,'apr',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a016_02',5,'match','Mai','مه',NULL,'may',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a016_02',6,'match','Juni','ژوئن',NULL,'jun',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a016_02',7,'match','Juli','ژوئیه',NULL,'jul',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a016_02',8,'match','August','اوت',NULL,'aug',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a016_02',9,'match','September','سپتامبر',NULL,'sep',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a016_02',10,'match','Oktober','اکتبر',NULL,'oct',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a016_02',11,'match','November','نوامبر',NULL,'nov',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a016_02',12,'match','Dezember','دسامبر',NULL,'dec',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a016_03',1,'option','Mai','مه',1,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a016_03',2,'option','März','مارس',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a016_03',3,'option','Juni','ژوئن',0,NULL,JSON_OBJECT() UNION ALL

  -- L17 real form labels
  SELECT 'de_pre_a1_a017_02',1,'match','Geburtstag','تاریخ تولد',NULL,'birthdate',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a017_02',2,'match','Tag, Monat, Jahr','روز، ماه، سال',NULL,'date_parts',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a017_02',3,'match','Geburtsort','محل تولد',NULL,'birthplace',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a017_02',4,'match','Staatsangehörigkeit','ملیت',NULL,'nationality',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a017_02',5,'match','Wohnort','محل اقامت',NULL,'residence',JSON_OBJECT() UNION ALL

  -- L18 picture-supported places
  SELECT 'de_pre_a1_a018_02',1,'match','die Bank','بانک',NULL,'bank',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a018_02',2,'match','das Kaufhaus','فروشگاه بزرگ',NULL,'department_store',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a018_02',3,'match','die Haltestelle','ایستگاه اتوبوس/تراموا',NULL,'stop',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a018_02',4,'match','das Rathaus','شهرداری',NULL,'city_hall',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a018_02',5,'match','die Polizei','پلیس / کلانتری',NULL,'police',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a018_02',6,'match','das Hotel','هتل',NULL,'hotel',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a018_02',7,'match','die Post','اداره پست',NULL,'post',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a018_03',1,'option','das Hotel','هتل',1,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a018_03',2,'option','die Post','اداره پست',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a018_03',3,'option','das Rathaus','شهرداری',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a018_04',1,'prompt','der Bahnhof','ایستگاه قطار',NULL,NULL,JSON_OBJECT() UNION ALL

  -- L19 exact source location questions
  SELECT 'de_pre_a1_a019_02',1,'match','Wo ist der Bahnhof?','ایستگاه قطار کجاست؟',NULL,'station',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a019_02',2,'match','Wo ist das Hotel Hilton?','هتل هیلتون کجاست؟',NULL,'hotel',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a019_02',3,'match','Wo ist die Straße?','خیابان کجاست؟',NULL,'street',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a019_02',4,'match','Wo ist die Polizei?','پلیس کجاست؟',NULL,'police',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a019_02',5,'match','Wo ist das Schloß?','قلعه کجاست؟',NULL,'castle',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a019_03',1,'option','Polizei','پلیس',1,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a019_03',2,'option','Bahnhof','ایستگاه قطار',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a019_03',3,'option','Hotel Hilton','هتل هیلتون',0,NULL,JSON_OBJECT() UNION ALL

  -- L20 directions / clarification
  SELECT 'de_pre_a1_a020_02',1,'match','geradeaus','مستقیم',NULL,'straight',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a020_02',2,'match','die erste Straße links','خیابان اول سمت چپ',NULL,'first_left',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a020_02',3,'match','die zweite rechts','دومی سمت راست',NULL,'second_right',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a020_03',1,'chunk','Gehen Sie geradeaus.',NULL,NULL,NULL,JSON_OBJECT('correctPosition',1) UNION ALL
  SELECT 'de_pre_a1_a020_03',2,'chunk','Die erste Straße links.',NULL,NULL,NULL,JSON_OBJECT('correctPosition',2) UNION ALL
  SELECT 'de_pre_a1_a020_03',3,'chunk','Dann die zweite rechts.',NULL,NULL,NULL,JSON_OBJECT('correctPosition',3) UNION ALL
  SELECT 'de_pre_a1_a020_04',1,'option','Sprechen Sie bitte langsam.','لطفاً آهسته صحبت کنید.',1,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a020_04',2,'option','Danke schön. Auf Wiedersehen.','خیلی ممنون. خداحافظ.',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a020_05',1,'prompt','Gehen Sie geradeaus.','مستقیم بروید.',NULL,NULL,JSON_OBJECT()
) x JOIN activities a ON a.public_id=x.aid
ON DUPLICATE KEY UPDATE item_role=VALUES(item_role),text_target=VALUES(text_target),text_fa=VALUES(text_fa),is_correct=VALUES(is_correct),group_key=VALUES(group_key),metadata=VALUES(metadata);

INSERT IGNORE INTO activity_item_sources (activity_item_id,source_item_id)
SELECT ai.id,asrc.source_item_id FROM activity_items ai JOIN activity_sources asrc ON asrc.activity_id=ai.activity_id WHERE ai.text_target IS NOT NULL;

-- -----------------------------------------------------------------------------
-- Reusable lexemes / phrases
-- -----------------------------------------------------------------------------
INSERT INTO lexemes
(public_id,language_id,language_level_id,lexeme_type,surface,lemma,part_of_speech,translation_fa,flashcard_eligible,audio_status)
SELECT x.public_id,l.id,ll.id,x.lexeme_type,x.surface,x.lemma,x.pos,x.translation_fa,1,'blocked_until_language_final'
FROM languages l JOIN language_levels ll ON ll.language_id=l.id JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN (
  SELECT 'de_month_januar' public_id,'word' lexeme_type,'Januar' surface,'Januar' lemma,'noun' pos,'ژانویه' translation_fa UNION ALL
  SELECT 'de_month_februar','word','Februar','Februar','noun','فوریه' UNION ALL
  SELECT 'de_month_maerz','word','März','März','noun','مارس' UNION ALL
  SELECT 'de_month_april','word','April','April','noun','آوریل' UNION ALL
  SELECT 'de_month_mai','word','Mai','Mai','noun','مه' UNION ALL
  SELECT 'de_month_juni','word','Juni','Juni','noun','ژوئن' UNION ALL
  SELECT 'de_month_juli','word','Juli','Juli','noun','ژوئیه' UNION ALL
  SELECT 'de_month_august','word','August','August','noun','اوت' UNION ALL
  SELECT 'de_month_september','word','September','September','noun','سپتامبر' UNION ALL
  SELECT 'de_month_oktober','word','Oktober','Oktober','noun','اکتبر' UNION ALL
  SELECT 'de_month_november','word','November','November','noun','نوامبر' UNION ALL
  SELECT 'de_month_dezember','word','Dezember','Dezember','noun','دسامبر' UNION ALL
  SELECT 'de_lex_der_wievielte_ist_heute','phrase','Der wievielte ist heute?',NULL,NULL,'امروز چندمه؟' UNION ALL
  SELECT 'de_lex_geburtsdatum','word','Geburtsdatum','Geburtsdatum','noun','تاریخ تولد' UNION ALL
  SELECT 'de_lex_geboren_am','phrase','geboren am',NULL,NULL,'متولدِ (در تاریخ)' UNION ALL
  SELECT 'de_place_bahnhof','word','Bahnhof','Bahnhof','noun','ایستگاه قطار' UNION ALL
  SELECT 'de_place_bank','word','Bank','Bank','noun','بانک' UNION ALL
  SELECT 'de_place_kaufhaus','word','Kaufhaus','Kaufhaus','noun','فروشگاه بزرگ' UNION ALL
  SELECT 'de_place_haltestelle','word','Haltestelle','Haltestelle','noun','ایستگاه اتوبوس/تراموا' UNION ALL
  SELECT 'de_place_rathaus','word','Rathaus','Rathaus','noun','شهرداری' UNION ALL
  SELECT 'de_place_polizei','word','Polizei','Polizei','noun','پلیس / کلانتری' UNION ALL
  SELECT 'de_place_hotel','word','Hotel','Hotel','noun','هتل' UNION ALL
  SELECT 'de_place_post','word','Post','Post','noun','اداره پست' UNION ALL
  SELECT 'de_lex_wo_ist','phrase','Wo ist',NULL,NULL,'کجاست؟' UNION ALL
  SELECT 'de_lex_geradeaus','word','geradeaus','geradeaus','adverb','مستقیم' UNION ALL
  SELECT 'de_lex_links','word','links','links','adverb','سمت چپ' UNION ALL
  SELECT 'de_lex_rechts','word','rechts','rechts','adverb','سمت راست' UNION ALL
  SELECT 'de_lex_sprechen_sie_bitte_langsam','phrase','Sprechen Sie bitte langsam.',NULL,NULL,'لطفاً آهسته صحبت کنید.'
) x ON 1=1 WHERE l.code='de'
ON DUPLICATE KEY UPDATE surface=VALUES(surface),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),translation_fa=VALUES(translation_fa),language_level_id=VALUES(language_level_id);

-- Lexeme source links.
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_headstart_m5_u3_dates_months'
WHERE lx.public_id LIKE 'de_month_%' OR lx.public_id='de_lex_der_wievielte_ist_heute';
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_basic_u19_personal_particulars'
WHERE lx.public_id IN ('de_lex_geburtsdatum','de_lex_geboren_am');
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_headstart_m1_u2_places_directions'
WHERE lx.public_id IN ('de_place_bahnhof','de_place_bank','de_place_kaufhaus','de_place_haltestelle','de_place_rathaus','de_place_polizei','de_place_hotel','de_place_post','de_lex_wo_ist','de_lex_geradeaus','de_lex_links','de_lex_rechts','de_lex_sprechen_sie_bitte_langsam');

-- Lesson-lexeme links.
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id LIKE 'de_month_%' OR lx.public_id='de_lex_der_wievielte_ist_heute' WHERE l.public_id='de_pre_a1_l016';
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id IN ('de_lex_geburtsdatum','de_lex_geboren_am') WHERE l.public_id='de_pre_a1_l017';
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id IN ('de_place_bahnhof','de_place_bank','de_place_kaufhaus','de_place_haltestelle','de_place_rathaus','de_place_polizei','de_place_hotel','de_place_post') WHERE l.public_id='de_pre_a1_l018';
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id IN ('de_place_bahnhof','de_lex_wo_ist','de_place_polizei','de_place_hotel') WHERE l.public_id='de_pre_a1_l019';
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id IN ('de_lex_geradeaus','de_lex_links','de_lex_rechts','de_lex_sprechen_sie_bitte_langsam') WHERE l.public_id='de_pre_a1_l020';

-- -----------------------------------------------------------------------------
-- Dynamic lesson status/signatures
-- -----------------------------------------------------------------------------
UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching>fill_blank',
 activity_count_rationale='3 activities: exact date exchange, complete source month recognition, then one date-token check.',
 sequence_rationale='Date in context → month inventory → short retrieval.'
WHERE public_id='de_pre_a1_l016';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching',
 activity_count_rationale='2 activities are enough: an exact date-of-birth exchange plus the real registration-form fields.',
 sequence_rationale='Spoken personal particulars are immediately reinforced by authentic form recognition; no filler activity is added.'
WHERE public_id='de_pre_a1_l017';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching>multiple_choice>pronunciation_read',
 activity_count_rationale='4 activities use Headstart’s visual place material: identification conversation, picture labels, discrimination, spoken place name.',
 sequence_rationale='Identification → visual vocabulary → quick recognition → speaking.'
WHERE public_id='de_pre_a1_l018';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching>fill_blank',
 activity_count_rationale='3 activities cover the source location exchange and several exact “Wo ist …?” variants.',
 sequence_rationale='Location exchange → pattern recognition across places → one noun retrieval.'
WHERE public_id='de_pre_a1_l019';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching>word_order>choose_response>pronunciation_read',
 activity_count_rationale='5 activities are justified because the longer source directions contain sequence, direction words and a clarification phrase.',
 sequence_rationale='Listen/speak full directions → decode chunks → reconstruct route → recognise clarification phrase → short pronunciation close.'
WHERE public_id='de_pre_a1_l020';

SELECT l.public_id,l.status,l.template_signature,COUNT(DISTINCT a.id) activity_count
FROM lessons l LEFT JOIN activities a ON a.lesson_id=l.id
WHERE l.public_id BETWEEN 'de_pre_a1_l016' AND 'de_pre_a1_l020'
GROUP BY l.id,l.public_id,l.status,l.template_signature
ORDER BY l.sequence_number;