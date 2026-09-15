-- German Pre-A1 content batch 005: lessons 21–25
-- Target: MySQL 9.0.1
-- Source-backed target-language content only; source transformations are explicit.
-- Audio intentionally remains blocked.

SET NAMES utf8mb4;

-- -----------------------------------------------------------------------------
-- Exact source locations
-- -----------------------------------------------------------------------------
INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_headstart_m1_u2_naming','German Headstart Module I Unit 2 — Naming Objects/Places',
       'Module I, Unit 2, Exercise 16/19, printed pp.18–19 / scanned PDF pp.22–23',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192518.pdf',
       'Exact source pattern: “Was ist das bitte?” / “Das ist die Kaserne.” / “Das ist das Rathaus.” and “Was ist das auf deutsch? Das ist ein/eine …” with source noun list.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_basic_u5_short_instructions','FSI German Basic Unit 5 — Arrival Instructions',
       'Unit 5, Section I — Arriving at the Wilsons',
       'https://www.fsi-language-courses.org/fsi-german-basic-course/5-mr-allen-rings-at-mr-wilsons-herr-allen-klingelt-bei-herrn-wilson/',
       'Exact source includes “Kommen Sie herein, bitte.” and “Setzen Sie sich, bitte.” plus Allen’s “Vielen Dank.”'
FROM sources s WHERE s.public_id='src_fsi_de_basic'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_headstart_m3_u1_restaurant','German Headstart Module III Unit 1 — Restaurant Dialogue and Food/Drink',
       'Module III, Unit 1, Exercise 5 and food/drink exercises, printed pp.3–14 / scanned PDF pp.7–18',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192520.pdf',
       'Source restaurant dialogue has Mike and a female waitress (Fräulein), with drink/food ordering, dessert, check and price; picture/list exercises provide source food/drink labels.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_headstart_m6_u1_purchase','German Headstart Module VI Unit 1 — Department Store Purchase',
       'Module VI, Unit 1, “Im Kaufhaus”, printed p.3 / scanned PDF p.7',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192523.pdf',
       'Exact source dialogue explicitly labels the salesperson Verkäuferin (female). Includes shirt, size, color, price DM 35, purchase decision and checkout direction.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_headstart_m1_u2_naming' WHERE l.public_id='de_pre_a1_l021';
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_basic_u5_short_instructions' WHERE l.public_id='de_pre_a1_l022';
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_headstart_m3_u1_restaurant' WHERE l.public_id IN ('de_pre_a1_l023','de_pre_a1_l024');
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_headstart_m6_u1_purchase' WHERE l.public_id='de_pre_a1_l025';

UPDATE lessons SET source_title='Headstart Module I Unit 2 — naming pattern' WHERE public_id='de_pre_a1_l021';
UPDATE lessons SET source_title='FSI Basic Unit 5 — short familiar instructions' WHERE public_id='de_pre_a1_l022';
UPDATE lessons SET source_title='Headstart Module III Unit 1 — restaurant' WHERE public_id IN ('de_pre_a1_l023','de_pre_a1_l024');
UPDATE lessons SET source_title='Headstart Module VI Unit 1 — department-store purchase' WHERE public_id='de_pre_a1_l025';

-- -----------------------------------------------------------------------------
-- Characters
-- -----------------------------------------------------------------------------
INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_object_asker',l.id,'Object asker','app_created','unspecified','adult',JSON_ARRAY('learner_partner'),
       'Exercise 19 provides a question/answer frame without named or gendered speakers; gender remains unspecified.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_object_answerer',l.id,'Object answerer','app_created','unspecified','adult',JSON_ARRAY('learner_surrogate'),
       'Exercise 19 provides a question/answer frame without named or gendered speakers; gender remains unspecified.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_wilson_host',l.id,'Wilson host','app_created','unspecified','adult',JSON_ARRAY('host'),
       'The selected Basic Unit 5 lines belong to the Wilson household, but the excerpt does not unambiguously identify which Wilson says each host line; gender is intentionally unspecified.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_restaurant_waitress',l.id,'Waitress','app_created','female','adult',JSON_ARRAY('waitress'),
       'Headstart Module III source explicitly labels this role Fräulein and depicts a female waitress; character is female.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_shop_saleswoman',l.id,'Saleswoman','app_created','female','adult',JSON_ARRAY('sales_clerk'),
       'Headstart Module VI explicitly labels the source role Verkäuferin; character must be female.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

