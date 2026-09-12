#!/usr/bin/env python3
from scripts.generate_b2_batch import V, U
from scripts.generate_b2_support import make_spec, write_units

UNITS = [
make_spec(
    index=6, slug="b2-future-possibilities", topic="future-plans", title="Future Possibilities",
    vocab=[V("likely","likely","محتمل","adjective"),V("unlikely","unlikely","بعید","adjective"),V("outcome","outcome","نتیجه"),V("factor","factor","عامل"),V("uncertain","uncertain","نامطمئن","adjective"),V("depend_on","depend on","بستگی داشتن به","phrasal_verb"),V("potential","potential","بالقوه","adjective"),V("forecast","forecast","پیش‌بینی")],
    utterances=[
        U("likely","The most likely outcome is that the project will continue, but on a smaller scale.","محتمل‌ترین نتیجه اینه که پروژه ادامه پیدا کنه، ولی در مقیاس کوچک‌تر.","assess_probability",["likely","outcome"],1),
        U("factors","A lot will depend on funding and whether the team can hire the right people.","خیلی چیزها به بودجه و این بستگی داره که تیم بتونه آدم‌های مناسب رو استخدام کنه.","identify_factors",["depend_on","factor"],1),
        U("uncertain","The timing is still uncertain, so I wouldn't make fixed plans yet.","زمان‌بندی هنوز نامطمئنه، برای همین فعلاً برنامه قطعی نمی‌چیدم.","express_uncertainty",["uncertain"],2),
        U("potential","There is potential for rapid growth if the first launch goes well.","اگر عرضه اول خوب پیش بره، امکان رشد سریع وجود داره.","describe_potential",["potential"],2),
        U("forecast","The forecast suggests demand may rise gradually over the next year.","پیش‌بینی نشون می‌ده ممکنه تقاضا طی سال آینده کم‌کم بالا بره.","relay_forecast",["forecast"],3),
        U("unlikely","A sudden change is possible, although it seems fairly unlikely at the moment.","تغییر ناگهانی ممکنه، هرچند فعلاً نسبتاً بعید به نظر میاد.","qualify_probability",["unlikely"],3),
        U("when","We'll know more when the next set of results comes in.","وقتی سری بعدی نتایج برسه اطلاعات بیشتری خواهیم داشت.","future_time_reference",["outcome"],3),
        U("balanced","I'd keep both options open until we have enough evidence to make a confident decision.","تا وقتی شواهد کافی برای تصمیم مطمئن نداشته باشیم هر دو گزینه رو باز نگه می‌دارم.","recommend_caution",["uncertain","factor"],3),
    ], grammar=["probability_modals","future_time","hedging"],
    fill=["The change is ___ to affect demand next year.",["likely","likelihood","possibly","certainty"],"likely"]
),
make_spec(
    index=7, slug="b2-hypothetical-choices", topic="requests", title="Hypothetical Choices",
    vocab=[V("hypothetical","hypothetical","فرضی","adjective"),V("option","option","گزینه"),V("priority","priority","اولویت"),V("compromise","compromise","مصالحه / سازش"),V("risk","risk","ریسک"),V("regret","regret","پشیمان شدن","verb"),V("alternative","alternative","گزینه جایگزین"),V("circumstance","circumstance","شرایط")],
    utterances=[
        U("choice","If I had to choose today, I'd take the more flexible option even if it paid less.","اگر امروز مجبور بودم انتخاب کنم، گزینه منعطف‌تر رو می‌گرفتم حتی اگر درآمدش کمتر بود.","state_hypothetical_choice",["option","priority"],1),
        U("reason","Flexibility would matter more to me because my circumstances could change quickly.","انعطاف برای من مهم‌تر بود چون ممکنه شرایط خیلی سریع تغییر کنه.","justify_hypothetical_choice",["circumstance"],1),
        U("risk","If the risk were higher, I might make a more cautious decision.","اگر ریسک بیشتر بود شاید تصمیم محتاطانه‌تری می‌گرفتم.","adjust_condition",["risk"],2),
        U("alternative","Another alternative would be to try the role temporarily before committing long term.","یک گزینه جایگزین دیگه این بود که قبل از تعهد بلندمدت، نقش رو موقت امتحان کنم.","propose_alternative",["alternative"],2),
        U("compromise","A compromise could work if both sides were willing to change their expectations.","اگر هر دو طرف حاضر بودن انتظارهاشون رو تغییر بدن، یک راه‌حل میانه می‌تونست جواب بده.","explore_compromise",["compromise"],3),
        U("regret","I'd probably regret choosing the safest path just because I was afraid of uncertainty.","احتمالاً اگر فقط از ترس نامطمئن بودن امن‌ترین مسیر رو انتخاب می‌کردم پشیمون می‌شدم.","anticipate_regret",["regret","risk"],3),
        U("if_i_were","If I were in your position, I'd compare what you might gain with what you'd have to give up.","اگر جای تو بودم چیزی رو که ممکنه به دست بیاری با چیزی که باید ازش بگذری مقایسه می‌کردم.","offer_perspective",["priority"],3),
        U("not_real","It's only a hypothetical question, but it helps clarify what your real priorities are.","فقط یک سؤال فرضیه، ولی کمک می‌کنه اولویت‌های واقعی‌ات روشن بشه.","reflect_on_hypothetical",["hypothetical","priority"],3),
    ], grammar=["second_conditional","conditionals","concession"],
    fill=["If I ___ in your position, I'd compare the risks first.",["were","am","will be","have been"],"were"]
),
make_spec(
    index=8, slug="b2-goals-tradeoffs", topic="future-plans", title="Goals & Trade-offs",
    vocab=[V("tradeoff","trade-off","بده‌بستان / مصالحه بین دو مزیت"),V("long_term","long-term","بلندمدت","adjective"),V("sacrifice","sacrifice","فدا کردن / از چیزی گذشتن","verb"),V("commitment","commitment","تعهد"),V("realistic","realistic","واقع‌بینانه","adjective"),V("sustainable","sustainable","قابل‌دوام","adjective"),V("priority","priority","اولویت"),V("progress","progress","پیشرفت")],
    utterances=[
        U("goal","My long-term goal is to change careers, but I don't want to rush the transition.","هدف بلندمدتم تغییر مسیره شغلیه، ولی نمی‌خوام این تغییر رو با عجله انجام بدم.","state_long_term_goal",["long_term"],1),
        U("tradeoff","The main trade-off is between moving faster and keeping enough financial stability.","بده‌بستان اصلی بین سریع‌تر جلو رفتن و حفظ ثبات مالی کافیه.","identify_tradeoff",["tradeoff"],1),
        U("sacrifice","I'd be willing to sacrifice some free time for a year, but not my health or relationships.","حاضرم یک سال بخشی از وقت آزادم رو فدا کنم، ولی نه سلامتی یا رابطه‌هام رو.","define_limits",["sacrifice"],2),
        U("commitment","Before making a major commitment, I want to test whether the routine is realistic.","قبل از یک تعهد بزرگ می‌خوام امتحان کنم ببینم این برنامه واقع‌بینانه هست یا نه.","sequence_decision",["commitment","realistic"],2),
        U("sustainable","A slower plan may be more sustainable if it leaves room for unexpected problems.","اگر برای مشکل‌های غیرمنتظره جا بذاره، برنامه آهسته‌تر ممکنه قابل‌دوام‌تر باشه.","evaluate_plan",["sustainable"],3),
        U("priority","For now, learning consistently is a higher priority than finishing as quickly as possible.","فعلاً یادگیری پیوسته اولویت بالاتری از تمام کردن هرچه سریع‌تر داره.","rank_priorities",["priority"],3),
        U("progress","I'll review my progress every three months so that I can adjust the plan before small problems grow.","هر سه ماه پیشرفتم رو بررسی می‌کنم تا قبل از بزرگ شدن مشکل‌های کوچک برنامه رو تنظیم کنم.","plan_review",["progress"],3),
        U("balance","Despite the extra effort, the goal still feels worthwhile because it fits the life I want long term.","با وجود تلاش اضافه، هدف هنوز ارزشش رو داره چون با زندگی‌ای که در بلندمدت می‌خوام هماهنگه.","justify_tradeoff",["long_term","tradeoff"],3),
    ], grammar=["conditionals","purpose","concession"],
    fill=["A slower plan may be more ___ if it leaves room for unexpected problems.",["sustainable","sustain","sustained","sustainably"],"sustainable"]
),
make_spec(
    index=9, slug="b2-negotiating-arrangements", topic="polite-language", title="Negotiating Arrangements",
    vocab=[V("arrangement","arrangement","هماهنگی / ترتیب"),V("flexible","flexible","منعطف","adjective"),V("compromise","compromise","راه‌حل میانه"),V("reschedule","reschedule","زمان را عوض کردن","verb"),V("constraint","constraint","محدودیت"),V("available","available","در دسترس","adjective"),V("work_around","work around","راهی برای دور زدن محدودیت پیدا کردن","phrasal_verb"),V("confirm","confirm","تأیید کردن","verb")],
    utterances=[
        U("constraint","I can move the meeting, but I have a hard constraint after three o'clock.","می‌تونم جلسه رو جابه‌جا کنم، ولی بعد از ساعت سه یک محدودیت قطعی دارم.","state_constraint",["constraint","reschedule"],1),
        U("alternative","Would two thirty work for you, or would tomorrow morning be easier?","دو و نیم برات مناسبه یا فردا صبح راحت‌تری؟","offer_alternatives",["available"],1),
        U("flexible","I'm fairly flexible on location as long as we have a quiet place to talk.","از نظر مکان نسبتاً منعطفم، به شرطی که جای آرومی برای صحبت داشته باشیم.","show_flexibility",["flexible"],2),
        U("workaround","If the room isn't available, we could work around that by joining remotely.","اگر اتاق در دسترس نباشه می‌تونیم با آنلاین شدن این محدودیت رو دور بزنیم.","propose_workaround",["available","work_around"],2),
        U("compromise","A reasonable compromise would be to shorten the session and schedule a follow-up next week.","یک راه‌حل میانه منطقی اینه که جلسه رو کوتاه‌تر کنیم و هفته بعد ادامه بدیم.","propose_compromise",["compromise","arrangement"],3),
        U("soften","I see why Friday suits you better, but could we avoid the late afternoon?","می‌فهمم چرا جمعه برات بهتره، ولی می‌شه آخر عصر رو انتخاب نکنیم؟","soften_disagreement",["flexible"],3),
        U("confirm","Once we agree on the time, I'll send a short message to confirm the final arrangement.","وقتی روی زمان توافق کنیم یک پیام کوتاه برای تأیید هماهنگی نهایی می‌فرستم.","confirm_plan",["confirm","arrangement"],3),
        U("summary","So we're keeping the same day, moving it earlier, and allowing remote attendance if needed.","پس همون روز رو نگه می‌داریم، زودتر برگزارش می‌کنیم و اگر لازم شد حضور آنلاین هم ممکنه.","summarize_agreement",["work_around"],3),
    ], grammar=["softening","conditionals","negotiation"],
    fill=["A reasonable ___ would be to shorten the session.",["compromise","constraint","confirmation","availability"],"compromise"]
),
make_spec(
    index=10, slug="b2-social-tact", topic="polite-language", title="Social Tact",
    vocab=[V("tactful","tactful","با ملاحظه","adjective"),V("awkward","awkward","معذب / ناخوشایند","adjective"),V("decline","decline","رد کردن","verb"),V("appreciate","appreciate","قدردانی کردن","verb"),V("prefer","prefer","ترجیح دادن","verb"),V("misunderstanding","misunderstanding","سوءتفاهم"),V("sensitive","sensitive","حساس","adjective"),V("reassure","reassure","خاطر جمع کردن","verb")],
    utterances=[
        U("decline","I really appreciate the invitation, but I'm afraid I won't be able to make it this time.","واقعاً از دعوتت ممنونم، ولی متأسفانه این بار نمی‌تونم بیام.","decline_tactfully",["appreciate","decline"],1),
        U("alternative","I'd still love to catch up, so perhaps we could meet for coffee next week instead.","هنوز خیلی دوست دارم همدیگه رو ببینیم، شاید به جاش هفته بعد برای قهوه قرار بذاریم.","offer_social_alternative",["tactful"],1),
        U("preference","I'd rather keep the evening small, if that's okay with everyone.","اگر برای همه اوکیه ترجیح می‌دم جمع امشب کوچیک بمونه.","express_sensitive_preference",["prefer","sensitive"],2),
        U("awkward","I didn't want to make the situation awkward, so I explained my reason privately.","نمی‌خواستم موقعیت معذب‌کننده بشه، برای همین دلیل رو خصوصی توضیح دادم.","protect_face",["awkward","tactful"],2),
        U("misunderstanding","I think there may have been a misunderstanding about who was invited.","فکر می‌کنم درباره اینکه چه کسانی دعوت بودن یک سوءتفاهم پیش اومده.","name_misunderstanding",["misunderstanding"],3),
        U("reassure","Please don't take it personally; the change was about space, not about you.","لطفاً شخصی برداشت نکن؛ تغییر به خاطر کمبود جا بود، نه به خاطر تو.","reassure_person",["reassure"],3),
        U("hedge","It might be better to talk about this later when we're both less rushed.","شاید بهتر باشه بعداً وقتی هردومون عجله کمتری داریم درباره‌اش حرف بزنیم.","delay_sensitive_talk",["sensitive"],3),
        U("repair","If I sounded abrupt earlier, I'm sorry; that wasn't how I meant it to come across.","اگر قبل‌تر تند به نظر رسیدم ببخشید؛ منظورم اصلاً این نبود.","repair_tone",["awkward","reassure"],3),
    ], grammar=["softening","hedging","concession"],
    fill=["I really ___ the invitation, but I can't make it this time.",["appreciate","decline","prefer","reassure"],"appreciate"]
),
]

if __name__ == "__main__":
    write_units(UNITS)
