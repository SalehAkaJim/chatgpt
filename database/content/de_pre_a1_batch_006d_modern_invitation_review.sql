-- German Pre-A1 modernization: Lesson 27 invitation + Lesson 30 review provenance.
-- Target: MySQL 9.0.1
-- Replaces the old 1986 FAST invitation card and old-orthography name review with
-- modern CC BY-SA 3.0 ZPE sources. Safe to run repeatedly after 006c.

SET NAMES utf8mb4;

INSERT INTO sources
(public_id,title,organization_or_author,source_language_code,source_type,base_url,license_name,license_url,attribution_text,reuse_status,notes)
VALUES
('src_zpe_de_birthday_invite_dialogue','Ich lade dich zum Geburtstag ein — birthday dialogue','Contentplus.pl Sp. z o.o. / ZPE','de','website',
 'https://zpe.gov.pl/a/sprawdz-sie/DpsoM1iBM','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/',
 '“Ich lade dich zum Geburtstag ein”, Contentplus.pl Sp. z o.o., via ZPE; CC BY-SA 3.0','reuse_with_attribution',
 'Modern birthday dialogue with date, weekday, time and cinema location.'),
('src_zpe_de_family_invites','Die schönsten Feste mit der Familie feiern — invitation cards','Contentplus.pl Sp. z o.o. / ZPE','de','website',
 'https://zpe.gov.pl/a/przeczytaj/DPwpzaSfr','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/',
 '“Die schönsten Feste mit der Familie feiern”, Contentplus.pl Sp. z o.o., via ZPE; CC BY-SA 3.0','reuse_with_attribution',
 'Modern invitation cards; the birthday card includes 15 June 2022, 14:00, at home, 17th birthday, inviter Monika.')
ON DUPLICATE KEY UPDATE title=VALUES(title),organization_or_author=VALUES(organization_or_author),source_language_code=VALUES(source_language_code),source_type=VALUES(source_type),base_url=VALUES(base_url),license_name=VALUES(license_name),license_url=VALUES(license_url),attribution_text=VALUES(attribution_text),reuse_status=VALUES(reuse_status),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_birthday_dialogue','ZPE birthday-party dialogue','Transcript: Fabian/Felix discuss Olaf’s birthday; 21 July, Saturday, 6 o’clock, cinema.',s.base_url,
       'Exact modern dialogue used for the opening conversation of Lesson 27.'
FROM sources s WHERE s.public_id='src_zpe_de_birthday_invite_dialogue'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_birthday_card','ZPE modern birthday invitation card','Invitation 1: Monika; 17th birthday; 15 June 2022; at home; starts 14:00.',s.base_url,
       'Authentic-style invitation card used for date/time/place/event extraction.'
FROM sources s WHERE s.public_id='src_zpe_de_family_invites'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

-- Source characters for the modern invitation dialogue.
INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_zpe_fabian_invite',l.id,'Fabian','source','unspecified','unspecified',JSON_ARRAY('friend','conversation_partner'),
       'Named source speaker in the ZPE birthday dialogue; gender is not inferred from name alone.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_zpe_felix_invite',l.id,'Felix','source','unspecified','unspecified',JSON_ARRAY('friend','learner_surrogate'),
       'Named source speaker in the ZPE birthday dialogue; gender is not inferred from name alone.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_char_zpe_jakob_name',l.id,'Jakob','source','unspecified','unspecified',JSON_ARRAY('learner_surrogate'),
       'Name appears in the modern ZPE name-completion dialogue; gender is not inferred solely from the name.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),roles=VALUES(roles),context_notes=VALUES(context_notes);

-- -----------------------------------------------------------------------------
-- Lesson 27: replace FAST 1986 invitation with modern ZPE dialogue/card.
-- -----------------------------------------------------------------------------
DELETE ls FROM lesson_sources ls JOIN lessons l ON l.id=ls.lesson_id JOIN source_items si ON si.id=ls.source_item_id
WHERE l.public_id='de_pre_a1_l027' AND si.public_id='srcitem_fast_l9_invitation';
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id IN ('srcitem_zpe_birthday_dialogue','srcitem_zpe_birthday_card') WHERE l.public_id='de_pre_a1_l027';