-- -----------------------------------------------------------------------------
-- Dialogues
-- -----------------------------------------------------------------------------
INSERT INTO dialogues (public_id,language_level_id,scenario,status)
SELECT x.public_id,ll.id,x.scenario,'source_checked'
FROM language_levels ll JOIN languages l ON l.id=ll.language_id AND l.code='de' JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN (
  SELECT 'de_pre_a1_dlg_021' public_id,'Naming a pictured place using Headstart Exercise 19 frame' scenario UNION ALL
  SELECT 'de_pre_a1_dlg_022','Arriving at the Wilsons and hearing short instructions (FSI Basic Unit 5)' UNION ALL
  SELECT 'de_pre_a1_dlg_023','Choosing a light or dark beer (Headstart restaurant excerpt)' UNION ALL
  SELECT 'de_pre_a1_dlg_024','Ordering a drink (Headstart restaurant excerpt)' UNION ALL
  SELECT 'de_pre_a1_dlg_025','Asking the price of a shirt in a department store (Headstart Module VI)'
) x ON 1=1
ON DUPLICATE KEY UPDATE scenario=VALUES(scenario),status=VALUES(status);

INSERT IGNORE INTO dialogue_characters (dialogue_id,character_id,role_label)
SELECT d.id,ch.id,x.role_label FROM (
  SELECT 'de_pre_a1_dlg_021' did,'de_char_object_asker' cid,'speaker' role_label UNION ALL
  SELECT 'de_pre_a1_dlg_021','de_char_object_answerer','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_022','de_char_wilson_host','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_022','de_char_allen','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_023','de_char_restaurant_waitress','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_023','de_char_mike_halloway','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_024','de_char_restaurant_waitress','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_024','de_char_mike_halloway','learner_role' UNION ALL
  SELECT 'de_pre_a1_dlg_025','de_char_shop_saleswoman','speaker' UNION ALL
  SELECT 'de_pre_a1_dlg_025','de_char_mike_halloway','learner_role'
) x JOIN dialogues d ON d.public_id=x.did JOIN characters ch ON ch.public_id=x.cid;

-- L21 is a transparent source exercise transformation: exact question/answer frame + exact source noun “Hotel”.
INSERT INTO dialogue_turns
(dialogue_id,position,speaker_character_id,speaker_identity_origin,speaker_gender_evidence,text_target,translation_fa,learner_turn)
SELECT d.id,x.pos,ch.id,x.identity_origin,x.gender_evidence,x.text_target,x.translation_fa,x.learner_turn
FROM (
  SELECT 'de_pre_a1_dlg_021' did,1 pos,'de_char_object_asker' cid,'app_assigned' identity_origin,'unspecified' gender_evidence,'Was ist das auf deutsch?' text_target,'این به آلمانی چی می‌شود؟' translation_fa,0 learner_turn UNION ALL
  SELECT 'de_pre_a1_dlg_021',2,'de_char_object_answerer','app_assigned','unspecified','Das ist ein Hotel.','این یک هتل است.',1 UNION ALL

  SELECT 'de_pre_a1_dlg_022',1,'de_char_wilson_host','app_assigned','unspecified','Kommen Sie herein, bitte. Darf ich Ihnen den Mantel abnehmen?','بفرمایید داخل. اجازه می‌دهید کتتان را بگیرم؟',0 UNION ALL
  SELECT 'de_pre_a1_dlg_022',2,'de_char_allen','source','male','Vielen Dank.','خیلی ممنون.',1 UNION ALL
  SELECT 'de_pre_a1_dlg_022',3,'de_char_wilson_host','app_assigned','unspecified','Setzen Sie sich, bitte. Möchten Sie etwas zu trinken?','بفرمایید بنشینید. چیزی برای نوشیدن میل دارید؟',0 UNION ALL

  SELECT 'de_pre_a1_dlg_023',1,'de_char_restaurant_waitress','app_assigned','female','Helles oder Dunkles?','روشن یا تیره؟',0 UNION ALL
  SELECT 'de_pre_a1_dlg_023',2,'de_char_mike_halloway','source','male','Ein Helles, bitte.','یک روشن، لطفاً.',1 UNION ALL

  SELECT 'de_pre_a1_dlg_024',1,'de_char_restaurant_waitress','app_assigned','female','Was möchten Sie trinken?','چه چیزی میل دارید بنوشید؟',0 UNION ALL
  SELECT 'de_pre_a1_dlg_024',2,'de_char_mike_halloway','source','male','Bringen Sie mir bitte ein Glas Bier.','لطفاً یک لیوان آبجو برایم بیاورید.',1 UNION ALL

  SELECT 'de_pre_a1_dlg_025',1,'de_char_shop_saleswoman','app_assigned','female','Paßt das Hemd?','پیراهن اندازه است؟',0 UNION ALL
  SELECT 'de_pre_a1_dlg_025',2,'de_char_mike_halloway','source','male','Ja, es ist meine Größe. Was kostet es?','بله، اندازه من است. قیمتش چقدر است؟',1 UNION ALL
  SELECT 'de_pre_a1_dlg_025',3,'de_char_shop_saleswoman','app_assigned','female','DM 35,--.','۳۵ مارک.',0
) x JOIN dialogues d ON d.public_id=x.did JOIN characters ch ON ch.public_id=x.cid
ON DUPLICATE KEY UPDATE speaker_character_id=VALUES(speaker_character_id),speaker_identity_origin=VALUES(speaker_identity_origin),speaker_gender_evidence=VALUES(speaker_gender_evidence),text_target=VALUES(text_target),translation_fa=VALUES(translation_fa),learner_turn=VALUES(learner_turn);

