-- German Pre-A1 content batch 006: lessons 26–30 + age-source gap closure
-- Target: MySQL 9.0.1
-- Source-backed target-language content only. Persian is translation/instruction support.
-- Audio intentionally remains blocked.

SET NAMES utf8mb4;

-- -----------------------------------------------------------------------------
-- Additional public-domain/government source for the remaining age-answer gap.
-- -----------------------------------------------------------------------------
INSERT INTO sources
(public_id,title,organization_or_author,source_language_code,source_type,base_url,license_name,attribution_text,reuse_status,notes)
VALUES
('src_dli_de_solt','DLI German SOLT I','Defense Language Institute / U.S. Government','de','course',
 'https://fsi-languages.yojik.eu/languages/DLI/German/SOLT/','U.S. Government work / Public Domain','Defense Language Institute German SOLT I','direct_reuse_allowed',
 'Supplemental source used only when its beginner material closes an identified CEFR coverage gap.')
ON DUPLICATE KEY UPDATE title=VALUES(title),organization_or_author=VALUES(organization_or_author),source_language_code=VALUES(source_language_code),source_type=VALUES(source_type),base_url=VALUES(base_url),license_name=VALUES(license_name),attribution_text=VALUES(attribution_text),reuse_status=VALUES(reuse_status),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_solt_m2_l1_age','DLI German SOLT I Module 2 Lesson 1 — Personal/Biographical Information',
       'Module 2, Lesson 1, Introduction, Exercise 1, printed p.5',
       'https://fsi-languages.yojik.eu/languages/DLI/German/SOLT/GERMAN%20SOLT%20I%20INSTRUCTOR/GERMAN%20SOLT%20I%20PDF/Gm%20M2%20%28Instructor%29%20pdf/M2L1_Inst%20corr1.pdf',
       'Source pair exercise explicitly provides the frame “Ich heiße ... und bin ... Jahre alt.” and instructs learners to exchange name and age.'
FROM sources s WHERE s.public_id='src_dli_de_solt'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

-- Exact sources for lessons 26–30.
INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_headstart_m3_u1_menu_visual','German Headstart Module III Unit 1 — Menu/Food/Drink Reading',
       'Module III, Unit 1, Exercise 5 and Exercises 14,18–20; scanned PDF pp.7–9 and nearby list pages',
       'https://fsi-languages.yojik.eu/languages/FSI/German/Headstart/ED192520.pdf',
       'Restaurant source includes “Fräulein, die Speisekarte bitte.” plus visual drink labels and categorized food lists.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_fast_l9_invitation','FSI German FAST Lesson 9 — Invitation Dialogue and Printed Invitation Card',
       'Lesson 9: sample dialogue “Eine Einladung annehmen”, PDF pp.246–249; invitation card PDF p.253 / printed p.237',
       'https://fsi-languages.yojik.eu/languages/FSI/German/FAST/FSI%20-%20German%20FAST%20-%20Student%20Text.pdf',
       'Source has a female-to-female telephone invitation plus a printed invitation card containing event, weekday/date, time and venue/address.'
FROM sources s WHERE s.public_id='src_fsi_de_fast'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_fast_l2_hotel_form','FSI German FAST Lesson 2 — Hotel Dialogue and Registration Form',
       'Lesson 2 sample dialogue PDF p.50; registration form PDF p.58 / printed p.42',
       'https://fsi-languages.yojik.eu/languages/FSI/German/FAST/FSI%20-%20German%20FAST%20-%20Student%20Text.pdf',
       'Exact hotel exchange includes “Würden Sie sich bitte hier eintragen?” / “Gern.” The authentic Meldeschein contains name, birth date/place, nationality, residence and street fields.'
FROM sources s WHERE s.public_id='src_fsi_de_fast'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_headstart_short_signs','German Headstart — Extremely Short Everyday Signs',
       'Cumulative glossary / source modules: “kein Zutritt” (Module VI), “Ruhetag” and “geöffnet” (Module III)',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/German%20Headstart%20-%20Glossary.pdf',
       'Used only as source-backed short-sign reading material in the consolidation lesson.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

-- Close the age-answer gap in Lesson 10 without inventing a German sentence.
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_solt_m2_l1_age' WHERE l.public_id='de_pre_a1_l010';

INSERT INTO activities
(public_id,lesson_id,position,type_code,instruction_fa,selection_reason,dialogue_id,payload,transformations,audio_status)
SELECT 'de_pre_a1_a010_04',l.id,4,'fill_blank','نام و سن خودت را در قالب واقعی منبع قرار بده.','DLI SOLT supplies the exact name+age frame, closing the previously tracked age-production gap.',NULL,
       JSON_OBJECT('promptTarget','Ich heiße ... und bin ... Jahre alt.','slotTypes',JSON_ARRAY('learner_name','learner_age')),
       JSON_OBJECT('sourceTransformation','replace the source ellipsis slots with learner-provided name and age; no new German frame is authored'),'pending_final_language'
