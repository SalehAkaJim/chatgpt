#!/usr/bin/env python3
from scripts.generate_b2_batch import V, U
from scripts.generate_b2_support import make_spec, write_units

UNITS = [
make_spec(index=11, slug="b2-nuanced-opinions", topic="likes-dislikes", title="Nuanced Opinions",
    vocab=[V("nuanced","nuanced","دارای ظرافت و جزئیات","adjective"),V("extent","extent","حد / میزان"),V("overall","overall","در مجموع","adverb"),V("exception","exception","استثنا"),V("perspective","perspective","دیدگاه"),V("tend_to","tend to","تمایل داشتن به","phrase"),V("valid","valid","معتبر / قابل‌قبول","adjective"),V("overstate","overstate","بیش از حد بزرگ جلوه دادن","verb")],
    utterances=[
        U("position","Overall, I support the idea, although I think some of the benefits have been overstated.","در مجموع از ایده حمایت می‌کنم، هرچند فکر می‌کنم بعضی از مزیت‌ها بیش از حد بزرگ جلوه داده شده.","state_qualified_opinion",["overall","overstate"],1),
        U("extent","To some extent, the criticism is valid, especially when resources are limited.","تا حدی این انتقاد قابل‌قبوله، مخصوصاً وقتی منابع محدوده.","partly_agree",["extent","valid"],1),
        U("perspective","From a user's perspective, convenience matters, but reliability matters just as much.","از دید کاربر، راحتی مهمه ولی قابل‌اعتماد بودن هم به همون اندازه مهمه.","frame_perspective",["perspective"],2),
        U("tendency","I tend to prefer simpler systems, unless the extra complexity solves a real problem.","معمولاً سیستم ساده‌تر رو ترجیح می‌دم، مگر اینکه پیچیدگی اضافه واقعاً مشکلی رو حل کنه.","express_tendency",["tend_to","exception"],2),
        U("exception","There are clear exceptions, so I wouldn't apply the same rule in every case.","استثناهای مشخصی وجود داره، پس این قانون رو در همه موارد یکسان اجرا نمی‌کردم.","acknowledge_exception",["exception"],3),
        U("balance","The policy is useful in principle; however, its effect depends heavily on how it is implemented.","این سیاست در اصل مفیده؛ با این حال اثرش خیلی به نحوه اجرا بستگی داره.","balance_view",["nuanced"],3),
        U("not_absolute","I wouldn't say the approach is wrong; I'd say it's less suitable for this particular situation.","نمی‌گم این رویکرد اشتباهه؛ می‌گم برای این موقعیت خاص کمتر مناسبه.","avoid_absolute_claim",["nuanced"],3),
        U("conclusion","My view is positive overall, but with enough reservations that I'd want a small trial first.","در مجموع دیدم مثبته، ولی به اندازه‌ای ملاحظه دارم که اول یک آزمایش کوچک می‌خوام.","conclude_opinion",["overall"],3),
    ], grammar=["hedging","concession","contrast"], fill=["To some ___, the criticism is valid.",["extent","exception","overall","perspective"],"extent"]),

make_spec(index=12, slug="b2-agreement-disagreement", topic="likes-dislikes", title="Constructive Agreement & Disagreement",
    vocab=[V("concede","concede","پذیرفتن یک نکته از طرف مقابل","verb"),V("counterargument","counterargument","استدلال مخالف"),V("fair_point","fair point","نکته منصفانه","phrase"),V("challenge","challenge","به چالش کشیدن","verb"),V("assumption","assumption","فرض"),V("partly","partly","تا حدی","adverb"),V("convincing","convincing","قانع‌کننده","adjective"),V("common_ground","common ground","نقطه مشترک","phrase")],
    utterances=[
        U("agree","That's a fair point, and I agree that the current process is too slow.","نکته منصفانه‌ایه و موافقم که روند فعلی بیش از حد کنده.","acknowledge_point",["fair_point"],1),
        U("qualify","I only partly agree with the conclusion, because the data can be interpreted another way.","فقط تا حدی با نتیجه موافقم، چون داده‌ها رو می‌شه جور دیگه‌ای هم تفسیر کرد.","partly_agree",["partly","counterargument"],1),
        U("challenge","I'd challenge the assumption that a larger team automatically works faster.","این فرض رو به چالش می‌کشم که تیم بزرگ‌تر خودکار سریع‌تر کار می‌کنه.","challenge_assumption",["challenge","assumption"],2),
        U("concede","I can concede that your option is cheaper, even though I still think it's riskier.","می‌تونم بپذیرم که گزینه تو ارزان‌تره، هرچند هنوز فکر می‌کنم ریسک بیشتری داره.","concede_point",["concede"],2),
        U("counter","The counterargument is that short-term savings could create higher costs later.","استدلال مخالف اینه که صرفه‌جویی کوتاه‌مدت ممکنه بعداً هزینه بیشتری ایجاد کنه.","present_counterargument",["counterargument"],3),
        U("convincing","That explanation is more convincing, but I'd still like to see evidence from a real test.","این توضیح قانع‌کننده‌تره، ولی هنوز دوست دارم شواهد یک آزمایش واقعی رو ببینم.","respond_to_argument",["convincing"],3),
        U("common","I think our common ground is that the problem needs fixing, even if we disagree about how.","فکر می‌کنم نقطه مشترکمون اینه که مشکل باید حل بشه، حتی اگر درباره روش اختلاف داریم.","identify_common_ground",["common_ground"],3),
        U("close","We may not fully agree, but we have narrowed the disagreement to one practical question.","شاید کاملاً موافق نباشیم، ولی اختلاف رو به یک سؤال عملی محدود کردیم.","close_disagreement",["common_ground"],3),
    ], grammar=["concession","contrast","softening"], fill=["That's a ___ point, and I agree the process is too slow.",["fair","convincing","common","challenged"],"fair"]),

make_spec(index=13, slug="b2-reasons-results", topic="simple-messages", title="Reasons, Results & Evidence",
    vocab=[V("evidence","evidence","شواهد"),V("result","result","نتیجه"),V("factor","factor","عامل"),V("indicate","indicate","نشان دادن","verb"),V("significant","significant","قابل‌توجه","adjective"),V("contribute","contribute","سهم داشتن / کمک کردن","verb"),V("pattern","pattern","الگو"),V("support","support","پشتیبانی کردن از یک ادعا","verb")],
    utterances=[
        U("reason","The main reason for the delay was a supplier problem, not a lack of staff.","دلیل اصلی تأخیر مشکل تأمین‌کننده بود، نه کمبود نیرو.","state_reason",["factor"],1),
        U("result","As a result, the team had to change the schedule twice in one week.","در نتیجه تیم مجبور شد در یک هفته دو بار برنامه رو عوض کنه.","state_result",["result"],1),
        U("evidence","The strongest evidence is the same pattern appearing across three separate months.","قوی‌ترین شاهد اینه که همون الگو در سه ماه جدا دیده شده.","cite_evidence",["evidence","pattern"],2),
        U("indicate","That doesn't prove the cause by itself, but it does indicate a consistent relationship.","این به‌تنهایی علت رو ثابت نمی‌کنه، ولی یک رابطه پیوسته رو نشون می‌ده.","qualify_evidence",["indicate"],2),
        U("contribute","Several smaller factors also contributed, particularly unclear handovers between teams.","چند عامل کوچک‌تر هم نقش داشتن، مخصوصاً تحویل‌های نامشخص بین تیم‌ها.","add_supporting_reason",["contribute","factor"],3),
        U("significant","The improvement was significant enough to justify keeping the new process.","بهبود به اندازه‌ای قابل‌توجه بود که حفظ روند جدید رو توجیه کنه.","evaluate_result",["significant"],3),
        U("support","The survey supports the general conclusion, although the sample was fairly small.","نظرسنجی از نتیجه کلی پشتیبانی می‌کنه، هرچند نمونه نسبتاً کوچیک بود.","support_claim",["support","evidence"],3),
        U("summary","Taken together, the evidence points to one main cause and two secondary factors.","در مجموع شواهد به یک علت اصلی و دو عامل فرعی اشاره می‌کنه.","synthesize_evidence",["evidence","factor"],3),
    ], grammar=["cause_result","examples","relative_clauses"], fill=["Several smaller factors also ___ to the delay.",["contributed","indicated","supported","resulted"],"contributed"]),

make_spec(index=14, slug="b2-comparing-alternatives", topic="prices", title="Comparing Alternatives",
    vocab=[V("criterion","criterion","معیار"),V("reliable","reliable","قابل‌اعتماد","adjective"),V("affordable","affordable","مقرون‌به‌صرفه","adjective"),V("flexible","flexible","منعطف","adjective"),V("drawback","drawback","نقطه‌ضعف"),V("advantage","advantage","مزیت"),V("value","value","ارزش نسبت به هزینه"),V("priority","priority","اولویت")],
    utterances=[
        U("compare","The first option is more affordable, whereas the second is noticeably more reliable.","گزینه اول مقرون‌به‌صرفه‌تره، در حالی که دومی به شکل محسوسی قابل‌اعتمادتره.","compare_criteria",["affordable","reliable"],1),
        U("priority","If reliability is your top priority, the higher price may be justified.","اگر قابل‌اعتماد بودن اولویت اصلیته، قیمت بالاتر شاید توجیه داشته باشه.","match_priority",["priority","reliable"],1),
        U("drawback","The main drawback of the cheaper plan is that it offers almost no flexibility.","نقطه‌ضعف اصلی برنامه ارزان‌تر اینه که تقریباً هیچ انعطافی نداره.","identify_drawback",["drawback","flexible"],2),
        U("advantage","Its biggest advantage is the ability to cancel without paying an extra fee.","بزرگ‌ترین مزیتش امکان لغو بدون پرداخت هزینه اضافه‌ست.","identify_advantage",["advantage"],2),
        U("criteria","I'd compare them on three criteria: total cost, reliability, and how easy they are to change.","من روی سه معیار مقایسه‌شون می‌کنم: هزینه کل، قابل‌اعتماد بودن و راحتی تغییر.","set_criteria",["criterion","reliable"],3),
        U("value","The mid-range option seems to offer the best overall value rather than simply the lowest price.","گزینه متوسط به‌جای فقط کمترین قیمت، بهترین ارزش کلی رو ارائه می‌ده.","assess_value",["value"],3),
        U("more_more","The more flexibility you need, the less attractive the basic plan becomes.","هرچه انعطاف بیشتری لازم داشته باشی، برنامه پایه کمتر جذاب می‌شه.","link_comparatives",["flexible"],3),
        U("decision","On balance, I'd pay slightly more for the option that reduces the biggest practical risk.","در مجموع کمی بیشتر برای گزینه‌ای می‌دم که بزرگ‌ترین ریسک عملی رو کم کنه.","make_comparison_decision",["value","priority"],3),
    ], grammar=["comparatives","contrast","the_more"], fill=["The main ___ of the cheaper plan is its lack of flexibility.",["drawback","advantage","criterion","value"],"drawback"]),

make_spec(index=15, slug="b2-recommendations", topic="requests", title="Recommendations with Reasons",
    vocab=[V("recommend","recommend","پیشنهاد کردن","verb"),V("suitable","suitable","مناسب","adjective"),V("constraint","constraint","محدودیت"),V("consider","consider","در نظر گرفتن","verb"),V("benefit","benefit","مزیت"),V("priority","priority","اولویت"),V("alternative","alternative","گزینه جایگزین"),V("worthwhile","worthwhile","ارزشمند","adjective")],
    utterances=[
        U("recommend","I'd recommend the direct train if comfort and predictable timing are your main priorities.","اگر راحتی و زمان‌بندی قابل‌پیش‌بینی اولویت اصلیته، قطار مستقیم رو پیشنهاد می‌کنم.","make_recommendation",["recommend","priority"],1),
        U("constraint","Given your budget constraint, the overnight bus is probably more realistic.","با توجه به محدودیت بودجه‌ات، اتوبوس شبانه احتمالاً واقع‌بینانه‌تره.","adapt_to_constraint",["constraint","suitable"],1),
        U("consider","You should also consider how much energy you'll have when you arrive.","بهتره این رو هم در نظر بگیری که وقتی می‌رسی چقدر انرژی خواهی داشت.","add_consideration",["consider"],2),
        U("benefit","The main benefit of leaving earlier is that you avoid the busiest part of the day.","مزیت اصلی زودتر راه افتادن اینه که از شلوغ‌ترین بخش روز دور می‌مونی.","explain_benefit",["benefit"],2),
        U("alternative","If the direct option sells out, a good alternative is to split the journey once.","اگر گزینه مستقیم پر شد، یک جایگزین خوب اینه که سفر رو یک بار تقسیم کنی.","offer_backup",["alternative"],3),
        U("suitable","That choice is more suitable for someone who values flexibility over speed.","اون انتخاب برای کسی که انعطاف رو به سرعت ترجیح می‌ده مناسب‌تره.","tailor_recommendation",["suitable"],3),
        U("worthwhile","Paying a little extra may be worthwhile if it removes a long and stressful transfer.","کمی هزینه بیشتر ممکنه ارزش داشته باشه اگر یک تعویض طولانی و پراسترس رو حذف کنه.","justify_extra_cost",["worthwhile"],3),
        U("final","So my first choice would be the train, with the bus as a practical backup.","پس انتخاب اولم قطاره و اتوبوس رو به‌عنوان گزینه پشتیبان عملی نگه می‌دارم.","summarize_recommendation",["recommend","alternative"],3),
    ], grammar=["recommendations","conditionals","purpose"], fill=["I'd ___ the direct train if comfort is your priority.",["recommend","consider","benefit","suitable"],"recommend"]),

make_spec(index=16, slug="b2-problem-solving", topic="requests", title="Collaborative Problem Solving",
    vocab=[V("constraint","constraint","محدودیت"),V("workable","workable","عملی / قابل‌اجرا","adjective"),V("proposal","proposal","پیشنهاد"),V("evaluate","evaluate","ارزیابی کردن","verb"),V("root_cause","root cause","علت ریشه‌ای"),V("resource","resource","منبع"),V("allocate","allocate","اختصاص دادن","verb"),V("solution","solution","راه‌حل")],
    utterances=[
        U("define","Before choosing a solution, we need to agree on the root cause of the problem.","قبل از انتخاب راه‌حل باید روی علت ریشه‌ای مشکل توافق کنیم.","define_problem",["solution","root_cause"],1),
        U("constraint","Our biggest constraint is time; we only have two days before the deadline.","بزرگ‌ترین محدودیت ما زمانه؛ فقط دو روز تا موعد داریم.","identify_constraint",["constraint"],1),
        U("proposal","One proposal is to reduce the scope now and add the optional features later.","یک پیشنهاد اینه که الان دامنه کار رو کم کنیم و قابلیت‌های اختیاری رو بعداً اضافه کنیم.","propose_solution",["proposal"],2),
        U("evaluate","We should evaluate each option by speed, risk, and how much extra work it creates.","باید هر گزینه رو بر اساس سرعت، ریسک و حجم کار اضافه ارزیابی کنیم.","evaluate_options",["evaluate"],2),
        U("allocate","If we allocate one more person to testing, the plan becomes much more realistic.","اگر یک نفر دیگه به تست اختصاص بدیم، برنامه خیلی واقع‌بینانه‌تر می‌شه.","reallocate_resource",["allocate","resource"],3),
        U("workable","The compromise isn't perfect, but it looks workable within the current constraints.","راه‌حل میانه کامل نیست، ولی با محدودیت‌های فعلی قابل‌اجرا به نظر میاد.","assess_solution",["workable","constraint"],3),
        U("agree","If everyone agrees, let's try this approach today and review the result tomorrow morning.","اگر همه موافقن امروز این روش رو امتحان کنیم و فردا صبح نتیجه رو بررسی کنیم.","agree_action",["solution"],3),
        U("fallback","If that doesn't work, our fallback is to delay the least important part rather than the whole project.","اگر جواب نداد، گزینه پشتیبان اینه که کم‌اهمیت‌ترین بخش رو عقب بندازیم نه کل پروژه رو.","set_fallback",["workable"],3),
    ], grammar=["conditionals","negotiation","softening"], fill=["The plan isn't perfect, but it looks ___ within our current constraints.",["workable","allocated","root","evaluated"],"workable"]),

make_spec(index=17, slug="b2-complaints-escalation", topic="requests", title="Complaints & Escalation",
    vocab=[V("unresolved","unresolved","حل‌نشده","adjective"),V("escalate","escalate","به سطح بالاتر ارجاع دادن","verb"),V("refund","refund","بازپرداخت"),V("replacement","replacement","جایگزین"),V("previously","previously","قبلاً","adverb"),V("remedy","remedy","راه جبران"),V("inconvenience","inconvenience","دردسر / زحمت"),V("confirmation","confirmation","تأیید")],
    utterances=[
        U("history","I've contacted support twice already, but the issue is still unresolved.","تا حالا دو بار با پشتیبانی تماس گرفته‌ام، ولی مشکل هنوز حل نشده.","summarize_prior_attempts",["previously","unresolved"],1),
        U("impact","The repeated cancellations have caused significant inconvenience because I rearranged my schedule each time.","لغوهای تکراری دردسر زیادی ایجاد کرده چون هر بار برنامه‌ام رو جابه‌جا کردم.","explain_impact",["inconvenience"],1),
        U("request","At this point, I'd like either a confirmed replacement date or a full refund.","در این مرحله یا یک تاریخ جایگزین تأییدشده می‌خوام یا بازپرداخت کامل.","request_outcome",["replacement","refund"],2),
        U("escalate","If that can't be arranged today, could you please escalate the case to a supervisor?","اگر امروز قابل‌حل نیست لطفاً می‌تونید پرونده رو به مسئول بالاتر ارجاع بدید؟","request_escalation",["escalate"],2),
        U("remedy","A discount on a future order doesn't really remedy the problem I've had with this one.","تخفیف سفارش آینده واقعاً مشکل این سفارش رو جبران نمی‌کنه.","reject_remedy",["remedy"],3),
        U("passive","I was told the refund had been approved, but no confirmation has been sent.","به من گفته شد بازپرداخت تأیید شده، ولی هیچ تأییدی ارسال نشده.","report_missing_confirmation",["refund","confirmation"],3),
        U("firm","I understand the delay, but I do need a specific resolution rather than another general apology.","تأخیر رو درک می‌کنم، ولی واقعاً به یک راه‌حل مشخص نیاز دارم نه یک عذرخواهی کلی دیگه.","insist_politely",["unresolved"],3),
        U("close","Please send the final confirmation by email so that we both have a clear record of the agreement.","لطفاً تأیید نهایی رو ایمیل کنید تا هر دو یک سابقه روشن از توافق داشته باشیم.","request_record",["confirmation"],3),
    ], grammar=["present_perfect","passive","formal_requests"], fill=["I've contacted support twice, but the issue is still ___.",["unresolved","escalated","refunded","confirmed"],"unresolved"]),

make_spec(index=18, slug="b2-product-research", topic="shopping", title="Product Research & Decisions",
    vocab=[V("reliability","reliability","قابل‌اعتماد بودن"),V("warranty","warranty","گارانتی"),V("feature","feature","قابلیت"),V("review","review","بررسی / نظر کاربر"),V("durable","durable","بادوام","adjective"),V("specification","specification","مشخصات فنی"),V("suitable","suitable","مناسب","adjective"),V("value","value","ارزش خرید")],
    utterances=[
        U("needs","I'm not looking for the most powerful model; I need one that's reliable for daily use.","دنبال قوی‌ترین مدل نیستم؛ مدلی می‌خوام که برای استفاده روزانه قابل‌اعتماد باشه.","define_product_need",["reliability"],1),
        U("specs","The specifications look impressive, but several features are things I'd rarely use.","مشخصات چشمگیره، ولی چند قابلیت چیزهایی هستن که به‌ندرت استفاده می‌کنم.","evaluate_features",["specification","feature"],1),
        U("reviews","Most reviews are positive about performance, although battery life gets mixed comments.","بیشتر بررسی‌ها درباره عملکرد مثبتن، هرچند درباره عمر باتری نظرها متفاوته.","summarize_reviews",["review"],2),
        U("warranty","The longer warranty makes the more expensive model less risky over several years.","گارانتی طولانی‌تر باعث می‌شه مدل گران‌تر در چند سال ریسک کمتری داشته باشه.","consider_warranty",["warranty"],2),
        U("durable","I'd rather pay for something durable than replace a cheaper product every year.","ترجیح می‌دم برای چیز بادوام پول بدم تا هر سال محصول ارزون‌تر رو عوض کنم.","value_durability",["durable","value"],3),
        U("suitable","The smaller model is probably more suitable because portability matters more to me than screen size.","مدل کوچک‌تر احتمالاً مناسب‌تره چون قابل‌حمل بودن برام مهم‌تر از اندازه صفحه‌ست.","match_product_to_need",["suitable"],3),
        U("reported","Several owners said the software had improved after recent updates.","چند کاربر گفتن نرم‌افزار بعد از به‌روزرسانی‌های اخیر بهتر شده.","relay_user_feedback",["review"],3),
        U("decision","Considering price, warranty, and reliability together, the mid-range version seems like the best value.","با در نظر گرفتن قیمت، گارانتی و قابل‌اعتماد بودن، نسخه متوسط بهترین ارزش خرید رو داره.","make_informed_decision",["value","warranty","reliability"],3),
    ], grammar=["relative_clauses","reported_speech","comparatives"], fill=["The longer ___ makes the expensive model less risky.",["warranty","feature","review","specification"],"warranty"]),

make_spec(index=19, slug="b2-services-repairs", topic="shopping", title="Services, Repairs & Follow-up",
    vocab=[V("fault","fault","ایراد"),V("repair","repair","تعمیر"),V("technician","technician","تکنسین"),V("warranty","warranty","گارانتی"),V("diagnose","diagnose","عیب‌یابی کردن","verb"),V("replacement","replacement","قطعه / وسیله جایگزین"),V("follow_up","follow up","پیگیری کردن","phrasal_verb"),V("estimate","estimate","برآورد هزینه")],
    utterances=[
        U("fault","The fault only appears after the device has been running for about twenty minutes.","ایراد فقط بعد از حدود بیست دقیقه روشن بودن دستگاه ظاهر می‌شه.","describe_fault",["fault"],1),
        U("diagnose","The technician said they needed another day to diagnose the cause properly.","تکنسین گفت برای عیب‌یابی درست علت یک روز دیگه زمان لازم داره.","relay_diagnosis_update",["technician","diagnose"],1),
        U("causative","I had the battery replaced last month, so I don't think that part is causing the problem.","ماه پیش باتری رو عوض کردم، پس فکر نمی‌کنم اون قطعه باعث مشکل باشه.","describe_previous_repair",["replacement","repair"],2),
        U("estimate","Could you give me a written estimate before any additional repair work is carried out?","می‌شه قبل از انجام تعمیر اضافه یک برآورد کتبی بهم بدید؟","request_estimate",["estimate","repair"],2),
        U("warranty","If the same fault is covered by the warranty, I shouldn't be charged for a second repair.","اگر همون ایراد تحت گارانتیه، نباید برای تعمیر دوم هزینه بدم.","clarify_warranty",["fault","warranty"],3),
        U("followup","I'm following up because I was told the replacement part would arrive yesterday.","دارم پیگیری می‌کنم چون گفته شده بود قطعه جایگزین دیروز می‌رسه.","follow_up_service",["follow_up","replacement"],3),
        U("passive","The device was returned to me, but the original issue hasn't been fully resolved.","دستگاه به من برگردونده شد، ولی مشکل اصلی کامل حل نشده.","report_unsuccessful_service",["repair"],3),
        U("next","I'd like to know what the next step is and whether another technician needs to inspect it.","می‌خوام بدونم مرحله بعد چیه و آیا یک تکنسین دیگه باید بررسیش کنه یا نه.","request_next_step",["technician","diagnose"],3),
    ], grammar=["causative","passive","reported_speech"], fill=["I had the battery ___ last month.",["replaced","replace","replacing","replacement"],"replaced"]),

make_spec(index=20, slug="b2-money-budgeting", topic="prices", title="Money & Budgeting",
    vocab=[V("budget","budget","بودجه"),V("recurring","recurring","تکرارشونده","adjective"),V("expense","expense","هزینه"),V("savings","savings","پس‌انداز"),V("afford","afford","از پس هزینه برآمدن","verb"),V("priority","priority","اولویت"),V("roughly","roughly","تقریباً","adverb"),V("cut_back","cut back","کم کردن هزینه","phrasal_verb")],
    utterances=[
        U("budget","I try to build my budget around fixed expenses first and treat optional spending separately.","سعی می‌کنم اول بودجه رو بر اساس هزینه‌های ثابت بچینم و خرج اختیاری رو جدا حساب کنم.","explain_budget_method",["budget","expense"],1),
        U("recurring","Recurring costs are easy to ignore because each one looks small on its own.","هزینه‌های تکرارشونده رو راحت می‌شه نادیده گرفت چون هر کدوم جداگانه کم به نظر می‌رسه.","identify_budget_risk",["recurring","expense"],1),
        U("roughly","Rent and utilities take roughly forty percent of my monthly income.","اجاره و قبوض تقریباً چهل درصد درآمد ماهانه‌ام رو می‌گیرن.","approximate_amount",["roughly","budget"],2),
        U("savings","I'd rather protect my regular savings than spend more on short-term convenience.","ترجیح می‌دم پس‌انداز منظمم رو حفظ کنم تا برای راحتی کوتاه‌مدت بیشتر خرج کنم.","state_saving_priority",["savings","priority"],2),
        U("cutback","If I need to cut back, subscriptions and eating out are the first places I'd look.","اگر لازم باشه هزینه رو کم کنم، اول سراغ اشتراک‌ها و بیرون غذا خوردن می‌رم.","identify_savings_option",["cut_back"],3),
        U("afford","I could afford the purchase now, but it would leave almost no room for unexpected expenses.","الان از پس خریدش برمیام، ولی تقریباً هیچ جایی برای هزینه غیرمنتظره باقی نمی‌ذاره.","assess_affordability",["afford","expense"],3),
        U("tradeoff","Spending a little more on housing means I need to be stricter in other parts of the budget.","کمی بیشتر خرج مسکن کردن یعنی باید در بخش‌های دیگه بودجه سخت‌گیرتر باشم.","explain_tradeoff",["budget","priority"],3),
        U("review","I review the numbers every few months because small recurring costs tend to change over time.","هر چند ماه عددها رو مرور می‌کنم چون هزینه‌های تکرارشونده معمولاً با زمان تغییر می‌کنن.","review_budget",["recurring","budget"],3),
    ], grammar=["quantifiers","conditionals","comparatives"], fill=["Rent takes ___ forty percent of my monthly income.",["roughly","recurring","afford","savings"],"roughly"]),
]

if __name__ == "__main__":
    write_units(UNITS)