-- Provenance
INSERT IGNORE INTO dialogue_sources (dialogue_id,source_item_id)
SELECT d.id,si.id FROM (
 SELECT 'de_pre_a1_dlg_021' did,'srcitem_headstart_m1_u2_naming' sid UNION ALL
 SELECT 'de_pre_a1_dlg_022','srcitem_basic_u5_short_instructions' UNION ALL
 SELECT 'de_pre_a1_dlg_023','srcitem_headstart_m3_u1_restaurant' UNION ALL
 SELECT 'de_pre_a1_dlg_024','srcitem_headstart_m3_u1_restaurant' UNION ALL
 SELECT 'de_pre_a1_dlg_025','srcitem_headstart_m6_u1_purchase'
) x JOIN dialogues d ON d.public_id=x.did JOIN source_items si ON si.public_id=x.sid;

INSERT IGNORE INTO dialogue_turn_sources (dialogue_turn_id,source_item_id)
SELECT dt.id,si.id FROM dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN (
 SELECT 'de_pre_a1_dlg_021' did,'srcitem_headstart_m1_u2_naming' sid UNION ALL
 SELECT 'de_pre_a1_dlg_022','srcitem_basic_u5_short_instructions' UNION ALL
 SELECT 'de_pre_a1_dlg_023','srcitem_headstart_m3_u1_restaurant' UNION ALL
 SELECT 'de_pre_a1_dlg_024','srcitem_headstart_m3_u1_restaurant' UNION ALL
 SELECT 'de_pre_a1_dlg_025','srcitem_headstart_m6_u1_purchase'
) x ON x.did=d.public_id JOIN source_items si ON si.public_id=x.sid;

