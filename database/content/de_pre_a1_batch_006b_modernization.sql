-- German Pre-A1 modernization pass for lessons 23–26.
-- Target: MySQL 9.0.1
-- Purpose: remove dated user-facing language/currency (e.g. Fräulein, DM) from the
-- modern learning path while preserving strict source-backed content.
-- Modern replacement sources are CC BY-SA 3.0 OER from Poland's ZPE platform.
-- Safe to run repeatedly after earlier German Pre-A1 batches.

SET NAMES utf8mb4;

-- -----------------------------------------------------------------------------
-- Modern OER sources
-- -----------------------------------------------------------------------------
INSERT INTO sources
(public_id,title,organization_or_author,source_language_code,source_type,base_url,license_name,license_url,attribution_text,reuse_status,notes)
VALUES
('src_zpe_de_kiosk','Was kaufen wir im Schulkiosk? — Im Schulkiosk','Katarzyna Drausal / Contentplus.pl Sp. z o.o.','de','website',
 'https://zpe.gov.pl/a/plik-audio/DvMVPWoqO','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/',
 'Katarzyna Drausal, “Im Schulkiosk”, via ZPE; CC BY-SA 3.0','reuse_with_attribution',
 'Modern beginner shopping/food dialogue using Euro/Cent.'),
('src_zpe_de_market','Auf dem Wochenmarkt','Contentplus.pl Sp. z o.o. / ZPE','de','website',
 'https://zpe.gov.pl/a/sprawdz-sie/D7ymtNYqg','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/',
 '“Auf dem Wochenmarkt”, Contentplus.pl Sp. z o.o., via ZPE; CC BY-SA 3.0','reuse_with_attribution',
 'Modern market dialogue using Euro/Cent and natural shopping phrases.'),
('src_zpe_de_restaurant','Beliebte gastronomische Einrichtungen','Iwona Płotka / Contentplus.pl Sp. z o.o.','de','website',
 'https://zpe.gov.pl/a/mapa-interaktywna/DU0ACok3q','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/',
 'Iwona Płotka, “Beliebte gastronomische Einrichtungen”, via ZPE; CC BY-SA 3.0','reuse_with_attribution',
 'Modern restaurant/cafe/snack-bar transcripts with contemporary ordering language.'),
('src_zpe_de_menu','Eine Portion “Falschen Hasen”, bitte! — Speisekarte','Justyna Sikora / Contentplus.pl Sp. z o.o.','de','website',
 'https://zpe.gov.pl/a/przeczytaj/D1G0D5IpZ','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/',
 'Justyna Sikora, “Speisekarte”, via ZPE; CC BY-SA 3.0','reuse_with_attribution',
 'Modern printed menu with Euro prices and categorized food/drink items.')
ON DUPLICATE KEY UPDATE
 title=VALUES(title),organization_or_author=VALUES(organization_or_author),source_language_code=VALUES(source_language_code),source_type=VALUES(source_type),base_url=VALUES(base_url),license_name=VALUES(license_name),license_url=VALUES(license_url),attribution_text=VALUES(attribution_text),reuse_status=VALUES(reuse_status),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_kiosk_dialogue','ZPE Im Schulkiosk — dialogue transcript','Transcript lines: Mia asks prices; woman gives 80 Cent / 1,10 Euro; Mia chooses toast and cocoa.',s.base_url,
       'Exact contemporary transcript. Source labels the clerk “Frau” (female).'
FROM sources s WHERE s.public_id='src_zpe_de_kiosk'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_kiosk_vocab','ZPE school-kiosk beginner food vocabulary','Related “Was kaufen wir im Schulkiosk?” exercises: Joghurt, Apfelkuchen, Mineralwasser, Banane, Pizza, Brot mit Käse, Toast mit Salami.',
       'https://zpe.gov.pl/a/przeczytaj/DpbUCazf3','Simple food/drink vocabulary under CC BY-SA 3.0.'
FROM sources s WHERE s.public_id='src_zpe_de_kiosk'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_market_dialogue','ZPE Auf dem Wochenmarkt — shopping dialogue','Transcript: potatoes cost 1.49 Euro/kg; buyer takes two kilos and asks total; total 12.10 Euro.',s.base_url,
       'Exact contemporary market transcript with Euro/Cent.'
FROM sources s WHERE s.public_id='src_zpe_de_market'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_restaurant_transcript','ZPE modern restaurant transcript','Restaurant transcript: “Guten Tag, was darf es sein?” / “Zweimal Lachs mit Gemüse, bitte.” / drink question and mineral-water answer.',s.base_url,
       'Exact source transcript; no dated Fräulein form.'
