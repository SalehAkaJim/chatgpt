-- Istanbul Turkish A2 curriculum, batch 1, for Persian-speaking learners.
INSERT IGNORE INTO curriculum_units (
  course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,
  learning_objective,sort_order,expected_lessons,status,metadata
)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,
       u.sort_order,2,'approved',JSON_OBJECT('language_specific',TRUE,'target_variant','tr-TR','batch',1,'grammar_focus',u.grammar_focus)
FROM (
 SELECT 210 sort_order,'daily-life' skill_slug,'daily-routine' topic_slug,'a2-tr-past-weekend' slug,'Hafta sonu ne yaptın?' title,'Talk about completed past events and sequence a short weekend story.' objective,'definite past -di and personal endings' grammar_focus
 UNION ALL SELECT 220,'daily-life','daily-routine','a2-tr-habits-and-frequency','Genelde erken kalkarım','Describe routines, habits and frequency in ordinary life.','aorist/geniş zaman for habitual actions'
 UNION ALL SELECT 230,'shopping-money','shopping','a2-tr-comparisons','Bu daha uygun','Compare options by price, size and quality and express a preference.','comparatives with daha and kadar'
 UNION ALL SELECT 240,'communication','requests','a2-tr-polite-requests','Yardım edebilir misiniz?','Make polite requests, ask permission and respond appropriately.','polite ability/request forms -ebilir misiniz'
 UNION ALL SELECT 250,'time-plans','future-plans','a2-tr-appointments-and-plans','Yarın buluşabiliriz','Arrange appointments, suggest times and negotiate availability.','future planning and ability with -ebilir'
 UNION ALL SELECT 260,'health-body','basic-health','a2-tr-health-and-advice','Biraz dinlenmelisin','Describe common symptoms and give or understand simple advice.','necessity/advice with -meli/-malı'
 UNION ALL SELECT 270,'travel-transport','places-town','a2-tr-travel-and-hotel','Rezervasyonum var','Handle a simple hotel stay, check-in and basic travel problems.','possessive and case combinations in travel contexts'
 UNION ALL SELECT 280,'communication','simple-messages','a2-tr-reasons-and-results','Trafik olduğu için geç kaldım','Give simple reasons and connect cause with a result.','causal clauses with için'
 UNION ALL SELECT 290,'social','likes-dislikes','a2-tr-choices-and-preferences','Ben bunu tercih ederim','Express preferences, compare alternatives and justify a choice.','preference with tercih etmek and -mek istemek'
 UNION ALL SELECT 300,'travel-transport','transport','a2-tr-a2-city-day-capstone','İstanbul''da yoğun bir gün','Integrate A2 past, habits, comparisons, polite requests, plans, advice and reasons in a coherent city-day scenario.','A2 batch 1 communicative integration'
) u
JOIN courses c ON c.slug='fa-tr-tr'
JOIN cefr_levels lvl ON lvl.code='A2'
JOIN skills s ON s.slug=u.skill_slug
JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;