FROM lessons l WHERE l.public_id='de_pre_a1_l010'
ON DUPLICATE KEY UPDATE lesson_id=VALUES(lesson_id),position=VALUES(position),type_code=VALUES(type_code),instruction_fa=VALUES(instruction_fa),selection_reason=VALUES(selection_reason),payload=VALUES(payload),transformations=VALUES(transformations),audio_status=VALUES(audio_status);

INSERT IGNORE INTO activity_sources (activity_id,source_item_id)
SELECT a.id,si.id FROM activities a JOIN source_items si ON si.public_id='srcitem_solt_m2_l1_age' WHERE a.public_id='de_pre_a1_a010_04';

UPDATE lessons SET template_signature='conversation_speaking>matching>pronunciation_read>fill_blank',
 activity_count_rationale='4 activities: source age question, recognition, pronunciation, then a DLI-SOLT source template for giving the learner’s own name and age.',
 sequence_rationale='Recognise the age question first; only then produce age using a separately sourced exact frame.'
WHERE public_id='de_pre_a1_l010';

UPDATE curriculum_targets ct
JOIN language_levels ll ON ll.id=ct.language_level_id
JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
SET ct.coverage_status='covered',
    ct.notes='Lesson 10 combines the FAST age-question source with the DLI SOLT source frame “Ich heiße ... und bin ... Jahre alt.”; both asking/recognising and giving age are now source-backed.'
WHERE ct.public_id='de_pre_a1_ct_006';

-- -----------------------------------------------------------------------------
-- Lesson-level sources for 26–30.
-- -----------------------------------------------------------------------------
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_headstart_m3_u1_menu_visual' WHERE l.public_id='de_pre_a1_l026';
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_fast_l9_invitation' WHERE l.public_id='de_pre_a1_l027';
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_fast_l2_hotel_form' WHERE l.public_id='de_pre_a1_l028';
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id IN ('srcitem_basic_u19_personal_particulars','srcitem_fast_l2_hotel_form') WHERE l.public_id='de_pre_a1_l029';
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id IN ('srcitem_fast_l1_intro','srcitem_headstart_short_signs','srcitem_fast_l9_invitation','srcitem_fast_l2_hotel_form') WHERE l.public_id='de_pre_a1_l030';

UPDATE lessons SET source_title='Headstart Module III Unit 1 — menu/list reading' WHERE public_id='de_pre_a1_l026';
UPDATE lessons SET source_title='FAST Lesson 9 — invitation dialogue/card' WHERE public_id='de_pre_a1_l027';
UPDATE lessons SET source_title='FAST Lesson 2 — hotel registration dialogue/form' WHERE public_id='de_pre_a1_l028';
UPDATE lessons SET source_title='FSI Basic Unit 19 + FAST registration fields' WHERE public_id='de_pre_a1_l029';
UPDATE lessons SET source_title='Source-backed Pre-A1 consolidation across FAST/Headstart' WHERE public_id='de_pre_a1_l030';

-- -----------------------------------------------------------------------------
-- Characters for invitation and hotel form.
-- -----------------------------------------------------------------------------
INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_frau_jakobus',l.id,'Frau Jakobus','source','female','adult',JSON_ARRAY('journalist','host'),
       'FAST Lesson 9 explicitly identifies Frau Jakobus as a German female journalist.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_frau_ohara',l.id,'Frau O''Hara','source','female','adult',JSON_ARRAY('journalist','guest','learner_surrogate'),
       'FAST Lesson 9 explicitly identifies Frau O’Hara as the female American colleague/guest.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_fast_hotel_receptionist',l.id,'Hotel receptionist','app_created','unspecified','adult',JSON_ARRAY('receptionist'),
       'FAST sample dialogue marks the native speaker only N; gender is not inferred.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

-- -----------------------------------------------------------------------------
-- Dialogues 26–30.
-- -----------------------------------------------------------------------------
INSERT INTO dialogues (public_id,language_level_id,scenario,status)
SELECT x.public_id,ll.id,x.scenario,'source_checked'
FROM language_levels ll JOIN languages l ON l.id=ll.language_id AND l.code='de' JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN (
 SELECT 'de_pre_a1_dlg_026' public_id,'Requesting and receiving the menu (Headstart Module III excerpt)' scenario UNION ALL
 SELECT 'de_pre_a1_dlg_027','Invitation time and acceptance (FAST Lesson 9 excerpt)' UNION ALL
 SELECT 'de_pre_a1_dlg_028','Hotel registration request (FAST Lesson 2 excerpt)' UNION ALL
 SELECT 'de_pre_a1_dlg_029','Giving personal particulars (FSI Basic Unit 19)' UNION ALL
 SELECT 'de_pre_a1_dlg_030','Name introduction review (FAST Lesson 1 excerpt)'
) x ON 1=1
ON DUPLICATE KEY UPDATE scenario=VALUES(scenario),status=VALUES(status);

