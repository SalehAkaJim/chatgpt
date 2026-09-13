-- Standard Korean A2 curriculum, batch 1, for Persian-speaking learners.
INSERT IGNORE INTO curriculum_units (course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,2,'approved',JSON_OBJECT('language_specific',TRUE,'target_variant','ko-KR','batch',1,'grammar_focus',u.grammar_focus)
FROM (
 SELECT 210 sort_order,'daily-life' skill_slug,'daily-routine' topic_slug,'a2-ko-past-experiences' slug,'한국에 가 봤어요' title,'Talk about past experiences and ask whether someone has tried something.' objective,'-아/어 보다' grammar_focus
 UNION ALL SELECT 220,'daily-life','daily-routine','a2-ko-reasons-and-results','비가 와서 집에 있었어요','Give simple reasons and connect causes to results.','-아/어서'
 UNION ALL SELECT 230,'time-plans','future-plans','a2-ko-plans-and-intentions','주말에 친구를 만나려고 해요','Express near-future intentions and ask about plans.','-(으)려고 해요'
 UNION ALL SELECT 240,'shopping-money','shopping','a2-ko-comparisons-and-choice','이게 저것보다 더 싸요','Compare two options and justify a simple choice.','N보다 더 ...'
 UNION ALL SELECT 250,'communication','requests','a2-ko-ability-and-permission','한국어로 주문할 수 있어요','Talk about ability, inability and practical permission.','-(으)ㄹ 수 있어요/없어요'
 UNION ALL SELECT 260,'health-body','basic-health','a2-ko-health-and-advice','물을 많이 마셔야 해요','Describe common symptoms and give practical advice.','-아/어야 해요'
 UNION ALL SELECT 270,'travel-transport','places-town','a2-ko-travel-and-hotel','예약을 확인하고 싶어요','Handle simple hotel and travel service interactions.','-고 싶어요'
 UNION ALL SELECT 280,'describing','weather','a2-ko-weather-and-change','날씨가 따뜻해졌어요','Describe weather and gradual changes in states.','-아/어지다'
 UNION ALL SELECT 290,'communication','questions','a2-ko-opinions-and-softening','제 생각에는 괜찮은 것 같아요','Give a simple opinion and soften certainty.','-(으)ㄴ/는 것 같아요'
 UNION ALL SELECT 300,'travel-transport','places-town','a2-ko-a2-seoul-weekend-capstone','서울에서 보낸 주말','Integrate A2 experience, reasons, plans, comparison, ability, advice and opinions.','A2 communicative integration'
) u JOIN courses c ON c.slug='fa-ko-kr' JOIN cefr_levels lvl ON lvl.code='A2' JOIN skills s ON s.slug=u.skill_slug JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;
