-- Standard Korean B2 curriculum, batch 1, for Persian-speaking learners.
INSERT IGNORE INTO curriculum_units (course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,2,'approved',JSON_OBJECT('language_specific',TRUE,'target_variant','ko-KR','batch',1,'grammar_focus',u.grammar_focus)
FROM (
 SELECT 410 sort_order,'communication' skill_slug,'questions' topic_slug,'b2-ko-nuanced-stance' slug,'완전히 동의하는 건 아니에요' title,'Express qualified agreement, reservations and nuanced evaluation in standard polite Korean.' objective,'-기는 하지만; -다고 해서; -(으)ㄴ/는 측면에서' grammar_focus
 UNION ALL SELECT 420,'communication','questions','b2-ko-evidence-and-inference','정황을 보면 그럴 가능성이 커요','Distinguish observed facts, inference and uncertainty when discussing evidence.','-는 것으로 보이다; -(으)ㄹ 가능성이 있다; -는 듯하다'
 UNION ALL SELECT 430,'time-plans','future-plans','b2-ko-counterfactual-reflection','그때 알았더라면 다르게 했을 거예요','Reflect on unreal past alternatives, regret and counterfactual consequences.','-았/었더라면; -(으)ㄹ 뻔하다; -았/었을 텐데'
 UNION ALL SELECT 440,'communication','requests','b2-ko-formal-negotiation','이 조건이라면 조정할 수 있습니다','Negotiate conditions, concessions and formal requests in workplace and public contexts.','-아/어 주시면 감사하겠습니다; -는 조건으로; -(으)ㄹ 수 있을까요'
 UNION ALL SELECT 450,'communication','questions','b2-ko-summarizing-and-mediation','핵심은 두 입장을 함께 보는 거예요','Summarize competing viewpoints and mediate information for another listener.','-는 반면에; 요지는 -다는 것이다; 다시 말하면'
 UNION ALL SELECT 460,'daily-life','daily-routine','b2-ko-process-and-responsibility','어떻게 결정되고 누가 책임지나요?','Describe formal processes, passive outcomes and responsibility without obscuring agency.','-아/어지다; -게 되다; -에 의해; 책임을 맡다'
 UNION ALL SELECT 470,'communication','requests','b2-ko-concession-and-disagreement','그 점은 인정하지만 결론은 달라요','Disagree tactfully, concede valid points and maintain a clear position.','-기는 해도; -더라도; 그렇다고 해서'
 UNION ALL SELECT 480,'communication','requests','b2-ko-register-and-social-distance','상대와 상황에 따라 말투가 달라져요','Manage politeness, professional register and social distance across Korean contexts.','하십시오체와 해요체; 완곡한 요청; 호칭과 높임'
 UNION ALL SELECT 490,'communication','questions','b2-ko-source-comparison','자료마다 강조하는 점이 달라요','Compare sources, detect framing differences and report conflicting information carefully.','-에 따르면; -는 데 비해; -다고 밝히다; 출처 표시'
 UNION ALL SELECT 500,'time-plans','future-plans','b2-ko-b2-seoul-forum-capstone','서울 생활 포럼에서 제안을 정리해 봅시다','Integrate B2 stance, evidence, mediation, negotiation, register and source evaluation in a civic forum capstone.','B2 communicative integration'
) u JOIN courses c ON c.slug='fa-ko-kr' JOIN cefr_levels lvl ON lvl.code='B2' JOIN skills s ON s.slug=u.skill_slug JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;