INSERT IGNORE INTO dialogue_characters (dialogue_id,character_id,role_label)
SELECT d.id,ch.id,x.role_label FROM (
 SELECT 'de_pre_a1_dlg_026' did,'de_char_restaurant_waitress' cid,'speaker' role_label UNION ALL
 SELECT 'de_pre_a1_dlg_026','de_char_mike_halloway','learner_role' UNION ALL
 SELECT 'de_pre_a1_dlg_027','de_char_frau_jakobus','speaker' UNION ALL
 SELECT 'de_pre_a1_dlg_027','de_char_frau_ohara','learner_role' UNION ALL
 SELECT 'de_pre_a1_dlg_028','de_char_fast_hotel_receptionist','speaker' UNION ALL
 SELECT 'de_pre_a1_dlg_028','de_char_clarke','learner_role' UNION ALL
 SELECT 'de_pre_a1_dlg_029','de_char_visa_officer','speaker' UNION ALL
 SELECT 'de_pre_a1_dlg_029','de_char_schuster','learner_role' UNION ALL
 SELECT 'de_pre_a1_dlg_030','de_char_zwingli','speaker' UNION ALL
 SELECT 'de_pre_a1_dlg_030','de_char_clarke','learner_role'
) x JOIN dialogues d ON d.public_id=x.did JOIN characters ch ON ch.public_id=x.cid;

INSERT INTO dialogue_turns
(dialogue_id,position,speaker_character_id,speaker_identity_origin,speaker_gender_evidence,text_target,translation_fa,learner_turn)
SELECT d.id,x.pos,ch.id,x.identity_origin,x.gender_evidence,x.text_target,x.translation_fa,x.learner_turn
FROM (
 SELECT 'de_pre_a1_dlg_026' did,1 pos,'de_char_mike_halloway' cid,'source' identity_origin,'male' gender_evidence,'Fräulein, die Speisekarte bitte.' text_target,'خانم، لطفاً منو را بدهید.' translation_fa,1 learner_turn UNION ALL
 SELECT 'de_pre_a1_dlg_026',2,'de_char_restaurant_waitress','app_assigned','female','Bitte sehr. Was möchten Sie trinken?','بفرمایید. چه چیزی میل دارید بنوشید؟',0 UNION ALL

 SELECT 'de_pre_a1_dlg_027',1,'de_char_frau_jakobus','source','female','Gut, um acht Uhr zum Abendessen.','خوب، ساعت هشت برای شام.',0 UNION ALL
 SELECT 'de_pre_a1_dlg_027',2,'de_char_frau_ohara','source','female','Vielen Dank für die Einladung. Ich freue mich schon.','خیلی ممنون بابت دعوت. از همین حالا خوشحالم.',1 UNION ALL

 SELECT 'de_pre_a1_dlg_028',1,'de_char_fast_hotel_receptionist','app_assigned','unspecified','Würden Sie sich bitte hier eintragen?','لطفاً اینجا ثبت‌نام می‌کنید؟',0 UNION ALL
 SELECT 'de_pre_a1_dlg_028',2,'de_char_clarke','source','unspecified','Gern.','با کمال میل.',1 UNION ALL

 SELECT 'de_pre_a1_dlg_029',1,'de_char_visa_officer','app_assigned','unspecified','Familienname, Vornamen, Geburtsdatum und -ort?','نام خانوادگی، نام‌ها، تاریخ و محل تولد؟',0 UNION ALL
 SELECT 'de_pre_a1_dlg_029',2,'de_char_schuster','source','male','Andreas Paul Schuster, geboren am 11.6.33 in Leipzig.','آندریاس پاول شوستر، متولد ۱۱.۶.۳۳ در لایپزیگ.',1 UNION ALL

 SELECT 'de_pre_a1_dlg_030',1,'de_char_zwingli','source','unspecified','Übrigens, mein Name ist Zwingli.','راستی، اسم من زوینگلی است.',0 UNION ALL
 SELECT 'de_pre_a1_dlg_030',2,'de_char_clarke','source','unspecified','Ich heisse Clarke.','اسم من کلارک است.',1
) x JOIN dialogues d ON d.public_id=x.did JOIN characters ch ON ch.public_id=x.cid
ON DUPLICATE KEY UPDATE speaker_character_id=VALUES(speaker_character_id),speaker_identity_origin=VALUES(speaker_identity_origin),speaker_gender_evidence=VALUES(speaker_gender_evidence),text_target=VALUES(text_target),translation_fa=VALUES(translation_fa),learner_turn=VALUES(learner_turn);

