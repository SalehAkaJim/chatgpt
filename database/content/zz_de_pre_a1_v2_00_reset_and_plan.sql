-- German Pre-A1 v2 authoritative rewrite: zero-beginner progression and multi-turn conversations
-- Target: MySQL 9.0.1
SET NAMES utf8mb4;

INSERT INTO sources
(public_id,title,organization_or_author,source_language_code,source_type,base_url,license_name,license_url,attribution_text,reuse_status,notes)
VALUES ('src_zpe_de_feelings_v2','Wie geht es dir? — beginner greeting/feeling dialogues','Contentplus.pl Sp. z o.o. / ZPE','de','website','https://zpe.gov.pl/a/plik-audio/DOKvuGQXx','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/','“Wie geht es dir?”, Contentplus.pl Sp. z o.o., via ZPE; CC BY-SA 3.0','reuse_with_attribution','Modern beginner source with Guten Tag/Guten Morgen and fixed feeling responses.')
ON DUPLICATE KEY UPDATE title=VALUES(title),organization_or_author=VALUES(organization_or_author),source_language_code=VALUES(source_language_code),source_type=VALUES(source_type),base_url=VALUES(base_url),license_name=VALUES(license_name),license_url=VALUES(license_url),attribution_text=VALUES(attribution_text),reuse_status=VALUES(reuse_status),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_feelings_dialogues','Wie geht es dir? — beginner greeting/feeling dialogues','Transcript: multiple very short greetings and “Wie geht es ...?” exchanges.','https://zpe.gov.pl/a/plik-audio/DOKvuGQXx','Modern beginner source with Guten Tag/Guten Morgen and fixed feeling responses.'
FROM sources s WHERE s.public_id='src_zpe_de_feelings_v2'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO sources
(public_id,title,organization_or_author,source_language_code,source_type,base_url,license_name,license_url,attribution_text,reuse_status,notes)
VALUES ('src_zpe_de_courtesy_v2','Wie geht es Ihnen? / Kein Problem! — courtesy dialogue','Contentplus.pl Sp. z o.o. / ZPE','de','website','https://zpe.gov.pl/a/przeczytaj/DjXj1gp4z','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/','“Kein Problem!”, Contentplus.pl Sp. z o.o., via ZPE; CC BY-SA 3.0','reuse_with_attribution','Modern multi-turn courtesy dialogue.')
ON DUPLICATE KEY UPDATE title=VALUES(title),organization_or_author=VALUES(organization_or_author),source_language_code=VALUES(source_language_code),source_type=VALUES(source_type),base_url=VALUES(base_url),license_name=VALUES(license_name),license_url=VALUES(license_url),attribution_text=VALUES(attribution_text),reuse_status=VALUES(reuse_status),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_courtesy_dialogue','Wie geht es Ihnen? / Kein Problem! — courtesy dialogue','Transcript: Lina, Jonas and Herr Abenteuer; greeting, feeling, bitte/danke/Entschuldigung/kein Problem.','https://zpe.gov.pl/a/przeczytaj/DjXj1gp4z','Modern multi-turn courtesy dialogue.'
FROM sources s WHERE s.public_id='src_zpe_de_courtesy_v2'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO sources
(public_id,title,organization_or_author,source_language_code,source_type,base_url,license_name,license_url,attribution_text,reuse_status,notes)
VALUES ('src_zpe_de_names_v2','Wie heißt du? — modern name dialogues','Contentplus.pl Sp. z o.o. / ZPE','de','website','https://zpe.gov.pl/a/sprawdz-sie/Dfa49w3TH','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/','“Wie heißt du?”, Contentplus.pl Sp. z o.o., via ZPE; CC BY-SA 3.0','reuse_with_attribution','Five-turn modern beginner name dialogue.')
ON DUPLICATE KEY UPDATE title=VALUES(title),organization_or_author=VALUES(organization_or_author),source_language_code=VALUES(source_language_code),source_type=VALUES(source_type),base_url=VALUES(base_url),license_name=VALUES(license_name),license_url=VALUES(license_url),attribution_text=VALUES(attribution_text),reuse_status=VALUES(reuse_status),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_name_dialogue_v2','Wie heißt du? — modern name dialogues','Aufgabe 4, Dialog 1: Guten Morgen / Wie heißt du? / Ich heiße Mia / Ich bin Lea.','https://zpe.gov.pl/a/sprawdz-sie/Dfa49w3TH','Five-turn modern beginner name dialogue.'
FROM sources s WHERE s.public_id='src_zpe_de_names_v2'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO sources
(public_id,title,organization_or_author,source_language_code,source_type,base_url,license_name,license_url,attribution_text,reuse_status,notes)
VALUES ('src_zpe_de_origin_v2','Woher kommst du?','Contentplus.pl Sp. z o.o. / ZPE','de','website','https://zpe.gov.pl/a/plik-audio/Dns2uATPk','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/','Magdalena Sieradz, “Woher kommst du?”, via ZPE; CC BY-SA 3.0','reuse_with_attribution','Four-turn modern beginner origin scene.')
ON DUPLICATE KEY UPDATE title=VALUES(title),organization_or_author=VALUES(organization_or_author),source_language_code=VALUES(source_language_code),source_type=VALUES(source_type),base_url=VALUES(base_url),license_name=VALUES(license_name),license_url=VALUES(license_url),attribution_text=VALUES(attribution_text),reuse_status=VALUES(reuse_status),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_origin_dialogue','Woher kommst du?','Audio transcript: Klara, Marco and Lina; Germany/Italy origin exchange.','https://zpe.gov.pl/a/plik-audio/Dns2uATPk','Four-turn modern beginner origin scene.'
FROM sources s WHERE s.public_id='src_zpe_de_origin_v2'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO sources
(public_id,title,organization_or_author,source_language_code,source_type,base_url,license_name,license_url,attribution_text,reuse_status,notes)
VALUES ('src_zpe_de_residence_v2','Ich wohne in Deutschland','Contentplus.pl Sp. z o.o. / ZPE','de','website','https://zpe.gov.pl/a/przeczytaj/DX59rzKgx','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/','Sylwia Puszczewicz, “Wo wohnst du?”, via ZPE; CC BY-SA 3.0','reuse_with_attribution','Five-turn beginner residence dialogue.')
ON DUPLICATE KEY UPDATE title=VALUES(title),organization_or_author=VALUES(organization_or_author),source_language_code=VALUES(source_language_code),source_type=VALUES(source_type),base_url=VALUES(base_url),license_name=VALUES(license_name),license_url=VALUES(license_url),attribution_text=VALUES(attribution_text),reuse_status=VALUES(reuse_status),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_residence_dialogue_v2','Ich wohne in Deutschland','“Am Strand” transcript: Franek and Tim introduce themselves and say where they live.','https://zpe.gov.pl/a/przeczytaj/DX59rzKgx','Five-turn beginner residence dialogue.'
FROM sources s WHERE s.public_id='src_zpe_de_residence_v2'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO sources
(public_id,title,organization_or_author,source_language_code,source_type,base_url,license_name,license_url,attribution_text,reuse_status,notes)
VALUES ('src_zpe_de_food_likes_v2','Was isst du gern?','Contentplus.pl Sp. z o.o. / ZPE','de','website','https://zpe.gov.pl/a/dla-nauczyciela/D10vlvop4','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/','Sylwia Puszczewicz, “Was isst du gern?”, via ZPE; CC BY-SA 3.0','reuse_with_attribution','Modern beginner food-preference source.')
ON DUPLICATE KEY UPDATE title=VALUES(title),organization_or_author=VALUES(organization_or_author),source_language_code=VALUES(source_language_code),source_type=VALUES(source_type),base_url=VALUES(base_url),license_name=VALUES(license_name),license_url=VALUES(license_url),attribution_text=VALUES(attribution_text),reuse_status=VALUES(reuse_status),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_food_likes_v2','Was isst du gern?','Pair-work source pattern: “Was isst du gern?” and example “Ich esse gern Pizza.”','https://zpe.gov.pl/a/dla-nauczyciela/D10vlvop4','Modern beginner food-preference source.'
FROM sources s WHERE s.public_id='src_zpe_de_food_likes_v2'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO sources
(public_id,title,organization_or_author,source_language_code,source_type,base_url,license_name,license_url,attribution_text,reuse_status,notes)
VALUES ('src_bb_de_pizza_v2','Sprachstandsfeststellung DaZ — Zusatzmodul Alphabetisierung: Pizza reading','Bildungsserver Berlin-Brandenburg','de','book','https://bildungsserver.berlin-brandenburg.de/fileadmin/bbb/themen/sprachbildung/Sprachfeststellungpruefung/Sprachstandsfeststellung_DaZ_Alphabetisierung_2025-03-20.pdf','CC BY-SA 4.0','https://creativecommons.org/licenses/by-sa/4.0/','Sprachstandsfeststellung DaZ – Zusatzmodul Alphabetisierung, Bildungsserver Berlin-Brandenburg; CC BY-SA 4.0','reuse_with_attribution','Current official open educational material with simple Pizza preference lines.')
ON DUPLICATE KEY UPDATE title=VALUES(title),organization_or_author=VALUES(organization_or_author),source_language_code=VALUES(source_language_code),source_type=VALUES(source_type),base_url=VALUES(base_url),license_name=VALUES(license_name),license_url=VALUES(license_url),attribution_text=VALUES(attribution_text),reuse_status=VALUES(reuse_status),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_bb_pizza_v2','Sprachstandsfeststellung DaZ — Zusatzmodul Alphabetisierung: Pizza reading','Vorlesen p.12: “Ich mag Pizza. Pizza ist lecker!” and “Magst du auch Pizza?”','https://bildungsserver.berlin-brandenburg.de/fileadmin/bbb/themen/sprachbildung/Sprachfeststellungpruefung/Sprachstandsfeststellung_DaZ_Alphabetisierung_2025-03-20.pdf','Current official open educational material with simple Pizza preference lines.'
FROM sources s WHERE s.public_id='src_bb_de_pizza_v2'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO sources
(public_id,title,organization_or_author,source_language_code,source_type,base_url,license_name,license_url,attribution_text,reuse_status,notes)
VALUES ('src_zpe_de_drink_likes_v2','Ich trinke gern Milch','Contentplus.pl Sp. z o.o. / ZPE','de','website','https://zpe.gov.pl/a/sprawdz-sie/DYHVMoJzq','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/','Sylwia Puszczewicz, “Ich trinke gern Milch”, via ZPE; CC BY-SA 3.0','reuse_with_attribution','Modern beginner drink preference source.')
ON DUPLICATE KEY UPDATE title=VALUES(title),organization_or_author=VALUES(organization_or_author),source_language_code=VALUES(source_language_code),source_type=VALUES(source_type),base_url=VALUES(base_url),license_name=VALUES(license_name),license_url=VALUES(license_url),attribution_text=VALUES(attribution_text),reuse_status=VALUES(reuse_status),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_drink_likes_v2','Ich trinke gern Milch','Aufgabe 3: “Was trinkst du gern?” and sample answers Milch/Saft/Tee.','https://zpe.gov.pl/a/sprawdz-sie/DYHVMoJzq','Modern beginner drink preference source.'
FROM sources s WHERE s.public_id='src_zpe_de_drink_likes_v2'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO sources
(public_id,title,organization_or_author,source_language_code,source_type,base_url,license_name,license_url,attribution_text,reuse_status,notes)
VALUES ('src_zpe_de_siblings_v2','Hast du Geschwister?','Contentplus.pl Sp. z o.o. / ZPE','de','website','https://zpe.gov.pl/a/przeczytaj/DYRtcRfdT','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/','“Hast du Geschwister?”, Contentplus.pl Sp. z o.o., via ZPE; CC BY-SA 3.0','reuse_with_attribution','Modern six-turn immediate-family dialogue.')
ON DUPLICATE KEY UPDATE title=VALUES(title),organization_or_author=VALUES(organization_or_author),source_language_code=VALUES(source_language_code),source_type=VALUES(source_type),base_url=VALUES(base_url),license_name=VALUES(license_name),license_url=VALUES(license_url),attribution_text=VALUES(attribution_text),reuse_status=VALUES(reuse_status),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_siblings_dialogue_v2','Hast du Geschwister?','“Nach der Schule” six-turn transcript with Sophie, Lina and Tim.','https://zpe.gov.pl/a/przeczytaj/DYRtcRfdT','Modern six-turn immediate-family dialogue.'
FROM sources s WHERE s.public_id='src_zpe_de_siblings_v2'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO sources
(public_id,title,organization_or_author,source_language_code,source_type,base_url,license_name,license_url,attribution_text,reuse_status,notes)
VALUES ('src_zpe_de_restaurant_places_v2','Gehen wir essen? — restaurant/cafe ordering mini-dialogues','Contentplus.pl Sp. z o.o. / ZPE','de','website','https://zpe.gov.pl/a/mapa-interaktywna/DU0ACok3q','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/','Iwona Płotka, “Beliebte gastronomische Einrichtungen”, via ZPE; CC BY-SA 3.0','reuse_with_attribution','Modern multi-turn ordering dialogues including a simple snack-bar scene.')
ON DUPLICATE KEY UPDATE title=VALUES(title),organization_or_author=VALUES(organization_or_author),source_language_code=VALUES(source_language_code),source_type=VALUES(source_type),base_url=VALUES(base_url),license_name=VALUES(license_name),license_url=VALUES(license_url),attribution_text=VALUES(attribution_text),reuse_status=VALUES(reuse_status),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_food_places_v2','Gehen wir essen? — restaurant/cafe ordering mini-dialogues','Interactive map transcripts: restaurant, pizzeria, snack bar, ice-cream shop and café.','https://zpe.gov.pl/a/mapa-interaktywna/DU0ACok3q','Modern multi-turn ordering dialogues including a simple snack-bar scene.'
FROM sources s WHERE s.public_id='src_zpe_de_restaurant_places_v2'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