DELETE FROM dialogue_characters WHERE dialogue_id=(SELECT id FROM dialogues WHERE public_id='de_pre_a1_dlg_027');
INSERT IGNORE INTO dialogue_characters (dialogue_id,character_id,role_label)
SELECT d.id,ch.id,x.role_label FROM (
 SELECT 'de_char_zpe_fabian_invite' cid,'speaker' role_label UNION ALL
 SELECT 'de_char_zpe_felix_invite','learner_role'
) x JOIN dialogues d ON d.public_id='de_pre_a1_dlg_027' JOIN characters ch ON ch.public_id=x.cid;
UPDATE dialogues SET scenario='Modern birthday invitation conversation (ZPE CC BY-SA)' WHERE public_id='de_pre_a1_dlg_027';

UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_fabian_invite'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='source',dt.speaker_gender_evidence='unspecified',
    dt.text_target='Hallo Felix, gehst du zu Olafs Geburtstag?',dt.translation_fa='سلام فلیکس، به تولد اولاف می‌روی؟',dt.learner_turn=0
WHERE d.public_id='de_pre_a1_dlg_027' AND dt.position=1;
UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_felix_invite'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='source',dt.speaker_gender_evidence='unspecified',
    dt.text_target='Ja, natürlich. Wann ist die Geburtstagsparty? Hast du die Einladung?',dt.translation_fa='بله، حتماً. جشن تولد چه زمانی است؟ دعوت‌نامه را داری؟',dt.learner_turn=1
WHERE d.public_id='de_pre_a1_dlg_027' AND dt.position=2;

DELETE ds FROM dialogue_sources ds JOIN dialogues d ON d.id=ds.dialogue_id WHERE d.public_id='de_pre_a1_dlg_027';
INSERT IGNORE INTO dialogue_sources (dialogue_id,source_item_id) SELECT d.id,si.id FROM dialogues d JOIN source_items si ON si.public_id='srcitem_zpe_birthday_dialogue' WHERE d.public_id='de_pre_a1_dlg_027';
DELETE dts FROM dialogue_turn_sources dts JOIN dialogue_turns dt ON dt.id=dts.dialogue_turn_id JOIN dialogues d ON d.id=dt.dialogue_id WHERE d.public_id='de_pre_a1_dlg_027';
INSERT IGNORE INTO dialogue_turn_sources (dialogue_turn_id,source_item_id) SELECT dt.id,si.id FROM dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN source_items si ON si.public_id='srcitem_zpe_birthday_dialogue' WHERE d.public_id='de_pre_a1_dlg_027';

UPDATE activities SET payload=JSON_OBJECT('learnerCharacterId','de_char_zpe_felix_invite'),selection_reason='Modern CC-licensed invitation dialogue replaces the older FAST invitation context.',transformations=JSON_OBJECT('sourceTransformation','exact consecutive ZPE dialogue turns') WHERE public_id='de_pre_a1_a027_01';
UPDATE activities SET payload=JSON_OBJECT('shuffleItems',TRUE,'visualSource','ZPE birthday invitation card'),selection_reason='Modern invitation card directly tests event/date/time/place.',transformations=JSON_OBJECT('sourceTransformation','exact card fields/phrases') WHERE public_id='de_pre_a1_a027_02';
UPDATE activities SET transformations=JSON_OBJECT('sourceTransformation','facts extracted from the modern ZPE birthday card; German card text unchanged') WHERE public_id='de_pre_a1_a027_03';

UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id
SET ai.text_target=CASE ai.position
      WHEN 1 THEN '15. Juni 2022'
      WHEN 2 THEN '14:00 Uhr'
      WHEN 3 THEN 'bei mir zu Hause'
      WHEN 4 THEN '17. Geburtstag'
    END,
    ai.text_fa=CASE ai.position
      WHEN 1 THEN '۱۵ ژوئن ۲۰۲۲'
      WHEN 2 THEN 'ساعت ۱۴:۰۰'
      WHEN 3 THEN 'خانهٔ من'
      WHEN 4 THEN 'تولد ۱۷ سالگی'
    END,
    ai.group_key=CASE ai.position WHEN 1 THEN 'date' WHEN 2 THEN 'time' WHEN 3 THEN 'place' WHEN 4 THEN 'event' END
WHERE a.public_id='de_pre_a1_a027_02';
UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id
SET ai.text_fa=CASE ai.position
      WHEN 1 THEN 'مهمانی در ۱۵ ژوئن برگزار می‌شود.'
      WHEN 2 THEN 'مهمانی ساعت ۱۴:۰۰ شروع می‌شود.'
      WHEN 3 THEN 'محل مهمانی یک هتل است.'
    END,
    ai.is_correct=CASE ai.position WHEN 1 THEN 1 WHEN 2 THEN 1 ELSE 0 END,
    ai.metadata=CASE ai.position
      WHEN 1 THEN JSON_OBJECT('sourceFact','15. Juni 2022')
      WHEN 2 THEN JSON_OBJECT('sourceFact','14:00 Uhr')
      ELSE JSON_OBJECT('sourceFact','bei mir zu Hause')
    END
WHERE a.public_id='de_pre_a1_a027_03';

DELETE acs FROM activity_sources acs JOIN activities a ON a.id=acs.activity_id WHERE a.public_id LIKE 'de_pre_a1_a027_%';
INSERT IGNORE INTO activity_sources (activity_id,source_item_id) SELECT a.id,si.id FROM activities a JOIN source_items si ON si.public_id='srcitem_zpe_birthday_dialogue' WHERE a.public_id='de_pre_a1_a027_01';
INSERT IGNORE INTO activity_sources (activity_id,source_item_id) SELECT a.id,si.id FROM activities a JOIN source_items si ON si.public_id='srcitem_zpe_birthday_card' WHERE a.public_id IN ('de_pre_a1_a027_02','de_pre_a1_a027_03');
DELETE ais FROM activity_item_sources ais JOIN activity_items ai ON ai.id=ais.activity_item_id JOIN activities a ON a.id=ai.activity_id WHERE a.public_id LIKE 'de_pre_a1_a027_%';
INSERT IGNORE INTO activity_item_sources (activity_item_id,source_item_id)
SELECT ai.id,acs.source_item_id FROM activity_items ai JOIN activity_sources acs ON acs.activity_id=ai.activity_id WHERE ai.text_target IS NOT NULL AND ai.activity_id IN (SELECT id FROM activities WHERE public_id LIKE 'de_pre_a1_a027_%');
UPDATE lessons SET source_title='ZPE modern birthday dialogue + invitation card (CC BY-SA 3.0)' WHERE public_id='de_pre_a1_l027';

DELETE ls FROM lexeme_sources ls JOIN lexemes lx ON lx.id=ls.lexeme_id JOIN source_items si ON si.id=ls.source_item_id WHERE lx.public_id='de_lex_einladung' AND si.public_id='srcitem_fast_l9_invitation';
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id) SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_zpe_birthday_dialogue' WHERE lx.public_id='de_lex_einladung';

-- -----------------------------------------------------------------------------
-- Lesson 30 review: modern name opener + modern invitation review + corrected
-- cross-topic provenance for the reusable review phrases.
-- -----------------------------------------------------------------------------
DELETE ls FROM lesson_sources ls JOIN lessons l ON l.id=ls.lesson_id JOIN source_items si ON si.id=ls.source_item_id
WHERE l.public_id='de_pre_a1_l030' AND si.public_id IN ('srcitem_fast_l1_intro','srcitem_fast_l9_invitation');
INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id IN ('srcitem_zpe_modern_names','srcitem_zpe_birthday_card','srcitem_zpe_modern_goodnight','srcitem_zpe_market_dialogue') WHERE l.public_id='de_pre_a1_l030';

