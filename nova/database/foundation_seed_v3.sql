-- ===============================================================
-- NOVA NATIVE-v3 FOUNDATION SEED
-- Creates/repairs shared Course -> A1 -> first Module metadata before any
-- Chapter package is imported. Target-language descriptions stay in the
-- learning language; *_translation fields stay Persian.
-- ===============================================================
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS nova_seed_foundation_v3;
DELIMITER $$
CREATE PROCEDURE nova_seed_foundation_v3()
BEGIN
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;

  -- English -> Persian -------------------------------------------------
  SELECT COUNT(*), MIN(id) INTO v_count, v_course
  FROM courses WHERE learning_language='en' AND base_language='fa';
  IF v_count=0 THEN
    INSERT INTO courses
      (learning_language,base_language,title,title_translation,description,description_translation,status,metadata)
    VALUES
      ('en','fa','English for Persian Speakers','انگلیسی برای فارسی‌زبان‌ها',
       'An outcome-driven English course for Persian speakers, starting from absolute zero.',
       'دوره انگلیسی نتیجه‌محور برای فارسی‌زبان‌ها از صفر مطلق.',
       'active',JSON_OBJECT('contractVersion','3.0.0','freshNativeV3',TRUE));
    SET v_course=LAST_INSERT_ID();
  ELSEIF v_count=1 THEN
    UPDATE courses SET
      title='English for Persian Speakers',
      title_translation='انگلیسی برای فارسی‌زبان‌ها',
      description='An outcome-driven English course for Persian speakers, starting from absolute zero.',
      description_translation='دوره انگلیسی نتیجه‌محور برای فارسی‌زبان‌ها از صفر مطلق.',
      status='active',
      metadata=JSON_SET(COALESCE(metadata,JSON_OBJECT()),'$.contractVersion','3.0.0','$.freshNativeV3',TRUE)
    WHERE id=v_course;
  ELSE
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='en-fa course identity is not unique';
  END IF;

  SELECT COUNT(*), MIN(id) INTO v_count, v_level
  FROM levels WHERE course_id=v_course AND cefr_level='A1';
  IF v_count=0 THEN
    INSERT INTO levels
      (course_id,cefr_level,title,title_translation,description,description_translation,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES
      (v_course,'A1','A1 Foundations','پایه A1',
       'English for immediate, very simple everyday interactions from absolute zero.',
       'انگلیسی پایه برای تعامل‌های فوری و بسیار ساده روزمره از صفر مطلق.',
       1,2,1,'active',JSON_OBJECT('completionMode','dynamic_outcome_mastery'));
    SET v_level=LAST_INSERT_ID();
  ELSEIF v_count=1 THEN
    UPDATE levels SET
      title='A1 Foundations',
      title_translation='پایه A1',
      description='English for immediate, very simple everyday interactions from absolute zero.',
      description_translation='انگلیسی پایه برای تعامل‌های فوری و بسیار ساده روزمره از صفر مطلق.',
      difficulty_min=1,difficulty_max=2,sort_order=1,status='active',
      metadata=JSON_SET(COALESCE(metadata,JSON_OBJECT()),'$.completionMode','dynamic_outcome_mastery')
    WHERE id=v_level;
  ELSE
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='en-fa A1 identity is not unique';
  END IF;

  SELECT COUNT(*) INTO v_count FROM modules WHERE level_id=v_level AND sort_order=1;
  IF v_count=0 THEN
    INSERT INTO modules
      (level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES
      (v_level,'First Connections','اولین ارتباط‌ها',
       'Greetings, names and the first short everyday interactions.',
       'سلام، نام و اولین تعامل‌های کوتاه روزمره.',
       '👋',1,2,1,'active',JSON_OBJECT('dynamic',TRUE));
  ELSEIF v_count=1 THEN
    UPDATE modules SET
      title='First Connections',title_translation='اولین ارتباط‌ها',
      description='Greetings, names and the first short everyday interactions.',
      description_translation='سلام، نام و اولین تعامل‌های کوتاه روزمره.',
      emoji='👋',difficulty_min=1,difficulty_max=2,status='active',
      metadata=JSON_SET(COALESCE(metadata,JSON_OBJECT()),'$.dynamic',TRUE)
    WHERE level_id=v_level AND sort_order=1;
  ELSE
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='en-fa module 1 identity is not unique';
  END IF;

  -- German -> Persian --------------------------------------------------
  SET v_course=NULL; SET v_level=NULL;
  SELECT COUNT(*), MIN(id) INTO v_count, v_course
  FROM courses WHERE learning_language='de' AND base_language='fa';
  IF v_count=0 THEN
    INSERT INTO courses
      (learning_language,base_language,title,title_translation,description,description_translation,status,metadata)
    VALUES
      ('de','fa','Deutsch für Persischsprachige','آلمانی برای فارسی‌زبان‌ها',
       'Ein ergebnisorientierter Deutschkurs für Persischsprachige, der bei null beginnt.',
       'دوره آلمانی نتیجه‌محور برای فارسی‌زبان‌ها از صفر مطلق.',
       'active',JSON_OBJECT('contractVersion','3.0.0','freshNativeV3',TRUE));
    SET v_course=LAST_INSERT_ID();
  ELSEIF v_count=1 THEN
    UPDATE courses SET
      title='Deutsch für Persischsprachige',
      title_translation='آلمانی برای فارسی‌زبان‌ها',
      description='Ein ergebnisorientierter Deutschkurs für Persischsprachige, der bei null beginnt.',
      description_translation='دوره آلمانی نتیجه‌محور برای فارسی‌زبان‌ها از صفر مطلق.',
      status='active',
      metadata=JSON_SET(COALESCE(metadata,JSON_OBJECT()),'$.contractVersion','3.0.0','$.freshNativeV3',TRUE)
    WHERE id=v_course;
  ELSE
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='de-fa course identity is not unique';
  END IF;

  SELECT COUNT(*), MIN(id) INTO v_count, v_level
  FROM levels WHERE course_id=v_course AND cefr_level='A1';
  IF v_count=0 THEN
    INSERT INTO levels
      (course_id,cefr_level,title,title_translation,description,description_translation,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES
      (v_course,'A1','A1 Grundlagen','پایه A1',
       'Deutsch für unmittelbare, sehr einfache Alltagssituationen ab null.',
       'آلمانی پایه برای نیازهای فوری و تعامل‌های بسیار ساده روزمره از صفر مطلق.',
       1,2,1,'active',JSON_OBJECT('completionMode','dynamic_outcome_mastery'));
    SET v_level=LAST_INSERT_ID();
  ELSEIF v_count=1 THEN
    UPDATE levels SET
      title='A1 Grundlagen',title_translation='پایه A1',
      description='Deutsch für unmittelbare, sehr einfache Alltagssituationen ab null.',
      description_translation='آلمانی پایه برای نیازهای فوری و تعامل‌های بسیار ساده روزمره از صفر مطلق.',
      difficulty_min=1,difficulty_max=2,sort_order=1,status='active',
      metadata=JSON_SET(COALESCE(metadata,JSON_OBJECT()),'$.completionMode','dynamic_outcome_mastery')
    WHERE id=v_level;
  ELSE
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='de-fa A1 identity is not unique';
  END IF;

  SELECT COUNT(*) INTO v_count FROM modules WHERE level_id=v_level AND sort_order=1;
  IF v_count=0 THEN
    INSERT INTO modules
      (level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES
      (v_level,'Erste Begegnungen','اولین آشنایی‌ها',
       'Begrüßungen, Namen und die ersten kurzen Begegnungen im Alltag.',
       'سلام، نام و اولین آشنایی‌های کوتاه روزمره.',
       '👋',1,2,1,'active',JSON_OBJECT('dynamic',TRUE));
  ELSEIF v_count=1 THEN
    UPDATE modules SET
      title='Erste Begegnungen',title_translation='اولین آشنایی‌ها',
      description='Begrüßungen, Namen und die ersten kurzen Begegnungen im Alltag.',
      description_translation='سلام، نام و اولین آشنایی‌های کوتاه روزمره.',
      emoji='👋',difficulty_min=1,difficulty_max=2,status='active',
      metadata=JSON_SET(COALESCE(metadata,JSON_OBJECT()),'$.dynamic',TRUE)
    WHERE level_id=v_level AND sort_order=1;
  ELSE
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='de-fa module 1 identity is not unique';
  END IF;

  COMMIT;
END$$
DELIMITER ;
CALL nova_seed_foundation_v3();
DROP PROCEDURE IF EXISTS nova_seed_foundation_v3;
