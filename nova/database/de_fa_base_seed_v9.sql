-- ===============================================================
-- NOVA v9 / پایه دوره آلمانی برای فارسی زبانان
-- شروع از صفر مطلق
-- ===============================================================

SET NAMES utf8mb4;
START TRANSACTION;

INSERT INTO courses
(
  learning_language,
  base_language,
  title,
  title_translation,
  description,
  description_translation,
  status,
  metadata
)
VALUES
(
  'de',
  'fa',
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
);

SET @course_id = LAST_INSERT_ID();

INSERT INTO levels
(
  course_id,
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
  'Ankommen',
  'شروع از صفر',
  'Sehr kurze, klare und nützliche Sprache für die ersten Alltagssituationen.',
  'از عبارت های خیلی کوتاه، روشن و کاربردی شروع کن.',
  1,
  20,
  1,
  'active'
);

SET @level_id = LAST_INSERT_ID();

INSERT INTO modules
(
  level_id,
  title,
  title_translation,
  description,
  description_translation,
  emoji,
  difficulty_min,
  difficulty_max,
  sort_order,
  status
)
VALUES
(
  @level_id,
  'Erste Schritte',
  'قدم های اول',
  'Die ersten Begrüßungen, Vorstellungen und sehr einfachen Informationen.',
  'اولین سلام ها، معرفی ها و اطلاعات خیلی ساده.',
  '👋',
  1,
  3,
  1,
  'active'
);

SET @module_id = LAST_INSERT_ID();

INSERT INTO chapters
(
  module_id,
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
  'Hallo & Tschüss',
  'سلام و خداحافظی',
  'Begrüßen, sehr kurz nach dem Befinden fragen und sich verabschieden.',
  'سلام کن، خیلی کوتاه حال طرف را بپرس و خداحافظی کن.',
  NULL,
  1,
  1,
  1,
  'draft'
),
(
  @module_id,
  'Ich heiße ...',
  'اسم من ... است',
  'Den eigenen Namen sagen und nach dem Namen einer anderen Person fragen.',
  'اسم خودت را بگو و اسم طرف مقابل را بپرس.',
  NULL,
  1,
  2,
  2,
  'planned'
),
(
  @module_id,
  'Woher kommst du?',
  'اهل کجایی؟',
  'Sagen, woher man kommt, und eine andere Person danach fragen.',
  'بگو اهل کجایی و همین سوال را از طرف مقابل بپرس.',
  NULL,
  2,
  2,
  3,
  'planned'
),
(
  @module_id,
  'Wie geht es dir?',
  'حالت چطوره؟',
  'Ein kurzes Gespräch über das Befinden führen.',
  'یک گفت و گوی کوتاه درباره حال و احوال داشته باش.',
  NULL,
  2,
  3,
  4,
  'planned'
),
(
  @module_id,
  'Zahlen & einfache Infos',
  'عددها و اطلاعات ساده',
  'Grundlegende Zahlen und sehr einfache persönliche Informationen verwenden.',
  'عددهای پایه و اطلاعات شخصی خیلی ساده را استفاده کن.',
  NULL,
  3,
  3,
  5,
  'planned'
);

COMMIT;