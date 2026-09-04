-- ============================================================================
-- NOVA v9.1 / bootstrap seed for the German -> Persian course
--
-- This file is intentionally idempotent. It creates only the course and the
-- original A1/M01 chapter scaffold expected before canonical content imports.
-- It is not a replacement for the A1/A2 Series 001-080 batch artifacts.
-- ============================================================================

SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci;
SET time_zone = '+00:00';
START TRANSACTION;

INSERT INTO courses
(
  course_key,
  learning_language,
  base_language,
  learning_locale,
  base_locale,
  learning_direction,
  base_direction,
  title,
  title_translation,
  description,
  description_translation,
  status,
  metadata
)
VALUES
(
  'de-fa',
  'de',
  'fa',
  'de-DE',
  'fa-IR',
  'ltr',
  'rtl',
  'Deutsch von Anfang an',
  'آلمانی از صفر',
  'Deutsch Schritt für Schritt in sehr einfachen Alltagssituationen lernen.',
  'آلمانی را از صفر و قدم به قدم در موقعیت های خیلی ساده روزمره یاد بگیر.',
  'active',
  JSON_OBJECT(
    'contentModel','story-first',
    'startingPoint','absolute-beginner',
    'speakingFirst',true,
    'clickableWords',true,
    'curriculum','language-specific'
  )
)
ON DUPLICATE KEY UPDATE
  id = LAST_INSERT_ID(id),
  course_key = VALUES(course_key),
  learning_language = VALUES(learning_language),
  base_language = VALUES(base_language),
  learning_locale = VALUES(learning_locale),
  base_locale = VALUES(base_locale),
  learning_direction = VALUES(learning_direction),
  base_direction = VALUES(base_direction),
  title = VALUES(title),
  title_translation = VALUES(title_translation),
  description = VALUES(description),
  description_translation = VALUES(description_translation),
  metadata = VALUES(metadata);

SET @course_id = LAST_INSERT_ID();

INSERT INTO levels
(
  course_id,
  level_key,
  cefr_level,
  title,
  title_translation,
  description,
  description_translation,
  difficulty_min,
  difficulty_max,
  sort_order,
  status
)
VALUES
(
  @course_id,
  'A1',
  'A1',
  'Ankommen',
  'شروع از صفر',
  'Sehr kurze, klare und nützliche Sprache für die ersten Alltagssituationen.',
  'از عبارت های خیلی کوتاه، روشن و کاربردی شروع کن.',
  1,
  20,
  1,
  'active'
)
ON DUPLICATE KEY UPDATE
  id = LAST_INSERT_ID(id),
  level_key = VALUES(level_key),
  title = VALUES(title),
  title_translation = VALUES(title_translation),
  description = VALUES(description),
  description_translation = VALUES(description_translation),
  difficulty_min = VALUES(difficulty_min),
  difficulty_max = VALUES(difficulty_max),
  sort_order = VALUES(sort_order);

SET @level_id = LAST_INSERT_ID();

INSERT INTO modules
(
  level_id,
  module_key,
  title,
  title_translation,
  description,
  description_translation,
  emoji,
  planned_chapter_count,
  difficulty_min,
  difficulty_max,
  sort_order,
  status
)
VALUES
(
  @level_id,
  'A1-M01',
  'Erste Schritte',
  'قدم های اول',
  'Die ersten Begrüßungen, Vorstellungen und sehr einfachen Informationen.',
  'اولین سلام ها، معرفی ها و اطلاعات خیلی ساده.',
  '👋',
  5,
  1,
  3,
  1,
  'active'
)
ON DUPLICATE KEY UPDATE
  id = LAST_INSERT_ID(id),
  module_key = VALUES(module_key),
  title = VALUES(title),
  title_translation = VALUES(title_translation),
  description = VALUES(description),
  description_translation = VALUES(description_translation),
  emoji = VALUES(emoji),
  planned_chapter_count = VALUES(planned_chapter_count),
  difficulty_min = VALUES(difficulty_min),
  difficulty_max = VALUES(difficulty_max),
  sort_order = VALUES(sort_order);

SET @module_id = LAST_INSERT_ID();

INSERT INTO chapters
(
  module_id,
  chapter_key,
  series_number,
  global_sort_order,
  title,
  title_translation,
  description,
  description_translation,
  planned_lesson_count,
  difficulty_min,
  difficulty_max,
  sort_order,
  status
)
VALUES
(
  @module_id,
  'A1-M01-C01',
  1,
  1,
  'Hallo & Tschüss',
  'سلام و خداحافظی',
  'Begrüßen, sehr kurz nach dem Befinden fragen und sich verabschieden.',
  'سلام کن، خیلی کوتاه حال طرف را بپرس و خداحافظی کن.',
  4,
  1,
  1,
  1,
  'draft'
),
(
  @module_id,
  'A1-M01-C02',
  2,
  2,
  'Ich heiße ...',
  'اسم من ... است',
  'Den eigenen Namen sagen und nach dem Namen einer anderen Person fragen.',
  'اسم خودت را بگو و اسم طرف مقابل را بپرس.',
  4,
  1,
  2,
  2,
  'planned'
),
(
  @module_id,
  'A1-M01-C03',
  3,
  3,
  'Woher kommst du?',
  'اهل کجایی؟',
  'Sagen, woher man kommt, und eine andere Person danach fragen.',
  'بگو اهل کجایی و همین سوال را از طرف مقابل بپرس.',
  4,
  2,
  2,
  3,
  'planned'
),
(
  @module_id,
  'A1-M01-C04',
  4,
  4,
  'Wie geht es dir?',
  'حالت چطوره؟',
  'Ein kurzes Gespräch über das Befinden führen.',
  'یک گفت و گوی کوتاه درباره حال و احوال داشته باش.',
  4,
  2,
  3,
  4,
  'planned'
),
(
  @module_id,
  'A1-M01-C05',
  5,
  5,
  'Zahlen & einfache Infos',
  'عددها و اطلاعات ساده',
  'Grundlegende Zahlen und sehr einfache persönliche Informationen verwenden.',
  'عددهای پایه و اطلاعات شخصی خیلی ساده را استفاده کن.',
  4,
  3,
  3,
  5,
  'planned'
)
ON DUPLICATE KEY UPDATE
  chapter_key = VALUES(chapter_key),
  series_number = VALUES(series_number),
  global_sort_order = VALUES(global_sort_order),
  title = VALUES(title),
  title_translation = VALUES(title_translation),
  description = VALUES(description),
  description_translation = VALUES(description_translation),
  planned_lesson_count = VALUES(planned_lesson_count),
  difficulty_min = VALUES(difficulty_min),
  difficulty_max = VALUES(difficulty_max);

COMMIT;
