-- German Pre-A1 lesson-to-source map
-- Target: MySQL 9.0.1
-- This file creates DRAFT lesson shells and source/target links only.
-- It intentionally creates no dialogue turns or target-language lesson content.

SET NAMES utf8mb4;

-- Additional public-domain source required for age and form material.
INSERT INTO sources
  (public_id, title, organization_or_author, source_language_code, source_type, base_url,
   license_name, attribution_text, reuse_status, notes)
VALUES
  ('src_fsi_de_fast', 'FSI German FAST', 'Foreign Service Institute', 'de', 'course',
   'https://www.fsi-language-courses.org/fsi-german-fast-course/',
   'Public Domain', 'Foreign Service Institute German FAST', 'direct_reuse_allowed',
   'Supplemental source for exact beginner-compatible situations/forms not cleanly covered by Headstart/Basic; only selected source-backed lines are used.')
ON DUPLICATE KEY UPDATE
  title = VALUES(title),
  organization_or_author = VALUES(organization_or_author),
  source_language_code = VALUES(source_language_code),
  source_type = VALUES(source_type),
  base_url = VALUES(base_url),
  license_name = VALUES(license_name),
  attribution_text = VALUES(attribution_text),
  reuse_status = VALUES(reuse_status),
  notes = VALUES(notes);

-- Exact source sections used by the 30-lesson mapping.
INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_basic_u2_greetings', 'FSI Basic Unit 2 — Greetings and Catching Up',
       'Unit 2, Section II — Greetings and Catching Up',
       'https://www.fsi-language-courses.org/fsi-german-basic-course/2-in-munich-in-munchen/',
       'Compact greeting/how-are-you exchange.'
FROM sources s WHERE s.public_id='src_fsi_de_basic'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_basic_u2_passport_customs', 'FSI Basic Unit 2 — Passport Control and Customs',
       'Unit 2, Sections VII–VIII — Passport Control / Customs',
       'https://www.fsi-language-courses.org/fsi-german-basic-course/2-in-munich-in-munchen/',
       'Contains exact source questions/answers for name and origin.'
FROM sources s WHERE s.public_id='src_fsi_de_basic'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_basic_u4_office', 'FSI Basic Unit 4 — In the Office',
       'Unit 4, Section I — In the Office',
       'https://www.fsi-language-courses.org/fsi-german-basic-course/4-at-the-consulate-im-konsulat/',
       'Contains a short greeting/how-are-you exchange.'
FROM sources s WHERE s.public_id='src_fsi_de_basic'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_basic_u4_personal_family', 'FSI Basic Unit 4 — Personal Introduction and Family',
       'Unit 4, Sections II–IV — self-introduction, origin, family/background',
       'https://www.fsi-language-courses.org/fsi-german-basic-course/4-at-the-consulate-im-konsulat/',
       'Use only simple source lines that remain appropriate when isolated for Pre-A1.'
FROM sources s WHERE s.public_id='src_fsi_de_basic'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_basic_u5_arrival_instructions', 'FSI Basic Unit 5 — Arriving at the Wilsons',
       'Unit 5, Section I — Arriving at the Wilsons',
       'https://www.fsi-language-courses.org/fsi-german-basic-course/5-mr-allen-rings-at-mr-wilsons-herr-allen-klingelt-bei-herrn-wilson/',
       'Contains very short source-backed action instructions such as coming in and sitting down.'
