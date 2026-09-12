#!/usr/bin/env python3
from scripts.generate_b2_batch import V, U
from scripts.generate_b2_support import make_spec, write_units

UNITS = [
make_spec(index=21, slug="b2-food-dietary-needs", topic="restaurants", title="Food & Dietary Needs",
    vocab=[V("dietary","dietary","مربوط به رژیم غذایی","adjective"),V("ingredient","ingredient","مواد تشکیل‌دهنده"),V("allergy","allergy","حساسیت"),V("cross_contamination","cross-contamination","آلودگی متقاطع"),V("substitute","substitute","جایگزین","noun"),V("prepared","prepared","آماده‌شده","adjective"),V("restriction","restriction","محدودیت غذایی"),V("suitable","suitable","مناسب","adjective")],
    utterances=[
        U("restriction","I have a dietary restriction, so I need to check a few ingredients before ordering.","یک محدودیت غذایی دارم، برای همین قبل از سفارش باید چند تا ماده رو چک کنم.","explain_dietary_need",["dietary","restriction","ingredient"],1),
        U("allergy","It's a serious nut allergy, not just a preference, so cross-contamination matters too.","حساسیت جدی به آجیله، فقط ترجیح غذایی نیست، برای همین آلودگی متقاطع هم مهمه.","clarify_allergy",["allergy","cross_contamination"],1),
        U("prepared","Could you tell me how the sauce is prepared and whether it contains any dairy?","می‌شه بگید سس چطور آماده می‌شه و آیا لبنیات داره یا نه؟","ask_preparation",["prepared","ingredient"],2),
        U("substitute","If the regular sauce contains cream, would it be possible to substitute the tomato sauce?","اگر سس معمولی خامه داره، می‌شه سس گوجه رو جایگزینش کرد؟","negotiate_substitute",["substitute"],2),
        U("suitable","Which dishes would be most suitable if I need both a gluten-free and dairy-free option?","اگر هم غذای بدون گلوتن و هم بدون لبنیات لازم داشته باشم، کدوم غذاها مناسب‌ترن؟","ask_suitable_options",["suitable","restriction"],3),
        U("passive","Is the bread prepared in the same kitchen area as the regular bread?","نان در همون بخش آشپزخانه‌ای آماده می‌شه که نان معمولی آماده می‌شه؟","check_cross_contamination",["prepared","cross_contamination"],3),
        U("preference","I'd rather have a simpler dish that I know is safe than take a risk with an uncertain ingredient.","ترجیح می‌دم غذای ساده‌تری بگیرم که می‌دونم امنه تا با یک ماده نامطمئن ریسک کنم.","state_preference",["ingredient","suitable"],3),
        U("confirm","Thanks for checking. Just to confirm, this version contains no nuts and is prepared separately.","ممنون که بررسی کردید. فقط برای تأیید، این نسخه آجیل نداره و جدا آماده می‌شه.","confirm_order",["allergy","prepared"],3),
    ], grammar=["relative_clauses","passive","softening"], fill=["Could you tell me which ___ are used in the sauce?",["ingredients","restrictions","substitutes","allergies"],"ingredients"]),

make_spec(index=22, slug="b2-health-history", topic="basic-health", title="Symptoms & Health History",
    vocab=[V("symptom","symptom","علامت"),V("persistent","persistent","مداوم","adjective"),V("gradually","gradually","به‌تدریج","adverb"),V("previous","previous","قبلی","adjective"),V("medication","medication","دارو"),V("worsen","worsen","بدتر شدن","verb"),V("relieve","relieve","کاهش دادن","verb"),V("history","history","سابقه پزشکی")],
    utterances=[
        U("duration","I've been having the same symptom for about ten days, although it comes and goes.","حدود ده روزه همین علامت رو دارم، هرچند میاد و می‌ره.","describe_duration",["symptom","persistent"],1),
        U("change","It started mildly, but it has gradually become more noticeable in the evenings.","اول خفیف بود، ولی کم‌کم عصرها محسوس‌تر شده.","describe_change",["gradually","worsen"],1),
        U("history","I've had a similar problem once before, but that episode only lasted two days.","یک بار قبلاً مشکل مشابه داشتم، ولی اون دفعه فقط دو روز طول کشید.","give_health_history",["history","previous"],2),
        U("medication","I'm taking my usual medication, and I haven't started anything new recently.","داروی همیشگی‌ام رو مصرف می‌کنم و اخیراً داروی جدیدی شروع نکرده‌ام.","report_medication",["medication"],2),
        U("worsen","Exercise doesn't seem to worsen it, but lack of sleep definitely makes it more uncomfortable.","ورزش ظاهراً بدترش نمی‌کنه، ولی کم‌خوابی قطعاً ناراحت‌کننده‌ترش می‌کنه.","identify_trigger",["worsen"],3),
        U("relief","Rest and drinking water seem to relieve the symptoms temporarily.","استراحت و آب خوردن ظاهراً علائم رو موقتاً کاهش می‌ده.","describe_relief",["relieve","symptom"],3),
        U("impact","The main problem is that it has been affecting my concentration at work.","مشکل اصلی اینه که روی تمرکزم سر کار اثر گذاشته.","describe_daily_impact",["persistent"],3),
        U("summary","So the symptoms have lasted more than a week, changed gradually, and are now affecting daily life.","پس علائم بیشتر از یک هفته طول کشیدن، تدریجی تغییر کردن و الان روی زندگی روزمره اثر دارن.","summarize_history",["symptom","gradually"],3),
    ], grammar=["present_perfect_continuous","for_since","present_perfect"], fill=["I've been having the same symptom ___ about ten days.",["for","since","during","from"],"for"]),

make_spec(index=23, slug="b2-wellbeing-lifestyle", topic="basic-health", title="Wellbeing & Lifestyle",
    vocab=[V("wellbeing","wellbeing","سلامت و حال خوب"),V("routine","routine","روال"),V("stress","stress","استرس"),V("sustainable","sustainable","قابل‌دوام","adjective"),V("screen_time","screen time","زمان استفاده از صفحه"),V("recover","recover","بازیابی توان / ریکاوری کردن","verb"),V("consistent","consistent","منظم و پیوسته","adjective"),V("balance","balance","تعادل")],
    utterances=[
        U("pattern","I've noticed that my wellbeing depends more on a consistent routine than on occasional big changes.","متوجه شدم حال خوبم بیشتر به روال منظم بستگی داره تا تغییرهای بزرگ گهگاهی.","identify_wellbeing_pattern",["wellbeing","consistent","routine"],1),
        U("stress","When work gets busy, stress affects my sleep before I notice any other sign.","وقتی کار شلوغ می‌شه، استرس قبل از هر نشونه دیگه روی خوابم اثر می‌ذاره.","connect_stress_sleep",["stress"],1),
        U("screen","I've considered reducing my screen time in the hour before bed.","به کم کردن زمان صفحه در یک ساعت قبل از خواب فکر کرده‌ام.","consider_change",["screen_time"],2),
        U("sustainable","A small change that I can maintain is more sustainable than an intense routine I quit after a week.","یک تغییر کوچیک که بتونم حفظش کنم از برنامه شدیدی که بعد یک هفته ولش کنم قابل‌دوام‌تره.","evaluate_habit",["sustainable","routine"],2),
        U("recover","I recover much better when I leave at least one evening a week completely unscheduled.","وقتی حداقل یک شب در هفته رو کاملاً بدون برنامه می‌ذارم خیلی بهتر ریکاوری می‌کنم.","describe_recovery",["recover","balance"],3),
        U("condition","If I exercise too late, I sometimes find it harder to fall asleep.","اگر خیلی دیر ورزش کنم بعضی وقت‌ها سخت‌تر خوابم می‌بره.","link_behavior_effect",["routine"],3),
        U("balance","For me, balance means having enough structure to stay healthy without making every day rigid.","برای من تعادل یعنی ساختار کافی برای سالم موندن، بدون اینکه هر روز خشک و سخت بشه.","define_balance",["balance","wellbeing"],3),
        U("plan","I'm going to change one habit at a time so I can tell what actually makes a difference.","قراره هر بار فقط یک عادت رو عوض کنم تا بفهمم واقعاً چی فرق ایجاد می‌کنه.","set_realistic_plan",["consistent","routine"],3),
    ], grammar=["gerunds_infinitives","conditionals","cause_result"], fill=["A small change I can maintain is more ___ than an extreme routine.",["sustainable","persistent","previous","recurring"],"sustainable"]),

make_spec(index=24, slug="b2-independent-travel", topic="transport", title="Independent Travel Planning",
    vocab=[V("itinerary","itinerary","برنامه سفر"),V("connection","connection","اتصال / تعویض وسیله نقلیه"),V("flexible","flexible","منعطف","adjective"),V("route","route","مسیر"),V("fare","fare","کرایه / قیمت بلیت"),V("transfer","transfer","تعویض"),V("buffer","buffer","زمان اضافه احتیاطی"),V("reservation","reservation","رزرو")],
    utterances=[
        U("route","I'm comparing two routes: one is faster, but the other has fewer connections.","دارم دو مسیر رو مقایسه می‌کنم؛ یکی سریع‌تره ولی اون یکی تعویض کمتری داره.","compare_routes",["route","connection"],1),
        U("fare","The flexible fare costs more, but it would let me change the reservation if my plans move.","بلیت منعطف گرون‌تره، ولی اگر برنامه‌ام تغییر کنه اجازه می‌ده رزرو رو عوض کنم.","compare_fares",["flexible","fare","reservation"],1),
        U("transfer","I'd avoid the forty-minute transfer because one small delay could make the whole itinerary stressful.","از تعویض چهل‌دقیقه‌ای دوری می‌کنم چون یک تأخیر کوچیک می‌تونه کل برنامه سفر رو پراسترس کنه.","assess_transfer_risk",["transfer","itinerary"],2),
        U("buffer","I'm leaving a two-hour buffer before the international train rather than relying on a perfect connection.","قبل از قطار بین‌المللی دو ساعت زمان اضافه می‌ذارم به‌جای اینکه به اتصال کاملاً دقیق تکیه کنم.","build_buffer",["buffer","connection"],2),
        U("arrangement","We're staying near the station the first night, so we won't have to cross the city after a late arrival.","شب اول نزدیک ایستگاه می‌مونیم تا بعد از رسیدن دیرهنگام مجبور نباشیم از کل شهر رد بشیم.","explain_arrangement",["route"],3),
        U("fallback","If the last train is canceled, the backup route is slower but still gets us there the same night.","اگر آخرین قطار لغو بشه، مسیر پشتیبان کندتره ولی همون شب ما رو می‌رسونه.","plan_fallback",["route"],3),
        U("booking","I'll book the long-distance sections now and keep the local parts flexible until we know the weather.","بخش‌های مسیر طولانی رو الان رزرو می‌کنم و بخش‌های محلی رو تا مشخص شدن هوا منعطف نگه می‌دارم.","sequence_booking",["reservation","flexible"],3),
        U("decision","Overall, I'm choosing the route with fewer risky transfers even though it takes about an hour longer.","در مجموع مسیر با تعویض‌های پرریسک کمتر رو انتخاب می‌کنم، حتی اگر حدود یک ساعت بیشتر طول بکشه.","finalize_itinerary",["route","transfer"],3),
    ], grammar=["future_forms","conditionals","comparatives"], fill=["I'm leaving a two-hour ___ before the international train.",["buffer","fare","transfer","reservation"],"buffer"]),

make_spec(index=25, slug="b2-travel-disruptions", topic="transport", title="Complex Travel Disruptions",
    vocab=[V("disruption","disruption","اختلال"),V("cancelled","canceled","لغوشده","adjective"),V("reroute","reroute","به مسیر دیگری فرستادن","verb"),V("connection","connection","پرواز / قطار اتصال"),V("stranded","stranded","گیر افتاده","adjective"),V("compensation","compensation","غرامت"),V("alternative","alternative","گزینه جایگزین"),V("rebook","rebook","رزرو دوباره","verb")],
    utterances=[
        U("reconstruct","Our first train was delayed for nearly two hours, so we missed the final connection.","قطار اولمون نزدیک دو ساعت تأخیر داشت، برای همین اتصال آخر رو از دست دادیم.","reconstruct_disruption",["connection","disruption"],1),
        U("canceled","By the time we reached the service desk, the later train had also been canceled.","تا وقتی به باجه خدمات رسیدیم قطار بعدی هم لغو شده بود.","add_disruption_detail",["cancelled"],1),
        U("alternative","The fastest alternative is a bus to the next city followed by an early train tomorrow.","سریع‌ترین گزینه جایگزین یک اتوبوس تا شهر بعدیه و بعد فردا صبح قطار.","explain_alternative",["alternative"],2),
        U("reroute","Could you reroute us through another station rather than making us wait here overnight?","می‌شه ما رو از ایستگاه دیگه‌ای بفرستید به‌جای اینکه شب اینجا منتظر بمونیم؟","request_reroute",["reroute"],2),
        U("stranded","We were effectively stranded because every hotel near the station was already full.","عملاً گیر افتاده بودیم چون همه هتل‌های نزدیک ایستگاه پر شده بودن.","describe_consequence",["stranded"],3),
        U("rebook","The airline rebooked us automatically, but the new flight leaves a full day later.","شرکت هواپیمایی خودکار دوباره رزرو کرد، ولی پرواز جدید یک روز کامل دیرتره.","report_rebooking",["rebook"],3),
        U("compensation","I'd like to know whether meals and accommodation are covered and what compensation applies.","می‌خوام بدونم غذا و اقامت پوشش داده می‌شه و چه غرامتی شامل می‌شه.","ask_compensation",["compensation"],3),
        U("confirm","Before we leave the desk, could you confirm the new route and all ticket details in writing?","قبل از رفتن از باجه می‌شه مسیر جدید و همه جزئیات بلیت رو کتبی تأیید کنید؟","confirm_recovery_plan",["reroute","rebook"],3),
    ], grammar=["passive","narrative_tenses","conditionals"], fill=["Could you ___ us through another station?",["reroute","rebook","strand","compensate"],"reroute"]),

make_spec(index=26, slug="b2-accommodation-issues", topic="places-town", title="Accommodation Issues",
    vocab=[V("booking","booking","رزرو"),V("unavailable","unavailable","در دسترس نبودن","adjective"),V("upgrade","upgrade","ارتقا"),V("maintenance","maintenance","تعمیر و نگهداری"),V("complimentary","complimentary","رایگان از طرف مجموعه","adjective"),V("refund","refund","بازپرداخت"),V("confirmation","confirmation","تأییدیه"),V("resolve","resolve","حل کردن","verb")],
    utterances=[
        U("booking","My booking confirmation shows a quiet double room, but I've been given a room next to the elevator.","تأییدیه رزرو من اتاق دونفره آروم نشون می‌ده، ولی اتاق کنار آسانسور بهم داده شده.","reference_booking",["booking","confirmation"],1),
        U("unavailable","I was told the original room is unavailable because of unexpected maintenance.","به من گفته شد اتاق اصلی به خاطر تعمیرات غیرمنتظره در دسترس نیست.","relay_hotel_explanation",["unavailable","maintenance"],1),
        U("request","Could you check whether a similar room is available on another floor?","می‌شه بررسی کنید اتاق مشابهی در طبقه دیگه موجوده یا نه؟","request_alternative_room",["unavailable"],2),
        U("upgrade","If that's not possible, would an upgrade be available without an extra charge?","اگر ممکن نیست، امکان ارتقای اتاق بدون هزینه اضافه هست؟","negotiate_upgrade",["upgrade"],2),
        U("insist","I understand the hotel is busy, but the current room doesn't match the booking I paid for.","می‌فهمم هتل شلوغه، ولی اتاق فعلی با رزروی که هزینه‌اش رو دادم مطابقت نداره.","insist_politely",["booking","resolve"],3),
        U("complimentary","A complimentary breakfast would help, but it wouldn't resolve the noise problem overnight.","صبحانه رایگان کمک می‌کنه، ولی مشکل سروصدای شب رو حل نمی‌کنه.","evaluate_compensation",["complimentary","resolve"],3),
        U("refund","If no suitable room can be offered, I'd like to discuss a partial refund.","اگر اتاق مناسبی قابل‌ارائه نیست، می‌خوام درباره بازپرداخت بخشی صحبت کنم.","request_refund",["refund"],3),
        U("close","Once we agree on a solution, could you update the booking confirmation so there is no confusion later?","وقتی روی راه‌حل توافق کردیم می‌شه تأییدیه رزرو رو به‌روز کنید تا بعداً ابهامی نباشه؟","confirm_resolution",["confirmation","resolve"],3),
    ], grammar=["reported_speech","present_perfect","polite_insistence"], fill=["The room I booked is currently ___.",["unavailable","complimentary","resolved","upgraded"],"unavailable"]),

make_spec(index=27, slug="b2-local-recommendations", topic="places-town", title="Local Recommendations & Experiences",
    vocab=[V("atmosphere","atmosphere","فضا / حال‌وهوای مکان"),V("touristy","touristy","بیش از حد توریستی","adjective"),V("authentic","authentic","اصیل","adjective"),V("worth","worth","ارزش داشتن","adjective"),V("crowded","crowded","شلوغ","adjective"),V("neighborhood","neighborhood","محله"),V("reservation","reservation","رزرو"),V("scenic","scenic","دارای منظره زیبا","adjective")],
    utterances=[
        U("tailor","If you prefer a quieter atmosphere, I'd spend the evening in the riverside neighborhood rather than downtown.","اگر فضای آروم‌تر دوست داری، عصر رو در محله کنار رودخونه می‌گذروندم نه مرکز شهر.","tailor_recommendation",["atmosphere","neighborhood"],1),
        U("authentic","The market is touristy around noon, but early in the morning it still feels much more authentic.","بازار ظهرها توریستی می‌شه، ولی صبح زود هنوز خیلی اصیل‌تر حس می‌شه.","qualify_local_place",["touristy","authentic"],1),
        U("scenic","The coastal path is longer than the bus route, but it's far more scenic.","مسیر ساحلی از اتوبوس طولانی‌تره، ولی منظره خیلی بهتری داره.","compare_experience",["scenic"],2),
        U("worth","The museum is small, but it's worth visiting if you're interested in local history.","موزه کوچیکه، ولی اگر تاریخ محلی دوست داری ارزش دیدن داره.","conditional_recommendation",["worth"],2),
        U("crowded","I'd avoid the main square on Saturday evening because it gets extremely crowded.","شنبه عصر از میدان اصلی دوری می‌کنم چون خیلی شلوغ می‌شه.","give_practical_warning",["crowded"],3),
        U("reservation","For the family-run restaurant, you should make a reservation at least a day ahead.","برای رستوران خانوادگی بهتره حداقل یک روز قبل رزرو کنی.","give_booking_advice",["reservation"],3),
        U("choice","If you only have one free afternoon, I'd combine the old neighborhood with the hilltop viewpoint.","اگر فقط یک بعدازظهر وقت آزاد داری، محله قدیمی رو با منظره بالای تپه ترکیب می‌کردم.","build_local_plan",["neighborhood","scenic"],3),
        U("custom","It really depends on whether you want famous sights or a slower experience that feels more local.","واقعاً بستگی داره دیدنی‌های معروف می‌خوای یا تجربه آروم‌تری که محلی‌تر حس بشه.","clarify_preference",["touristy","authentic"],3),
    ], grammar=["relative_clauses","modals","comparatives"], fill=["The market feels more ___ early in the morning.",["authentic","crowded","scenic","touristy"],"authentic"]),

make_spec(index=28, slug="b2-work-responsibilities", topic="jobs", title="Work Responsibilities & Priorities",
    vocab=[V("priority","priority","اولویت"),V("responsibility","responsibility","مسئولیت"),V("blocker","blocker","مانع کار"),V("progress","progress","پیشرفت"),V("handover","handover","تحویل کار"),V("deadline","deadline","موعد"),V("urgent","urgent","فوری","adjective"),V("capacity","capacity","ظرفیت کاری")],
    utterances=[
        U("responsibility","My main responsibility this week is finishing the client review before we start the next phase.","مسئولیت اصلی این هفته‌ام تمام کردن بررسی مشتری قبل از شروع مرحله بعده.","state_responsibility",["responsibility","priority"],1),
        U("priority","The urgent support issue has become the top priority, so two planned tasks will move to next week.","مشکل فوری پشتیبانی تبدیل به اولویت اصلی شده، برای همین دو کار برنامه‌ریزی‌شده می‌رن هفته بعد.","reprioritize_work",["urgent","priority"],1),
        U("progress","We've made good progress on the report, but the data section still needs a final check.","روی گزارش پیشرفت خوبی داشتیم، ولی بخش داده هنوز یک بررسی نهایی لازم داره.","give_progress_update",["progress"],2),
        U("blocker","The main blocker is that we're still waiting for approval from the legal team.","مانع اصلی اینه که هنوز منتظر تأیید تیم حقوقی هستیم.","identify_blocker",["blocker"],2),
        U("capacity","I can take on the extra task, but not without moving another deadline because my capacity is full.","می‌تونم کار اضافه رو بگیرم، ولی باید یک موعد دیگه جابه‌جا بشه چون ظرفیت کاریم پره.","set_capacity_limit",["capacity","deadline"],3),
        U("handover","I'll document the open questions clearly so the handover doesn't create another delay.","سؤال‌های باز رو روشن ثبت می‌کنم تا تحویل کار یک تأخیر دیگه ایجاد نکنه.","plan_handover",["handover"],3),
        U("obligation","We have to deliver the core work by Friday, but the optional analysis can wait.","باید بخش اصلی رو تا جمعه تحویل بدیم، ولی تحلیل اختیاری می‌تونه صبر کنه.","separate_obligations",["deadline","priority"],3),
        U("expectation","Given the new blocker, I think we should reset the expectation now rather than miss the deadline silently.","با توجه به مانع جدید، فکر می‌کنم بهتره الان انتظار رو اصلاح کنیم تا بی‌خبر موعد رو از دست ندیم.","reset_expectations",["blocker","deadline"],3),
    ], grammar=["present_perfect","obligation","deadline_language"], fill=["The main ___ is that we're still waiting for approval.",["blocker","handover","capacity","progress"],"blocker"]),

make_spec(index=29, slug="b2-meetings-decisions", topic="jobs", title="Meetings & Decisions",
    vocab=[V("agenda","agenda","دستور جلسه"),V("proposal","proposal","پیشنهاد"),V("concern","concern","نگرانی"),V("consensus","consensus","اجماع"),V("clarify","clarify","روشن کردن","verb"),V("decision","decision","تصمیم"),V("action_item","action item","اقدام بعدی"),V("summarize","summarize","خلاصه کردن","verb")],
    utterances=[
        U("position","My preference is the second proposal because it solves the immediate problem with less disruption.","ترجیح من پیشنهاد دومه چون مشکل فوری رو با اختلال کمتری حل می‌کنه.","state_meeting_position",["proposal"],1),
        U("concern","My main concern is that we haven't tested the change with enough users yet.","نگرانی اصلی من اینه که تغییر رو هنوز با کاربر کافی تست نکردیم.","raise_concern",["concern"],1),
        U("clarify","Can I clarify one point? Are we deciding the full rollout today or only the pilot?","می‌شه یک نکته رو روشن کنم؟ امروز درباره اجرای کامل تصمیم می‌گیریم یا فقط پایلوت؟","clarify_scope",["clarify","decision"],2),
        U("reported","Maya mentioned that the support team would need at least a week to prepare.","مایا گفت تیم پشتیبانی حداقل یک هفته برای آماده شدن لازم داره.","relay_meeting_point",["agenda"],2),
        U("consensus","It sounds as if we have consensus on the goal, even if we still disagree about timing.","به نظر میاد روی هدف اجماع داریم، حتی اگر هنوز درباره زمان اختلاف داریم.","identify_consensus",["consensus"],3),
        U("conditional","If we keep the pilot small, I'd be comfortable approving it today.","اگر پایلوت رو کوچک نگه داریم، با تأییدش امروز راحت هستم.","make_conditional_agreement",["decision"],3),
        U("summary","Let me summarize the decision before we move to the next agenda item.","بذارید قبل از رفتن به مورد بعدی دستور جلسه، تصمیم رو خلاصه کنم.","summarize_decision",["summarize","agenda"],3),
        U("action","The action item for me is to send the revised plan by tomorrow afternoon.","اقدام بعدی من اینه که برنامه اصلاح‌شده رو تا فردا بعدازظهر بفرستم.","confirm_action_item",["action_item"],3),
    ], grammar=["reported_speech","hedging","conditionals"], fill=["It sounds as if we have ___ on the overall goal.",["consensus","agenda","concern","proposal"],"consensus"]),

make_spec(index=30, slug="b2-projects-deadlines", topic="jobs", title="Projects & Deadlines",
    vocab=[V("scope","scope","دامنه کار"),V("dependency","dependency","وابستگی"),V("milestone","milestone","نقطه عطف"),V("delay","delay","تأخیر"),V("risk","risk","ریسک"),V("delivery","delivery","تحویل"),V("on_track","on track","طبق برنامه","phrase"),V("contingency","contingency","برنامه جایگزین برای شرایط مشکل")],
    utterances=[
        U("progress","We're on track for the first milestone, but the final delivery date is becoming less certain.","برای نقطه عطف اول طبق برنامه‌ایم، ولی تاریخ تحویل نهایی داره نامطمئن‌تر می‌شه.","report_project_status",["on_track","milestone","delivery"],1),
        U("dependency","The biggest dependency is an external approval that we don't control directly.","بزرگ‌ترین وابستگی یک تأیید بیرونیه که مستقیم کنترلش نمی‌کنیم.","identify_dependency",["dependency"],1),
        U("scope","If we keep the current scope, we'll probably need either more time or another developer.","اگر دامنه فعلی رو نگه داریم احتمالاً یا زمان بیشتر لازم داریم یا یک توسعه‌دهنده دیگه.","connect_scope_resources",["scope"],2),
        U("risk","The main risk is discovering a technical problem too late to change the design safely.","ریسک اصلی اینه که مشکل فنی رو اون‌قدر دیر پیدا کنیم که تغییر امن طراحی سخت بشه.","identify_project_risk",["risk"],2),
        U("delay","The delay was caused by a supplier issue, so the testing window has been shortened.","تأخیر به خاطر مشکل تأمین‌کننده بود، برای همین بازه تست کوتاه شده.","explain_delay",["delay"],3),
        U("contingency","Our contingency is to deliver the core feature first and move the optional part to the next release.","برنامه جایگزینمون اینه که اول قابلیت اصلی رو تحویل بدیم و بخش اختیاری رو به انتشار بعدی منتقل کنیم.","describe_contingency",["contingency","delivery"],3),
        U("forecast","At the moment, I expect a three-day delay unless the dependency is cleared by Wednesday.","فعلاً انتظار دارم سه روز تأخیر داشته باشیم مگر اینکه وابستگی تا چهارشنبه رفع بشه.","forecast_deadline",["delay","dependency"],3),
        U("decision","I'd rather reset the deadline now than protect an unrealistic date and reduce quality later.","ترجیح می‌دم الان موعد رو اصلاح کنیم تا اینکه از تاریخ غیرواقعی دفاع کنیم و بعداً کیفیت رو پایین بیاریم.","recommend_deadline_change",["delivery","risk"],3),
    ], grammar=["future_forms","passive","cause_result"], fill=["The biggest ___ is an external approval we don't control.",["dependency","milestone","scope","delivery"],"dependency"]),
]

if __name__ == "__main__":
    write_units(UNITS)