FROM sources s WHERE s.public_id='src_zpe_de_restaurant'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_modern_menu','ZPE modern Speisekarte with Euro prices','Menu categories and items include Desserts, Getränke, Apfelkuchen mit Vanilleeis 4,90 €, Espresso, Mineralwasser (still), Apfelsaft, etc.',s.base_url,
       'Modern menu/list reading source; CC BY-SA 3.0.'
FROM sources s WHERE s.public_id='src_zpe_de_menu'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

-- -----------------------------------------------------------------------------
-- Modern source characters
-- -----------------------------------------------------------------------------
INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_zpe_mia',l.id,'Mia','source','unspecified','unspecified',JSON_ARRAY('customer','learner_surrogate'),
       'Named source speaker. Gender is not inferred from the name alone in database QA.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_zpe_kiosk_woman',l.id,'Kiosk clerk','app_created','female','adult',JSON_ARRAY('shop_clerk'),
       'Source transcript explicitly labels this speaker “Frau”; female character required.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_zpe_fabian',l.id,'Fabian','source','unspecified','unspecified',JSON_ARRAY('market_customer','learner_surrogate'),
       'Named source speaker; gender intentionally left unspecified unless independently established.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_zpe_market_seller',l.id,'Market seller','app_created','male','adult',JSON_ARRAY('market_seller'),
       'Source role is explicitly labeled Verkäufer (masculine form); character is male.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_zpe_restaurant_staff',l.id,'Restaurant staff','app_created','unspecified','adult',JSON_ARRAY('restaurant_staff'),
       'The selected ZPE transcript does not name or gender this speaker; no gender is inferred.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_zpe_restaurant_guest',l.id,'Restaurant guest','app_created','unspecified','adult',JSON_ARRAY('restaurant_guest','learner_surrogate'),
       'The selected ZPE transcript does not name or gender this speaker; no gender is inferred.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

-- -----------------------------------------------------------------------------
-- Remove dated lesson/dialogue/activity provenance for the replaced user-facing paths.
-- The historical source records remain in the database for provenance/history, but these
-- lessons no longer cite them as active teaching sources.
-- -----------------------------------------------------------------------------
DELETE ls FROM lesson_sources ls
JOIN lessons l ON l.id=ls.lesson_id
JOIN source_items si ON si.id=ls.source_item_id
WHERE l.public_id IN ('de_pre_a1_l023','de_pre_a1_l024','de_pre_a1_l025','de_pre_a1_l026')
  AND si.public_id IN ('srcitem_headstart_m3_u1_restaurant','srcitem_headstart_m6_u1_purchase','srcitem_headstart_m3_u1_menu_visual');

DELETE ds FROM dialogue_sources ds
JOIN dialogues d ON d.id=ds.dialogue_id
JOIN source_items si ON si.id=ds.source_item_id
WHERE d.public_id IN ('de_pre_a1_dlg_023','de_pre_a1_dlg_024','de_pre_a1_dlg_025','de_pre_a1_dlg_026')
  AND si.public_id IN ('srcitem_headstart_m3_u1_restaurant','srcitem_headstart_m6_u1_purchase','srcitem_headstart_m3_u1_menu_visual');

DELETE dts FROM dialogue_turn_sources dts
JOIN dialogue_turns dt ON dt.id=dts.dialogue_turn_id
JOIN dialogues d ON d.id=dt.dialogue_id
JOIN source_items si ON si.id=dts.source_item_id
WHERE d.public_id IN ('de_pre_a1_dlg_023','de_pre_a1_dlg_024','de_pre_a1_dlg_025','de_pre_a1_dlg_026')
  AND si.public_id IN ('srcitem_headstart_m3_u1_restaurant','srcitem_headstart_m6_u1_purchase','srcitem_headstart_m3_u1_menu_visual');

DELETE acs FROM activity_sources acs
JOIN activities a ON a.id=acs.activity_id
JOIN lessons l ON l.id=a.lesson_id
JOIN source_items si ON si.id=acs.source_item_id
WHERE l.public_id IN ('de_pre_a1_l023','de_pre_a1_l024','de_pre_a1_l025','de_pre_a1_l026')
  AND si.public_id IN ('srcitem_headstart_m3_u1_restaurant','srcitem_headstart_m6_u1_purchase','srcitem_headstart_m3_u1_menu_visual');