INSERT INTO sources
(public_id,title,organization_or_author,source_language_code,source_type,base_url,license_name,license_url,attribution_text,reuse_status,notes)
VALUES ('src_zpe_de_home_courtesy_v2','Wie geht es Ihnen? — home visit animation','Contentplus.pl Sp. z o.o. / ZPE','de','website','https://zpe.gov.pl/a/animacja/DHH7pbbMr','CC BY-SA 3.0','https://creativecommons.org/licenses/by-sa/3.0/','“Wie geht es Ihnen?”, Contentplus.pl Sp. z o.o., via ZPE; CC BY-SA 3.0','reuse_with_attribution','Modern multi-turn home-visit source with simple instructions and courtesy.')
ON DUPLICATE KEY UPDATE title=VALUES(title),organization_or_author=VALUES(organization_or_author),source_language_code=VALUES(source_language_code),source_type=VALUES(source_type),base_url=VALUES(base_url),license_name=VALUES(license_name),license_url=VALUES(license_url),attribution_text=VALUES(attribution_text),reuse_status=VALUES(reuse_status),notes=VALUES(notes);

INSERT INTO source_items (source_id,public_id,title,locator,item_url,notes)
SELECT s.id,'srcitem_zpe_home_courtesy_v2','Wie geht es Ihnen? — home visit animation','Animation transcript: Bitte nehmen Sie Platz / Danke / coffee / apology scene.','https://zpe.gov.pl/a/animacja/DHH7pbbMr','Modern multi-turn home-visit source with simple instructions and courtesy.'
FROM sources s WHERE s.public_id='src_zpe_de_home_courtesy_v2'
ON DUPLICATE KEY UPDATE title=VALUES(title),locator=VALUES(locator),item_url=VALUES(item_url),notes=VALUES(notes);