FROM sources s WHERE s.public_id='src_fsi_de_basic'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_headstart_m1_u1', 'German Headstart Module I Unit 1 — Sounds/Spelling',
       'Module I, Unit 1, printed pp.2–11',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192518.pdf',
       'Pronunciation/reading support; not a replacement for the required opening conversation.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_headstart_m1_u2', 'German Headstart Module I Unit 2 — Places, Naming, Courtesy',
       'Module I, Unit 2, printed pp.12–31',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192518.pdf',
       'Objectives: ask location of common places; ask what something is called in German; use courtesy expressions. Contains explicit male/female speaker labels and picture-supported places.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_headstart_m2_u2', 'German Headstart Module II Unit 2 — Numbers and Distance',
       'Module II, Unit 2, printed pp.22–33',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192519.pdf',
       'Numbers 0–1000, years, house numbers and simple distance/minute quantities.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_headstart_m2_u3', 'German Headstart Module II Unit 3 — Greetings/Courtesy/Transport',
       'Module II, Unit 3, printed p.34 ff.; greeting exercise includes morning/day/evening/night forms',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192519.pdf',
       'Primary source for time-of-day greetings and courtesy formulas.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_headstart_m3_u1', 'German Headstart Module III Unit 1 — Restaurant/Menu',
       'Module III, Unit 1, printed pp.1–21',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192520.pdf',
       'Objectives include courtesy in restaurant, food/beverage recognition, menu reading, ordering, waiter/waitress questions and prices.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_headstart_m4_u2', 'German Headstart Module IV Unit 2 — Time/Days',
       'Module IV, Unit 2, printed p.26 ff.',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192521.pdf',
       'Source exercises cover clock time and days Monday–Sunday; module introduction explicitly includes telling time and days of week.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_headstart_m5_u2', 'German Headstart Module V Unit 2 — Hotel/Registration',
       'Module V, Unit 2, printed p.26 ff.',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192522.pdf',
       'Hotel room/stay/price material and registration-related work.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_headstart_m5_u3', 'German Headstart Module V Unit 3 — Dates/Reservation',
       'Module V, Unit 3, printed p.40 ff.',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192522.pdf',
       'Calendar/date and future-reservation source material.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_headstart_m6_u1', 'German Headstart Module VI Unit 1 — Department Store',
       'Module VI, Unit 1, printed p.2 ff.',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192523.pdf',
       'Shopping dialogue includes item, size, color, price and purchase. Source salesperson is female and must remain female in character assignment.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_headstart_m6_u2', 'German Headstart Module VI Unit 2 — Shops/Places',
       'Module VI, Unit 2, printed p.26 ff.',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192523.pdf',
       'Recognition/location material for familiar shops and services.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_headstart_m7_u1', 'German Headstart Module VII Unit 1 — Telephone/Post Office',
       'Module VII, Unit 1, printed p.2 ff.',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192524.pdf',
       'Public telephone conversation includes asking for and using a phone number.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_headstart_m7_u2', 'German Headstart Module VII Unit 2 — Telephone Location/Directions',
       'Module VII, Unit 2, printed p.18 ff.',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192524.pdf',
       'Telephone directions/location material involving familiar places.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_headstart_m8_u1', 'German Headstart Module VIII Unit 1 — Visit/Introduction',
       'Module VIII, Unit 1, printed p.2 ff.',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192525.pdf',
       'Visiting a German family; introductions and common social phrases.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_headstart_m8_u2', 'German Headstart Module VIII Unit 2 — Getting Acquainted/Residence',
       'Module VIII, Unit 2, printed p.18 ff.',
       'https://fsi-languages.yojik.eu/languages/oldfsi/languages/German/Headstart/ED192525.pdf',
       'Getting-acquainted topics include where someone lives and leave-taking.'
FROM sources s WHERE s.public_id='src_dli_de_headstart'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_fast_l2_registration', 'FSI German FAST Lesson 2 — Registration Form',
       'Lesson Two, hotel registration form, PDF p.42 area',
       'https://www.fsi-language-courses.org/languages/German/FAST/FSI%20-%20German%20FAST%20-%20Student%20Text.pdf',
       'Real form contains name, profession, birth date/place, nationality, residence and street fields.'
FROM sources s WHERE s.public_id='src_fsi_de_fast'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_fast_l4_age', 'FSI German FAST Lesson 4 — Age Question Variants',
       'Lesson Four, printed p.126 / PDF p.142, ticket-counter variant lines',
       'https://www.fsi-language-courses.org/languages/German/FAST/FSI%20-%20German%20FAST%20-%20Student%20Text.pdf',
       'Contains exact age questions for a child/children. Age-answer lines must also be source-extracted before the lesson is finalized.'
FROM sources s WHERE s.public_id='src_fsi_de_fast'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

-- Draft lesson shells. Titles are Persian planning/UI support, not German teaching content.
INSERT INTO lessons
  (public_id, language_level_id, sequence_number, unit_or_topic, title_fa, source_title, status,
   activity_count_rationale, sequence_rationale, audio_status)
SELECT
  CONCAT('de_pre_a1_l', LPAD(x.seq,3,'0')),
  ll.id,
  x.seq,
  x.topic,
  x.title_fa,
  x.source_title,
  'draft',
  'Pending exact source extraction; activity count will be derived from usable source material and learning need.',
  'Activity 1 must be source-backed conversation_speaking. Later activity types/order remain dynamic and are selected after extraction.',
  'blocked_until_language_final'