-- -----------------------------------------------------------------------------
-- Lesson 23: modern food/drink recognition using school-kiosk OER.
-- -----------------------------------------------------------------------------
UPDATE dialogues SET scenario='Modern school-kiosk price exchange (ZPE CC BY-SA)' WHERE public_id='de_pre_a1_dlg_023';
DELETE FROM dialogue_characters WHERE dialogue_id=(SELECT id FROM dialogues WHERE public_id='de_pre_a1_dlg_023');
INSERT IGNORE INTO dialogue_characters (dialogue_id,character_id,role_label)
SELECT d.id,ch.id,x.role_label FROM (
 SELECT 'de_char_zpe_kiosk_woman' cid,'speaker' role_label UNION ALL
 SELECT 'de_char_zpe_mia','learner_role'
) x JOIN dialogues d ON d.public_id='de_pre_a1_dlg_023' JOIN characters ch ON ch.public_id=x.cid;

UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_kiosk_woman'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='app_assigned',dt.speaker_gender_evidence='female',dt.text_target='Ein Pizzabrötchen kostet 80 Cent.',dt.translation_fa='یک پیتزابروتشن ۸۰ سنت قیمت دارد.',dt.learner_turn=0
WHERE d.public_id='de_pre_a1_dlg_023' AND dt.position=1;
UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_mia'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='source',dt.speaker_gender_evidence='unspecified',dt.text_target='Und was kostet ein Toast mit Käse?',dt.translation_fa='و یک تست با پنیر چقدر قیمت دارد؟',dt.learner_turn=1
WHERE d.public_id='de_pre_a1_dlg_023' AND dt.position=2;

INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id IN ('srcitem_zpe_kiosk_dialogue','srcitem_zpe_kiosk_vocab') WHERE l.public_id='de_pre_a1_l023';
INSERT IGNORE INTO dialogue_sources (dialogue_id,source_item_id)
SELECT d.id,si.id FROM dialogues d JOIN source_items si ON si.public_id='srcitem_zpe_kiosk_dialogue' WHERE d.public_id='de_pre_a1_dlg_023';
INSERT IGNORE INTO dialogue_turn_sources (dialogue_turn_id,source_item_id)
SELECT dt.id,si.id FROM dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN source_items si ON si.public_id='srcitem_zpe_kiosk_dialogue' WHERE d.public_id='de_pre_a1_dlg_023';

UPDATE activities a JOIN lessons l ON l.id=a.lesson_id
SET a.instruction_fa='گوش کن و سؤال قیمت یک خوراکی را در نقش میا بخوان.',a.selection_reason='Modern CC-licensed kiosk dialogue replaces dated restaurant address forms.',a.payload=JSON_OBJECT('learnerCharacterId','de_char_zpe_mia'),a.transformations=JSON_OBJECT('sourceTransformation','exact consecutive ZPE kiosk turns')
WHERE l.public_id='de_pre_a1_l023' AND a.position=1;

UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id
SET ai.text_target=CASE ai.position WHEN 1 THEN 'Pizzabrötchen' WHEN 2 THEN 'Toast mit Käse' WHEN 3 THEN 'Kakao' WHEN 4 THEN 'Mineralwasser' END,
    ai.text_fa=CASE ai.position WHEN 1 THEN 'نان پیتزایی' WHEN 2 THEN 'تست با پنیر' WHEN 3 THEN 'کاکائو' WHEN 4 THEN 'آب معدنی' END,
    ai.group_key=CASE ai.position WHEN 1 THEN 'pizza_roll' WHEN 2 THEN 'cheese_toast' WHEN 3 THEN 'cocoa' WHEN 4 THEN 'mineral_water' END
WHERE a.public_id='de_pre_a1_a023_02';

UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id
SET ai.text_target=CASE ai.position WHEN 1 THEN 'Joghurt' WHEN 2 THEN 'Apfelkuchen' WHEN 3 THEN 'Banane' WHEN 4 THEN 'Pizza' END,
    ai.text_fa=CASE ai.position WHEN 1 THEN 'ماست' WHEN 2 THEN 'کیک سیب' WHEN 3 THEN 'موز' WHEN 4 THEN 'پیتزا' END,
    ai.group_key=CASE ai.position WHEN 1 THEN 'yogurt' WHEN 2 THEN 'apple_cake' WHEN 3 THEN 'banana' WHEN 4 THEN 'pizza' END
WHERE a.public_id='de_pre_a1_a023_03';

UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id
SET ai.text_target=CASE ai.position WHEN 1 THEN 'Mineralwasser' WHEN 2 THEN 'Joghurt' WHEN 3 THEN 'Banane' END,
    ai.text_fa=CASE ai.position WHEN 1 THEN 'آب معدنی' WHEN 2 THEN 'ماست' WHEN 3 THEN 'موز' END,
    ai.is_correct=CASE ai.position WHEN 1 THEN 1 ELSE 0 END