-- V2 characters used by the rewritten beginner scenes.
INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_partner',l.id,'Conversation partner','app_created','unspecified','unspecified',CAST('["conversation_partner"]' AS JSON),'Reusable app-assigned partner for source-backed composite beginner scenes; no unsupported gender is assigned.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_learner',l.id,'Learner role','app_created','unspecified','unspecified',CAST('["learner_surrogate"]' AS JSON),'Reusable learner role for source-backed composite beginner scenes.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_teacher',l.id,'Teacher','app_created','unspecified','adult',CAST('["teacher"]' AS JSON),'','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_class',l.id,'Class','app_created','not_applicable','child',CAST('["learner_group", "learner_surrogate"]' AS JSON),'','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_tom',l.id,'Tom','source','unspecified','child',CAST('["learner_surrogate"]' AS JSON),'Named speaker in the linked open source; gender stays unspecified unless explicitly marked by the source/title.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_frau_klein',l.id,'Frau Klein','source','female','adult',CAST('["adult_acquaintance"]' AS JSON),'Named speaker in the linked open source; gender stays unspecified unless explicitly marked by the source/title.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_lina',l.id,'Lina','source','unspecified','child',CAST('["friend"]' AS JSON),'Named speaker in the linked open source; gender stays unspecified unless explicitly marked by the source/title.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_jonas',l.id,'Jonas','source','unspecified','child',CAST('["learner_surrogate", "friend"]' AS JSON),'Named speaker in the linked open source; gender stays unspecified unless explicitly marked by the source/title.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_herr_abenteuer',l.id,'Herr Abenteuer','source','male','adult',CAST('["adult_acquaintance"]' AS JSON),'Named speaker in the linked open source; gender stays unspecified unless explicitly marked by the source/title.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_mia',l.id,'Mia','source','unspecified','unspecified',CAST('["learner_surrogate"]' AS JSON),'Named speaker in the linked open source; gender stays unspecified unless explicitly marked by the source/title.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_lea',l.id,'Lea','source','unspecified','unspecified',CAST('["conversation_partner"]' AS JSON),'Named speaker in the linked open source; gender stays unspecified unless explicitly marked by the source/title.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_klara',l.id,'Klara','source','unspecified','child',CAST('["friend"]' AS JSON),'Named speaker in the linked open source; gender stays unspecified unless explicitly marked by the source/title.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_marco',l.id,'Marco','source','unspecified','child',CAST('["learner_surrogate"]' AS JSON),'Named speaker in the linked open source; gender stays unspecified unless explicitly marked by the source/title.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_lina_origin',l.id,'Lina','source','unspecified','child',CAST('["friend"]' AS JSON),'Named speaker in the linked open source; gender stays unspecified unless explicitly marked by the source/title.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_franek',l.id,'Franek','source','unspecified','child',CAST('["conversation_partner"]' AS JSON),'Named speaker in the linked open source; gender stays unspecified unless explicitly marked by the source/title.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_tim',l.id,'Tim','source','unspecified','child',CAST('["learner_surrogate"]' AS JSON),'Named speaker in the linked open source; gender stays unspecified unless explicitly marked by the source/title.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_sophie',l.id,'Sophie','source','unspecified','child',CAST('["learner_surrogate"]' AS JSON),'Named speaker in the linked open source; gender stays unspecified unless explicitly marked by the source/title.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_lina_sib',l.id,'Lina','source','unspecified','child',CAST('["friend"]' AS JSON),'Named speaker in the linked open source; gender stays unspecified unless explicitly marked by the source/title.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_tim_sib',l.id,'Tim','source','unspecified','child',CAST('["friend"]' AS JSON),'Named speaker in the linked open source; gender stays unspecified unless explicitly marked by the source/title.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_mother',l.id,'Mother','source','female','adult',CAST('["host"]' AS JSON),'Source speaker is explicitly Mutter.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

