#!/usr/bin/env python3
"""Generate approved English B2 production batches for curriculum units 01-05.

The bilingual learning content is authored here and converted into the canonical
batch-v2 structure used by the production pipeline.
"""
from __future__ import annotations

try:
    from scripts.english_content_enrichment import enrich_batch
except ModuleNotFoundError:
    from english_content_enrichment import enrich_batch

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "content" / "production" / "en" / "B2"
CEFR = "B2"


def V(key, en, fa, pos="noun"):
    return {"key": key, "en": en, "fa": fa, "pos": pos}


def U(key, en, fa, intent, refs, lesson=1, register="neutral"):
    return {"key": key, "en": en, "fa": fa, "intent": intent, "refs": refs, "lesson": lesson, "register": register}


def G(key, title, rule, fa, examples, lesson=1):
    return {"key": key, "title": title, "rule": rule, "fa": fa, "examples": examples, "lesson": lesson}


def D(key, title, setting, chars, turns, lesson=1):
    return {"key": key, "title": title, "setting": setting, "chars": chars, "turns": turns, "lesson": lesson}


def T(speaker, en, fa):
    return {"speaker": speaker, "en": en, "fa": fa}


UNITS = [
    {
        "slug": "b2-catching-up-with-detail",
        "file": "b2-catching-up-with-detail-v1.json",
        "topic": "polite-language",
        "lessons": 3,
        "vocab": [
            V("apparently", "apparently", "ظاهراً", "adverb"),
            V("gradually", "gradually", "به‌تدریج", "adverb"),
            V("workload", "workload", "حجم کار"),
            V("adjust", "adjust", "خود را وفق دادن", "verb"),
            V("recently", "recently", "اخیراً", "adverb"),
            V("keep_up", "keep up", "از چیزی عقب نماندن", "phrasal_verb"),
            V("turn_out", "turn out", "از آب درآمدن", "phrasal_verb"),
            V("settled", "settled", "جاافتاده / باثبات", "adjective"),
            V("unexpected", "unexpected", "غیرمنتظره", "adjective"),
            V("catch_up", "catch up", "از حال هم باخبر شدن", "phrasal_verb"),
        ],
        "utterances": [
            U("opening", "It's been a while. How have things been going for you lately?", "خیلی وقته. این اواخر اوضاع برات چطور پیش رفته؟", "restart_contact", ["recently", "catch_up"], 1),
            U("workload", "My workload has gradually become more manageable, although the first few months were intense.", "حجم کارم کم‌کم قابل‌کنترل‌تر شده، هرچند چند ماه اول خیلی سنگین بود.", "describe_recent_change", ["workload", "gradually"], 1),
            U("followup", "What was the hardest part to adjust to?", "سخت‌ترین بخش برای وفق پیدا کردن با شرایط جدید چی بود؟", "ask_follow_up", ["adjust"], 1),
            U("new_city", "I've been trying to keep up with work while getting settled in the new city.", "دارم سعی می‌کنم هم از کار عقب نمونم و هم در شهر جدید جا بیفتم.", "describe_parallel_change", ["keep_up", "settled"], 2),
            U("surprise", "The move turned out to be less stressful than I expected, which was a pleasant surprise.", "اسباب‌کشی کمتر از چیزی که انتظار داشتم استرس‌زا از آب درآمد و این غافلگیرکننده و خوب بود.", "evaluate_change", ["turn_out", "unexpected"], 2),
            U("reaction", "That sounds like a big adjustment, but it seems as if you're finding your rhythm now.", "به نظر تغییر بزرگی بوده، ولی انگار الان داری ریتم خودت را پیدا می‌کنی.", "react_with_empathy", ["adjust"], 2),
            U("apparently", "Apparently, the team is expanding again, so things may get busy later this year.", "ظاهراً تیم دوباره داره بزرگ‌تر می‌شه، پس ممکنه اواخر امسال دوباره سرمون شلوغ بشه.", "share_development", ["apparently", "workload"], 3),
            U("close", "We should catch up properly soon; there is clearly a lot we've both missed.", "باید به‌زودی درست‌وحسابی از حال هم باخبر بشیم؛ معلومه هر دومون کلی خبر از هم عقبیم.", "close_conversation", ["catch_up"], 3),
        ],
        "grammar": [
            G("perfect_simple_continuous", "Present perfect simple vs continuous", "Use the present perfect simple to focus on a result or completed change and the present perfect continuous to focus on duration or ongoing activity.", "برای تأکید روی نتیجه یا تغییر کامل‌شده از present perfect simple و برای تأکید روی مدت یا فعالیت در جریان از present perfect continuous استفاده می‌کنیم.", [("My workload has become easier to manage.", "حجم کارم قابل‌کنترل‌تر شده."), ("I've been working longer hours lately.", "این اواخر ساعت‌های بیشتری کار می‌کردم.")], 1),
            G("concession", "Adding contrast with although", "Use although to acknowledge a contrasting fact without breaking the main point of the sentence.", "با although یک نکته متضاد را می‌پذیریم، بدون اینکه پیام اصلی جمله را کنار بگذاریم.", [("The job is rewarding, although it can be exhausting.", "کار رضایت‌بخش است، هرچند می‌تواند خسته‌کننده باشد."), ("I like the area, although the commute is longer.", "منطقه را دوست دارم، هرچند مسیر رفت‌وآمد طولانی‌تر است.")], 2),
            G("reaction_language", "Natural reactions and follow-ups", "At B2, react to what you hear and then ask a focused follow-up instead of moving to an unrelated question.", "در B2 بهتر است اول به حرف طرف مقابل واکنش نشان بدهیم و بعد یک سؤال پیگیرانه مرتبط بپرسیم.", [("That sounds demanding. How are you handling it?", "سخت به نظر میاد. چطور داری مدیریتش می‌کنی؟"), ("That's a big change. What surprised you most?", "تغییر بزرگیه. چی بیشتر از همه غافلگیرت کرد؟")], 3),
        ],
        "dialogues": [
            D("work_reunion", "Catching up after a busy year", "quiet cafe", ["Maya", "Daniel"], [
                T("Maya", "Daniel, it's been forever. How have things been going lately?", "دنیل، خیلی وقته. این اواخر اوضاع چطور پیش رفته؟"),
                T("Daniel", "Pretty well now. My workload has gradually become more manageable.", "الان نسبتاً خوبه. حجم کارم کم‌کم قابل‌کنترل‌تر شده."),
                T("Maya", "That's good to hear. What made the biggest difference?", "خوبه که اینو می‌شنوم. چی بیشترین تفاوت رو ایجاد کرد؟"),
                T("Daniel", "We hired two more people, so I'm no longer covering three roles at once.", "دو نفر دیگه استخدام کردیم، برای همین دیگه هم‌زمان کار سه نفر رو انجام نمی‌دم.")
            ], 1),
            D("new_city", "Settling into a new city", "video call", ["Nora", "Samir"], [
                T("Nora", "You look much more relaxed than the last time we spoke.", "خیلی آروم‌تر از آخرین باری که حرف زدیم به نظر میای."),
                T("Samir", "I am. I've finally started to feel settled here.", "آره. بالاخره دارم حس می‌کنم اینجا جا افتادم."),
                T("Nora", "What was the hardest part to adjust to?", "سخت‌ترین بخش برای عادت کردن چی بود؟"),
                T("Samir", "Honestly, building a new routine while keeping up with work.", "راستش ساختن یک روتین جدید در کنار عقب نموندن از کار.")
            ], 2),
            D("future_update", "Sharing one more development", "walk after lunch", ["Elena", "Marcus"], [
                T("Elena", "So, anything else new before we run out of time?", "خب، قبل از اینکه وقتمون تموم بشه خبر جدید دیگه‌ای هست؟"),
                T("Marcus", "Apparently, our team is expanding again later this year.", "ظاهراً تیممون اواخر امسال دوباره بزرگ‌تر می‌شه."),
                T("Elena", "That could change your workload again.", "این می‌تونه دوباره حجم کارت رو تغییر بده."),
                T("Marcus", "Exactly. I'm hoping we've learned enough from last time to manage it better.", "دقیقاً. امیدوارم از دفعه قبل به اندازه کافی یاد گرفته باشیم که این بار بهتر مدیریتش کنیم.")
            ], 3),
        ],
        "fill": ["My workload has ___ become more manageable.", ["gradually", "sudden", "recent", "hardly ever"], "gradually"],
    },
    {
        "slug": "b2-detailed-personal-stories",
        "file": "b2-detailed-personal-stories-v1.json",
        "topic": "simple-messages",
        "lessons": 3,
        "vocab": [
            V("eventually", "eventually", "در نهایت", "adverb"),
            V("meanwhile", "meanwhile", "در همین حین", "adverb"),
            V("realize", "realize", "متوجه شدن", "verb"),
            V("assume", "assume", "فرض کردن", "verb"),
            V("fortunately", "fortunately", "خوشبختانه", "adverb"),
            V("overlook", "overlook", "از قلم انداختن", "verb"),
            V("rush", "rush", "با عجله حرکت کردن", "verb"),
            V("delay", "delay", "تأخیر"),
            V("turning_point", "turning point", "نقطه عطف", "noun_phrase"),
            V("in_hindsight", "in hindsight", "حالا که به گذشته نگاه می‌کنم", "phrase"),
        ],
        "utterances": [
            U("setup", "I had planned everything carefully, but one small mistake changed the whole day.", "همه‌چیز را با دقت برنامه‌ریزی کرده بودم، ولی یک اشتباه کوچک کل روز را عوض کرد.", "set_up_story", ["overlook"], 1),
            U("earlier", "By the time I reached the station, the train had already left.", "تا وقتی به ایستگاه رسیدم، قطار قبلاً رفته بود.", "show_earlier_past", ["delay"], 1),
            U("assumption", "I'd assumed the departure time was the same as usual, which turned out to be wrong.", "فرض کرده بودم زمان حرکت مثل همیشه است، که معلوم شد اشتباه بوده.", "explain_mistaken_assumption", ["assume"], 1),
            U("meanwhile", "Meanwhile, my friends were waiting at the next station and had no idea what had happened.", "در همین حین، دوست‌هام در ایستگاه بعدی منتظر بودند و اصلاً نمی‌دانستند چه اتفاقی افتاده.", "add_parallel_event", ["meanwhile"], 2),
            U("rush", "I rushed to find another route, but every option involved at least an hour's delay.", "با عجله دنبال مسیر دیگری گشتم، ولی هر گزینه حداقل یک ساعت تأخیر داشت.", "develop_story", ["rush", "delay"], 2),
            U("fortunate", "Fortunately, a staff member suggested a bus connection I hadn't noticed.", "خوشبختانه یکی از کارکنان یک اتصال اتوبوسی پیشنهاد داد که من ندیده بودم.", "introduce_solution", ["fortunately", "overlook"], 2),
            U("ending", "Eventually, I arrived just before the event started, exhausted but relieved.", "در نهایت درست قبل از شروع برنامه رسیدم؛ خسته ولی خیالم راحت بود.", "close_story", ["eventually"], 3),
            U("reflection", "In hindsight, the real turning point was asking for help instead of trying to solve everything alone.", "حالا که به گذشته نگاه می‌کنم، نقطه عطف واقعی این بود که به‌جای حل کردن همه‌چیز به‌تنهایی کمک خواستم.", "reflect_on_story", ["in_hindsight", "turning_point"], 3),
        ],
        "grammar": [
            G("past_perfect", "Past perfect for earlier past events", "Use had + past participle to make clear that one past event happened before another past reference point.", "از had + شکل سوم فعل استفاده می‌کنیم تا روشن کنیم یک اتفاق قبل از اتفاق دیگری در گذشته رخ داده است.", [("The train had left before I reached the platform.", "قطار قبل از اینکه به سکو برسم رفته بود."), ("I realized I'd read the wrong time.", "فهمیدم ساعت اشتباهی را خوانده بودم.")], 1),
            G("narrative_contrast", "Past simple, continuous, and perfect together", "Combine narrative tenses to distinguish the main events, background actions, and events that happened even earlier.", "زمان‌های روایی را کنار هم به کار می‌بریم تا اتفاق اصلی، پس‌زمینه و اتفاق‌های قبل‌تر از هم مشخص باشند.", [("I was waiting when I realized the train had left.", "داشتم منتظر می‌ماندم که فهمیدم قطار رفته بود."), ("They were calling me because I had missed the connection.", "داشتند به من زنگ می‌زدند چون اتصال را از دست داده بودم.")], 2),
            G("reflection", "Reflecting on a story", "Expressions such as in hindsight and looking back help you move from events to what you learned or now understand.", "عبارت‌هایی مثل in hindsight و looking back کمک می‌کنند از روایت اتفاق‌ها به برداشت یا چیزی که یاد گرفته‌ایم برسیم.", [("In hindsight, I should have checked twice.", "حالا که نگاه می‌کنم، باید دوباره چک می‌کردم."), ("Looking back, the delay actually helped us.", "وقتی به عقب نگاه می‌کنم، آن تأخیر در واقع به ما کمک کرد.")], 3),
        ],
        "dialogues": [
            D("missed_train", "A journey that nearly failed", "living room", ["Amir", "Chloe"], [
                T("Chloe", "You said the trip almost fell apart. What happened?", "گفتی سفر نزدیک بود کلاً خراب بشه. چی شد؟"),
                T("Amir", "I'd checked the route the night before, but I overlooked a schedule change.", "شب قبل مسیر رو چک کرده بودم، ولی تغییر برنامه زمانی رو ندیده بودم."),
                T("Chloe", "So the train had already gone when you arrived?", "پس وقتی رسیدی قطار رفته بود؟"),
                T("Amir", "Exactly, and that was only the beginning.", "دقیقاً، و تازه اول ماجرا بود.")
            ], 1),
            D("finding_route", "Finding another route", "station concourse", ["Amir", "Staff"], [
                T("Amir", "Every route I'm finding gets me there too late. Is there anything I've missed?", "هر مسیری پیدا می‌کنم خیلی دیر منو می‌رسونه. چیزی هست که از قلم انداخته باشم؟"),
                T("Staff", "There is a bus from the north exit in twelve minutes.", "از خروجی شمالی دوازده دقیقه دیگه یک اتوبوس هست."),
                T("Amir", "I hadn't seen that option at all.", "اصلاً اون گزینه رو ندیده بودم."),
                T("Staff", "It's not obvious in the app, but it should get you there in time.", "توی اپ واضح نیست، ولی باید به‌موقع برسونتت.")
            ], 2),
            D("reflection", "Looking back on the day", "phone call", ["Amir", "Chloe"], [
                T("Chloe", "So what did you learn from the whole disaster?", "خب از کل این فاجعه چی یاد گرفتی؟"),
                T("Amir", "In hindsight, I wasted too much time trying to fix everything alone.", "حالا که نگاه می‌کنم، وقت زیادی رو صرف کردم که همه‌چیز رو تنها درست کنم."),
                T("Chloe", "And asking the staff changed everything?", "و کمک خواستن از کارکنان همه‌چیز رو عوض کرد؟"),
                T("Amir", "Pretty much. That was the turning point.", "تقریباً. همون نقطه عطف بود.")
            ], 3),
        ],
        "fill": ["By the time I reached the station, the train had already ___.", ["left", "leave", "leaving", "leaves"], "left"],
    },
    {
        "slug": "b2-causes-consequences",
        "file": "b2-causes-consequences-v1.json",
        "topic": "simple-messages",
        "lessons": 3,
        "vocab": [
            V("underlying", "underlying", "ریشه‌ای / زیربنایی", "adjective"),
            V("trigger", "trigger", "باعث آغاز شدن", "verb"),
            V("consequence", "consequence", "پیامد"),
            V("therefore", "therefore", "بنابراین", "adverb"),
            V("shortage", "shortage", "کمبود"),
            V("due_to", "due to", "به دلیل", "preposition"),
            V("as_a_result", "as a result", "در نتیجه", "phrase"),
            V("contribute", "contribute to", "در چیزی نقش داشتن", "verb"),
            V("immediate", "immediate", "فوری", "adjective"),
            V("long_term", "long-term", "بلندمدت", "adjective"),
        ],
        "utterances": [
            U("surface_cause", "The immediate problem was a server failure, but the underlying cause was poor maintenance.", "مشکل فوری خرابی سرور بود، ولی علت ریشه‌ای نگهداری ضعیف بود.", "distinguish_causes", ["immediate", "underlying"], 1),
            U("trigger", "A sudden increase in traffic triggered the outage during the busiest hour.", "افزایش ناگهانی ترافیک باعث شد قطعی در شلوغ‌ترین ساعت شروع شود.", "describe_trigger", ["trigger"], 1),
            U("contribute", "Several smaller issues had also contributed to the system becoming unstable.", "چند مشکل کوچک‌تر هم در ناپایدار شدن سیستم نقش داشتند.", "add_contributing_factor", ["contribute"], 1),
            U("result", "As a result, customers were unable to complete payments for nearly forty minutes.", "در نتیجه، مشتری‌ها نزدیک چهل دقیقه نمی‌توانستند پرداخت را کامل کنند.", "describe_result", ["as_a_result", "consequence"], 2),
            U("shortage", "The support team was already dealing with a staff shortage, so response times became much longer.", "تیم پشتیبانی از قبل با کمبود نیرو روبه‌رو بود، برای همین زمان پاسخ‌گویی خیلی طولانی‌تر شد.", "connect_factor_result", ["shortage"], 2),
            U("due", "Some orders were delayed due to the payment problem.", "بعضی سفارش‌ها به دلیل مشکل پرداخت با تأخیر روبه‌رو شدند.", "state_cause_formally", ["due_to"], 2),
            U("longterm", "The long-term consequence was a complete review of the monitoring process.", "پیامد بلندمدت، بازبینی کامل فرایند مانیتورینگ بود.", "describe_long_term_result", ["long_term", "consequence"], 3),
            U("therefore", "The company therefore decided to add automatic alerts and a second backup system.", "بنابراین شرکت تصمیم گرفت هشدارهای خودکار و یک سیستم پشتیبان دوم اضافه کند.", "state_response", ["therefore"], 3),
        ],
        "grammar": [
            G("cause_forms", "because, because of, and due to", "Use because before a clause, and because of or due to before a noun phrase.", "قبل از جمله کامل از because و قبل از عبارت اسمی از because of یا due to استفاده می‌کنیم.", [("The site failed because traffic increased.", "سایت از کار افتاد چون ترافیک زیاد شد."), ("The delay was due to a server problem.", "تأخیر به دلیل مشکل سرور بود.")], 1),
            G("result_connectors", "therefore and as a result", "Use result connectors to make the consequence of the previous idea explicit. Therefore is typically more formal than so.", "از connectorهای نتیجه برای روشن کردن پیامد نکته قبلی استفاده می‌کنیم. therefore معمولاً رسمی‌تر از so است.", [("Traffic doubled; as a result, the system slowed down.", "ترافیک دو برابر شد؛ در نتیجه سیستم کند شد."), ("The backup failed; therefore, recovery took longer.", "سیستم پشتیبان از کار افتاد؛ بنابراین بازیابی بیشتر طول کشید.")], 2),
            G("multiple_causes", "Explaining multiple causes", "When several factors matter, distinguish the main cause, contributing factors, and the event that triggered the problem.", "وقتی چند عامل مهم هستند، علت اصلی، عوامل مؤثر و اتفاقی که مشکل را شروع کرده از هم جدا می‌کنیم.", [("Poor maintenance was the main cause, while high traffic triggered the failure.", "نگهداری ضعیف علت اصلی بود، در حالی که ترافیک بالا خرابی را شروع کرد."), ("Staff shortages also contributed to the slow response.", "کمبود نیرو هم در پاسخ کند نقش داشت.")], 3),
        ],
        "dialogues": [
            D("incident", "Explaining what caused an outage", "team meeting", ["Leila", "Jon"], [
                T("Leila", "Was the traffic spike the actual cause of the outage?", "افزایش ترافیک واقعاً علت قطعی بود؟"),
                T("Jon", "It triggered it, but the underlying cause was that maintenance had been delayed for months.", "باعث شروعش شد، ولی علت ریشه‌ای این بود که نگهداری ماه‌ها عقب افتاده بود."),
                T("Leila", "So there were warning signs before the failure?", "پس قبل از خرابی نشانه‌های هشدار وجود داشت؟"),
                T("Jon", "Yes, several smaller issues had already contributed to instability.", "بله، چند مشکل کوچک‌تر از قبل در ناپایداری سیستم نقش داشتند.")
            ], 1),
            D("customer_effect", "Discussing the immediate impact", "support office", ["Priya", "Ben"], [
                T("Priya", "What was the biggest consequence for customers?", "بزرگ‌ترین پیامد برای مشتری‌ها چی بود؟"),
                T("Ben", "They couldn't complete payments for nearly forty minutes.", "نزدیک چهل دقیقه نمی‌تونستن پرداخت رو کامل کنن."),
                T("Priya", "And support response was slow too, right?", "و پاسخ پشتیبانی هم کند بود، درسته؟"),
                T("Ben", "Yes. We were already short-staffed, so the outage made that problem worse.", "بله. از قبل کمبود نیرو داشتیم، برای همین قطعی اون مشکل رو بدتر کرد.")
            ], 2),
            D("prevention", "Turning consequences into prevention", "review meeting", ["Jon", "Priya"], [
                T("Jon", "The incident was expensive, but at least it exposed the weaknesses clearly.", "این اتفاق هزینه‌بر بود، ولی حداقل ضعف‌ها رو خیلی واضح نشون داد."),
                T("Priya", "Which is why we're changing the monitoring process?", "برای همینه که داریم فرایند مانیتورینگ رو تغییر می‌دیم؟"),
                T("Jon", "Exactly. We're adding automatic alerts and a second backup system.", "دقیقاً. داریم هشدار خودکار و یک سیستم پشتیبان دوم اضافه می‌کنیم."),
                T("Priya", "That should reduce the long-term risk considerably.", "این باید ریسک بلندمدت رو خیلی کمتر کنه.")
            ], 3),
        ],
        "fill": ["Some orders were delayed ___ to the payment problem.", ["due", "because", "therefore", "result"], "due"],
    },
    {
        "slug": "b2-habits-trends-change",
        "file": "b2-habits-trends-change-v1.json",
        "topic": "daily-routine",
        "lessons": 3,
        "vocab": [
            V("increasingly", "increasingly", "به‌طور فزاینده", "adverb"),
            V("tend", "tend to", "تمایل داشتن / معمولاً کاری کردن", "verb"),
            V("shift", "shift", "تغییر جهت / تغییر الگو"),
            V("gradual", "gradual", "تدریجی", "adjective"),
            V("routine", "routine", "روال"),
            V("remote", "remote", "دورکار", "adjective"),
            V("commute", "commute", "رفت‌وآمد روزانه", "noun"),
            V("adapt", "adapt", "سازگار شدن", "verb"),
            V("pattern", "pattern", "الگو"),
            V("balance", "balance", "تعادل", "noun"),
        ],
        "utterances": [
            U("used_to", "I used to commute five days a week, but now I work remotely most of the time.", "قبلاً پنج روز در هفته رفت‌وآمد می‌کردم، ولی الان بیشتر اوقات دورکارم.", "contrast_past_present", ["commute", "remote"], 1),
            U("trend", "People in my team are increasingly choosing flexible hours rather than a fixed schedule.", "آدم‌های تیم من به‌طور فزاینده ساعت کاری شناور را به برنامه ثابت ترجیح می‌دهند.", "describe_trend", ["increasingly", "shift"], 1),
            U("tendency", "We tend to come into the office when we need to collaborate closely.", "معمولاً وقتی نیاز به همکاری نزدیک داریم به دفتر می‌آییم.", "describe_tendency", ["tend", "routine"], 1),
            U("gradual", "The change was gradual, so people had time to adapt their routines.", "تغییر تدریجی بود، برای همین آدم‌ها وقت داشتند روال‌شان را سازگار کنند.", "describe_change_process", ["gradual", "adapt", "routine"], 2),
            U("pattern", "One pattern we've noticed is that meetings are shorter when everyone joins online.", "یک الگویی که متوجه شدیم اینه که وقتی همه آنلاین وصل می‌شن جلسه‌ها کوتاه‌ترن.", "identify_pattern", ["pattern"], 2),
            U("balance", "I've been trying to find a better balance between focused work and being available to the team.", "دارم سعی می‌کنم تعادل بهتری بین کار متمرکز و در دسترس بودن برای تیم پیدا کنم.", "describe_ongoing_adjustment", ["balance"], 2),
            U("not_linear", "The shift hasn't been completely smooth; some habits have taken much longer to change than others.", "این تغییر کاملاً روان نبوده؛ عوض شدن بعضی عادت‌ها خیلی بیشتر از بقیه طول کشیده.", "qualify_change", ["shift"], 3),
            U("future", "I expect hybrid work to remain common, although the exact pattern will probably keep evolving.", "فکر می‌کنم کار ترکیبی رایج بمونه، هرچند الگوی دقیقش احتمالاً همچنان تغییر می‌کنه.", "predict_trend", ["pattern", "adapt"], 3),
        ],
        "grammar": [
            G("used_to_would", "used to and would for past habits", "Use used to for past states or repeated habits. Would can describe repeated past actions, but not normally past states.", "used to هم برای حالت‌ها و هم عادت‌های تکراری گذشته استفاده می‌شود. would بیشتر برای کارهای تکراری گذشته است و معمولاً برای حالت‌ها به کار نمی‌رود.", [("I used to work downtown.", "قبلاً مرکز شهر کار می‌کردم."), ("On Fridays, we'd finish early.", "جمعه‌ها زودتر کار را تمام می‌کردیم.")], 1),
            G("trend_language", "Describing trends without absolutes", "Use tend to, increasingly, more often, and less often to describe patterns without claiming they are always true.", "با tend to، increasingly، more often و less often الگوها را بدون مطلق‌گویی توصیف می‌کنیم.", [("People increasingly work across different locations.", "آدم‌ها به‌طور فزاینده از مکان‌های مختلف کار می‌کنند."), ("We tend to meet in person for complex decisions.", "معمولاً برای تصمیم‌های پیچیده حضوری جلسه می‌گذاریم.")], 2),
            G("ongoing_change", "Present perfect continuous for ongoing change", "Use have/has been + -ing to emphasize a process that started earlier and is still developing.", "برای تأکید روی فرایندی که قبلاً شروع شده و هنوز ادامه دارد از have/has been + ing استفاده می‌کنیم.", [("We've been changing how we run meetings.", "مدتی است داریم شیوه برگزاری جلسه‌ها را تغییر می‌دهیم."), ("I've been trying to protect my focus time.", "مدتی است سعی می‌کنم زمان تمرکزم را حفظ کنم.")], 3),
        ],
        "dialogues": [
            D("hybrid_shift", "How work habits changed", "office kitchen", ["Sara", "Theo"], [
                T("Sara", "Do you remember when we used to be here every single day?", "یادت میاد قبلاً هر روز اینجا بودیم؟"),
                T("Theo", "Barely. Now I only commute when there's a real reason to be in person.", "سخت یادمه. الان فقط وقتی واقعاً دلیل داشته باشه حضوری میام."),
                T("Sara", "Same. Our habits changed more than I expected.", "منم همین‌طور. عادت‌هامون بیشتر از چیزی که فکر می‌کردم عوض شد."),
                T("Theo", "And the shift was gradual enough that it almost felt normal.", "و تغییر اون‌قدر تدریجی بود که تقریباً عادی به نظر می‌رسید.")
            ], 1),
            D("meeting_pattern", "Noticing a team pattern", "online meeting", ["Aisha", "Tom"], [
                T("Aisha", "Have you noticed our online meetings tend to end earlier?", "متوجه شدی جلسه‌های آنلاینمون معمولاً زودتر تموم می‌شن؟"),
                T("Tom", "Yes, especially when the agenda is clear in advance.", "آره، مخصوصاً وقتی دستور جلسه از قبل واضحه."),
                T("Aisha", "Maybe being online makes us more disciplined about time.", "شاید آنلاین بودن باعث می‌شه درباره زمان منظم‌تر باشیم."),
                T("Tom", "Possibly, although brainstorming still works better for us in person.", "ممکنه، هرچند ایده‌پردازی هنوز برای ما حضوری بهتر جواب می‌ده.")
            ], 2),
            D("balance", "Finding a sustainable routine", "walk home", ["Theo", "Aisha"], [
                T("Theo", "I've been trying to create a better boundary around focused work.", "مدتیه دارم سعی می‌کنم مرز بهتری برای کار متمرکز ایجاد کنم."),
                T("Aisha", "Has it helped?", "کمک کرده؟"),
                T("Theo", "A bit. The difficult part is still being available when the team genuinely needs me.", "یه کم. بخش سختش اینه که وقتی تیم واقعاً نیازم داره همچنان در دسترس باشم."),
                T("Aisha", "That balance seems to be the new challenge for everyone.", "به نظر میاد این تعادل چالش جدید همه شده.")
            ], 3),
        ],
        "fill": ["People are ___ choosing flexible hours instead of fixed schedules.", ["increasingly", "increase", "increased", "increasing"], "increasingly"],
    },
    {
        "slug": "b2-experiences-achievements",
        "file": "b2-experiences-achievements-v1.json",
        "topic": "hobbies",
        "lessons": 3,
        "vocab": [
            V("achievement", "achievement", "دستاورد"),
            V("milestone", "milestone", "نقطه مهم / مرحله مهم"),
            V("challenge", "challenge", "چالش"),
            V("overcome", "overcome", "غلبه کردن بر", "verb"),
            V("rewarding", "rewarding", "رضایت‌بخش", "adjective"),
            V("confidence", "confidence", "اعتمادبه‌نفس"),
            V("persist", "persist", "ادامه دادن با وجود سختی", "verb"),
            V("recognition", "recognition", "قدردانی / به‌رسمیت‌شناختن"),
            V("meaningful", "meaningful", "معنادار", "adjective"),
            V("perspective", "perspective", "دیدگاه"),
        ],
        "utterances": [
            U("milestone", "Finishing the course felt like a major milestone because I'd nearly given up twice.", "تمام کردن دوره حس یک نقطه مهم را داشت چون دو بار نزدیک بود کلاً بی‌خیالش شوم.", "describe_achievement", ["milestone", "challenge"], 1),
            U("challenge", "The biggest challenge wasn't the workload; it was staying motivated when progress felt slow.", "بزرگ‌ترین چالش حجم کار نبود؛ حفظ انگیزه وقتی پیشرفت کند به نظر می‌رسید بود.", "identify_challenge", ["challenge", "persist"], 1),
            U("overcome", "I eventually overcame that by tracking small improvements instead of waiting for one dramatic result.", "در نهایت با دنبال کردن پیشرفت‌های کوچک به‌جای انتظار برای یک نتیجه بزرگ ازش عبور کردم.", "explain_solution", ["overcome", "persist"], 1),
            U("rewarding", "The most rewarding part was realizing that I could handle situations that used to intimidate me.", "رضایت‌بخش‌ترین بخش این بود که فهمیدم می‌تونم موقعیت‌هایی رو مدیریت کنم که قبلاً می‌ترسوندم.", "evaluate_experience", ["rewarding", "confidence"], 2),
            U("confidence", "That experience gave me enough confidence to apply for a more demanding role.", "اون تجربه به من اعتمادبه‌نفس کافی داد که برای یک نقش سخت‌تر درخواست بدم.", "connect_experience_to_choice", ["confidence", "achievement"], 2),
            U("recognition", "The recognition was nice, but it mattered less than knowing how much I'd improved.", "قدردانی خوب بود، ولی از این‌که می‌دونستم چقدر پیشرفت کرده‌ام اهمیت کمتری داشت.", "qualify_achievement", ["recognition", "meaningful"], 2),
            U("perspective", "Looking back, the experience changed my perspective on what counts as progress.", "وقتی به عقب نگاه می‌کنم، اون تجربه دیدگاهم رو درباره اینکه چه چیزی پیشرفت حساب می‌شه تغییر داد.", "reflect_on_growth", ["perspective", "meaningful"], 3),
            U("advice", "If I had to give one piece of advice, I'd say persistence matters more than feeling confident every day.", "اگر بخوام یک توصیه بکنم، می‌گم ادامه دادن مهم‌تر از اینه که هر روز حس اعتمادبه‌نفس داشته باشی.", "derive_advice", ["persist", "confidence"], 3),
        ],
        "grammar": [
            G("perfect_to_past", "Present perfect for experience, past simple for detail", "Introduce an experience with the present perfect when the time is not the focus, then move to the past simple for the specific story or finished details.", "وقتی زمان دقیق مهم نیست تجربه را با present perfect معرفی می‌کنیم و برای جزئیات مشخص و تمام‌شده به past simple می‌رویم.", [("I've completed two professional courses. The last one took six months.", "دو دوره حرفه‌ای تمام کرده‌ام. آخری شش ماه طول کشید."), ("I've had a few difficult projects. One of them nearly failed last year.", "چند پروژه سخت داشته‌ام. یکی از آن‌ها پارسال نزدیک بود شکست بخورد.")], 1),
            G("emphasis", "Adding emphasis with what mattered most", "Use structures such as the biggest challenge, the most rewarding part, and what mattered most to organize a reflective account.", "با ساختارهایی مثل the biggest challenge، the most rewarding part و what mattered most می‌توانیم یک روایت تأملی را منظم کنیم.", [("The biggest challenge was staying motivated.", "بزرگ‌ترین چالش حفظ انگیزه بود."), ("What mattered most was the confidence I gained.", "مهم‌ترین چیز اعتمادبه‌نفسی بود که به دست آوردم.")], 2),
            G("reflection_condition", "Reflective advice with would", "Use would in reflective or hypothetical language to explain what you would recommend, change, or do differently now.", "در زبان تأملی یا فرضی از would استفاده می‌کنیم تا بگوییم الان چه چیزی را توصیه می‌کنیم، تغییر می‌دهیم یا متفاوت انجام می‌دهیم.", [("I'd focus more on small improvements.", "بیشتر روی پیشرفت‌های کوچک تمرکز می‌کردم."), ("I wouldn't wait until I felt completely ready.", "صبر نمی‌کردم تا کاملاً آماده احساس کنم.")], 3),
        ],
        "dialogues": [
            D("course", "A milestone after a difficult course", "lunch break", ["Hana", "Luis"], [
                T("Hana", "You finally finished the course, didn't you?", "بالاخره دوره رو تموم کردی، نه؟"),
                T("Luis", "Yes, and honestly it felt bigger than I expected because I'd almost quit twice.", "آره، و راستش بزرگ‌تر از چیزی که فکر می‌کردم حس شد چون دو بار نزدیک بود ولش کنم."),
                T("Hana", "What kept you going?", "چی باعث شد ادامه بدی؟"),
                T("Luis", "Tracking small improvements. It made slow progress feel real.", "ثبت پیشرفت‌های کوچک. باعث شد پیشرفت کند واقعی به نظر برسه.")
            ], 1),
            D("confidence", "How an experience changed a decision", "office lobby", ["Luis", "Mei"], [
                T("Mei", "What made you apply for the senior role?", "چی باعث شد برای نقش ارشد درخواست بدی؟"),
                T("Luis", "The course gave me more confidence than I expected.", "دوره بیشتر از چیزی که فکر می‌کردم بهم اعتمادبه‌نفس داد."),
                T("Mei", "Because of the qualification itself?", "به خاطر خود مدرک؟"),
                T("Luis", "Not really. Mostly because I proved to myself I could handle something difficult for months.", "نه واقعاً. بیشتر چون به خودم ثابت کردم می‌تونم ماه‌ها یک چیز سخت رو مدیریت کنم.")
            ], 2),
            D("perspective", "What achievement means now", "evening walk", ["Hana", "Mei"], [
                T("Hana", "Do you think the award was the best part of the whole experience?", "فکر می‌کنی جایزه بهترین بخش کل تجربه بود؟"),
                T("Mei", "It was nice, but not the most meaningful part.", "خوب بود، ولی معنادارترین بخش نبود."),
                T("Hana", "What was?", "پس چی بود؟"),
                T("Mei", "Realizing that progress can be quiet and still be important.", "اینکه فهمیدم پیشرفت می‌تونه آروم باشه و بازم مهم باشه.")
            ], 3),
        ],
        "fill": ["The most ___ part was realizing how much I had improved.", ["rewarding", "reward", "rewarded", "rewards"], "rewarding"],
    },
]