WHERE a.public_id='de_pre_a1_a023_04';
UPDATE activities SET instruction_fa='«آب معدنی» را از بین واژه‌های منبع انتخاب کن.' WHERE public_id='de_pre_a1_a023_04';

DELETE ais FROM activity_item_sources ais JOIN activity_items ai ON ai.id=ais.activity_item_id JOIN activities a ON a.id=ai.activity_id WHERE a.public_id IN ('de_pre_a1_a023_02','de_pre_a1_a023_03','de_pre_a1_a023_04');
DELETE acs FROM activity_sources acs JOIN activities a ON a.id=acs.activity_id WHERE a.public_id IN ('de_pre_a1_a023_01','de_pre_a1_a023_02','de_pre_a1_a023_03','de_pre_a1_a023_04');
INSERT IGNORE INTO activity_sources (activity_id,source_item_id)
SELECT a.id,si.id FROM activities a JOIN source_items si ON si.public_id='srcitem_zpe_kiosk_dialogue' WHERE a.public_id IN ('de_pre_a1_a023_01','de_pre_a1_a023_02');
INSERT IGNORE INTO activity_sources (activity_id,source_item_id)
SELECT a.id,si.id FROM activities a JOIN source_items si ON si.public_id='srcitem_zpe_kiosk_vocab' WHERE a.public_id IN ('de_pre_a1_a023_02','de_pre_a1_a023_03','de_pre_a1_a023_04');
INSERT IGNORE INTO activity_item_sources (activity_item_id,source_item_id)
SELECT ai.id,acs.source_item_id FROM activity_items ai JOIN activity_sources acs ON acs.activity_id=ai.activity_id WHERE ai.activity_id IN (SELECT id FROM activities WHERE public_id IN ('de_pre_a1_a023_02','de_pre_a1_a023_03','de_pre_a1_a023_04'));

-- -----------------------------------------------------------------------------
-- Lesson 24: modern restaurant order; no dated form of address.
-- -----------------------------------------------------------------------------
UPDATE dialogues SET scenario='Modern restaurant order (ZPE CC BY-SA)' WHERE public_id='de_pre_a1_dlg_024';
DELETE FROM dialogue_characters WHERE dialogue_id=(SELECT id FROM dialogues WHERE public_id='de_pre_a1_dlg_024');
INSERT IGNORE INTO dialogue_characters (dialogue_id,character_id,role_label)
SELECT d.id,ch.id,x.role_label FROM (
 SELECT 'de_char_zpe_restaurant_staff' cid,'speaker' role_label UNION ALL
 SELECT 'de_char_zpe_restaurant_guest','learner_role'
) x JOIN dialogues d ON d.public_id='de_pre_a1_dlg_024' JOIN characters ch ON ch.public_id=x.cid;
UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_restaurant_staff'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='app_assigned',dt.speaker_gender_evidence='unspecified',dt.text_target='Guten Tag, was darf es sein?',dt.translation_fa='روز بخیر، چی میل دارید؟',dt.learner_turn=0
WHERE d.public_id='de_pre_a1_dlg_024' AND dt.position=1;
UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_restaurant_guest'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='app_assigned',dt.speaker_gender_evidence='unspecified',dt.text_target='Zweimal Lachs mit Gemüse, bitte.',dt.translation_fa='لطفاً دو پرس سالمون با سبزیجات.',dt.learner_turn=1
WHERE d.public_id='de_pre_a1_dlg_024' AND dt.position=2;

INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id) SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_zpe_restaurant_transcript' WHERE l.public_id='de_pre_a1_l024';
INSERT IGNORE INTO dialogue_sources (dialogue_id,source_item_id) SELECT d.id,si.id FROM dialogues d JOIN source_items si ON si.public_id='srcitem_zpe_restaurant_transcript' WHERE d.public_id='de_pre_a1_dlg_024';
DELETE dts FROM dialogue_turn_sources dts JOIN dialogue_turns dt ON dt.id=dts.dialogue_turn_id JOIN dialogues d ON d.id=dt.dialogue_id WHERE d.public_id='de_pre_a1_dlg_024';
INSERT IGNORE INTO dialogue_turn_sources (dialogue_turn_id,source_item_id) SELECT dt.id,si.id FROM dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN source_items si ON si.public_id='srcitem_zpe_restaurant_transcript' WHERE d.public_id='de_pre_a1_dlg_024';