INSERT INTO characters
(public_id,language_id,name,origin,gender,age_band,roles,context_notes,voice_clarity,voice_stress_level,voice_aggressiveness,voice_tone_consistency)
SELECT 'de_v2_guest',l.id,'Herr Abenteuer','source','male','adult',CAST('["guest", "learner_surrogate"]' AS JSON),'Source speaker is explicitly Herr Abenteuer.','high','low','none','high'
FROM languages l WHERE l.code='de'
ON DUPLICATE KEY UPDATE name=VALUES(name),origin=VALUES(origin),gender=VALUES(gender),age_band=VALUES(age_band),roles=VALUES(roles),context_notes=VALUES(context_notes);

-- Final-state reset. Historical batch/source rows remain in the repository/database,
-- but all active German Pre-A1 lesson associations are rebuilt below.
DELETE a
FROM activities a JOIN lessons l ON l.id=a.lesson_id
JOIN language_levels ll ON ll.id=l.language_level_id
JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1';

DELETE d
FROM dialogues d
JOIN language_levels ll ON ll.id=d.language_level_id
JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
WHERE d.public_id LIKE 'de_pre_a1_dlg_%';

DELETE llx FROM lesson_lexemes llx JOIN lessons l ON l.id=llx.lesson_id
JOIN language_levels ll ON ll.id=l.language_level_id JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1';

