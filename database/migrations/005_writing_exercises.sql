-- Open writing responses use answer.evaluation_mode="rubric". Safe to reapply.
ALTER TABLE exercises MODIFY exercise_type ENUM('dialogue_comprehension','listening','speaking','sentence_building','translation','fill_blank','multiple_choice','writing') NOT NULL;