UPDATE activities a JOIN lessons l ON l.id=a.lesson_id
SET a.instruction_fa='گوش کن و سفارش غذا را در نقش مشتری بخوان.',a.selection_reason='Modern CC-licensed restaurant transcript replaces the dated Headstart address form.',a.payload=JSON_OBJECT('learnerCharacterId','de_char_zpe_restaurant_guest'),a.transformations=JSON_OBJECT('sourceTransformation','exact modern ZPE restaurant turn pair')
WHERE l.public_id='de_pre_a1_l024' AND a.position=1;
UPDATE activities SET instruction_fa='سفارش کوتاه را دوباره واضح بخوان.',payload=JSON_OBJECT('targetText','Zweimal Lachs mit Gemüse, bitte.'),transformations=JSON_OBJECT('sourceTransformation','exact ZPE learner turn') WHERE public_id='de_pre_a1_a024_02';
UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id SET ai.text_target='Zweimal Lachs mit Gemüse, bitte.',ai.text_fa='لطفاً دو پرس سالمون با سبزیجات.' WHERE a.public_id='de_pre_a1_a024_02';
DELETE acs FROM activity_sources acs JOIN activities a ON a.id=acs.activity_id WHERE a.public_id IN ('de_pre_a1_a024_01','de_pre_a1_a024_02');
INSERT IGNORE INTO activity_sources (activity_id,source_item_id) SELECT a.id,si.id FROM activities a JOIN source_items si ON si.public_id='srcitem_zpe_restaurant_transcript' WHERE a.public_id IN ('de_pre_a1_a024_01','de_pre_a1_a024_02');
DELETE ais FROM activity_item_sources ais JOIN activity_items ai ON ai.id=ais.activity_item_id JOIN activities a ON a.id=ai.activity_id WHERE a.public_id='de_pre_a1_a024_02';
INSERT IGNORE INTO activity_item_sources (activity_item_id,source_item_id) SELECT ai.id,si.id FROM activity_items ai JOIN activities a ON a.id=ai.activity_id JOIN source_items si ON si.public_id='srcitem_zpe_restaurant_transcript' WHERE a.public_id='de_pre_a1_a024_02';

-- -----------------------------------------------------------------------------
-- Lesson 25: modern market purchase and Euro prices.
-- -----------------------------------------------------------------------------
UPDATE dialogues SET scenario='Modern market price and purchase exchange (ZPE CC BY-SA)' WHERE public_id='de_pre_a1_dlg_025';
DELETE FROM dialogue_characters WHERE dialogue_id=(SELECT id FROM dialogues WHERE public_id='de_pre_a1_dlg_025');
INSERT IGNORE INTO dialogue_characters (dialogue_id,character_id,role_label)
SELECT d.id,ch.id,x.role_label FROM (
 SELECT 'de_char_zpe_market_seller' cid,'speaker' role_label UNION ALL
 SELECT 'de_char_zpe_fabian','learner_role'
) x JOIN dialogues d ON d.public_id='de_pre_a1_dlg_025' JOIN characters ch ON ch.public_id=x.cid;
UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_market_seller'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='app_assigned',dt.speaker_gender_evidence='male',dt.text_target='Ein Kilo kostet einen Euro neunundvierzig.',dt.translation_fa='یک کیلو یک یورو و چهل‌ونه سنت است.',dt.learner_turn=0
WHERE d.public_id='de_pre_a1_dlg_025' AND dt.position=1;
UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_fabian'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='source',dt.speaker_gender_evidence='unspecified',dt.text_target='Da nehme ich zwei Kilo. Was macht das zusammen?',dt.translation_fa='پس دو کیلو برمی‌دارم. جمعاً چقدر می‌شود؟',dt.learner_turn=1
WHERE d.public_id='de_pre_a1_dlg_025' AND dt.position=2;
UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_market_seller'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='app_assigned',dt.speaker_gender_evidence='male',dt.text_target='Zwölf Euro zehn Cent.',dt.translation_fa='دوازده یورو و ده سنت.',dt.learner_turn=0
WHERE d.public_id='de_pre_a1_dlg_025' AND dt.position=3;

INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id) SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_zpe_market_dialogue' WHERE l.public_id='de_pre_a1_l025';
INSERT IGNORE INTO dialogue_sources (dialogue_id,source_item_id) SELECT d.id,si.id FROM dialogues d JOIN source_items si ON si.public_id='srcitem_zpe_market_dialogue' WHERE d.public_id='de_pre_a1_dlg_025';
DELETE dts FROM dialogue_turn_sources dts JOIN dialogue_turns dt ON dt.id=dts.dialogue_turn_id JOIN dialogues d ON d.id=dt.dialogue_id WHERE d.public_id='de_pre_a1_dlg_025';
INSERT IGNORE INTO dialogue_turn_sources (dialogue_turn_id,source_item_id) SELECT dt.id,si.id FROM dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN source_items si ON si.public_id='srcitem_zpe_market_dialogue' WHERE d.public_id='de_pre_a1_dlg_025';

UPDATE activities a JOIN lessons l ON l.id=a.lesson_id
SET a.instruction_fa='گوش کن و سؤال جمع قیمت را در نقش فابیان بخوان.',a.selection_reason='Modern CC-licensed market dialogue replaces obsolete Deutsche-Mark pricing.',a.payload=JSON_OBJECT('learnerCharacterId','de_char_zpe_fabian'),a.transformations=JSON_OBJECT('sourceTransformation','exact consecutive ZPE market turns')
WHERE l.public_id='de_pre_a1_l025' AND a.position=1;
UPDATE activities SET instruction_fa='قیمت یک کیلو را در جمله منبع کامل کن.',payload=JSON_OBJECT('promptTarget','Ein Kilo kostet ____.','shuffleOptions',TRUE),transformations=JSON_OBJECT('sourceTransformation','source price phrase blanked') WHERE public_id='de_pre_a1_a025_02';
UPDATE activities SET instruction_fa='بعد از شنیدن قیمت، ادامهٔ خرید موجود در منبع را انتخاب کن.' WHERE public_id='de_pre_a1_a025_03';
UPDATE activities SET payload=JSON_OBJECT('shuffleTokens',TRUE,'canonicalText','Was kosten die Kartoffeln?'),transformations=JSON_OBJECT('sourceTransformation','exact source question split into tokens') WHERE public_id='de_pre_a1_a025_04';
UPDATE activities SET instruction_fa='سؤال قیمت را واضح بخوان.',payload=JSON_OBJECT('targetText','Was kosten die Kartoffeln?'),transformations=JSON_OBJECT('sourceTransformation','exact ZPE market phrase') WHERE public_id='de_pre_a1_a025_05';

UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id
SET ai.text_target=CASE ai.position WHEN 1 THEN 'einen Euro neunundvierzig' WHEN 2 THEN 'Zwölf Euro zehn Cent' WHEN 3 THEN 'siebzig Cent' END,
    ai.text_fa=CASE ai.position WHEN 1 THEN 'یک یورو و چهل‌ونه سنت' WHEN 2 THEN 'دوازده یورو و ده سنت' WHEN 3 THEN 'هفتاد سنت' END,
    ai.is_correct=CASE ai.position WHEN 1 THEN 1 ELSE 0 END
WHERE a.public_id='de_pre_a1_a025_02';
UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id
SET ai.text_target=CASE ai.position WHEN 1 THEN 'Da nehme ich zwei Kilo. Was macht das zusammen?' WHEN 2 THEN 'Bitte sehr.' END,
    ai.text_fa=CASE ai.position WHEN 1 THEN 'پس دو کیلو برمی‌دارم. جمعاً چقدر می‌شود؟' WHEN 2 THEN 'بفرمایید.' END,
    ai.is_correct=CASE ai.position WHEN 1 THEN 1 ELSE 0 END
WHERE a.public_id='de_pre_a1_a025_03';
UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id
SET ai.text_target=CASE ai.position WHEN 1 THEN 'Was' WHEN 2 THEN 'kosten' WHEN 3 THEN 'die Kartoffeln' END,
    ai.metadata=JSON_OBJECT('correctPosition',ai.position)
WHERE a.public_id='de_pre_a1_a025_04';
UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id SET ai.text_target='Was kosten die Kartoffeln?',ai.text_fa='سیب‌زمینی‌ها چقدر قیمت دارند؟' WHERE a.public_id='de_pre_a1_a025_05';
DELETE acs FROM activity_sources acs JOIN activities a ON a.id=acs.activity_id WHERE a.public_id LIKE 'de_pre_a1_a025_%';
INSERT IGNORE INTO activity_sources (activity_id,source_item_id) SELECT a.id,si.id FROM activities a JOIN source_items si ON si.public_id='srcitem_zpe_market_dialogue' WHERE a.public_id LIKE 'de_pre_a1_a025_%';
DELETE ais FROM activity_item_sources ais JOIN activity_items ai ON ai.id=ais.activity_item_id JOIN activities a ON a.id=ai.activity_id WHERE a.public_id LIKE 'de_pre_a1_a025_%';
INSERT IGNORE INTO activity_item_sources (activity_item_id,source_item_id) SELECT ai.id,si.id FROM activity_items ai JOIN activities a ON a.id=ai.activity_id JOIN source_items si ON si.public_id='srcitem_zpe_market_dialogue' WHERE a.public_id LIKE 'de_pre_a1_a025_%' AND ai.text_target IS NOT NULL;

