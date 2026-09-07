-- ===============================================================
-- NOVA NATIVE-v3 DETERMINISTIC AUDIO CONTRACT
-- Audio URLs are assigned at INSERT time. TTS only materializes files at
-- these already-stored paths; no post-import UPDATE SQL is required.
-- ===============================================================
SET NAMES utf8mb4;

DROP TRIGGER IF EXISTS trg_word_audio_url_v3;
DROP TRIGGER IF EXISTS trg_turn_audio_url_v3;

DELIMITER $$
CREATE TRIGGER trg_word_audio_url_v3
BEFORE INSERT ON words
FOR EACH ROW
BEGIN
  DECLARE v_course_slug VARCHAR(40);
  SELECT CONCAT(learning_language,'-',base_language)
    INTO v_course_slug
  FROM courses
  WHERE id=NEW.course_id;

  IF v_course_slug IS NULL OR v_course_slug='' THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Cannot derive course slug for word audio URL';
  END IF;

  IF NEW.audio_url IS NULL OR NEW.audio_url='' THEN
    SET NEW.audio_url=CONCAT(
      'nova/audio/words/',v_course_slug,'/',LOWER(SHA2(NEW.display_form,256)),'.mp3'
    );
  END IF;
END$$

CREATE TRIGGER trg_turn_audio_url_v3
BEFORE INSERT ON turns
FOR EACH ROW
BEGIN
  DECLARE v_course_slug VARCHAR(40);
  DECLARE v_level VARCHAR(8);
  DECLARE v_series INT UNSIGNED;
  DECLARE v_lesson_order INT UNSIGNED;

  SELECT
    CONCAT(c.learning_language,'-',c.base_language),
    lv.cefr_level,
    CAST(JSON_UNQUOTE(JSON_EXTRACT(ch.metadata,'$.series')) AS UNSIGNED),
    l.sort_order
  INTO v_course_slug,v_level,v_series,v_lesson_order
  FROM lessons l
  JOIN chapters ch ON ch.id=l.chapter_id
  JOIN modules m ON m.id=ch.module_id
  JOIN levels lv ON lv.id=m.level_id
  JOIN courses c ON c.id=lv.course_id
  WHERE l.id=NEW.lesson_id;

  IF v_course_slug IS NULL OR v_level IS NULL OR v_series IS NULL OR v_lesson_order IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Cannot derive deterministic Turn audio locator';
  END IF;

  IF NEW.audio_url IS NULL OR NEW.audio_url='' THEN
    SET NEW.audio_url=CONCAT(
      'nova/audio/turns/',v_course_slug,'/',UPPER(v_level),
      '/s',LPAD(v_series,4,'0'),
      '/l',LPAD(v_lesson_order,2,'0'),
      '/t',LPAD(NEW.sort_order,2,'0'),'.mp3'
    );
  END IF;
END$$
DELIMITER ;