DELETE lgn FROM lesson_grammar_notes lgn JOIN lessons l ON l.id=lgn.lesson_id
JOIN language_levels ll ON ll.id=l.language_level_id JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1';

DELETE ls FROM lesson_sources ls JOIN lessons l ON l.id=ls.lesson_id
JOIN language_levels ll ON ll.id=l.language_level_id JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1';

DELETE lt FROM lesson_targets lt JOIN lessons l ON l.id=lt.lesson_id
JOIN language_levels ll ON ll.id=l.language_level_id JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1';

UPDATE lessons
SET title_fa='سلام و صبح‌بخیر', unit_or_topic='سلام و خداحافظی', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>listen_repeat>pronunciation_read'
WHERE public_id='de_pre_a1_l001';

UPDATE lessons
SET title_fa='حالت چطوره؟', unit_or_topic='حال و احوال ساده', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>choose_response>pronunciation_read'
WHERE public_id='de_pre_a1_l002';

UPDATE lessons
SET title_fa='لطفاً، ممنون، ببخشید', unit_or_topic='عبارت‌های مؤدبانه', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='5 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>matching>listen_repeat>pronunciation_read>review'
WHERE public_id='de_pre_a1_l003';

UPDATE lessons
SET title_fa='اسم من...', unit_or_topic='معرفی اسم', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>word_order>pronunciation_read'
WHERE public_id='de_pre_a1_l004';