-- -----------------------------------------------------------------------------
-- Lesson 26: modern restaurant dialogue + modern Euro menu/list.
-- -----------------------------------------------------------------------------
UPDATE dialogues SET scenario='Modern restaurant drink exchange paired with modern Euro menu (ZPE CC BY-SA)' WHERE public_id='de_pre_a1_dlg_026';
DELETE FROM dialogue_characters WHERE dialogue_id=(SELECT id FROM dialogues WHERE public_id='de_pre_a1_dlg_026');
INSERT IGNORE INTO dialogue_characters (dialogue_id,character_id,role_label)
SELECT d.id,ch.id,x.role_label FROM (
 SELECT 'de_char_zpe_restaurant_staff' cid,'speaker' role_label UNION ALL
 SELECT 'de_char_zpe_restaurant_guest','learner_role'
) x JOIN dialogues d ON d.public_id='de_pre_a1_dlg_026' JOIN characters ch ON ch.public_id=x.cid;
UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_restaurant_staff'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='app_assigned',dt.speaker_gender_evidence='unspecified',dt.text_target='Möchten Sie etwas zum Trinken?',dt.translation_fa='چیزی برای نوشیدن میل دارید؟',dt.learner_turn=0
WHERE d.public_id='de_pre_a1_dlg_026' AND dt.position=1;
UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_restaurant_guest'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='app_assigned',dt.speaker_gender_evidence='unspecified',dt.text_target='Ja, zwei Gläser Mineralwasser.',dt.translation_fa='بله، دو لیوان آب معدنی.',dt.learner_turn=1
WHERE d.public_id='de_pre_a1_dlg_026' AND dt.position=2;

INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id) SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id IN ('srcitem_zpe_restaurant_transcript','srcitem_zpe_modern_menu') WHERE l.public_id='de_pre_a1_l026';
INSERT IGNORE INTO dialogue_sources (dialogue_id,source_item_id) SELECT d.id,si.id FROM dialogues d JOIN source_items si ON si.public_id='srcitem_zpe_restaurant_transcript' WHERE d.public_id='de_pre_a1_dlg_026';
DELETE dts FROM dialogue_turn_sources dts JOIN dialogue_turns dt ON dt.id=dts.dialogue_turn_id JOIN dialogues d ON d.id=dt.dialogue_id WHERE d.public_id='de_pre_a1_dlg_026';
INSERT IGNORE INTO dialogue_turn_sources (dialogue_turn_id,source_item_id) SELECT dt.id,si.id FROM dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN source_items si ON si.public_id='srcitem_zpe_restaurant_transcript' WHERE d.public_id='de_pre_a1_dlg_026';

UPDATE activities a JOIN lessons l ON l.id=a.lesson_id
SET a.instruction_fa='گوش کن و پاسخ سفارش نوشیدنی را در نقش مشتری بخوان.',a.selection_reason='Modern CC-licensed restaurant transcript plus a contemporary Euro menu replaces dated restaurant wording.',a.payload=JSON_OBJECT('learnerCharacterId','de_char_zpe_restaurant_guest'),a.transformations=JSON_OBJECT('sourceTransformation','exact ZPE restaurant turn pair')
WHERE l.public_id='de_pre_a1_l026' AND a.position=1;
UPDATE activities SET instruction_fa='دسته‌ها و موارد منوی مدرن را با معنی‌شان تطبیق بده.',selection_reason='Modern CC BY-SA menu uses current Euro prices.',transformations=JSON_OBJECT('sourceTransformation','exact modern ZPE menu category/item labels') WHERE public_id='de_pre_a1_a026_02';
UPDATE activities SET instruction_fa='«آب معدنی بدون گاز» را در منوی منبع پیدا کن.',selection_reason='Simple scanning of modern menu.',transformations=JSON_OBJECT('sourceTransformation','exact modern menu items used as options') WHERE public_id='de_pre_a1_a026_03';
UPDATE activities SET instruction_fa='نام یک نوشیدنی منو را واضح بخوان.',payload=JSON_OBJECT('targetText','Apfelsaft'),transformations=JSON_OBJECT('sourceTransformation','exact modern menu item') WHERE public_id='de_pre_a1_a026_04';

UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id
SET ai.text_target=CASE ai.position WHEN 1 THEN 'Desserts' WHEN 2 THEN 'Getränke' WHEN 3 THEN 'Apfelkuchen mit Vanilleeis' WHEN 4 THEN 'Mineralwasser (still)' WHEN 5 THEN 'Espresso' END,
    ai.text_fa=CASE ai.position WHEN 1 THEN 'دسرها' WHEN 2 THEN 'نوشیدنی‌ها' WHEN 3 THEN 'کیک سیب با بستنی وانیلی' WHEN 4 THEN 'آب معدنی بدون گاز' WHEN 5 THEN 'اسپرسو' END,
    ai.group_key=CASE ai.position WHEN 1 THEN 'desserts' WHEN 2 THEN 'drinks' WHEN 3 THEN 'apple_cake' WHEN 4 THEN 'still_water' WHEN 5 THEN 'espresso' END
WHERE a.public_id='de_pre_a1_a026_02';
UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id
SET ai.text_target=CASE ai.position WHEN 1 THEN 'Mineralwasser (still)' WHEN 2 THEN 'Espresso' WHEN 3 THEN 'Apfelsaft' END,
    ai.text_fa=CASE ai.position WHEN 1 THEN 'آب معدنی بدون گاز' WHEN 2 THEN 'اسپرسو' WHEN 3 THEN 'آب سیب' END,
    ai.is_correct=CASE ai.position WHEN 1 THEN 1 ELSE 0 END
WHERE a.public_id='de_pre_a1_a026_03';
UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id SET ai.text_target='Apfelsaft',ai.text_fa='آب سیب' WHERE a.public_id='de_pre_a1_a026_04';
DELETE acs FROM activity_sources acs JOIN activities a ON a.id=acs.activity_id WHERE a.public_id LIKE 'de_pre_a1_a026_%';
INSERT IGNORE INTO activity_sources (activity_id,source_item_id) SELECT a.id,si.id FROM activities a JOIN source_items si ON si.public_id='srcitem_zpe_restaurant_transcript' WHERE a.public_id='de_pre_a1_a026_01';
INSERT IGNORE INTO activity_sources (activity_id,source_item_id) SELECT a.id,si.id FROM activities a JOIN source_items si ON si.public_id='srcitem_zpe_modern_menu' WHERE a.public_id IN ('de_pre_a1_a026_02','de_pre_a1_a026_03','de_pre_a1_a026_04');
DELETE ais FROM activity_item_sources ais JOIN activity_items ai ON ai.id=ais.activity_item_id JOIN activities a ON a.id=ai.activity_id WHERE a.public_id LIKE 'de_pre_a1_a026_%';
INSERT IGNORE INTO activity_item_sources (activity_item_id,source_item_id) SELECT ai.id,acs.source_item_id FROM activity_items ai JOIN activity_sources acs ON acs.activity_id=ai.activity_id WHERE ai.text_target IS NOT NULL AND ai.activity_id IN (SELECT id FROM activities WHERE public_id LIKE 'de_pre_a1_a026_%');

-- Point the reusable menu lexeme at the modern active source too.
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_zpe_modern_menu' WHERE lx.public_id='de_lex_speisekarte';

-- Update lesson source-title labels for editorial visibility.
UPDATE lessons SET source_title='ZPE modern school-kiosk OER (CC BY-SA 3.0)' WHERE public_id='de_pre_a1_l023';
UPDATE lessons SET source_title='ZPE modern restaurant OER (CC BY-SA 3.0)' WHERE public_id='de_pre_a1_l024';
UPDATE lessons SET source_title='ZPE modern market OER — Euro/Cent (CC BY-SA 3.0)' WHERE public_id='de_pre_a1_l025';
UPDATE lessons SET source_title='ZPE modern restaurant + Euro menu OER (CC BY-SA 3.0)' WHERE public_id='de_pre_a1_l026';

-- Explicit QA visibility: no user-facing target text in active lessons 23–26 should contain
-- the dated address term Fräulein or Deutsche-Mark price notation.
SELECT
  SUM(dt.text_target LIKE '%Fräulein%') AS dialogue_fraeulein_count,
  SUM(dt.text_target REGEXP '(^|[^A-Za-z])DM([^A-Za-z]|$)') AS dialogue_dm_count
FROM dialogue_turns dt
JOIN dialogues d ON d.id=dt.dialogue_id
WHERE d.public_id BETWEEN 'de_pre_a1_dlg_023' AND 'de_pre_a1_dlg_026';