-- -----------------------------------------------------------------------------
-- Activities — varied counts: 3, 4, 4, 2, 5
-- -----------------------------------------------------------------------------
INSERT INTO activities
(public_id,lesson_id,position,type_code,instruction_fa,selection_reason,dialogue_id,payload,transformations,audio_status)
SELECT x.public_id,l.id,x.pos,x.type_code,x.instruction_fa,x.selection_reason,d.id,x.payload,x.transformations,'pending_final_language'
FROM (
  SELECT 'de_pre_a1_a021_01' public_id,'de_pre_a1_l021' lid,1 pos,'conversation_speaking' type_code,'گوش کن و پاسخ نام شیء/مکان را بخوان.' instruction_fa,'Opening Headstart naming frame.' selection_reason,'de_pre_a1_dlg_021' did,JSON_OBJECT('learnerCharacterId','de_char_object_answerer') payload,JSON_OBJECT('sourceTransformation','exact Exercise 19 frame + source noun Hotel') transformations UNION ALL
  SELECT 'de_pre_a1_a021_02','de_pre_a1_l021',2,'matching','تصویر/نام مکان را با جمله «این ... است» تطبیق بده.','Exercise 16/17 supports naming pictured places.',NULL,JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','exact source response frames with source nouns') UNION ALL
  SELECT 'de_pre_a1_a021_03','de_pre_a1_l021',3,'fill_blank','نام مکان را در پاسخ منبع کامل کن.','One-word retrieval in the source naming frame.',NULL,JSON_OBJECT('promptTarget','Das ist das ____.','shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','source noun blanked from source frame') UNION ALL

  SELECT 'de_pre_a1_a022_01','de_pre_a1_l022',1,'conversation_speaking','گوش کن؛ پاسخ کوتاه نقش آقای آلن را بخوان و دستورهای میزبان را تشخیص بده.','Opening exact Basic Unit 5 arrival sequence.','de_pre_a1_dlg_022',JSON_OBJECT('learnerCharacterId','de_char_allen') payload,JSON_OBJECT('sourceTransformation','exact three source lines') UNION ALL
  SELECT 'de_pre_a1_a022_02','de_pre_a1_l022',2,'matching','دستورهای کوتاه را با معنی فارسی‌شان تطبیق بده.','Direct receptive practice of source imperatives.',NULL,JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','exact source instruction phrases') UNION ALL
  SELECT 'de_pre_a1_a022_03','de_pre_a1_l022',3,'choose_response','بعد از «Kommen Sie herein, bitte.» پاسخ کوتاه موجود در منبع را انتخاب کن.','Conversation sequencing from source.',NULL,JSON_OBJECT('shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','source lines used as options') UNION ALL
  SELECT 'de_pre_a1_a022_04','de_pre_a1_l022',4,'pronunciation_read','یک دستور کوتاه منبع را واضح بخوان.','Speaking reinforcement.',NULL,JSON_OBJECT('targetText','Setzen Sie sich, bitte.'),JSON_OBJECT('sourceTransformation','exact source phrase') UNION ALL

  SELECT 'de_pre_a1_a023_01','de_pre_a1_l023',1,'conversation_speaking','گوش کن و پاسخ انتخاب نوشیدنی را بخوان.','Opening exact restaurant excerpt.','de_pre_a1_dlg_023',JSON_OBJECT('learnerCharacterId','de_char_mike_halloway') payload,JSON_OBJECT('sourceTransformation','exact source two-turn excerpt') UNION ALL
  SELECT 'de_pre_a1_a023_02','de_pre_a1_l023',2,'matching','نوشیدنی‌های تصویری منبع را با معنی‌شان تطبیق بده.','Headstart Exercise 14 is picture-supported.',NULL,JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','exact source drink labels') UNION ALL
  SELECT 'de_pre_a1_a023_03','de_pre_a1_l023',3,'matching','چند خوراکی/دسر منبع را با معنی‌شان تطبیق بده.','Broadens recognition using the same unit’s source lists.',NULL,JSON_OBJECT('shuffleItems',TRUE),JSON_OBJECT('sourceTransformation','exact source food/dessert labels') UNION ALL
  SELECT 'de_pre_a1_a023_04','de_pre_a1_l023',4,'multiple_choice','«یک فنجان قهوه» را از بین عبارت‌های منبع انتخاب کن.','Low-load recognition check.',NULL,JSON_OBJECT('shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','source drink labels as options') UNION ALL

  SELECT 'de_pre_a1_a024_01','de_pre_a1_l024',1,'conversation_speaking','گوش کن و سفارش نوشیدنی نقش مایک را بخوان.','Opening exact source order.','de_pre_a1_dlg_024',JSON_OBJECT('learnerCharacterId','de_char_mike_halloway') payload,JSON_OBJECT('sourceTransformation','exact source two-turn excerpt') UNION ALL
  SELECT 'de_pre_a1_a024_02','de_pre_a1_l024',2,'pronunciation_read','سفارش کوتاه را دوباره واضح بخوان.','The order is already complete; no filler comprehension sequence is needed.',NULL,JSON_OBJECT('targetText','Bringen Sie mir bitte ein Glas Bier.'),JSON_OBJECT('sourceTransformation','exact source learner turn') UNION ALL

  SELECT 'de_pre_a1_a025_01','de_pre_a1_l025',1,'conversation_speaking','گوش کن و سؤال قیمت را در نقش مایک بخوان.','Opening source purchase exchange with female sales clerk.','de_pre_a1_dlg_025',JSON_OBJECT('learnerCharacterId','de_char_mike_halloway') payload,JSON_OBJECT('sourceTransformation','exact three-turn excerpt') UNION ALL
  SELECT 'de_pre_a1_a025_02','de_pre_a1_l025',2,'fill_blank','عدد قیمت را در پاسخ فروشنده کامل کن.','Price recognition.',NULL,JSON_OBJECT('promptTarget','DM __,--.','shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','source price blanked') UNION ALL
  SELECT 'de_pre_a1_a025_03','de_pre_a1_l025',3,'choose_response','بعد از شنیدن قیمت، تصمیم خرید موجود در منبع را انتخاب کن.','Continues exact purchase flow.',NULL,JSON_OBJECT('shuffleOptions',TRUE),JSON_OBJECT('sourceTransformation','source purchase line as correct response') UNION ALL
  SELECT 'de_pre_a1_a025_04','de_pre_a1_l025',4,'word_order','کلمات سؤال قیمت را در ترتیب درست بچین.','Form control for exact source question.',NULL,JSON_OBJECT('shuffleTokens',TRUE,'canonicalText','Was kostet es?'),JSON_OBJECT('sourceTransformation','exact source question split into tokens') UNION ALL
  SELECT 'de_pre_a1_a025_05','de_pre_a1_l025',5,'pronunciation_read','سؤال قیمت را واضح بخوان.','Spoken transactional close.',NULL,JSON_OBJECT('targetText','Was kostet es?'),JSON_OBJECT('sourceTransformation','exact source phrase')
) x JOIN lessons l ON l.public_id=x.lid LEFT JOIN dialogues d ON d.public_id=x.did
ON DUPLICATE KEY UPDATE lesson_id=VALUES(lesson_id),position=VALUES(position),type_code=VALUES(type_code),instruction_fa=VALUES(instruction_fa),selection_reason=VALUES(selection_reason),dialogue_id=VALUES(dialogue_id),payload=VALUES(payload),transformations=VALUES(transformations),audio_status=VALUES(audio_status);