INSERT IGNORE INTO dialogue_sources (dialogue_id,source_item_id)
SELECT d.id,si.id FROM (
 SELECT 'de_pre_a1_dlg_026' did,'srcitem_headstart_m3_u1_menu_visual' sid UNION ALL
 SELECT 'de_pre_a1_dlg_027','srcitem_fast_l9_invitation' UNION ALL
 SELECT 'de_pre_a1_dlg_028','srcitem_fast_l2_hotel_form' UNION ALL
 SELECT 'de_pre_a1_dlg_029','srcitem_basic_u19_personal_particulars' UNION ALL
 SELECT 'de_pre_a1_dlg_030','srcitem_fast_l1_intro'
) x JOIN dialogues d ON d.public_id=x.did JOIN source_items si ON si.public_id=x.sid;

INSERT IGNORE INTO dialogue_turn_sources (dialogue_turn_id,source_item_id)
SELECT dt.id,si.id FROM dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN (
 SELECT 'de_pre_a1_dlg_026' did,'srcitem_headstart_m3_u1_menu_visual' sid UNION ALL
 SELECT 'de_pre_a1_dlg_027','srcitem_fast_l9_invitation' UNION ALL
 SELECT 'de_pre_a1_dlg_028','srcitem_fast_l2_hotel_form' UNION ALL
 SELECT 'de_pre_a1_dlg_029','srcitem_basic_u19_personal_particulars' UNION ALL
 SELECT 'de_pre_a1_dlg_030','srcitem_fast_l1_intro'
) x ON x.did=d.public_id JOIN source_items si ON si.public_id=x.sid;