DELETE FROM dialogue_characters WHERE dialogue_id=(SELECT id FROM dialogues WHERE public_id='de_pre_a1_dlg_030');
INSERT IGNORE INTO dialogue_characters (dialogue_id,character_id,role_label)
SELECT d.id,ch.id,x.role_label FROM (
 SELECT 'de_char_zpe_name_partner' cid,'speaker' role_label UNION ALL
 SELECT 'de_char_zpe_jakob_name','learner_role'
) x JOIN dialogues d ON d.public_id='de_pre_a1_dlg_030' JOIN characters ch ON ch.public_id=x.cid;
UPDATE dialogues SET scenario='Modern name-introduction review (ZPE CC BY-SA)' WHERE public_id='de_pre_a1_dlg_030';
UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_name_partner'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='app_assigned',dt.speaker_gender_evidence='unspecified',dt.text_target='Hallo! Wie heißt du?',dt.translation_fa='سلام! اسمت چیست؟',dt.learner_turn=0
WHERE d.public_id='de_pre_a1_dlg_030' AND dt.position=1;
UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN characters ch ON ch.public_id='de_char_zpe_jakob_name'
SET dt.speaker_character_id=ch.id,dt.speaker_identity_origin='source',dt.speaker_gender_evidence='unspecified',dt.text_target='Ich heiße Jakob.',dt.translation_fa='من یاکوب هستم.',dt.learner_turn=1
WHERE d.public_id='de_pre_a1_dlg_030' AND dt.position=2;
DELETE ds FROM dialogue_sources ds JOIN dialogues d ON d.id=ds.dialogue_id WHERE d.public_id='de_pre_a1_dlg_030';
INSERT IGNORE INTO dialogue_sources (dialogue_id,source_item_id) SELECT d.id,si.id FROM dialogues d JOIN source_items si ON si.public_id='srcitem_zpe_modern_names' WHERE d.public_id='de_pre_a1_dlg_030';
DELETE dts FROM dialogue_turn_sources dts JOIN dialogue_turns dt ON dt.id=dts.dialogue_turn_id JOIN dialogues d ON d.id=dt.dialogue_id WHERE d.public_id='de_pre_a1_dlg_030';
INSERT IGNORE INTO dialogue_turn_sources (dialogue_turn_id,source_item_id) SELECT dt.id,si.id FROM dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN source_items si ON si.public_id='srcitem_zpe_modern_names' WHERE d.public_id='de_pre_a1_dlg_030';
UPDATE activities SET payload=JSON_OBJECT('learnerCharacterId','de_char_zpe_jakob_name'),selection_reason='Modern name dialogue replaces old-orthography FAST review opener.',transformations=JSON_OBJECT('sourceTransformation','exact modern ZPE name phrases') WHERE public_id='de_pre_a1_a030_01';

-- Update review phrase 5 to the modern active shopping question.
UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id SET ai.text_target='Was kosten die Kartoffeln?',ai.text_fa='سیب‌زمینی‌ها چقدر قیمت دارند؟' WHERE a.public_id='de_pre_a1_a030_02' AND ai.position=5;

-- Modern invitation-card review items.
UPDATE activities SET payload=JSON_OBJECT('visualSource','ZPE birthday invitation card','shuffleItems',TRUE),selection_reason='Rechecks date/time/place on the modern active invitation source.',transformations=JSON_OBJECT('sourceTransformation','exact modern birthday-card information reused') WHERE public_id='de_pre_a1_a030_03';
UPDATE activity_items ai JOIN activities a ON a.id=ai.activity_id
SET ai.text_target=CASE ai.position WHEN 1 THEN '15. Juni 2022' WHEN 2 THEN '14:00 Uhr' WHEN 3 THEN 'bei mir zu Hause' END,
    ai.text_fa=CASE ai.position WHEN 1 THEN 'روز/تاریخ' WHEN 2 THEN 'زمان' WHEN 3 THEN 'محل' END,
    ai.group_key=CASE ai.position WHEN 1 THEN 'date' WHEN 2 THEN 'time' WHEN 3 THEN 'venue' END