FROM language_levels ll
JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN (
  SELECT 1 seq,'greetings' topic,'اولین برخورد: تشخیص سلام' title_fa,'BASIC Unit 2 — Greetings and Catching Up' source_title UNION ALL
  SELECT 2,'greetings','سلام در زمان‌های مختلف و خداحافظی','Headstart Module II Unit 3' UNION ALL
  SELECT 3,'courtesy','عبارت‌های ضروری مؤدبانه','Headstart Module I Unit 2' UNION ALL
  SELECT 4,'personal_state','احوالپرسی و پاسخ‌های ثابت درباره حال','BASIC Unit 2 / Unit 4' UNION ALL
  SELECT 5,'personal_information','گفتن نام خود','BASIC Unit 4 — self-introduction' UNION ALL
  SELECT 6,'personal_information','پرسیدن نام طرف مقابل','BASIC Unit 2 — Passport Control' UNION ALL
  SELECT 7,'personal_information','کشور و مبدأ','BASIC Unit 2 — Customs' UNION ALL
  SELECT 8,'personal_information','محل زندگی','Headstart Module VIII Unit 2' UNION ALL
  SELECT 9,'family','خانواده نزدیک و اطلاعات خیلی کوتاه','BASIC Unit 4 — family/background' UNION ALL
  SELECT 10,'personal_information','سن','FAST Lesson 4 — age variants' UNION ALL
  SELECT 11,'numbers','اعداد ۰ تا ۱۰','Headstart Module II Unit 2' UNION ALL
  SELECT 12,'numbers','اعداد ۱۱ تا ۲۰ و تشخیص عدد','Headstart Module II Unit 2' UNION ALL
  SELECT 13,'telephone','شماره تلفن','Headstart Module VII Unit 1' UNION ALL
  SELECT 14,'time_date','روزهای هفته','Headstart Module IV Unit 2' UNION ALL
  SELECT 15,'time_date','ساعت و زمان روز','Headstart Module IV Unit 2' UNION ALL
  SELECT 16,'time_date','تاریخ و ماه‌ها','Headstart Module V Unit 3' UNION ALL
  SELECT 17,'personal_information','تاریخ تولد','FAST Lesson 2 — registration form' UNION ALL
  SELECT 18,'places','مکان‌های آشنا','Headstart Module I Unit 2' UNION ALL
  SELECT 19,'location','کجاست؟ و مکان فوری','Headstart Module I Unit 2' UNION ALL
  SELECT 20,'directions','جهت‌های خیلی ساده','Headstart Module I Unit 2' UNION ALL
  SELECT 21,'identification','این چیه؟ و پاسخ کوتاه','Headstart Module I Unit 2' UNION ALL
  SELECT 22,'instructions','دستورهای خیلی کوتاه و آشنا','BASIC Unit 5 — Arriving at the Wilsons' UNION ALL
  SELECT 23,'food_drink','تشخیص خوراکی و نوشیدنی','Headstart Module III Unit 1' UNION ALL
  SELECT 24,'food_drink','سفارش یک خوراکی یا نوشیدنی','Headstart Module III Unit 1' UNION ALL
  SELECT 25,'shopping','قیمت و خرید یک‌مرحله‌ای','Headstart Module VI Unit 1' UNION ALL
  SELECT 26,'reading','خواندن منو یا فهرست تصویری','Headstart Module III Unit 1' UNION ALL
  SELECT 27,'reading','یادداشت خیلی ساده زمان/مکان یا دعوت','Headstart Module V Unit 3' UNION ALL
  SELECT 28,'forms','فرم ساده اطلاعات شخصی','Headstart Module V Unit 2 / FAST Lesson 2' UNION ALL
  SELECT 29,'writing','اطلاعات کوتاه شخصی: نشانی و ملیت','FAST Lesson 2 — registration form' UNION ALL
  SELECT 30,'review','مرور و نقطه کنترل Pre-A1','Headstart Module VIII Units 1–2'
) x ON 1=1
ON DUPLICATE KEY UPDATE
  unit_or_topic=VALUES(unit_or_topic),
  title_fa=VALUES(title_fa),
  source_title=VALUES(source_title),
  activity_count_rationale=VALUES(activity_count_rationale),
  sequence_rationale=VALUES(sequence_rationale),
  audio_status=VALUES(audio_status);

-- One primary CEFR/curriculum target per provisional lesson.
INSERT IGNORE INTO lesson_targets (lesson_id, curriculum_target_id, is_primary)
SELECT l.id, ct.id, 1
FROM lessons l
JOIN language_levels ll ON ll.id=l.language_level_id
JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN curriculum_targets ct
  ON ct.language_level_id=ll.id
 AND ct.public_id=CONCAT('de_pre_a1_ct_', LPAD(l.sequence_number,3,'0'))
WHERE l.sequence_number BETWEEN 1 AND 30;