-- -----------------------------------------------------------------------------
-- Activities — varied counts: 4, 3, 3, 4, 6.
-- -----------------------------------------------------------------------------
INSERT INTO activities
(public_id,lesson_id,position,type_code,instruction_fa,selection_reason,dialogue_id,payload,transformations,audio_status)
SELECT x.public_id,l.id,x.pos,x.type_code,x.instruction_fa,x.selection_reason,d.id,x.payload,x.transformations,'pending_final_language'
FROM (
 SELECT 'de_pre_a1_a026_01' public_id,'de_pre_a1_l026' lid,1 pos,'conversation_speaking' type_code,'گوش کن و درخواست منو را در نقش مایک بخوان.' instruction_fa,'Opening exact restaurant source excerpt.' selection_reason,'de_pre_a1_dlg_026' did,JSON_OBJECT('learnerCharacterId','de_char_mike_halloway') payload,JSON_OBJECT('sourceTransformation','exact source excerpt') transformations UNION ALL
 SELECT 'de_pre_a1_a026_02','de_pre_a1_l026',2,'matching','عنوان‌ها و خوراکی‌های فهرست منبع را با معنی‌شان تطبیق بده.','Headstart supplies categorized food-list reading.',NULL,JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','exact source list labels') UNION ALL
 SELECT 'de_pre_a1_a026_03','de_pre_a1_l026',3,'multiple_choice','در فهرست منبع «سیب‌زمینی سرخ‌شده» را پیدا کن.','Simple list scanning.',NULL,JSON_OBJECT('shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','source list items used as options') UNION ALL
 SELECT 'de_pre_a1_a026_04','de_pre_a1_l026',4,'pronunciation_read','نام یک مورد منو را واضح بخوان.','Short spoken close after reading.',NULL,JSON_OBJECT('targetText','Bratkartoffeln'),JSON_OBJECT('sourceTransformation','exact source list item') UNION ALL

 SELECT 'de_pre_a1_a027_01','de_pre_a1_l027',1,'conversation_speaking','گوش کن و پاسخ دعوت را بخوان.','Opening source invitation exchange.','de_pre_a1_dlg_027',JSON_OBJECT('learnerCharacterId','de_char_frau_ohara'),JSON_OBJECT('sourceTransformation','exact FAST excerpt') UNION ALL
 SELECT 'de_pre_a1_a027_02','de_pre_a1_l027',2,'matching','از کارت دعوت واقعی، روز/تاریخ، ساعت و محل را پیدا کن.','Authentic printed invitation card directly tests simple event information.',NULL,JSON_OBJECT('shuffleItems',TRUE,'visualSource','FAST Lesson 9 invitation card'),JSON_OBJECT('sourceTransformation','exact machine-readable card fields/lines') UNION ALL
 SELECT 'de_pre_a1_a027_03','de_pre_a1_l027',3,'true_false','بر اساس کارت دعوت مشخص کن عبارت فارسی درست است یا نه.','Second low-load reading check without adding German.',NULL,JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','facts extracted from the source card; German source text unchanged') UNION ALL

 SELECT 'de_pre_a1_a028_01','de_pre_a1_l028',1,'conversation_speaking','گوش کن و پاسخ کوتاه ثبت‌نام را بخوان.','Opening exact hotel registration request.','de_pre_a1_dlg_028',JSON_OBJECT('learnerCharacterId','de_char_clarke'),JSON_OBJECT('sourceTransformation','exact FAST excerpt; learner line shortened to exact sentence “Gern.”') UNION ALL
 SELECT 'de_pre_a1_a028_02','de_pre_a1_l028',2,'matching','نام فیلدهای فرم واقعی را با معنی فارسی‌شان تطبیق بده.','Authentic-form field recognition.',NULL,JSON_OBJECT('shuffleItems',TRUE,'visualSource','FAST Meldeschein p.42'),JSON_OBJECT('sourceTransformation','exact printed form labels') UNION ALL
 SELECT 'de_pre_a1_a028_03','de_pre_a1_l028',3,'form_fill','چند فیلد ساده فرم واقعی را با اطلاعات خودت پر کن.','CEFR Pre-A1 requires filling a very simple personal-information form.',NULL,JSON_OBJECT('fields',JSON_ARRAY('Name','Vorname','Geburtstag','Geburtsort','Staatsangehörigkeit','Wohnort','Straße, Nr.'),'allowLearnerPersonalData',TRUE),JSON_OBJECT('sourceTransformation','field labels copied from authentic source form; learner supplies values') UNION ALL

 SELECT 'de_pre_a1_a029_01','de_pre_a1_l029',1,'conversation_speaking','گوش کن و پاسخ اطلاعات شخصی را بخوان.','Opening exact FSI Basic personal-particulars exchange.','de_pre_a1_dlg_029',JSON_OBJECT('learnerCharacterId','de_char_schuster'),JSON_OBJECT('sourceTransformation','exact source exchange') UNION ALL
 SELECT 'de_pre_a1_a029_02','de_pre_a1_l029',2,'matching','فیلدهای اطلاعات شخصی را با معنی‌شان تطبیق بده.','Prepares short guided personal writing from authentic labels.',NULL,JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','exact Basic/FAST source labels') UNION ALL
 SELECT 'de_pre_a1_a029_03','de_pre_a1_l029',3,'guided_writing','با استفاده از فیلدهای منبع، اطلاعات کوتاه خودت را وارد کن.','Writing target is learner-generated personal data; the app supplies only source-backed German field labels.',NULL,JSON_OBJECT('fields',JSON_ARRAY('Name','Vorname','Geburtstag','Geburtsort','Staatsangehörigkeit','Wohnort','Straße, Nr.'),'allowLearnerPersonalData',TRUE),JSON_OBJECT('sourceTransformation','guided writing using only exact source field labels; no model-authored German sentence') UNION ALL
 SELECT 'de_pre_a1_a029_04','de_pre_a1_l029',4,'pronunciation_read','عبارت کوتاه منبع را بخوان.','Connects written personal information back to speaking.',NULL,JSON_OBJECT('targetText','geboren am 11.6.33 in Leipzig'),JSON_OBJECT('sourceTransformation','exact substring from source learner turn') UNION ALL

 SELECT 'de_pre_a1_a030_01','de_pre_a1_l030',1,'conversation_speaking','گوش کن و معرفی نام را بخوان.','Opening review uses an already source-checked FAST conversation.','de_pre_a1_dlg_030',JSON_OBJECT('learnerCharacterId','de_char_clarke'),JSON_OBJECT('sourceTransformation','exact FAST excerpt') UNION ALL
 SELECT 'de_pre_a1_a030_02','de_pre_a1_l030',2,'review','عبارت‌های منبع را با کاربردشان تطبیق بده.','Cross-topic retrieval without creating new German.',NULL,JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','exact source phrases from previous lessons reused') UNION ALL
 SELECT 'de_pre_a1_a030_03','de_pre_a1_l030',3,'review','اطلاعات کارت دعوت را دوباره پیدا کن.','Rechecks day/time/place reading.',NULL,JSON_OBJECT('visualSource','FAST Lesson 9 invitation card','shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','exact invitation-card information reused') UNION ALL
 SELECT 'de_pre_a1_a030_04','de_pre_a1_l030',4,'review','فیلدهای فرم ثبت‌نام را دوباره تشخیص بده.','Rechecks form literacy.',NULL,JSON_OBJECT('visualSource','FAST Meldeschein p.42','shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','exact form labels reused') UNION ALL
 SELECT 'de_pre_a1_a030_05','de_pre_a1_l030',5,'matching','تابلوها/عبارت‌های خیلی کوتاه منبع را با معنی‌شان تطبیق بده.','Closes the short everyday sign/instruction reading target.',NULL,JSON_OBJECT('shuffleItems',TRUE,'displayAsSigns',TRUE),JSON_OBJECT('sourceTransformation','exact Headstart short sign strings') UNION ALL
 SELECT 'de_pre_a1_a030_06','de_pre_a1_l030',6,'pronunciation_read','یک عبارت پایه مرورشده را واضح بخوان.','Short spoken finish.',NULL,JSON_OBJECT('targetText','Auf Wiedersehen!'),JSON_OBJECT('sourceTransformation','exact previously sourced Headstart phrase')
) x JOIN lessons l ON l.public_id=x.lid LEFT JOIN dialogues d ON d.public_id=x.did
ON DUPLICATE KEY UPDATE lesson_id=VALUES(lesson_id),position=VALUES(position),type_code=VALUES(type_code),instruction_fa=VALUES(instruction_fa),selection_reason=VALUES(selection_reason),dialogue_id=VALUES(dialogue_id),payload=VALUES(payload),transformations=VALUES(transformations),audio_status=VALUES(audio_status);

