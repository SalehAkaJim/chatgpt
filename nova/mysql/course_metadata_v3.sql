-- Nova native-v3 localized course metadata repair
-- Idempotent: safe to run after published Chapter SQL files.
SET NAMES utf8mb4;
START TRANSACTION;

-- German -> Persian
UPDATE courses
SET title='Deutsch für Persischsprachige',
    title_translation='آلمانی برای فارسی‌زبان‌ها',
    description='Ein ergebnisorientierter Deutschkurs von null an für Persischsprachige.',
    description_translation='دوره آلمانی نتیجه‌محور برای فارسی‌زبان‌ها از صفر مطلق.'
WHERE learning_language='de' AND base_language='fa';

UPDATE levels l
JOIN courses c ON c.id=l.course_id
SET l.title='A1 Grundlagen',
    l.title_translation='پایه A1',
    l.description='Deutsch von null an für unmittelbare Bedürfnisse und sehr einfache Alltagssituationen.',
    l.description_translation='آلمانی از صفر برای نیازهای فوری و تعامل‌های بسیار ساده روزمره.'
WHERE c.learning_language='de' AND c.base_language='fa' AND l.cefr_level='A1';

UPDATE modules m
JOIN levels l ON l.id=m.level_id
JOIN courses c ON c.id=l.course_id
SET m.title='Erste Begegnungen',
    m.title_translation='اولین آشنایی‌ها',
    m.description='Begrüßungen, Namen und erste kurze Gespräche von Angesicht zu Angesicht.',
    m.description_translation='سلام، نام و اولین گفت‌وگوهای کوتاه رو‌در‌رو.'
WHERE c.learning_language='de' AND c.base_language='fa' AND l.cefr_level='A1' AND m.sort_order=1;

UPDATE chapters ch
JOIN modules m ON m.id=ch.module_id
JOIN levels l ON l.id=m.level_id
JOIN courses c ON c.id=l.course_id
SET ch.description='Raha kommt in Berlin an und lernt ein erstes nützliches Gespräch: begrüßen, den eigenen Namen sagen, nach einem Namen fragen und sich verabschieden.',
    ch.description_translation='رها به برلین می‌رسد و اولین گفت‌وگوی کاربردی را یاد می‌گیرد: سلام کردن، گفتن نام، پرسیدن نام و خداحافظی.'
WHERE c.learning_language='de' AND c.base_language='fa' AND ch.sort_order=1;

-- English -> Persian
UPDATE courses
SET title='English for Persian Speakers',
    title_translation='انگلیسی برای فارسی‌زبان‌ها',
    description='An outcome-driven English course for Persian speakers starting from absolute zero.',
    description_translation='دوره انگلیسی نتیجه‌محور برای فارسی‌زبان‌ها از صفر مطلق.'
WHERE learning_language='en' AND base_language='fa';

UPDATE levels l
JOIN courses c ON c.id=l.course_id
SET l.title='A1 Foundations',
    l.title_translation='پایه A1',
    l.description='English from absolute zero for immediate needs and very simple everyday interactions.',
    l.description_translation='انگلیسی از صفر مطلق برای نیازهای فوری و تعامل‌های بسیار ساده روزمره.'
WHERE c.learning_language='en' AND c.base_language='fa' AND l.cefr_level='A1';

UPDATE modules m
JOIN levels l ON l.id=m.level_id
JOIN courses c ON c.id=l.course_id
SET m.title='First Connections',
    m.title_translation='اولین ارتباط‌ها',
    m.description='Greetings, names and the first short face-to-face interactions.',
    m.description_translation='سلام، نام و اولین تعامل‌های کوتاه رو‌در‌رو.'
WHERE c.learning_language='en' AND c.base_language='fa' AND l.cefr_level='A1' AND m.sort_order=1;

COMMIT;