-- Activity provenance
INSERT IGNORE INTO activity_sources (activity_id,source_item_id)
SELECT a.id,si.id FROM activities a JOIN (
 SELECT 'de_pre_a1_a021_01' aid,'srcitem_headstart_m1_u2_naming' sid UNION ALL SELECT 'de_pre_a1_a021_02','srcitem_headstart_m1_u2_naming' UNION ALL SELECT 'de_pre_a1_a021_03','srcitem_headstart_m1_u2_naming' UNION ALL
 SELECT 'de_pre_a1_a022_01','srcitem_basic_u5_short_instructions' UNION ALL SELECT 'de_pre_a1_a022_02','srcitem_basic_u5_short_instructions' UNION ALL SELECT 'de_pre_a1_a022_03','srcitem_basic_u5_short_instructions' UNION ALL SELECT 'de_pre_a1_a022_04','srcitem_basic_u5_short_instructions' UNION ALL
 SELECT 'de_pre_a1_a023_01','srcitem_headstart_m3_u1_restaurant' UNION ALL SELECT 'de_pre_a1_a023_02','srcitem_headstart_m3_u1_restaurant' UNION ALL SELECT 'de_pre_a1_a023_03','srcitem_headstart_m3_u1_restaurant' UNION ALL SELECT 'de_pre_a1_a023_04','srcitem_headstart_m3_u1_restaurant' UNION ALL
 SELECT 'de_pre_a1_a024_01','srcitem_headstart_m3_u1_restaurant' UNION ALL SELECT 'de_pre_a1_a024_02','srcitem_headstart_m3_u1_restaurant' UNION ALL
 SELECT 'de_pre_a1_a025_01','srcitem_headstart_m6_u1_purchase' UNION ALL SELECT 'de_pre_a1_a025_02','srcitem_headstart_m6_u1_purchase' UNION ALL SELECT 'de_pre_a1_a025_03','srcitem_headstart_m6_u1_purchase' UNION ALL SELECT 'de_pre_a1_a025_04','srcitem_headstart_m6_u1_purchase' UNION ALL SELECT 'de_pre_a1_a025_05','srcitem_headstart_m6_u1_purchase'
) x ON x.aid=a.public_id JOIN source_items si ON si.public_id=x.sid;

