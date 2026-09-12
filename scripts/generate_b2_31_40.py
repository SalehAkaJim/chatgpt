#!/usr/bin/env python3
from scripts.generate_b2_batch import V, U
from scripts.generate_b2_support import make_spec, write_units

UNITS = [
make_spec(index=31, slug="b2-job-applications", topic="jobs", title="Job Applications & Interviews",
    vocab=[V("qualification","qualification","مدرک / صلاحیت"),V("relevant","relevant","مرتبط","adjective"),V("achievement","achievement","دستاورد"),V("responsibility","responsibility","مسئولیت"),V("strength","strength","نقطه قوت"),V("evidence","evidence","شاهد / مدرک"),V("suitable","suitable","مناسب","adjective"),V("transferable","transferable","قابل‌انتقال به موقعیت دیگر","adjective")],
    utterances=[
        U("experience","I've worked in customer-facing roles for four years, with increasing responsibility each year.","چهار سال در نقش‌های رو‌به‌مشتری کار کرده‌ام و هر سال مسئولیت بیشتری گرفته‌ام.","summarize_experience",["responsibility","relevant"],1),
        U("achievement","One achievement I'm particularly proud of is reducing response times without lowering service quality.","یکی از دستاوردهایی که خیلی بهش افتخار می‌کنم کم کردن زمان پاسخ‌گویی بدون افت کیفیت خدماته.","present_achievement",["achievement","evidence"],1),
        U("qualification","My formal qualification is in a different field, but the analytical skills are directly relevant here.","مدرک رسمی من در رشته دیگه‌ایه، ولی مهارت‌های تحلیلی‌اش مستقیم به این کار مربوطه.","connect_qualification",["qualification","relevant"],2),
        U("transferable","The most transferable skill from my previous role is explaining complex information clearly to different audiences.","قابل‌انتقال‌ترین مهارت از کار قبلیم توضیح روشن اطلاعات پیچیده برای مخاطب‌های مختلفه.","explain_transferable_skill",["transferable","strength"],2),
        U("example","For example, last year I led a small process change that reduced repeated customer complaints.","مثلاً پارسال یک تغییر کوچک در روند رو هدایت کردم که شکایت‌های تکراری مشتری رو کم کرد.","support_with_example",["evidence","achievement"],3),
        U("strength","I'd describe my main strength as staying calm and organized when several priorities compete at once.","نقطه قوت اصلی‌ام رو حفظ آرامش و نظم وقتی چند اولویت هم‌زمان رقابت می‌کنن می‌دونم.","describe_strength",["strength"],3),
        U("suitable","I think I'm suitable for the role because my experience combines communication, problem solving, and ownership.","فکر می‌کنم برای این نقش مناسبم چون تجربه‌ام ارتباط، حل مسئله و مسئولیت‌پذیری رو ترکیب می‌کنه.","explain_suitability",["suitable","responsibility"],3),
        U("growth","There are areas I still want to develop, but I've shown that I can learn quickly when the role demands it.","هنوز بخش‌هایی هست که می‌خوام رشد بدم، ولی نشون داده‌ام وقتی نقش لازم داشته باشه سریع یاد می‌گیرم.","address_growth_area",["transferable"],3),
    ], grammar=["present_perfect","relative_clauses","hedging"], fill=["The most ___ skill from my previous role is clear communication.",["transferable","suitable","relevant","qualified"],"transferable"]),

make_spec(index=32, slug="b2-study-challenges", topic="school-study", title="Study Challenges & Deadlines",
    vocab=[V("workload","workload","حجم درس / کار"),V("deadline","deadline","موعد"),V("extension","extension","تمدید"),V("feedback","feedback","بازخورد"),V("struggle","struggle","با سختی مواجه بودن","verb"),V("revise","revise","مرور / اصلاح کردن","verb"),V("manageable","manageable","قابل‌مدیریت","adjective"),V("priority","priority","اولویت")],
    utterances=[
        U("workload","The workload has become difficult to manage because three major assignments are due in the same week.","حجم کار سخت شده چون سه تکلیف اصلی در یک هفته موعد دارن.","describe_study_problem",["workload","deadline"],1),
        U("priority","I need to decide which task is the highest priority instead of switching between all three.","باید تصمیم بگیرم کدوم کار بالاترین اولویته به‌جای اینکه بین هر سه جابه‌جا بشم.","set_study_priority",["priority"],1),
        U("feedback","The feedback was useful, but I need more time to revise the research section properly.","بازخورد مفید بود، ولی برای اصلاح درست بخش تحقیق زمان بیشتری لازم دارم.","respond_to_feedback",["feedback","revise"],2),
        U("extension","If the deadline can't move, I may need to request a short extension for the other assignment.","اگر این موعد جابه‌جا نشه، شاید لازم باشه برای تکلیف دیگه یک تمدید کوتاه بخوام.","consider_extension",["extension","deadline"],2),
        U("struggle","I'm not struggling with the topic itself; the main difficulty is balancing the reading with the written work.","با خود موضوع مشکل ندارم؛ سختی اصلی متعادل کردن مطالعه با کار نوشتاریه.","clarify_challenge",["struggle","workload"],3),
        U("manageable","Breaking the assignment into daily sections would make the workload much more manageable.","تقسیم تکلیف به بخش‌های روزانه حجم کار رو خیلی قابل‌مدیریت‌تر می‌کنه.","propose_study_solution",["manageable"],3),
        U("ask","Could I get brief feedback on the outline before I spend another two days writing the full draft?","می‌شه قبل از اینکه دو روز دیگه صرف نوشتن پیش‌نویس کامل کنم، روی طرح کلی بازخورد کوتاه بگیرم؟","request_guidance",["feedback"],3),
        U("plan","If I finish the research tonight, I should still have enough time to revise calmly before submission.","اگر تحقیق رو امشب تموم کنم، هنوز زمان کافی دارم که قبل از تحویل با آرامش اصلاحش کنم.","make_deadline_plan",["revise","deadline"],3),
    ], grammar=["modals","conditionals","gerunds_infinitives"], fill=["Breaking the work into daily sections makes it more ___.",["manageable","extended","revised","struggling"],"manageable"]),

make_spec(index=33, slug="b2-learning-strategies", topic="school-study", title="Learning Strategies",
    vocab=[V("strategy","strategy","راهبرد"),V("retain","retain","در حافظه نگه داشتن","verb"),V("retrieve","retrieve","به یاد آوردن فعال","verb"),V("review","review","مرور"),V("monitor","monitor","پایش کردن","verb"),V("adjust","adjust","تنظیم کردن","verb"),V("effective","effective","مؤثر","adjective"),V("distraction","distraction","حواس‌پرتی")],
    utterances=[
        U("compare","For me, short daily review is more effective than one long session at the end of the week.","برای من مرور کوتاه روزانه مؤثرتر از یک جلسه طولانی آخر هفته‌ست.","compare_strategies",["review","effective"],1),
        U("retrieve","I remember vocabulary better when I try to retrieve it before looking at the answer.","واژگان رو بهتر یادم می‌مونه وقتی قبل از دیدن جواب سعی می‌کنم خودم به یادش بیارم.","describe_retrieval_practice",["retrieve","retain"],1),
        U("monitor","I monitor which mistakes keep returning instead of treating every error as equally important.","بررسی می‌کنم کدوم اشتباه‌ها مدام برمی‌گردن به‌جای اینکه همه خطاها رو یکسان مهم بدونم.","monitor_learning",["monitor"],2),
        U("adjust","If a method stops helping, I adjust it rather than continuing just because it is familiar.","اگر روشی دیگه کمک نکنه، تنظیمش می‌کنم به‌جای اینکه فقط چون آشناست ادامه بدم.","adjust_strategy",["adjust","strategy"],2),
        U("distraction","Removing one major distraction has improved my concentration more than adding another study app.","حذف یک حواس‌پرتی اصلی بیشتر از اضافه کردن یک اپ مطالعه دیگه تمرکزم رو بهتر کرده.","reduce_distraction",["distraction"],3),
        U("retain","I retain new expressions longer when I use them in my own examples rather than only recognizing them.","عبارت‌های جدید رو وقتی در مثال‌های خودم استفاده می‌کنم طولانی‌تر نگه می‌دارم تا فقط بشناسمشون.","explain_retention",["retain"],3),
        U("evaluate","The more regularly I test myself, the easier it is to see whether the strategy is actually working.","هرچه منظم‌تر خودم رو امتحان می‌کنم، راحت‌تر می‌فهمم روش واقعاً جواب می‌ده یا نه.","evaluate_strategy",["strategy","effective"],3),
        U("balance","A useful strategy should improve learning without becoming so complicated that I stop using it.","یک روش مفید باید یادگیری رو بهتر کنه بدون اینکه اون‌قدر پیچیده بشه که دیگه ازش استفاده نکنم.","set_strategy_criterion",["strategy","effective"],3),
    ], grammar=["comparatives","gerunds_infinitives","cause_result"], fill=["I ___ new expressions longer when I use them in my own examples.",["retain","retrieve","monitor","adjust"],"retain"]),

make_spec(index=34, slug="b2-media-reviews", topic="hobbies", title="Media Reviews & Recommendations",
    vocab=[V("engaging","engaging","جذاب","adjective"),V("predictable","predictable","قابل‌پیش‌بینی","adjective"),V("performance","performance","بازی / اجرا"),V("pace","pace","ریتم"),V("plot","plot","داستان"),V("character","character","شخصیت"),V("recommend","recommend","پیشنهاد کردن","verb"),V("audience","audience","مخاطب")],
    utterances=[
        U("overall","The series is engaging overall, although the first two episodes are slower than the rest.","سریال در مجموع جذابه، هرچند دو قسمت اول از بقیه کندترن.","give_balanced_review",["engaging","pace"],1),
        U("plot","The plot becomes a little predictable in the middle, but the characters remain convincing.","داستان وسط کار کمی قابل‌پیش‌بینی می‌شه، ولی شخصیت‌ها همچنان باورپذیر می‌مونن.","evaluate_plot",["plot","predictable","character"],1),
        U("performance","The strongest performance comes from the actor who plays the older sister.","قوی‌ترین بازی متعلق به بازیگریه که نقش خواهر بزرگ‌تر رو بازی می‌کنه.","evaluate_performance",["performance","character"],2),
        U("pace","I was surprised by how quickly the pace improved after the opening section.","تعجب کردم که ریتم بعد از بخش آغازین چقدر سریع بهتر شد.","describe_viewer_reaction",["pace"],2),
        U("recommend","I'd recommend it to viewers who enjoy character-driven stories more than constant action.","به بیننده‌هایی پیشنهادش می‌کنم که داستان شخصیت‌محور رو بیشتر از اکشن مداوم دوست دارن.","target_recommendation",["recommend","audience","character"],3),
        U("not_for","If you want a fast plot with a clear answer to every mystery, it may not be for you.","اگر داستان سریع با جواب روشن برای هر معما می‌خوای، شاید مناسب تو نباشه.","qualify_recommendation",["plot","audience"],3),
        U("no_spoiler","Without giving away the ending, the final episode changes how you understand one important character.","بدون لو دادن پایان، قسمت آخر نگاهت به یک شخصیت مهم رو عوض می‌کنه.","review_without_spoiler",["character"],3),
        U("summary","Despite a few predictable moments, the performances and atmosphere make it worth watching.","با وجود چند لحظه قابل‌پیش‌بینی، بازی‌ها و فضا باعث می‌شن ارزش دیدن داشته باشه.","conclude_review",["predictable","performance"],3),
    ], grammar=["participle_adjectives","relative_clauses","concession"], fill=["The story is interesting, but the middle becomes a little ___.",["predictable","engaged","performed","audience"],"predictable"]),

make_spec(index=35, slug="b2-news-discussion", topic="simple-messages", title="News & Everyday Current Events",
    vocab=[V("headline","headline","تیتر"),V("source","source","منبع"),V("report","report","گزارش"),V("claim","claim","ادعا"),V("official","official","رسمی","adjective"),V("comment","comment","نظر / اظهار نظر"),V("implication","implication","پیامد احتمالی"),V("verify","verify","راستی‌آزمایی کردن","verb")],
    utterances=[
        U("summary","The report says the city plans to expand late-night public transport on weekends.","گزارش می‌گه شهر قصد داره آخر هفته‌ها حمل‌ونقل عمومی شبانه رو گسترش بده.","summarize_news",["report","source"],1),
        U("fact","The official announcement confirms the trial will begin next month in three districts.","اعلام رسمی تأیید می‌کنه آزمایش ماه بعد در سه منطقه شروع می‌شه.","identify_confirmed_fact",["official","verify"],1),
        U("claim","One group claims the change will reduce traffic, but that is still a prediction rather than a confirmed result.","یک گروه ادعا می‌کنه این تغییر ترافیک رو کم می‌کنه، ولی این هنوز پیش‌بینیه نه نتیجه تأییدشده.","distinguish_claim",["claim","verify"],2),
        U("source","I'd like to check the original source before repeating the headline because the short version leaves out several conditions.","قبل از تکرار تیتر می‌خوام منبع اصلی رو چک کنم چون نسخه کوتاه چند شرط رو حذف کرده.","check_source",["headline","source"],2),
        U("comment","The mayor's comment supports the plan, while local business owners have expressed mixed views.","اظهارنظر شهردار از طرح حمایت می‌کنه، در حالی که صاحبان کسب‌وکار محلی نظرهای متفاوتی داشتن.","compare_comments",["comment"],3),
        U("implication","If the trial succeeds, one likely implication is that service could expand to more neighborhoods.","اگر آزمایش موفق باشه، یک پیامد محتمل اینه که خدمات به محله‌های بیشتری گسترش پیدا کنه.","discuss_implication",["implication"],3),
        U("probability","It's too early to say whether the change will affect traffic significantly, but it may change travel habits.","هنوز زوده بگیم تغییر اثر زیادی روی ترافیک داره یا نه، ولی ممکنه عادت‌های رفت‌وآمد رو عوض کنه.","qualify_prediction",["implication"],3),
        U("relay","So the confirmed fact is the trial itself; the wider benefits are still being debated.","پس واقعیت تأییدشده خود آزمایشه؛ مزایای گسترده‌تر هنوز محل بحثه.","separate_fact_comment",["verify","comment"],3),
    ], grammar=["passive","reported_speech","probability_language"], fill=["I'd like to check the original ___ before repeating the headline.",["source","claim","comment","implication"],"source"]),

make_spec(index=36, slug="b2-digital-communication", topic="simple-messages", title="Digital Communication & Privacy",
    vocab=[V("privacy","privacy","حریم خصوصی"),V("permission","permission","اجازه دسترسی"),V("account","account","حساب کاربری"),V("data","data","داده"),V("setting","setting","تنظیم"),V("misunderstanding","misunderstanding","سوءتفاهم"),V("platform","platform","پلتفرم"),V("notification","notification","اعلان")],
    utterances=[
        U("privacy","I changed the privacy settings so that only people I approve can see the full profile.","تنظیمات حریم خصوصی رو عوض کردم تا فقط آدم‌هایی که تأیید می‌کنم پروفایل کامل رو ببینن.","adjust_privacy",["privacy","setting"],1),
        U("permission","The app asks for location permission, but that feature doesn't seem necessary for what I use it for.","اپ اجازه موقعیت مکانی می‌خواد، ولی اون قابلیت برای کاری که من باهاش می‌کنم ضروری به نظر نمیاد.","evaluate_permission",["permission"],1),
        U("data","If data is stored for longer than necessary, users should be told clearly why.","اگر داده بیشتر از نیاز نگهداری می‌شه، باید واضح به کاربر گفته بشه چرا.","discuss_data_policy",["data","privacy"],2),
        U("account","My account was temporarily locked after several login attempts from a device I didn't recognize.","حسابم بعد از چند تلاش ورود از دستگاهی که نمی‌شناختم موقتاً قفل شد.","describe_account_issue",["account"],2),
        U("misunderstanding","A short message can create a misunderstanding because tone is harder to judge online.","پیام کوتاه می‌تونه سوءتفاهم ایجاد کنه چون لحن آنلاین سخت‌تر تشخیص داده می‌شه.","explain_online_misunderstanding",["misunderstanding"],3),
        U("reported","The platform said the notification had been sent automatically, not by the other user.","پلتفرم گفت اعلان خودکار ارسال شده، نه توسط کاربر دیگه.","relay_platform_explanation",["platform","notification"],3),
        U("boundary","I turn off nonessential notifications because constant alerts make it harder to focus.","اعلان‌های غیرضروری رو خاموش می‌کنم چون هشدار مداوم تمرکز رو سخت‌تر می‌کنه.","set_digital_boundary",["notification","setting"],3),
        U("condition","If a service needs sensitive data, I want to understand the purpose before I agree to share it.","اگر سرویسی داده حساس لازم داره، قبل از موافقت با اشتراک‌گذاری می‌خوام هدفش رو بفهمم.","set_privacy_condition",["data","permission"],3),
    ], grammar=["conditionals","passive","reported_speech"], fill=["The app asks for location ___ even though I don't use that feature.",["permission","privacy","account","notification"],"permission"]),

make_spec(index=37, slug="b2-relationships-misunderstandings", topic="polite-language", title="Relationships & Misunderstandings",
    vocab=[V("misunderstanding","misunderstanding","سوءتفاهم"),V("perspective","perspective","دیدگاه"),V("intention","intention","قصد"),V("assume","assume","فرض کردن","verb"),V("clarify","clarify","روشن کردن","verb"),V("apologize","apologize","عذرخواهی کردن","verb"),V("tension","tension","تنش"),V("repair","repair","ترمیم کردن رابطه","verb")],
    utterances=[
        U("perspective","From my perspective, the message sounded final, but I can see why you read it differently.","از دید من پیام قطعی به نظر می‌رسید، ولی می‌فهمم چرا تو متفاوت برداشت کردی.","compare_perspectives",["perspective","misunderstanding"],1),
        U("intention","My intention was to save time, not to make the decision without you.","قصدم صرفه‌جویی در زمان بود، نه اینکه بدون تو تصمیم بگیرم.","clarify_intention",["intention","clarify"],1),
        U("assume","I assumed you were busy because you didn't reply, but I should have checked instead of guessing.","فکر کردم سرت شلوغه چون جواب ندادی، ولی باید به‌جای حدس زدن می‌پرسیدم.","recognize_assumption",["assume"],2),
        U("reported","You said you needed space, and I understood that as not wanting to discuss it at all.","گفتی فضا لازم داری و من این رو این‌طور فهمیدم که اصلاً نمی‌خوای درباره‌اش حرف بزنی.","relay_misunderstood_message",["misunderstanding"],2),
        U("deduce","She might not have realized how abrupt the message sounded after such a stressful day.","شاید متوجه نشده پیام بعد از اون روز پراسترس چقدر تند به نظر می‌رسه.","consider_alternative_explanation",["perspective"],3),
        U("apologize","I want to apologize for the tone, even though I didn't mean to upset you.","می‌خوام بابت لحن عذرخواهی کنم، حتی اگر قصد ناراحت کردنت رو نداشتم.","apologize_tactfully",["apologize","intention"],3),
        U("repair","If we clarify expectations now, we can probably prevent the same tension from building again.","اگر الان انتظارها رو روشن کنیم، احتمالاً می‌تونیم جلوی شکل گرفتن دوباره همین تنش رو بگیریم.","repair_communication",["clarify","repair","tension"],3),
        U("close","We don't have to agree on every detail, but I do want us to understand what each person meant.","لازم نیست روی همه جزئیات موافق باشیم، ولی می‌خوام بفهمیم هر کدوم واقعاً چه منظوری داشتیم.","restore_understanding",["perspective","repair"],3),
    ], grammar=["reported_speech","modal_deduction","conditionals"], fill=["I ___ you were busy, but I should have checked instead of guessing.",["assumed","clarified","repaired","apologized"],"assumed"]),

make_spec(index=38, slug="b2-community-life", topic="simple-messages", title="Community & Everyday Participation",
    vocab=[V("resident","resident","ساکن"),V("accessible","accessible","قابل‌دسترسی","adjective"),V("volunteer","volunteer","داوطلب"),V("concern","concern","نگرانی"),V("responsibility","responsibility","مسئولیت"),V("proposal","proposal","پیشنهاد"),V("local_service","local service","خدمت محلی"),V("participate","participate","مشارکت کردن","verb")],
    utterances=[
        U("concern","Several residents have raised the same concern about the evening bus service.","چند ساکن نگرانی مشابهی درباره سرویس اتوبوس عصر مطرح کرده‌ان.","describe_community_concern",["resident","concern","local_service"],1),
        U("accessible","The library is useful, but its evening events aren't accessible to people who finish work late.","کتابخونه مفیده، ولی برنامه‌های عصرش برای کسانی که دیر از کار برمی‌گردن در دسترس نیست.","identify_access_issue",["accessible","local_service"],1),
        U("proposal","One practical proposal is to test later opening hours twice a week for two months.","یک پیشنهاد عملی اینه که دو ماه، هفته‌ای دو بار ساعات باز بودن دیرتر رو امتحان کنیم.","make_community_proposal",["proposal"],2),
        U("responsibility","The council has responsibility for maintenance, but residents can still help report problems quickly.","شورا مسئول نگهداریه، ولی ساکن‌ها هم می‌تونن مشکلات رو سریع گزارش کنن.","clarify_shared_responsibility",["responsibility","resident"],2),
        U("volunteer","I'd be willing to volunteer for one event a month if the tasks and time commitment were clear.","اگر کارها و زمان موردنیاز روشن باشه، حاضرم ماهی یک برنامه داوطلب بشم.","offer_participation",["volunteer","participate"],3),
        U("passive","The playground was repaired last year, but two damaged lights still haven't been replaced.","زمین بازی پارسال تعمیر شد، ولی دو چراغ خراب هنوز عوض نشده.","report_public_issue",["local_service"],3),
        U("effect","If more information were shared in one place, it would be easier for residents to participate.","اگر اطلاعات در یک جا منتشر می‌شد، مشارکت برای ساکن‌ها راحت‌تر بود.","suggest_participation_improvement",["resident","participate"],3),
        U("solution","The best solution probably combines better communication with one small change to the service itself.","بهترین راه‌حل احتمالاً ترکیبی از ارتباط بهتر و یک تغییر کوچک در خود خدمته.","synthesize_solution",["local_service","proposal"],3),
    ], grammar=["passive","modals","cause_result"], fill=["Several ___ have raised the same concern about the bus service.",["residents","volunteers","proposals","responsibilities"],"residents"]),

make_spec(index=39, slug="b2-environment-choices", topic="common-actions", title="Environment & Everyday Choices",
    vocab=[V("waste","waste","پسماند / هدررفت"),V("reusable","reusable","قابل‌استفاده مجدد","adjective"),V("efficient","efficient","بهینه","adjective"),V("consumption","consumption","مصرف"),V("emission","emission","انتشار آلاینده"),V("impact","impact","اثر"),V("practical","practical","عملی","adjective"),V("tradeoff","trade-off","بده‌بستان")],
    utterances=[
        U("practical","I try to focus on practical changes I can maintain rather than perfect habits I won't keep.","سعی می‌کنم روی تغییرهای عملی و قابل‌حفظ تمرکز کنم، نه عادت‌های بی‌نقصی که ادامه نمی‌دم.","frame_environment_choice",["practical","impact"],1),
        U("waste","Planning meals more carefully has reduced food waste without increasing our weekly budget.","برنامه‌ریزی دقیق‌تر غذا هدررفت غذا رو بدون افزایش بودجه هفتگی کم کرده.","describe_waste_reduction",["waste"],1),
        U("reusable","Reusable products make sense when they are used often enough to replace many single-use items.","محصول قابل‌استفاده مجدد وقتی منطقیه که به اندازه کافی استفاده بشه تا جای تعداد زیادی یک‌بارمصرف رو بگیره.","qualify_reusable_choice",["reusable"],2),
        U("efficient","The newer appliance is more efficient, but replacing a working one immediately also has an environmental cost.","وسیله جدید بهینه‌تره، ولی عوض کردن فوری وسیله سالم هم هزینه محیط‌زیستی داره.","discuss_tradeoff",["efficient","tradeoff"],2),
        U("consumption","If we reduce unnecessary consumption, the effect can be larger than focusing on one small product choice.","اگر مصرف غیرضروری رو کم کنیم، اثرش می‌تونه از تمرکز روی یک انتخاب محصول کوچک بیشتر باشه.","compare_impacts",["consumption","impact"],3),
        U("emission","Public transport isn't practical for every journey, but it can reduce emissions for regular commuting.","حمل‌ونقل عمومی برای هر سفری عملی نیست، ولی برای رفت‌وآمد منظم می‌تونه انتشار رو کم کنه.","qualify_transport_choice",["emission","practical"],3),
        U("passive","A lot of packaging is thrown away immediately even when the product itself is used for years.","مقدار زیادی بسته‌بندی فوراً دور ریخته می‌شه، حتی وقتی خود محصول سال‌ها استفاده می‌شه.","describe_system_issue",["waste"],3),
        U("balance","I'd rather choose a few high-impact habits than feel guilty about every imperfect decision.","ترجیح می‌دم چند عادت با اثر بالا انتخاب کنم تا بابت هر تصمیم غیربی‌نقص عذاب وجدان بگیرم.","set_realistic_environment_strategy",["impact","practical"],3),
    ], grammar=["conditionals","passive","concession"], fill=["The newer appliance is more ___, but replacing a working one also has a cost.",["efficient","reusable","practical","waste"],"efficient"]),

make_spec(index=40, slug="b2-explaining-presenting", topic="questions", title="Explaining & Presenting Clearly",
    vocab=[V("outline","outline","طرح کلی"),V("signpost","signpost","نشانه‌گذاری ساختار صحبت","verb"),V("key_point","key point","نکته کلیدی"),V("example","example","مثال"),V("clarify","clarify","روشن کردن","verb"),V("audience","audience","مخاطب"),V("summary","summary","جمع‌بندی"),V("follow_up","follow-up","پیگیری / سؤال بعدی","noun")],
    utterances=[
        U("opening","First, I'll outline the problem, then compare two options, and finally explain my recommendation.","اول طرح کلی مشکل رو می‌گم، بعد دو گزینه رو مقایسه می‌کنم و در آخر پیشنهادم رو توضیح می‌دم.","signpost_presentation",["outline","signpost"],1),
        U("point","The key point is that the current process creates the same delay at two different stages.","نکته کلیدی اینه که روند فعلی در دو مرحله مختلف همون تأخیر رو ایجاد می‌کنه.","state_key_point",["key_point"],1),
        U("example","For example, last month three requests waited more than a day before reaching the right team.","مثلاً ماه قبل سه درخواست بیشتر از یک روز منتظر موندن تا به تیم درست برسن.","support_with_example",["example"],2),
        U("audience","I'm keeping the technical detail brief because the audience mainly needs the practical impact.","جزئیات فنی رو کوتاه نگه می‌دارم چون مخاطب بیشتر اثر عملی رو لازم داره.","adapt_to_audience",["audience"],2),
        U("clarify","Let me clarify what I mean by 'faster': I mean fewer waiting stages, not less review.","بذارید روشن کنم منظورم از «سریع‌تر» چیه: مراحل انتظار کمتر، نه بررسی کمتر.","clarify_term",["clarify"],3),
        U("question","That's a useful follow-up question. The short answer is yes, but only if the pilot stays small.","سؤال پیگیری خوبیه. جواب کوتاه بله‌ست، ولی فقط اگر پایلوت کوچک بمونه.","handle_followup",["follow_up"],3),
        U("summary","To sum up, both options are workable, but the second one reduces the biggest source of delay.","در جمع‌بندی هر دو گزینه قابل‌اجران، ولی دومی بزرگ‌ترین منبع تأخیر رو کم می‌کنه.","summarize_presentation",["summary"],3),
        U("close","If anything was unclear, I'm happy to go back to the relevant section before we decide.","اگر چیزی نامشخص بود، خوشحال می‌شم قبل از تصمیم به بخش مربوط برگردم.","invite_questions",["clarify","audience"],3),
    ], grammar=["signposting","relative_clauses","softening"], fill=["The ___ point is that the same delay appears twice.",["key","follow-up","outline","audience"],"key"]),
]

if __name__ == "__main__":
    write_units(UNITS)
