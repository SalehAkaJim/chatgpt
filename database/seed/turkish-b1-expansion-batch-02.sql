-- Istanbul Turkish B1 expansion batch 2: four three-lesson units with repeated production and mediation.
INSERT IGNORE INTO curriculum_units (course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,3,'approved',JSON_OBJECT('language_specific',TRUE,'target_variant','tr-TR','batch',2,'grammar_focus',u.grammar_focus,'third_lesson','independent-production-mediation')
FROM (
 SELECT 410 sort_order,'family-home' skill_slug,'home' topic_slug,'b1-tr-housing-repair-coordination' slug,'Sorunu açıklayıp çözüm planlayalım' title,'Describe a household problem clearly, report what another person said, and coordinate a practical repair plan.' objective,'reported information with -diğini söylemek and reason/result links' grammar_focus
 UNION ALL SELECT 420,'travel-transport','transport','b1-tr-travel-disruption-replanning','Plan değişti, yeni bir yol bulduk','Explain a travel disruption, compare realistic alternatives and agree on a revised plan.','realistic -sa/-se conditions, sequencing and practical comparison'
 UNION ALL SELECT 430,'work-study','jobs','b1-tr-work-deadline-update','Durumu açıklayıp yeni süre istiyorum','Give a concise work progress update, relay a colleague''s information and negotiate a realistic deadline.','reported propositions, reasons, progress language and polite negotiation'
 UNION ALL SELECT 440,'communication','simple-messages','b1-tr-community-event-coordination','Bilgiyi toparlayıp gruba aktaralım','Understand practical event information, mediate it for others and coordinate responsibilities in a small community activity.','short mediation, sequencing, reported information and realistic conditions'
) u
JOIN courses c ON c.slug='fa-tr-tr' JOIN cefr_levels lvl ON lvl.code='B1' JOIN skills s ON s.slug=u.skill_slug JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;