-- Activity items
INSERT INTO activity_items (activity_id,position,item_role,text_target,text_fa,is_correct,group_key,metadata)
SELECT a.id,x.pos,x.item_role,x.text_target,x.text_fa,x.is_correct,x.group_key,x.metadata FROM (
  -- L21
  SELECT 'de_pre_a1_a021_02' aid,1 pos,'match' item_role,'Das ist die Kaserne.' text_target,'این پادگان است.' text_fa,NULL is_correct,'barracks' group_key,JSON_OBJECT() metadata UNION ALL
  SELECT 'de_pre_a1_a021_02',2,'match','Das ist das Rathaus.','این شهرداری است.',NULL,'city_hall',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a021_02',3,'match','Das ist ein Hotel.','این یک هتل است.',NULL,'hotel',JSON_OBJECT('constructedFromSourceFrame',TRUE) UNION ALL
  SELECT 'de_pre_a1_a021_03',1,'option','Rathaus','شهرداری',1,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a021_03',2,'option','Hotel','هتل',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a021_03',3,'option','Bahnhof','ایستگاه قطار',0,NULL,JSON_OBJECT() UNION ALL
  -- L22
  SELECT 'de_pre_a1_a022_02',1,'match','Kommen Sie herein, bitte.','بفرمایید داخل.',NULL,'come_in',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a022_02',2,'match','Setzen Sie sich, bitte.','بفرمایید بنشینید.',NULL,'sit_down',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a022_03',1,'option','Vielen Dank.','خیلی ممنون.',1,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a022_03',2,'option','Ja, bitte. Ein Glas Wein, wenn Sie einen haben.','بله لطفاً. یک لیوان شراب، اگر دارید.',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a022_04',1,'prompt','Setzen Sie sich, bitte.','بفرمایید بنشینید.',NULL,NULL,JSON_OBJECT() UNION ALL
  -- L23 drinks/foods
  SELECT 'de_pre_a1_a023_02',1,'match','ein Glas Apfelsaft','یک لیوان آب سیب',NULL,'apple_juice',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a023_02',2,'match','ein Glas Milch','یک لیوان شیر',NULL,'milk',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a023_02',3,'match','eine Tasse Tee','یک فنجان چای',NULL,'tea',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a023_02',4,'match','eine Tasse Kaffee','یک فنجان قهوه',NULL,'coffee',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a023_03',1,'match','Salat','سالاد',NULL,'salad',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a023_03',2,'match','Erdbeereis','بستنی توت‌فرنگی',NULL,'strawberry_icecream',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a023_03',3,'match','Vanilleeis','بستنی وانیلی',NULL,'vanilla_icecream',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a023_03',4,'match','Obstsalat','سالاد میوه',NULL,'fruit_salad',JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a023_04',1,'option','eine Tasse Kaffee','یک فنجان قهوه',1,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a023_04',2,'option','ein Glas Milch','یک لیوان شیر',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a023_04',3,'option','eine Tasse Tee','یک فنجان چای',0,NULL,JSON_OBJECT() UNION ALL
  -- L24
  SELECT 'de_pre_a1_a024_02',1,'prompt','Bringen Sie mir bitte ein Glas Bier.','لطفاً یک لیوان آبجو برایم بیاورید.',NULL,NULL,JSON_OBJECT() UNION ALL
  -- L25
  SELECT 'de_pre_a1_a025_02',1,'option','35','۳۵',1,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a025_02',2,'option','40','۴۰',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a025_02',3,'option','16','۱۶',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a025_03',1,'option','Das ist preiswert. Ich kaufe es.','قیمتش مناسب است. آن را می‌خرم.',1,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a025_03',2,'option','Blau, bitte.','آبی، لطفاً.',0,NULL,JSON_OBJECT() UNION ALL
  SELECT 'de_pre_a1_a025_04',1,'token','Was',NULL,NULL,NULL,JSON_OBJECT('correctPosition',1) UNION ALL
  SELECT 'de_pre_a1_a025_04',2,'token','kostet',NULL,NULL,NULL,JSON_OBJECT('correctPosition',2) UNION ALL
  SELECT 'de_pre_a1_a025_04',3,'token','es',NULL,NULL,NULL,JSON_OBJECT('correctPosition',3) UNION ALL
  SELECT 'de_pre_a1_a025_05',1,'prompt','Was kostet es?','قیمتش چقدر است؟',NULL,NULL,JSON_OBJECT()
) x JOIN activities a ON a.public_id=x.aid
ON DUPLICATE KEY UPDATE item_role=VALUES(item_role),text_target=VALUES(text_target),text_fa=VALUES(text_fa),is_correct=VALUES(is_correct),group_key=VALUES(group_key),metadata=VALUES(metadata);

INSERT IGNORE INTO activity_item_sources (activity_item_id,source_item_id)
SELECT ai.id,asrc.source_item_id FROM activity_items ai JOIN activity_sources asrc ON asrc.activity_id=ai.activity_id WHERE ai.text_target IS NOT NULL;

