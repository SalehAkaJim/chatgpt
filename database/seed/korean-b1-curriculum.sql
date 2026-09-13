-- Standard Korean B1 curriculum, batch 1, for Persian-speaking learners.
INSERT IGNORE INTO curriculum_units (course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,2,'approved',JSON_OBJECT('language_specific',TRUE,'target_variant','ko-KR','batch',1,'grammar_focus',u.grammar_focus)
FROM (
 SELECT 310 sort_order,'daily-life' skill_slug,'daily-routine' topic_slug,'b1-ko-experiences-and-change' slug,'한국에 온 뒤로 많이 달라졌어요' title,'Describe changes in habits and perspective after experiences.' objective,'-(으)ㄴ 뒤로, -게 되다' grammar_focus
 UNION ALL SELECT 320,'daily-life','daily-routine','b1-ko-storytelling-sequence','문을 열었더니 아무도 없었어요','Tell short stories with sequence and unexpected outcomes.','-더니, -다가'
 UNION ALL SELECT 330,'communication','questions','b1-ko-opinions-and-evidence','제 생각에는 이 방법이 더 현실적이에요','State opinions and support them with reasons.','-다고 생각하다, -(으)ㄴ/는 편이다'
 UNION ALL SELECT 340,'communication','questions','b1-ko-reported-information','뉴스에서 내일부터 비가 온다고 했어요','Report information and suggestions while marking the source.','-다고 하다, -자고 하다'
 UNION ALL SELECT 350,'time-plans','future-plans','b1-ko-conditions-and-consequences','시간이 되면 같이 가요','Discuss realistic conditions and likely consequences.','-(으)면, -지 않으면'
 UNION ALL SELECT 360,'time-plans','future-plans','b1-ko-goals-and-effort','실력을 늘리기 위해 매일 연습해요','Explain goals, effort and strategies.','-기 위해(서), -(으)려고 노력하다'
 UNION ALL SELECT 370,'communication','requests','b1-ko-problems-and-solutions','문제가 생기면 먼저 원인을 확인해요','Describe problems and propose practical solutions.','-는 게 좋다, -(으)ㄹ 수도 있다'
 UNION ALL SELECT 380,'communication','questions','b1-ko-media-and-sources','출처를 확인한 다음에 믿는 게 좋아요','Discuss media claims, sources and uncertainty.','-다는 말, -(으)ㄴ/는지 확인하다'
 UNION ALL SELECT 390,'communication','requests','b1-ko-social-nuance','직접 말하기보다 조금 돌려 말해요','Make requests and disagreements more tactful.','-기는 하지만, -(으)면 좋겠다'
 UNION ALL SELECT 400,'time-plans','future-plans','b1-ko-b1-seoul-project-capstone','서울 생활 프로젝트를 정리해 봅시다','Integrate B1 narration, stance, conditions, goals and tact.','B1 communicative integration'
) u JOIN courses c ON c.slug='fa-ko-kr' JOIN cefr_levels lvl ON lvl.code='B1' JOIN skills s ON s.slug=u.skill_slug JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;