-- Primary source item for every lesson.
INSERT IGNORE INTO lesson_sources (lesson_id, source_item_id)
SELECT l.id, si.id
FROM lessons l
JOIN language_levels ll ON ll.id=l.language_level_id
JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN (
  SELECT 1 seq,'srcitem_basic_u2_greetings' sid UNION ALL
  SELECT 2,'srcitem_headstart_m2_u3' UNION ALL
  SELECT 3,'srcitem_headstart_m1_u2' UNION ALL
  SELECT 4,'srcitem_basic_u2_greetings' UNION ALL
  SELECT 5,'srcitem_basic_u4_personal_family' UNION ALL
  SELECT 6,'srcitem_basic_u2_passport_customs' UNION ALL
  SELECT 7,'srcitem_basic_u2_passport_customs' UNION ALL
  SELECT 8,'srcitem_headstart_m8_u2' UNION ALL
  SELECT 9,'srcitem_basic_u4_personal_family' UNION ALL
  SELECT 10,'srcitem_fast_l4_age' UNION ALL
  SELECT 11,'srcitem_headstart_m2_u2' UNION ALL
  SELECT 12,'srcitem_headstart_m2_u2' UNION ALL
  SELECT 13,'srcitem_headstart_m7_u1' UNION ALL
  SELECT 14,'srcitem_headstart_m4_u2' UNION ALL
  SELECT 15,'srcitem_headstart_m4_u2' UNION ALL
  SELECT 16,'srcitem_headstart_m5_u3' UNION ALL
  SELECT 17,'srcitem_fast_l2_registration' UNION ALL
  SELECT 18,'srcitem_headstart_m1_u2' UNION ALL
  SELECT 19,'srcitem_headstart_m1_u2' UNION ALL
  SELECT 20,'srcitem_headstart_m1_u2' UNION ALL
  SELECT 21,'srcitem_headstart_m1_u2' UNION ALL
  SELECT 22,'srcitem_basic_u5_arrival_instructions' UNION ALL
  SELECT 23,'srcitem_headstart_m3_u1' UNION ALL
  SELECT 24,'srcitem_headstart_m3_u1' UNION ALL
  SELECT 25,'srcitem_headstart_m6_u1' UNION ALL
  SELECT 26,'srcitem_headstart_m3_u1' UNION ALL
  SELECT 27,'srcitem_headstart_m5_u3' UNION ALL
  SELECT 28,'srcitem_headstart_m5_u2' UNION ALL
  SELECT 29,'srcitem_fast_l2_registration' UNION ALL
  SELECT 30,'srcitem_headstart_m8_u1'
) m ON m.seq=l.sequence_number
JOIN source_items si ON si.public_id=m.sid
WHERE l.sequence_number BETWEEN 1 AND 30;

-- Useful secondary/fallback provenance candidates. These do not replace exact turn-level provenance later.
INSERT IGNORE INTO lesson_sources (lesson_id, source_item_id)
SELECT l.id, si.id
FROM lessons l
JOIN language_levels ll ON ll.id=l.language_level_id
JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN (
  SELECT 1 seq,'srcitem_headstart_m2_u3' sid UNION ALL
  SELECT 2,'srcitem_headstart_m8_u2' UNION ALL
  SELECT 3,'srcitem_headstart_m2_u3' UNION ALL
  SELECT 4,'srcitem_basic_u4_office' UNION ALL
  SELECT 5,'srcitem_basic_u2_passport_customs' UNION ALL
  SELECT 8,'srcitem_fast_l2_registration' UNION ALL
  SELECT 9,'srcitem_headstart_m8_u1' UNION ALL
  SELECT 10,'srcitem_headstart_m2_u2' UNION ALL
  SELECT 18,'srcitem_headstart_m6_u2' UNION ALL
  SELECT 19,'srcitem_headstart_m7_u2' UNION ALL
  SELECT 20,'srcitem_headstart_m7_u2' UNION ALL
  SELECT 23,'srcitem_fast_l2_registration' UNION ALL
  SELECT 25,'srcitem_headstart_m3_u1' UNION ALL
  SELECT 28,'srcitem_fast_l2_registration' UNION ALL
  SELECT 29,'srcitem_headstart_m8_u2' UNION ALL
  SELECT 30,'srcitem_headstart_m8_u2'
) m ON m.seq=l.sequence_number
JOIN source_items si ON si.public_id=m.sid;

-- Planning assertions / visibility query.
SELECT
  lang.code AS language_code,
  c.code AS cefr_level,
  COUNT(DISTINCT l.id) AS mapped_lessons,
  COUNT(DISTINCT CASE WHEN ls.source_item_id IS NOT NULL THEN l.id END) AS lessons_with_source,
  COUNT(DISTINCT CASE WHEN lt.curriculum_target_id IS NOT NULL THEN l.id END) AS lessons_with_target
FROM lessons l
JOIN language_levels ll ON ll.id=l.language_level_id
JOIN languages lang ON lang.id=ll.language_id
JOIN cefr_levels c ON c.id=ll.cefr_level_id
LEFT JOIN lesson_sources ls ON ls.lesson_id=l.id
LEFT JOIN lesson_targets lt ON lt.lesson_id=l.id
WHERE lang.code='de' AND c.code='Pre-A1'
GROUP BY lang.code,c.code;