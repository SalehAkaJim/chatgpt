-- Istanbul Turkish B1 expansion batch 9: online group-plan repair and independent action-oriented exit capstone.
INSERT IGNORE INTO curriculum_units (course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,3,'approved',JSON_OBJECT('language_specific',TRUE,'target_variant','tr-TR','batch',9,'grammar_focus',u.grammar_focus,'third_lesson','independent-production-mediation')
FROM (
 SELECT 690 sort_order,'communication' skill_slug,'simple-messages' topic_slug,'b1-tr-online-group-plan-repair' slug,'Çevrim içi grup planını düzeltmek' title,'Read a short group-chat update, clarify a misunderstanding, relay the agreed plan and respond appropriately in an online group.' objective,'reported information, clarification, polite disagreement, reasons and realistic conditions' grammar_focus
 UNION ALL SELECT 700,'travel-transport','places-town','b1-tr-b1-independent-day-capstone','B1 bağımsız gün görevi','Complete an action-oriented B1 exit task by interpreting practical updates, mediating key information, solving a familiar problem and producing a connected personal response.','cumulative B1 recycling: past narration, reported information, sequencing, reasons, realistic conditions, requests and practical negotiation'
) u
JOIN courses c ON c.slug='fa-tr-tr' JOIN cefr_levels lvl ON lvl.code='B1' JOIN skills s ON s.slug=u.skill_slug JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;
