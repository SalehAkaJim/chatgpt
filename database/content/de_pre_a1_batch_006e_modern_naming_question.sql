-- German Pre-A1 modernization: Lesson 21 naming question.
-- Target: MySQL 9.0.1
-- Replaces the old lowercase “auf deutsch” question with an exact modern OER phrase
-- “Wie heißt das auf Deutsch?” while preserving source-backed answers.
-- Safe to run repeatedly after 006d.

SET NAMES utf8mb4;

INSERT INTO sources
(public_id,title,organization_or_author,source_language_code,source_type,base_url,license_name,license_url,attribution_text,reuse_status,notes)
VALUES
('src_zpe_de_meals','Mahlzeiten in Deutschland — naming vocabulary','Contentplus.pl Sp. z o.o. / ZPE','de','website',
 'https://zpe.gov.pl/a/sprawdz-sie/D11XrL21i','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/',
 '“Mahlzeiten in Deutschland”, Contentplus.pl Sp. z o.o., via ZPE; CC BY-SA 3.0','reuse_with_attribution',
 'Modern source explicitly uses the exact prompt “Wie heißt das auf Deutsch?”.')
ON DUPLICATE KEY UPDATE title=VALUES(title),organization_or_author=VALUES(organization_or_author),source_language_code=VALUES(source_language_code),source_type=VALUES(source_type),base_url=VALUES(base_url),license_name=VALUES(license_name),license_url=VALUES(license_url),attribution_text=VALUES(attribution_text),reuse_status=VALUES(reuse_status),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_wie_heisst_das','ZPE modern naming prompt','Aufgabe 1: “Wie heißt das auf Deutsch? Trage das entsprechende Wort ein.”',s.base_url,
       'Exact modern standard-orthography naming question.'
FROM sources s WHERE s.public_id='src_zpe_de_meals'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT IGNORE INTO lesson_sources (lesson_id,source_item_id)
SELECT l.id,si.id FROM lessons l JOIN source_items si ON si.public_id='srcitem_zpe_wie_heisst_das' WHERE l.public_id='de_pre_a1_l021';

-- Turn 1 uses the modern ZPE prompt; turn 2 remains the exact Headstart source answer.
UPDATE dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id
SET dt.text_target='Wie heißt das auf Deutsch?',dt.translation_fa='این به آلمانی چه نام دارد؟'
WHERE d.public_id='de_pre_a1_dlg_021' AND dt.position=1;

DELETE dts FROM dialogue_turn_sources dts
JOIN dialogue_turns dt ON dt.id=dts.dialogue_turn_id
JOIN dialogues d ON d.id=dt.dialogue_id
WHERE d.public_id='de_pre_a1_dlg_021' AND dt.position=1;
INSERT IGNORE INTO dialogue_turn_sources (dialogue_turn_id,source_item_id)
SELECT dt.id,si.id FROM dialogue_turns dt JOIN dialogues d ON d.id=dt.dialogue_id JOIN source_items si ON si.public_id='srcitem_zpe_wie_heisst_das'
WHERE d.public_id='de_pre_a1_dlg_021' AND dt.position=1;
INSERT IGNORE INTO dialogue_sources (dialogue_id,source_item_id)
SELECT d.id,si.id FROM dialogues d JOIN source_items si ON si.public_id='srcitem_zpe_wie_heisst_das' WHERE d.public_id='de_pre_a1_dlg_021';

-- Conversation activity has two exact source lines from two traceable sources.
INSERT IGNORE INTO activity_sources (activity_id,source_item_id)
SELECT a.id,si.id FROM activities a JOIN source_items si ON si.public_id='srcitem_zpe_wie_heisst_das' WHERE a.public_id='de_pre_a1_a021_01';
UPDATE activities SET selection_reason='Modern OER naming question paired with a source-backed Headstart answer; no German sentence is authored.',
 transformations=JSON_OBJECT('sourceTransformation','turn 1 exact ZPE prompt + turn 2 exact existing source answer')
WHERE public_id='de_pre_a1_a021_01';

-- Preserve stable public ID while modernizing the tappable phrase.
UPDATE lexemes SET surface='Wie heißt das auf Deutsch?',translation_fa='این به آلمانی چه نام دارد؟' WHERE public_id='de_lex_was_ist_das_auf_deutsch';
DELETE ls FROM lexeme_sources ls JOIN lexemes lx ON lx.id=ls.lexeme_id WHERE lx.public_id='de_lex_was_ist_das_auf_deutsch';
INSERT IGNORE INTO lexeme_sources (lexeme_id,source_item_id)
SELECT lx.id,si.id FROM lexemes lx JOIN source_items si ON si.public_id='srcitem_zpe_wie_heisst_das' WHERE lx.public_id='de_lex_was_ist_das_auf_deutsch';

UPDATE lessons SET source_title='ZPE modern naming prompt + Headstart source-backed answers' WHERE public_id='de_pre_a1_l021';