-- Activity provenance.
INSERT IGNORE INTO activity_sources (activity_id,source_item_id)
SELECT a.id,si.id FROM activities a JOIN (
 SELECT 'de_pre_a1_a026_01' aid,'srcitem_headstart_m3_u1_menu_visual' sid UNION ALL SELECT 'de_pre_a1_a026_02','srcitem_headstart_m3_u1_menu_visual' UNION ALL SELECT 'de_pre_a1_a026_03','srcitem_headstart_m3_u1_menu_visual' UNION ALL SELECT 'de_pre_a1_a026_04','srcitem_headstart_m3_u1_menu_visual' UNION ALL
 SELECT 'de_pre_a1_a027_01','srcitem_fast_l9_invitation' UNION ALL SELECT 'de_pre_a1_a027_02','srcitem_fast_l9_invitation' UNION ALL SELECT 'de_pre_a1_a027_03','srcitem_fast_l9_invitation' UNION ALL
 SELECT 'de_pre_a1_a028_01','srcitem_fast_l2_hotel_form' UNION ALL SELECT 'de_pre_a1_a028_02','srcitem_fast_l2_hotel_form' UNION ALL SELECT 'de_pre_a1_a028_03','srcitem_fast_l2_hotel_form' UNION ALL
 SELECT 'de_pre_a1_a029_01','srcitem_basic_u19_personal_particulars' UNION ALL SELECT 'de_pre_a1_a029_02','srcitem_fast_l2_hotel_form' UNION ALL SELECT 'de_pre_a1_a029_03','srcitem_fast_l2_hotel_form' UNION ALL SELECT 'de_pre_a1_a029_04','srcitem_basic_u19_personal_particulars' UNION ALL
 SELECT 'de_pre_a1_a030_01','srcitem_fast_l1_intro' UNION ALL SELECT 'de_pre_a1_a030_02','srcitem_fast_l1_intro' UNION ALL SELECT 'de_pre_a1_a030_03','srcitem_fast_l9_invitation' UNION ALL SELECT 'de_pre_a1_a030_04','srcitem_fast_l2_hotel_form' UNION ALL SELECT 'de_pre_a1_a030_05','srcitem_headstart_short_signs' UNION ALL SELECT 'de_pre_a1_a030_06','srcitem_headstart_m2_u3'
) x ON x.aid=a.public_id JOIN source_items si ON si.public_id=x.sid;