-- -----------------------------------------------------------------------------
-- Reusable words / phrases
-- -----------------------------------------------------------------------------
INSERT INTO lexemes
(public_id,language_id,language_level_id,lexeme_type,surface,lemma,part_of_speech,translation_fa,flashcard_eligible,audio_status)
SELECT x.public_id,l.id,ll.id,x.lexeme_type,x.surface,x.lemma,x.pos,x.translation_fa,1,'blocked_until_language_final'
FROM languages l JOIN language_levels ll ON ll.language_id=l.id JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN (
 SELECT 'de_lex_was_ist_das_auf_deutsch' public_id,'phrase' lexeme_type,'Was ist das auf deutsch?' surface,NULL lemma,NULL pos,'این به آلمانی چی می‌شود؟' translation_fa UNION ALL
 SELECT 'de_lex_das_ist','phrase','Das ist',NULL,NULL,'این ... است' UNION ALL
 SELECT 'de_lex_kommen_sie_herein','phrase','Kommen Sie herein, bitte.',NULL,NULL,'بفرمایید داخل.' UNION ALL
 SELECT 'de_lex_setzen_sie_sich','phrase','Setzen Sie sich, bitte.',NULL,NULL,'بفرمایید بنشینید.' UNION ALL
 SELECT 'de_food_apfelsaft','phrase','ein Glas Apfelsaft',NULL,NULL,'یک لیوان آب سیب' UNION ALL
 SELECT 'de_food_milch','phrase','ein Glas Milch',NULL,NULL,'یک لیوان شیر' UNION ALL
 SELECT 'de_food_tee','phrase','eine Tasse Tee',NULL,NULL,'یک فنجان چای' UNION ALL
 SELECT 'de_food_kaffee','phrase','eine Tasse Kaffee',NULL,NULL,'یک فنجان قهوه' UNION ALL
 SELECT 'de_food_salat','word','Salat','Salat','noun','سالاد' UNION ALL
 SELECT 'de_food_erdbeereis','word','Erdbeereis','Erdbeereis','noun','بستنی توت‌فرنگی' UNION ALL
 SELECT 'de_food_vanilleeis','word','Vanilleeis','Vanilleeis','noun','بستنی وانیلی' UNION ALL
 SELECT 'de_food_obstsalat','word','Obstsalat','Obstsalat','noun','سالاد میوه' UNION ALL
 SELECT 'de_lex_was_moechten_sie_trinken','phrase','Was möchten Sie trinken?',NULL,NULL,'چه چیزی میل دارید بنوشید؟' UNION ALL
 SELECT 'de_lex_bring_ein_glas_bier','phrase','Bringen Sie mir bitte ein Glas Bier.',NULL,NULL,'لطفاً یک لیوان آبجو برایم بیاورید.' UNION ALL
 SELECT 'de_lex_was_kostet_es','phrase','Was kostet es?',NULL,NULL,'قیمتش چقدر است؟' UNION ALL
 SELECT 'de_lex_ich_kaufe_es','phrase','Ich kaufe es.',NULL,NULL,'آن را می‌خرم.'
) x ON 1=1 WHERE l.code='de'
ON DUPLICATE KEY UPDATE surface=VALUES(surface),lemma=VALUES(lemma),part_of_speech=VALUES(part_of_speech),translation_fa=VALUES(translation_fa),language_level_id=VALUES(language_level_id);

INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_headstart_m1_u2_naming' WHERE lx.public_id IN ('de_lex_was_ist_das_auf_deutsch','de_lex_das_ist');
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_basic_u5_short_instructions' WHERE lx.public_id IN ('de_lex_kommen_sie_herein','de_lex_setzen_sie_sich');
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_headstart_m3_u1_restaurant' WHERE lx.public_id IN ('de_food_apfelsaft','de_food_milch','de_food_tee','de_food_kaffee','de_food_salat','de_food_erdbeereis','de_food_vanilleeis','de_food_obstsalat','de_lex_was_moechten_sie_trinken','de_lex_bring_ein_glas_bier');
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_headstart_m6_u1_purchase' WHERE lx.public_id IN ('de_lex_was_kostet_es','de_lex_ich_kaufe_es');

INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id IN ('de_lex_was_ist_das_auf_deutsch','de_lex_das_ist') WHERE l.public_id='de_pre_a1_l021';
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id IN ('de_lex_kommen_sie_herein','de_lex_setzen_sie_sich') WHERE l.public_id='de_pre_a1_l022';
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id IN ('de_food_apfelsaft','de_food_milch','de_food_tee','de_food_kaffee','de_food_salat','de_food_erdbeereis','de_food_vanilleeis','de_food_obstsalat') WHERE l.public_id='de_pre_a1_l023';
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id IN ('de_lex_was_moechten_sie_trinken','de_lex_bring_ein_glas_bier') WHERE l.public_id='de_pre_a1_l024';
INSERT IGNORE INTO lesson_lexemes (lesson_id,lexeme_id)
SELECT l.id,lx.id FROM lessons l JOIN lexemes lx ON lx.public_id IN ('de_lex_was_kostet_es','de_lex_ich_kaufe_es') WHERE l.public_id='de_pre_a1_l025';

-- Source-backed grammar/usage notes for tappable learning support.
INSERT INTO grammar_notes (public_id,language_level_id,title_fa,source_text,translation_fa)
SELECT 'de_gn_basic_u5_reflexive_sitzen',ll.id,'چرا در «Setzen Sie sich» کلمه sich می‌آید؟',
       'Many verbs require reflexive pronouns where English does not: Setzen Sie sich (Sit down).',
       'منبع توضیح می‌دهد که بعضی فعل‌های آلمانی در جاهایی که انگلیسی ضمیر بازتابی ندارد، از ضمیر بازتابی استفاده می‌کنند؛ نمونهٔ خود منبع: «Setzen Sie sich» یعنی «بنشینید».'