UPDATE lessons
SET title_fa='اهل کجایی؟', unit_or_topic='کشور و مبدأ', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>listen_choose>pronunciation_read'
WHERE public_id='de_pre_a1_l005';

UPDATE lessons
SET title_fa='کجا زندگی می‌کنی؟', unit_or_topic='محل زندگی', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>fill_blank>listen_repeat'
WHERE public_id='de_pre_a1_l006';

UPDATE lessons
SET title_fa='من پیتزا دوست دارم', unit_or_topic='غذای موردعلاقه', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='4 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>choose_response>word_order>pronunciation_read'
WHERE public_id='de_pre_a1_l007';

UPDATE lessons
SET title_fa='چی دوست داری بنوشی؟', unit_or_topic='نوشیدنی‌های ساده', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>matching>pronunciation_read'
WHERE public_id='de_pre_a1_l008';

UPDATE lessons
SET title_fa='از صفر تا ده', unit_or_topic='اعداد ۰ تا ۱۰', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='2 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>listen_repeat'
WHERE public_id='de_pre_a1_l009';

UPDATE lessons
SET title_fa='از یازده تا بیست', unit_or_topic='اعداد ۱۱ تا ۲۰', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>word_order>listen_repeat'
WHERE public_id='de_pre_a1_l010';

