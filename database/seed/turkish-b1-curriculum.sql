-- Istanbul Turkish B1 curriculum, legacy batch 1 retrofitted to three substantive lessons per unit.
INSERT IGNORE INTO curriculum_units (course_id,target_language_id,cefr_level_id,skill_id,topic_id,slug,title,learning_objective,sort_order,expected_lessons,status,metadata)
SELECT c.id,c.target_language_id,lvl.id,s.id,t.id,u.slug,u.title,u.objective,u.sort_order,3,'approved',JSON_OBJECT('language_specific',TRUE,'target_variant','tr-TR','batch',1,'grammar_focus',u.grammar_focus,'third_lesson','independent-production-mediation')
FROM (
 SELECT 310 sort_order,'daily-life' skill_slug,'daily-routine' topic_slug,'b1-tr-experiences-and-change' slug,'Eskiden böyle düşünmezdim' title,'Describe past habits and changes over time.' objective,'past habitual -irdi; eskiden/artık' grammar_focus
 UNION ALL SELECT 320,'communication','simple-messages','b1-tr-storytelling-sequence','Tam çıkacakken telefon çaldı','Tell a coherent short story with background and interruption.','-ken background clauses'
 UNION ALL SELECT 330,'communication','simple-messages','b1-tr-opinions-and-evidence','Bence asıl sorun bu değil','State an opinion, support it and qualify certainty.','bence, çünkü, certainty markers'
 UNION ALL SELECT 340,'communication','simple-messages','b1-tr-reported-information','Toplantının ertelendiğini söyledi','Report what someone said, heard or learned.','reported clauses with -DIK'
 UNION ALL SELECT 350,'time-plans','future-plans','b1-tr-conditions-and-consequences','Erken çıkarsak yetişiriz','Discuss realistic conditions and contingency plans.','conditional -sa/-se'
 UNION ALL SELECT 360,'time-plans','future-plans','b1-tr-goals-and-effort','Daha iyi konuşabilmek için çalışıyorum','Explain goals, effort and progress toward a target.','-mek için purpose and -ebilmek'
 UNION ALL SELECT 370,'communication','requests','b1-tr-problems-and-solutions','Bunu başka türlü çözebiliriz','Explain a practical problem and negotiate a solution.','proposals, alternatives and gerekirse'
 UNION ALL SELECT 380,'communication','simple-messages','b1-tr-media-and-sources','Kaynağa bakmadan paylaşma','Discuss media claims and source reliability.','-meden/-madan without doing'
 UNION ALL SELECT 390,'social','likes-dislikes','b1-tr-social-nuance','Yanlış anlama, demek istediğim şu','Repair misunderstandings and soften disagreement.','discourse repair phrases'
 UNION ALL SELECT 400,'travel-transport','places-town','b1-tr-b1-city-project-capstone','Bir mahalle projesini birlikte planlamak','Integrate B1 narration, opinions, reports, conditions and repair.','B1 communicative integration'
) u
JOIN courses c ON c.slug='fa-tr-tr' JOIN cefr_levels lvl ON lvl.code='B1' JOIN skills s ON s.slug=u.skill_slug JOIN topics t ON t.slug=u.topic_slug AND t.skill_id=s.id;