def build(spec):
    prefix = spec["slug"].replace("-", "_")
    items = []
    concept_slugs = {}

    for i, v in enumerate(spec["vocab"], 1):
        lesson = ((i - 1) % spec["lessons"]) + 1
        slug = f"{prefix}_{v['key']}"
        concept_slugs[v["key"]] = slug
        items.append({
            "kind": "concept",
            "external_id": f"c_{prefix}_{v['key']}",
            "data": {
                "slug": slug,
                "lesson_key": f"{spec['slug']}-{lesson:02d}",
                "concept_type": "lexical",
                "forms": {"en": v["en"]},
                "translations": {"fa": v["fa"]},
                "cefr": CEFR,
                "topic": spec["topic"],
                "status": "approved",
            },
        })
        lx = f"lx_{prefix}_{v['key']}"
        items.append({
            "kind": "lexeme",
            "external_id": lx,
            "data": {
                "lesson_key": f"{spec['slug']}-{lesson:02d}",
                "lemma": v["en"],
                "language": "en",
                "language_variant": "en-US",
                "part_of_speech": v["pos"],
                "concept_refs": [slug],
                "cefr": CEFR,
                "status": "approved",
            },
        })
        items.append({
            "kind": "word_form",
            "external_id": f"wf_{prefix}_{v['key']}",
            "data": {
                "lesson_key": f"{spec['slug']}-{lesson:02d}",
                "lexeme_ref": lx,
                "surface_form": v["en"],
                "grammatical_features": {"form": "base"},
                "cefr": CEFR,
                "status": "approved",
            },
        })

    for u in spec["utterances"]:
        refs = [concept_slugs[r] for r in u["refs"] if r in concept_slugs]
        items.append({
            "kind": "utterance",
            "external_id": f"u_{prefix}_{u['key']}",
            "data": {
                "lesson_key": f"{spec['slug']}-{u['lesson']:02d}",
                "text": {"en": u["en"]},
                "translations": {"fa": u["fa"]},
                "intent": u["intent"],
                "concept_refs": refs,
                "cefr": CEFR,
                "topic": spec["topic"],
                "register": u["register"],
                "status": "approved",
            },
        })

    for g in spec["grammar"]:
        items.append({
            "kind": "grammar_point",
            "external_id": f"g_{prefix}_{g['key']}",
            "data": {
                "lesson_key": f"{spec['slug']}-{g['lesson']:02d}",
                "slug": f"{spec['slug']}-{g['key'].replace('_', '-')}",
                "title": g["title"],
                "rule_summary": g["rule"],
                "explanation": {"fa": g["fa"]},
                "examples": [{"en": a, "fa": b} for a, b in g["examples"]],
                "cefr": CEFR,
                "status": "approved",
            },
        })

    for d in spec["dialogues"]:
        items.append({
            "kind": "dialogue",
            "external_id": f"d_{prefix}_{d['key']}",
            "data": {
                "lesson_key": f"{spec['slug']}-{d['lesson']:02d}",
                "title": d["title"],
                "setting": d["setting"],
                "cefr": CEFR,
                "topic": spec["topic"],
                "characters": d["chars"],
                "turns": [
                    {"order": i + 1, "speaker": t["speaker"], "text": t["en"], "translation_fa": t["fa"]}
                    for i, t in enumerate(d["turns"])
                ],
                "status": "approved",
            },
        })

    u = spec["utterances"]
    fill_prompt, fill_options, fill_answer = spec["fill"]
    exercises = [
        {"external_id": f"ex_{prefix}_fill", "data": {"lesson_key": f"{spec['slug']}-01", "exercise_type": "fill_blank", "prompt": {"text": fill_prompt}, "options": fill_options, "answer": {"value": fill_answer}, "difficulty": 4, "cefr": CEFR, "status": "approved"}},
        {"external_id": f"ex_{prefix}_listen1", "data": {"lesson_key": f"{spec['slug']}-{u[1]['lesson']:02d}", "exercise_type": "listening", "prompt": {"instruction_fa": "گوش کن و نزدیک‌ترین معنی را انتخاب کن.", "audio_text": u[1]["en"]}, "options": [u[1]["fa"], u[0]["fa"], u[4]["fa"], u[6]["fa"]], "answer": {"value": u[1]["fa"]}, "difficulty": 4, "cefr": CEFR, "status": "approved"}},
        {"external_id": f"ex_{prefix}_speak1", "data": {"lesson_key": f"{spec['slug']}-{u[2]['lesson']:02d}", "exercise_type": "speaking", "prompt": {"instruction_fa": f"این ایده را طبیعی و کامل به انگلیسی بگو: {u[2]['fa']}"}, "answer": {"expected_text": u[2]["en"]}, "difficulty": 4, "cefr": CEFR, "status": "approved"}},
        {"external_id": f"ex_{prefix}_build1", "data": {"lesson_key": f"{spec['slug']}-{u[3]['lesson']:02d}", "exercise_type": "sentence_building", "prompt": {"fa": u[3]["fa"], "tokens": list(reversed(u[3]["en"].split()))}, "answer": {"tokens": u[3]["en"].split(), "text": u[3]["en"]}, "difficulty": 4, "cefr": CEFR, "status": "approved"}},
        {"external_id": f"ex_{prefix}_meaning", "data": {"lesson_key": f"{spec['slug']}-{u[4]['lesson']:02d}", "exercise_type": "multiple_choice", "prompt": {"fa": "منظور دقیق‌تر جمله کدام است؟", "text": u[4]["en"]}, "options": [u[4]["fa"], u[2]["fa"], u[6]["fa"], u[0]["fa"]], "answer": {"value": u[4]["fa"]}, "difficulty": 4, "cefr": CEFR, "status": "approved"}},
        {"external_id": f"ex_{prefix}_listen2", "data": {"lesson_key": f"{spec['slug']}-{u[5]['lesson']:02d}", "exercise_type": "listening", "prompt": {"instruction_fa": "گوش کن و برداشت درست از جمله را انتخاب کن.", "audio_text": u[5]["en"]}, "options": [u[5]["fa"], u[1]["fa"], u[3]["fa"], u[7]["fa"]], "answer": {"value": u[5]["fa"]}, "difficulty": 4, "cefr": CEFR, "status": "approved"}},
        {"external_id": f"ex_{prefix}_speak2", "data": {"lesson_key": f"{spec['slug']}-{u[6]['lesson']:02d}", "exercise_type": "speaking", "prompt": {"instruction_fa": f"این جمله را با لحن طبیعی انگلیسی بیان کن: {u[6]['fa']}"}, "answer": {"expected_text": u[6]["en"]}, "difficulty": 4, "cefr": CEFR, "status": "approved"}},
        {"external_id": f"ex_{prefix}_build2", "data": {"lesson_key": f"{spec['slug']}-{u[7]['lesson']:02d}", "exercise_type": "sentence_building", "prompt": {"fa": u[7]["fa"], "tokens": list(reversed(u[7]["en"].split()))}, "answer": {"tokens": u[7]["en"].split(), "text": u[7]["en"]}, "difficulty": 4, "cefr": CEFR, "status": "approved"}},
    ]
    items.extend({"kind": "exercise", **e} for e in exercises)

    return enrich_batch({
        "batch_id": f"en-us-{spec['slug']}-v1",
        "course": "fa-en-us",
        "learner_language": "fa",
        "learner_variant": "fa-IR",
        "target_language": "en",
        "target_variant": "en-US",
        "cefr": CEFR,
        "curriculum_unit": spec["slug"],
        "generator": "gpt-5.6-sol:golden-dataset-v2",
        "items": items,
    })


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    written = []
    for spec in UNITS:
        path = OUT / spec["file"]
        path.write_text(json.dumps(build(spec), ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        written.append(path.name)
    print(json.dumps({"written": len(written), "files": written}, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