UPDATE lessons
SET title_fa='چند سالته؟', unit_or_topic='سن', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>fill_blank>pronunciation_read'
WHERE public_id='de_pre_a1_l011';

UPDATE lessons
SET title_fa='خواهر یا برادر داری؟', unit_or_topic='خانواده نزدیک', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='4 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>comprehension>listen_repeat>pronunciation_read'
WHERE public_id='de_pre_a1_l012';

UPDATE lessons
SET title_fa='شماره تلفن', unit_or_topic='شماره و تماس تلفنی', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>listen_choose>pronunciation_read'
WHERE public_id='de_pre_a1_l013';

UPDATE lessons
SET title_fa='این به آلمانی چی می‌شه؟', unit_or_topic='نام‌گذاری چیزهای آشنا', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>matching>fill_blank'
WHERE public_id='de_pre_a1_l014';

UPDATE lessons
SET title_fa='جاهای آشنا', unit_or_topic='هتل، پست، ایستگاه و...', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>matching>pronunciation_read'
WHERE public_id='de_pre_a1_l015';

UPDATE lessons
SET title_fa='کجاست؟', unit_or_topic='پرسیدن مکان', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>choose_response>word_order'
WHERE public_id='de_pre_a1_l016';

UPDATE lessons
SET title_fa='چپ، راست، مستقیم', unit_or_topic='جهت‌های خیلی ساده', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='4 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>listen_repeat>comprehension>pronunciation_read'
WHERE public_id='de_pre_a1_l017';

UPDATE lessons
SET title_fa='روزهای هفته', unit_or_topic='روزهای هفته', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='2 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>matching'
WHERE public_id='de_pre_a1_l018';

UPDATE lessons
SET title_fa='ساعت چنده؟', unit_or_topic='ساعت و زمان حرکت', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>fill_blank>pronunciation_read'
WHERE public_id='de_pre_a1_l019';

UPDATE lessons
SET title_fa='امروز چندمه؟', unit_or_topic='تاریخ، روز و ساعت', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>matching>listen_repeat'
WHERE public_id='de_pre_a1_l020';

UPDATE lessons
SET title_fa='تاریخ تولد', unit_or_topic='تاریخ و محل تولد', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>form_fill>pronunciation_read'
WHERE public_id='de_pre_a1_l021';

UPDATE lessons
SET title_fa='بیا داخل، بنشین', unit_or_topic='دستورهای کوتاه و مؤدبانه', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>choose_response>listen_repeat'
WHERE public_id='de_pre_a1_l022';

UPDATE lessons
SET title_fa='یک چیز ساده سفارش بده', unit_or_topic='سفارش غذا و نوشیدنی', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='5 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>fill_blank>choose_response>pronunciation_read>review'
WHERE public_id='de_pre_a1_l023';

UPDATE lessons
SET title_fa='از منو انتخاب کن', unit_or_topic='منو و سفارش رستوران', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>matching>comprehension'
WHERE public_id='de_pre_a1_l024';

UPDATE lessons
SET title_fa='قیمتش چنده؟', unit_or_topic='قیمت و انتخاب ساده', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>word_order>pronunciation_read'
WHERE public_id='de_pre_a1_l025';