-- Activity items.
INSERT INTO activity_items (activity_id,position,item_role,text_target,text_fa,is_correct,group_key,metadata)
SELECT a.id,x.pos,x.item_role,x.text_target,x.text_fa,x.is_correct,x.group_key,x.metadata FROM (
 -- L26 list reading
 SELECT 'de_pre_a1_a026_02' aid,1 pos,'match' item_role,'FLEISCH' text_target,'گوشت' text_fa,NULL is_correct,'meat' group_key,JSON_OBJECT() metadata UNION ALL
 SELECT 'de_pre_a1_a026_02',2,'match','Rinderbraten','رُست بیف',NULL,'roast_beef',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a026_02',3,'match','Schweinebraten','گوشت خوک بریان',NULL,'roast_pork',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a026_02',4,'match','Bratkartoffeln','سیب‌زمینی سرخ‌شده',NULL,'fried_potatoes',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a026_02',5,'match','Pommes Frites','سیب‌زمینی سرخ‌کرده',NULL,'fries',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a026_03',1,'option','Bratkartoffeln','سیب‌زمینی سرخ‌شده',1,NULL,JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a026_03',2,'option','Rinderbraten','رُست بیف',0,NULL,JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a026_03',3,'option','Salat','سالاد',0,NULL,JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a026_04',1,'prompt','Bratkartoffeln','سیب‌زمینی سرخ‌شده',NULL,NULL,JSON_OBJECT() UNION ALL
 -- L27 invitation card
 SELECT 'de_pre_a1_a027_02',1,'match','am Mittwoch, dem 22. Oktober 1986','چهارشنبه ۲۲ اکتبر ۱۹۸۶',NULL,'date',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a027_02',2,'match','von 17.00 bis 19.00 Uhr','از ساعت ۱۷ تا ۱۹',NULL,'time',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a027_02',3,'match','J. W. Marriott Hotel','هتل J. W. Marriott',NULL,'venue',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a027_02',4,'match','1331 Pennsylvania Avenue, N.W., Washington D.C.','۱۳۳۱ خیابان پنسیلوانیا، واشنگتن دی‌سی',NULL,'address',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a027_03',1,'statement',NULL,'مراسم روز چهارشنبه برگزار می‌شود.',1,NULL,JSON_OBJECT('sourceFact','am Mittwoch') UNION ALL
 SELECT 'de_pre_a1_a027_03',2,'statement',NULL,'زمان مراسم از ساعت ۱۷ تا ۱۹ است.',1,NULL,JSON_OBJECT('sourceFact','von 17.00 bis 19.00 Uhr') UNION ALL
 SELECT 'de_pre_a1_a027_03',3,'statement',NULL,'محل مراسم ایستگاه قطار است.',0,NULL,JSON_OBJECT('sourceFact','J. W. Marriott Hotel') UNION ALL
 -- L28 form labels
 SELECT 'de_pre_a1_a028_02',1,'match','Name','نام خانوادگی / نام',NULL,'name',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a028_02',2,'match','Vorname','نام',NULL,'given_name',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a028_02',3,'match','Geburtstag','تاریخ تولد',NULL,'birthdate',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a028_02',4,'match','Geburtsort','محل تولد',NULL,'birthplace',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a028_02',5,'match','Staatsangehörigkeit','ملیت',NULL,'nationality',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a028_02',6,'match','Wohnort','محل اقامت',NULL,'residence',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a028_02',7,'match','Straße, Nr.','خیابان، شماره',NULL,'street',JSON_OBJECT() UNION ALL
 -- L29 same authentic labels plus source phrase
 SELECT 'de_pre_a1_a029_02',1,'match','Familienname','نام خانوادگی',NULL,'family_name',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a029_02',2,'match','Vornamen','نام‌ها',NULL,'given_names',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a029_02',3,'match','Geburtsdatum','تاریخ تولد',NULL,'birthdate',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a029_02',4,'match','Geburtsort','محل تولد',NULL,'birthplace',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a029_02',5,'match','Staatsangehörigkeit','ملیت',NULL,'nationality',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a029_02',6,'match','Wohnort','محل اقامت',NULL,'residence',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a029_04',1,'prompt','geboren am 11.6.33 in Leipzig','متولد ۱۱.۶.۳۳ در لایپزیگ',NULL,NULL,JSON_OBJECT() UNION ALL
 -- L30 review phrase/functions
 SELECT 'de_pre_a1_a030_02',1,'match','Guten Tag!','سلام / روز بخیر',NULL,'greeting',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a030_02',2,'match','Auf Wiedersehen!','خداحافظ',NULL,'leave',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a030_02',3,'match','Welche Nummer?','چه شماره‌ای؟',NULL,'phone',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a030_02',4,'match','Wo ist der Bahnhof?','ایستگاه قطار کجاست؟',NULL,'location',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a030_02',5,'match','Was kostet es?','قیمتش چقدر است؟',NULL,'price',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a030_03',1,'match','am Mittwoch, dem 22. Oktober 1986','روز/تاریخ',NULL,'date',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a030_03',2,'match','von 17.00 bis 19.00 Uhr','زمان',NULL,'time',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a030_03',3,'match','J. W. Marriott Hotel','محل',NULL,'venue',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a030_04',1,'match','Staatsangehörigkeit','ملیت',NULL,'nationality',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a030_04',2,'match','Wohnort','محل اقامت',NULL,'residence',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a030_04',3,'match','Straße, Nr.','خیابان، شماره',NULL,'street',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a030_05',1,'match','kein Zutritt','ورود ممنوع',NULL,'no_entry',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a030_05',2,'match','Ruhetag','روز تعطیل',NULL,'closed_day',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a030_05',3,'match','geöffnet','باز',NULL,'open',JSON_OBJECT() UNION ALL
 SELECT 'de_pre_a1_a030_06',1,'prompt','Auf Wiedersehen!','خداحافظ!',NULL,NULL,JSON_OBJECT()
) x JOIN activities a ON a.public_id=x.aid
ON DUPLICATE KEY UPDATE item_role=VALUES(item_role),text_target=VALUES(text_target),text_fa=VALUES(text_fa),is_correct=VALUES(is_correct),group_key=VALUES(group_key),metadata=VALUES(metadata);

INSERT IGNORE INTO activity_item_sources (activity_item_id,source_item_id)
SELECT ai.id,asrc.source_item_id FROM activity_items ai JOIN activity_sources asrc ON asrc.activity_id=ai.activity_id WHERE ai.text_target IS NOT NULL;