WHERE a.public_id='de_pre_a1_a030_03';

-- Rebuild activity-level provenance for review activities 1/2/3/6.
DELETE acs FROM activity_sources acs JOIN activities a ON a.id=acs.activity_id WHERE a.public_id IN ('de_pre_a1_a030_01','de_pre_a1_a030_02','de_pre_a1_a030_03','de_pre_a1_a030_06');
INSERT IGNORE INTO activity_sources (activity_id,source_item_id) SELECT a.id,si.id FROM activities a JOIN source_items si ON si.public_id='srcitem_zpe_modern_names' WHERE a.public_id='de_pre_a1_a030_01';
-- Activity 2 deliberately samples several existing source-backed functions.
INSERT IGNORE INTO activity_sources (activity_id,source_item_id)
SELECT a.id,si.id FROM activities a JOIN source_items si ON si.public_id IN ('srcitem_zpe_modern_greetings','srcitem_zpe_modern_goodnight','srcitem_headstart_m7_u1_phone','srcitem_headstart_m1_u2_places_directions','srcitem_zpe_market_dialogue') WHERE a.public_id='de_pre_a1_a030_02';
INSERT IGNORE INTO activity_sources (activity_id,source_item_id) SELECT a.id,si.id FROM activities a JOIN source_items si ON si.public_id='srcitem_zpe_birthday_card' WHERE a.public_id='de_pre_a1_a030_03';
INSERT IGNORE INTO activity_sources (activity_id,source_item_id) SELECT a.id,si.id FROM activities a JOIN source_items si ON si.public_id='srcitem_zpe_modern_goodnight' WHERE a.public_id='de_pre_a1_a030_06';

-- Rebuild item-level provenance with exact source per phrase.
DELETE ais FROM activity_item_sources ais JOIN activity_items ai ON ai.id=ais.activity_item_id JOIN activities a ON a.id=ai.activity_id WHERE a.public_id IN ('de_pre_a1_a030_02','de_pre_a1_a030_03','de_pre_a1_a030_06');
INSERT IGNORE INTO activity_item_sources (activity_item_id,source_item_id)
SELECT ai.id,si.id FROM activity_items ai JOIN activities a ON a.id=ai.activity_id JOIN source_items si
 ON si.public_id=CASE ai.position
   WHEN 1 THEN 'srcitem_zpe_modern_greetings'
   WHEN 2 THEN 'srcitem_zpe_modern_goodnight'
   WHEN 3 THEN 'srcitem_headstart_m7_u1_phone'
   WHEN 4 THEN 'srcitem_headstart_m1_u2_places_directions'
   WHEN 5 THEN 'srcitem_zpe_market_dialogue'
 END
WHERE a.public_id='de_pre_a1_a030_02';
INSERT IGNORE INTO activity_item_sources (activity_item_id,source_item_id)
SELECT ai.id,si.id FROM activity_items ai JOIN activities a ON a.id=ai.activity_id JOIN source_items si ON si.public_id='srcitem_zpe_birthday_card' WHERE a.public_id='de_pre_a1_a030_03';
INSERT IGNORE INTO activity_item_sources (activity_item_id,source_item_id)
SELECT ai.id,si.id FROM activity_items ai JOIN activities a ON a.id=ai.activity_id JOIN source_items si ON si.public_id='srcitem_zpe_modern_goodnight' WHERE a.public_id='de_pre_a1_a030_06';

UPDATE lessons SET source_title='Modern source-backed Pre-A1 consolidation across ZPE/Headstart/FAST' WHERE public_id='de_pre_a1_l030';

SELECT l.public_id,l.source_title,l.status FROM lessons l WHERE l.public_id IN ('de_pre_a1_l027','de_pre_a1_l030');