UPDATE lessons
SET title_fa='خرید از بازار', unit_or_topic='خرید و جمع قیمت', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='4 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>comprehension>listen_repeat>pronunciation_read'
WHERE public_id='de_pre_a1_l026';

UPDATE lessons
SET title_fa='دعوت به تولد', unit_or_topic='دعوت‌نامه، تاریخ و قرار', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='4 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>comprehension>matching>review'
WHERE public_id='de_pre_a1_l027';

UPDATE lessons
SET title_fa='فرم اطلاعات شخصی', unit_or_topic='خواندن و پرکردن فرم', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='3 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>form_fill>matching'
WHERE public_id='de_pre_a1_l028';

UPDATE lessons
SET title_fa='خودت را کوتاه معرفی کن', unit_or_topic='نوشتن اطلاعات پایه', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='2 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>guided_writing'
WHERE public_id='de_pre_a1_l029';

UPDATE lessons
SET title_fa='مرور: من کی هستم؟', unit_or_topic='مرور مکالمه‌های پایه', status='source_checked',
    source_title='German Pre-A1 v2 — source-backed zero-beginner sequence',
    activity_count_rationale='5 activities selected for this lesson; count follows the teaching need rather than a fixed template.',
    sequence_rationale='A multi-turn source-backed opening scene comes first; later practice reinforces only language already present in the lesson.',
    template_signature='conversation_speaking>review>pronunciation_read>listen_repeat>comprehension'
WHERE public_id='de_pre_a1_l030';

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_001' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l001'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_003' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l001'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_014' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l001'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_027' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l002'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_003' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l002'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_014' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l002'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_002' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l003'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_003' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l003'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_005' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l004'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_004' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l004'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_026' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l004'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_007' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l005'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_004' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l005'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_016' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l005'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_008' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l006'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_004' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l006'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_016' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l006'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_016' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l007'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_003' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l007'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_024' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l007'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_016' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l008'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_003' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l008'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_024' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l008'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_010' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l009'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_014' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l009'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_018' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l009'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_010' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l010'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_014' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l010'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_018' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l010'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_006' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l011'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_004' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l011'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_026' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l011'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_009' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l012'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_026' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l012'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_003' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l012'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_011' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l013'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_010' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l013'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_018' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l013'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_019' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l014'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_016' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l014'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_022' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l014'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_022' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l015'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_019' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l015'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_015' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l015'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_015' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l016'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_016' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l016'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_003' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l016'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_017' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l017'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_015' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l017'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_023' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l017'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_012' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l018'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_014' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l018'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_018' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l018'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_012' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l019'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_014' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l019'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_012' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l020'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_014' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l020'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_020' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l020'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_013' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l021'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_004' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l021'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_029' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l021'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_017' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l022'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_002' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l022'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_023' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l022'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_024' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l023'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_025' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l023'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_003' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l023'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_022' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l024'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_024' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l024'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_019' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l024'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_025' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l025'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_024' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l025'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_014' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l025'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_024' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l026'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_025' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l026'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_014' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l026'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_021' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l027'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_020' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l027'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_012' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l027'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_029' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l028'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_028' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l028'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_004' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l028'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_028' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l029'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_029' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l029'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_026' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l029'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,1
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_026' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l030'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_030' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l030'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_018' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l030'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT le.id,ct.id,0
FROM lessons le
JOIN curriculum_targets ct ON ct.public_id='de_pre_a1_ct_003' AND ct.language_level_id=le.language_level_id
WHERE le.public_id='de_pre_a1_l030'
ON DUPLICATE KEY UPDATE is_primary=VALUES(is_primary);

UPDATE language_levels ll
JOIN languages l ON l.id=ll.language_id AND l.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
SET ll.status='review',ll.planned_lesson_count=30,ll.lesson_count_status='provisional',
    ll.notes='German Pre-A1 v2 rewritten for true zero-beginner progression. Opening conversations are multi-turn and source-backed; level remains in review until the v2 content audit is complete.';