FROM language_levels ll JOIN languages l ON l.id=ll.language_id AND l.code='de' JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
ON DUPLICATE KEY UPDATE title_fa=VALUES(title_fa),source_text=VALUES(source_text),translation_fa=VALUES(translation_fa);

INSERT INTO grammar_notes (public_id,language_level_id,title_fa,source_text,translation_fa)
SELECT 'de_gn_headstart_bitte_sehr_handing',ll.id,'کاربرد bitte sehr هنگام دادن چیزی',
       'For politeness Germans use bitte sehr (please) when handing something to you.',
       'طبق توضیح خود Headstart، هنگام تحویل دادن چیزی به طرف مقابل برای مؤدبانه بودن از «bitte sehr» استفاده می‌شود.'
FROM language_levels ll JOIN languages l ON l.id=ll.language_id AND l.code='de' JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
ON DUPLICATE KEY UPDATE title_fa=VALUES(title_fa),source_text=VALUES(source_text),translation_fa=VALUES(translation_fa);

INSERT IGNORE INTO grammar_note_sources (grammar_note_id,source_item_id)
SELECT gn.id,si.id FROM grammar_notes gn JOIN source_items si ON si.public_id='srcitem_basic_u5_short_instructions' WHERE gn.public_id='de_gn_basic_u5_reflexive_sitzen';
INSERT IGNORE INTO grammar_note_sources (grammar_note_id,source_item_id)
SELECT gn.id,si.id FROM grammar_notes gn JOIN source_items si ON si.public_id='srcitem_headstart_m3_u1_restaurant' WHERE gn.public_id='de_gn_headstart_bitte_sehr_handing';
INSERT IGNORE INTO lesson_grammar_notes (lesson_id,grammar_note_id)
SELECT l.id,gn.id FROM lessons l JOIN grammar_notes gn ON gn.public_id='de_gn_basic_u5_reflexive_sitzen' WHERE l.public_id='de_pre_a1_l022';
INSERT IGNORE INTO lesson_grammar_notes (lesson_id,grammar_note_id)
SELECT l.id,gn.id FROM lessons l JOIN grammar_notes gn ON gn.public_id='de_gn_headstart_bitte_sehr_handing' WHERE l.public_id IN ('de_pre_a1_l023','de_pre_a1_l024');
INSERT IGNORE INTO lexeme_grammar_notes (lexeme_id,grammar_note_id)
SELECT lx.id,gn.id FROM lexemes lx JOIN grammar_notes gn ON gn.public_id='de_gn_basic_u5_reflexive_sitzen' WHERE lx.public_id='de_lex_setzen_sie_sich';

-- -----------------------------------------------------------------------------
-- Dynamic lesson statuses/signatures
-- -----------------------------------------------------------------------------
UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching>fill_blank',
 activity_count_rationale='3 activities: naming frame, source picture/name responses, one-word retrieval.',
 sequence_rationale='Question/answer frame → recognition across source objects → retrieval.' WHERE public_id='de_pre_a1_l021';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching>choose_response>pronunciation_read',
 activity_count_rationale='4 activities are useful because the learner must understand two distinct short host instructions, not merely repeat them.',
 sequence_rationale='Conversation reception → imperative meaning → response sequence → spoken instruction.' WHERE public_id='de_pre_a1_l022';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>matching>matching>multiple_choice',
 activity_count_rationale='4 activities cover a small food/drink recognition inventory using the unit’s visual and lexical source material.',
 sequence_rationale='Contextual drink choice → drinks → foods/desserts → quick recognition.' WHERE public_id='de_pre_a1_l023';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>pronunciation_read',
 activity_count_rationale='2 activities are sufficient for one simple source-backed order; adding more would duplicate the previous recognition lesson.',
 sequence_rationale='Make the order in context, then repeat it clearly.' WHERE public_id='de_pre_a1_l024';

UPDATE lessons SET status='source_checked',template_signature='conversation_speaking>fill_blank>choose_response>word_order>pronunciation_read',
 activity_count_rationale='5 activities are justified by the transactional chain: ask price, recognise amount, decide to buy, control question form, speak it.',
 sequence_rationale='Price interaction → amount → purchase decision → form reconstruction → speaking.' WHERE public_id='de_pre_a1_l025';

SELECT l.public_id,l.status,l.template_signature,COUNT(DISTINCT a.id) activity_count
FROM lessons l LEFT JOIN activities a ON a.lesson_id=l.id
WHERE l.public_id BETWEEN 'de_pre_a1_l021' AND 'de_pre_a1_l025'
GROUP BY l.id,l.public_id,l.status,l.template_signature ORDER BY l.sequence_number;