-- -----------------------------------------------------------------------------
-- Reusable lexemes from the final lessons.
-- -----------------------------------------------------------------------------
INSERT INTO lexemes
(public_id,language_id,language_level_id,lexeme_type,surface,lemma,part_of_speech,translation_fa,flashcard_eligible,audio_status)
SELECT x.public_id,l.id,ll.id,x.lexeme_type,x.surface,x.lemma,x.pos,x.translation_fa,1,'blocked_until_language_final'
FROM languages l JOIN language_levels ll ON ll.language_id=l.id JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN (
 SELECT 'de_lex_speisekarte' public_id,'word' lexeme_type,'Speisekarte' surface,'Speisekarte' lemma,'noun' pos,'منو' translation_fa UNION ALL
 SELECT 'de_lex_einladung','word','Einladung','Einladung','noun','دعوت / دعوت‌نامه' UNION ALL
 SELECT 'de_lex_sich_eintragen','phrase','sich hier eintragen',NULL,NULL,'اینجا ثبت‌نام کردن / مشخصات را وارد کردن' UNION ALL
 SELECT 'de_lex_staatsangehoerigkeit','word','Staatsangehörigkeit','Staatsangehörigkeit','noun','ملیت' UNION ALL
 SELECT 'de_lex_wohnort','word','Wohnort','Wohnort','noun','محل اقامت' UNION ALL
 SELECT 'de_lex_strasse_nr','phrase','Straße, Nr.',NULL,NULL,'خیابان، شماره' UNION ALL
 SELECT 'de_sign_kein_zutritt','phrase','kein Zutritt',NULL,NULL,'ورود ممنوع' UNION ALL
 SELECT 'de_sign_ruhetag','word','Ruhetag','Ruhetag','noun','روز تعطیل' UNION ALL
 SELECT 'de_sign_geoeffnet','word','geöffnet','geöffnet','adjective','باز'
) x ON 1=1 WHERE l.code='de'
ON DUPLICATE KEY UPDATE surface=VALUES(surface),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),translation_fa=VALUES(translation_fa),language_level_id=VALUES(language_level_id);

INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_headstart_m3_u1_menu_visual' WHERE lx.public_id='de_lex_speisekarte';
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_fast_l9_invitation' WHERE lx.public_id='de_lex_einladung';
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_fast_l2_hotel_form' WHERE lx.public_id IN ('de_lex_sich_eintragen','de_lex_staatsangehoerigkeit','de_lex_wohnort','de_lex_strasse_nr');
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_headstart_short_signs' WHERE lx.public_id IN ('de_sign_kein_zutritt','de_sign_ruhetag','de_sign_geoeffnet');

INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id='de_lex_speisekarte' WHERE l.public_id='de_pre_a1_l026';
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id='de_lex_einladung' WHERE l.public_id='de_pre_a1_l027';
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id IN ('de_lex_sich_eintragen','de_lex_staatsangehoerigkeit','de_lex_wohnort','de_lex_strasse_nr') WHERE l.public_id IN ('de_pre_a1_l028','de_pre_a1_l029');
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id IN ('de_sign_kein_zutritt','de_sign_ruhetag','de_sign_geoeffnet') WHERE l.public_id='de_pre_a1_l030';

-- -----------------------------------------------------------------------------
-- Dynamic lesson signatures.
-- -----------------------------------------------------------------------------
UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching>multiple_choice>pronunciation_read',
 activity_count_rationale='4 activities combine the restaurant conversation with source menu/list scanning and one spoken menu item.',
 sequence_rationale='Request menu → read categorized list → locate one item → pronounce it.' WHERE public_id='de_pre_a1_l026';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching>true_false',
 activity_count_rationale='3 activities are sufficient: source invitation exchange, authentic card extraction, and one factual reading check.',
 sequence_rationale='Invitation context → authentic card reading → fact verification.' WHERE public_id='de_pre_a1_l027';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching>form_fill',
 activity_count_rationale='3 activities: registration request, authentic field recognition, then filling the actual source fields with learner data.',
 sequence_rationale='Conversation → form literacy → simple form completion.' WHERE public_id='de_pre_a1_l028';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching>guided_writing>pronunciation_read',
 activity_count_rationale='4 activities connect spoken personal particulars, authentic labels, guided learner writing and a short sourced spoken phrase.',
 sequence_rationale='Hear/give source personal details → map fields → write own short details → read a source pattern.' WHERE public_id='de_pre_a1_l029';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>review>review>review>matching>pronunciation_read',
 activity_count_rationale='6 activities are justified for the level checkpoint because they sample interaction, invitation reading, form reading, short signs and pronunciation without adding new German.',
 sequence_rationale='Start with familiar conversation, then sample several independent Pre-A1 coverage clusters and finish with a simple spoken phrase.' WHERE public_id='de_pre_a1_l030';

-- Visibility.
SELECT l.public_id,l.status,l.template_signature,COUNT(DISTINCT a.id) activity_count
FROM lessons l LEFT JOIN activities a ON a.lesson_id=l.id
WHERE l.public_id BETWEEN 'de_pre_a1_l026' AND 'de_pre_a1_l030'
GROUP BY l.id,l.public_id,l.status,l.template_signature ORDER BY l.sequence_number;
