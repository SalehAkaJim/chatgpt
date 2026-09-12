#!/usr/bin/env python3
"""Generate the approved English B1 production batch for curriculum units 01-05.

The bilingual learning content below is hand-authored. This script only converts
it to the canonical batch-v2 structure used by the production pipeline.
"""
from __future__ import annotations

try:
    from scripts.english_content_enrichment import enrich_batch
except ModuleNotFoundError:
    from english_content_enrichment import enrich_batch

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "content" / "production" / "en" / "B1"


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
        "slug": "b1-catching-up-in-depth",
        "file": "b1-catching-up-in-depth-v1.json",
        "topic": "polite-language",
        "lessons": 3,
        "vocab": [
            V("lately", "lately", "اخیراً", "adverb"),
            V("recently", "recently", "به‌تازگی", "adverb"),
            V("busy", "busy", "سرشلوغ", "adjective"),
            V("project", "project", "پروژه"),
            V("move", "move", "اسباب‌کشی کردن", "verb"),
            V("settle_in", "settle in", "جا افتادن / به محیط جدید عادت کردن", "phrasal_verb"),
            V("catch_up", "catch up", "از حال و خبر هم باخبر شدن", "phrasal_verb"),
            V("since", "since", "از زمانی که", "preposition"),
            V("change", "change", "تغییر"),
            V("schedule", "schedule", "برنامه زمانی"),
        ],
        "utterances": [
            U("ages", "I haven't seen you in ages. How have you been?", "خیلی وقته ندیدمت. چطور بودی؟", "restart_friendly_contact", ["catch_up"], 1),
            U("working_lately", "What have you been working on lately?", "این اواخر روی چی کار می‌کردی؟", "ask_recent_activity", ["lately", "project"], 1),
            U("busy_project", "I've been pretty busy with a new project at work.", "با یک پروژه جدید کاری حسابی سرم شلوغ بوده.", "describe_recent_activity", ["busy", "project"], 1),
            U("moved", "We moved across town last spring, and we're finally settling in.", "بهار گذشته به آن طرف شهر اسباب‌کشی کردیم و بالاخره داریم جا می‌افتیم.", "describe_recent_change", ["move", "settle_in"], 2),
            U("how_long", "How long have you lived in your new neighborhood?", "چند وقته در محله جدیدت زندگی می‌کنی؟", "ask_duration", ["since"], 2),
            U("changed", "A lot has changed since we last talked.", "از آخرین باری که حرف زدیم خیلی چیزها تغییر کرده.", "summarize_change", ["change", "since"], 2),
            U("schedule", "My schedule is calmer now, so I actually have weekends free.", "الان برنامه‌ام خلوت‌تر شده، برای همین واقعاً آخرهفته‌ها آزادم.", "give_current_update", ["schedule"], 3),
            U("properly", "Let's catch up properly over coffee next week.", "بیا هفته بعد سر قهوه درست‌وحسابی از حال هم باخبر بشیم.", "suggest_follow_up", ["catch_up"], 3),
        ],
        "grammar": [
            G("perfect_vs_past", "Present perfect vs past simple", "Use the present perfect for a past situation connected to now; use the past simple for a finished event at a finished time.", "برای موقعیتی در گذشته که به زمان حال ربط دارد از present perfect و برای اتفاق تمام‌شده در زمان تمام‌شده از past simple استفاده می‌کنیم.", [("A lot has changed since January.", "از ژانویه تا الان خیلی چیزها تغییر کرده."), ("We moved here last January.", "ژانویه گذشته به اینجا اسباب‌کشی کردیم.")], 1),
            G("perfect_continuous", "Present perfect continuous for recent activity", "Use have/has been + -ing to focus on an activity continuing recently or explaining a present result.", "برای تأکید روی فعالیتی که مدتی تا همین اواخر ادامه داشته یا نتیجه‌اش الان دیده می‌شود از have/has been + ing استفاده می‌کنیم.", [("I've been working late this week.", "این هفته تا دیر وقت کار می‌کردم."), ("She's been studying a lot lately.", "این اواخر خیلی درس می‌خوانده.")], 1),
            G("follow_up", "Natural follow-up questions", "Keep a conversation moving by asking a short question about the detail your partner just mentioned.", "برای ادامه طبیعی مکالمه، درباره جزئیاتی که طرف مقابل گفته یک سؤال کوتاه مرتبط بپرس.", [("You moved? Where to?", "اسباب‌کشی کردی؟ کجا؟"), ("A new job? How's it going?", "کار جدید؟ چطور پیش می‌ره؟")], 3),
        ],
        "dialogues": [
            D("reunion", "Running into an old friend", "coffee shop", ["Maya", "Leo"], [
                T("Maya", "Leo! I haven't seen you in ages. How have you been?", "لئو! خیلی وقته ندیدمت. چطور بودی؟"),
                T("Leo", "Good, but busy. I've been working on a new project lately.", "خوبم، ولی سرم شلوغه. این اواخر روی یک پروژه جدید کار می‌کردم."),
                T("Maya", "Really? What kind of project?", "جدی؟ چه جور پروژه‌ای؟"),
                T("Leo", "We're redesigning our customer app. It's been a lot of work.", "داریم اپ مشتری‌هامون رو از نو طراحی می‌کنیم. کارش خیلی زیاد بوده.")
            ], 1),
            D("new_home", "Talking about a recent move", "park", ["Hana", "Noah"], [
                T("Hana", "I heard you moved. How's the new place?", "شنیدم اسباب‌کشی کردی. جای جدید چطوره؟"),
                T("Noah", "We moved in April. We're finally starting to settle in.", "آوریل اسباب‌کشی کردیم. بالاخره داریم کم‌کم جا می‌افتیم."),
                T("Hana", "How long does your commute take now?", "الان رفت‌وآمدت تا محل کار چقدر طول می‌کشه؟"),
                T("Noah", "Only twenty minutes. That's the best part.", "فقط بیست دقیقه. بهترین قسمتش همینه.")
            ], 2),
            D("weekend", "Making time to catch up", "text call", ["Sofia", "Omar"], [
                T("Sofia", "A lot has changed since we last talked.", "از آخرین باری که حرف زدیم خیلی چیزها تغییر کرده."),
                T("Omar", "Then we definitely need a proper catch-up.", "پس حتماً باید درست‌وحسابی از حال هم باخبر بشیم."),
                T("Sofia", "My schedule is calmer now. Are you free Saturday?", "الان برنامه‌ام خلوت‌تره. شنبه آزادی؟"),
                T("Omar", "Saturday afternoon works for me.", "شنبه بعدازظهر برای من خوبه.")
            ], 3),
        ],
        "fill": ["What have you been working on ___?", ["lately", "last", "ago", "yesterday"], "lately"],
    },
    {
        "slug": "b1-personal-stories",
        "file": "b1-personal-stories-v1.json",
        "topic": "simple-messages",
        "lessons": 3,
        "vocab": [
            V("embarrassing", "embarrassing", "خجالت‌آور", "adjective"),
            V("suddenly", "suddenly", "ناگهان", "adverb"),
            V("realize", "realize", "متوجه شدن", "verb"),
            V("luckily", "luckily", "خوشبختانه", "adverb"),
            V("while", "while", "در حالی که", "conjunction"),
            V("mistake", "mistake", "اشتباه"),
            V("eventually", "eventually", "در نهایت", "adverb"),
            V("stranger", "stranger", "غریبه"),
            V("drop", "drop", "انداختن", "verb"),
            V("laugh", "laugh", "خندیدن", "verb"),
        ],
        "utterances": [
            U("start", "Something really embarrassing happened to me on Monday.", "دوشنبه یک اتفاق واقعاً خجالت‌آور برام افتاد.", "open_story", ["embarrassing"], 1),
            U("background", "I was rushing to work while I was answering a message.", "داشتم با عجله می‌رفتم سر کار و هم‌زمان جواب یک پیام را می‌دادم.", "set_story_background", ["while"], 1),
            U("drop", "Suddenly, I dropped my coffee right outside the elevator.", "ناگهان درست جلوی آسانسور قهوه‌ام از دستم افتاد.", "describe_key_event", ["suddenly", "drop"], 1),
            U("wrong_floor", "Then I realized I'd gotten off on the wrong floor.", "بعد متوجه شدم در طبقه اشتباهی از آسانسور پیاده شده بودم.", "describe_realization", ["realize", "mistake"], 2),
            U("help", "Luckily, a stranger showed me where the meeting room was.", "خوشبختانه یک غریبه نشانم داد اتاق جلسه کجاست.", "describe_help", ["luckily", "stranger"], 2),
            U("reaction", "At first I wanted to disappear, but then I started laughing.", "اولش دلم می‌خواست آب بشم برم تو زمین، ولی بعد خودم زدم زیر خنده.", "describe_reaction", ["laugh"], 2),
            U("ending", "Eventually, I made it to the meeting only five minutes late.", "در نهایت فقط با پنج دقیقه تأخیر به جلسه رسیدم.", "close_story", ["eventually"], 3),
            U("lesson", "Now I never text while I'm walking with a full cup of coffee.", "حالا دیگر وقتی با یک لیوان پر قهوه راه می‌روم پیام نمی‌دهم.", "reflect_on_story", ["while"], 3),
        ],
        "grammar": [
            G("past_background", "Past simple and past continuous", "Use the past continuous for background actions and the past simple for completed events that move the story forward.", "برای کارهای در حال انجام در پس‌زمینه از past continuous و برای اتفاق‌های کامل‌شده‌ای که داستان را جلو می‌برند از past simple استفاده می‌کنیم.", [("I was walking home when it started to rain.", "داشتم به خانه می‌رفتم که باران شروع شد."), ("She called while I was cooking.", "وقتی داشتم آشپزی می‌کردم زنگ زد.")], 1),
            G("sequence", "Narrative sequence markers", "Use expressions such as at first, then, after that, and eventually to make the order of events clear.", "برای روشن کردن ترتیب اتفاق‌ها از عباراتی مثل at first، then، after that و eventually استفاده می‌کنیم.", [("At first, I didn't notice the problem.", "اولش متوجه مشکل نشدم."), ("Eventually, we found the right address.", "در نهایت آدرس درست را پیدا کردیم.")], 2),
            G("narrative_adverbs", "Narrative adverbs", "Adverbs such as suddenly, luckily, and unfortunately help show how an event happened or how the speaker views it.", "قیدهایی مثل suddenly، luckily و unfortunately نشان می‌دهند اتفاق چطور افتاده یا گوینده چه برداشتی از آن دارد.", [("Suddenly, the lights went out.", "ناگهان چراغ‌ها خاموش شدند."), ("Luckily, nobody was hurt.", "خوشبختانه کسی آسیب ندید.")], 3),
        ],
        "dialogues": [
            D("coffee_story", "The coffee accident", "office kitchen", ["Lina", "Ben"], [
                T("Lina", "You look tired. Rough morning?", "خسته به نظر میای. صبح سختی داشتی؟"),
                T("Ben", "You could say that. I dropped my coffee while I was running for the elevator.", "می‌شه گفت. وقتی داشتم برای رسیدن به آسانسور می‌دویدم قهوه‌ام افتاد."),
                T("Lina", "Oh no. Did it spill everywhere?", "وای نه. همه‌جا ریخت؟"),
                T("Ben", "Pretty much. The embarrassing part is that three people were watching.", "تقریباً. قسمت خجالت‌آورش این بود که سه نفر داشتن نگاه می‌کردن.")
            ], 1),
            D("wrong_bus", "The wrong bus", "lunch break", ["Amir", "Ella"], [
                T("Amir", "I got on the wrong bus yesterday and didn't realize for twenty minutes.", "دیروز سوار اتوبوس اشتباهی شدم و بیست دقیقه نفهمیدم."),
                T("Ella", "How did you finally notice?", "آخرش چطور فهمیدی؟"),
                T("Amir", "I looked outside and suddenly nothing looked familiar.", "بیرون را نگاه کردم و ناگهان دیدم هیچ‌چیز آشنا نیست."),
                T("Ella", "That's the moment when you know you're in trouble.", "همون لحظه‌ایه که می‌فهمی به دردسر افتادی.")
            ], 2),
            D("kind_stranger", "Help from a stranger", "train station", ["Ravi", "Mina"], [
                T("Ravi", "I once left my wallet on a ticket machine.", "یک بار کیف پولم را روی دستگاه بلیت جا گذاشتم."),
                T("Mina", "Did you get it back?", "پسش گرفتی؟"),
                T("Ravi", "Luckily, a stranger found me before my train left.", "خوشبختانه یک غریبه قبل از حرکت قطار پیدام کرد."),
                T("Mina", "That's a story with a good ending.", "این یکی داستانی بود با پایان خوب.")
            ], 3),
        ],
        "fill": ["I was walking to work when I suddenly ___ my coffee.", ["dropped", "drop", "was drop", "dropping"], "dropped"],
    },
    {
        "slug": "b1-life-changes",
        "file": "b1-life-changes-v1.json",
        "topic": "common-actions",
        "lessons": 3,
        "vocab": [
            V("used_to", "used to", "قبلاً عادت داشتن / در گذشته انجام دادن", "phrase"),
            V("commute", "commute", "رفت‌وآمد روزانه", "noun"),
            V("remote", "remote", "دورکاری", "adjective"),
            V("neighborhood", "neighborhood", "محله"),
            V("career", "career", "مسیر شغلی"),
            V("improve", "improve", "بهتر شدن / بهبود دادن", "verb"),
            V("stressful", "stressful", "پراسترس", "adjective"),
            V("adapt", "adapt", "سازگار شدن", "verb"),
            V("since", "since", "از زمانی که", "preposition"),
            V("no_longer", "no longer", "دیگر نه", "adverb_phrase"),
        ],
        "utterances": [
            U("old_commute", "I used to spend almost two hours a day commuting.", "قبلاً تقریباً روزی دو ساعت در رفت‌وآمد بودم.", "describe_past_routine", ["used_to", "commute"], 1),
            U("remote_now", "Now I work remotely three days a week.", "حالا سه روز در هفته دورکاری می‌کنم.", "describe_current_change", ["remote"], 1),
            U("less_stress", "Life has been less stressful since I changed jobs.", "از وقتی شغلم را عوض کردم زندگی کم‌استرس‌تر شده.", "evaluate_change", ["stressful", "since", "career"], 1),
            U("new_area", "We used to live downtown, but we moved to a quieter neighborhood.", "قبلاً مرکز شهر زندگی می‌کردیم، ولی به یک محله آرام‌تر نقل مکان کردیم.", "compare_past_present", ["used_to", "neighborhood"], 2),
            U("adapt", "It took me a few months to adapt to the new routine.", "چند ماه طول کشید تا به برنامه جدید عادت کنم.", "describe_adjustment", ["adapt"], 2),
            U("no_longer", "I no longer check work messages late at night.", "دیگر آخر شب پیام‌های کاری را چک نمی‌کنم.", "describe_ended_habit", ["no_longer"], 2),
            U("improved", "My English has improved a lot over the past year.", "انگلیسی‌ام در یک سال گذشته خیلی بهتر شده.", "describe_progress", ["improve"], 3),
            U("career_change", "Changing careers was difficult, but it gave me more control over my time.", "تغییر مسیر شغلی سخت بود، ولی کنترل بیشتری روی وقتم به من داد.", "reflect_on_change", ["career"], 3),
        ],
        "grammar": [
            G("used_to", "used to for past states and habits", "Use used to + base verb for a repeated past habit or state that is different now.", "برای عادت یا وضعیت تکراری در گذشته که الان تغییر کرده از used to + فعل ساده استفاده می‌کنیم.", [("I used to work weekends.", "قبلاً آخرهفته‌ها کار می‌کردم."), ("We used to live near the station.", "قبلاً نزدیک ایستگاه زندگی می‌کردیم.")], 1),
            G("still_no_longer", "still and no longer", "Use still for something that continues and no longer for something that has stopped being true.", "برای چیزی که هنوز ادامه دارد از still و برای چیزی که دیگر درست نیست از no longer استفاده می‌کنیم.", [("I still take the same train.", "هنوز همان قطار را می‌گیرم."), ("I no longer work nights.", "دیگر شیفت شب کار نمی‌کنم.")], 2),
            G("for_since", "Present perfect with for and since", "Use for with a length of time and since with a starting point when a situation continues until now.", "برای مدت زمان از for و برای نقطه شروع از since استفاده می‌کنیم وقتی وضعیت تا الان ادامه دارد.", [("I've worked here for three years.", "سه سال است اینجا کار می‌کنم."), ("I've lived here since 2024.", "از سال ۲۰۲۴ اینجا زندگی می‌کنم.")], 3),
        ],
        "dialogues": [
            D("work_change", "A better commute", "office break room", ["Chloe", "Daniel"], [
                T("Chloe", "Didn't you use to work across town?", "قبلاً آن طرف شهر کار نمی‌کردی؟"),
                T("Daniel", "Yeah. My commute used to be terrible.", "آره. رفت‌وآمدم واقعاً افتضاح بود."),
                T("Chloe", "Is the new job better?", "کار جدید بهتره؟"),
                T("Daniel", "Much better. I work remotely most Fridays now.", "خیلی بهتره. حالا بیشتر جمعه‌ها دورکاری می‌کنم.")
            ], 1),
            D("new_neighborhood", "Getting used to a new neighborhood", "neighborhood cafe", ["Priya", "Marco"], [
                T("Priya", "How are you finding the new neighborhood?", "محله جدید چطوره برات؟"),
                T("Marco", "Quiet, which I like, but I'm still learning where everything is.", "آرومه که دوستش دارم، ولی هنوز دارم یاد می‌گیرم هر چیزی کجاست."),
                T("Priya", "It takes time to adapt.", "عادت کردن زمان می‌بره."),
                T("Marco", "Exactly. I already miss the old bakery, though.", "دقیقاً. البته همین الان دلم برای نانوایی قدیمی تنگ شده.")
            ], 2),
            D("career", "Looking back on a career change", "video call", ["Maya", "Omar"], [
                T("Maya", "You've been in design for a while now, right?", "الان مدتیه توی طراحی کار می‌کنی، درسته؟"),
                T("Omar", "Almost four years. I used to work in sales.", "تقریباً چهار سال. قبلاً فروش کار می‌کردم."),
                T("Maya", "Do you ever miss it?", "هیچ‌وقت دلت براش تنگ می‌شه؟"),
                T("Omar", "Not really. The change was hard, but I'm happier now.", "نه زیاد. تغییرش سخت بود ولی الان خوشحال‌ترم.")
            ], 3),
        ],
        "fill": ["I ___ spend two hours a day commuting, but now I work from home.", ["used to", "use to", "am used", "was using"], "used to"],
    },
    {
        "slug": "b1-habits-and-change",
        "file": "b1-habits-and-change-v1.json",
        "topic": "daily-routine",
        "lessons": 3,
        "vocab": [
            V("routine", "routine", "روال"),
            V("cut_down", "cut down", "کم کردن", "phrasal_verb"),
            V("keep_track", "keep track", "پیگیری کردن", "phrase"),
            V("distract", "distract", "حواس پرت کردن", "verb"),
            V("habit", "habit", "عادت"),
            V("goal", "goal", "هدف"),
            V("gradually", "gradually", "به‌تدریج", "adverb"),
            V("consistent", "consistent", "منظم و پایدار", "adjective"),
            V("reward", "reward", "پاداش"),
            V("slip_up", "slip up", "لغزش کردن / از برنامه خارج شدن", "phrasal_verb"),
        ],
        "utterances": [
            U("phone_habit", "I'm trying to cut down on how often I check my phone.", "دارم سعی می‌کنم تعداد دفعاتی که گوشی‌ام را چک می‌کنم کمتر کنم.", "describe_change_goal", ["cut_down", "habit"], 1),
            U("track", "Keeping track of my screen time has made the habit more obvious.", "پیگیری زمان استفاده از صفحه باعث شده این عادت بیشتر به چشمم بیاید.", "describe_strategy", ["keep_track", "habit"], 1),
            U("distracted", "I get distracted easily when notifications are on.", "وقتی اعلان‌ها روشن‌اند خیلی راحت حواسم پرت می‌شود.", "describe_problem", ["distract"], 1),
            U("new_routine", "I'm getting used to starting the day without social media.", "دارم عادت می‌کنم روزم را بدون شبکه‌های اجتماعی شروع کنم.", "describe_adjustment", ["routine"], 2),
            U("gradual", "I changed the routine gradually instead of trying to do everything at once.", "به‌جای اینکه بخواهم همه‌چیز را یک‌دفعه عوض کنم، روال را کم‌کم تغییر دادم.", "explain_method", ["gradually", "routine"], 2),
            U("consistent", "The hardest part is being consistent when I'm tired.", "سخت‌ترین قسمت اینه که وقتی خسته‌ام هم منظم بمونم.", "describe_challenge", ["consistent"], 2),
            U("reward", "I give myself a small reward when I stick to my goal for a week.", "وقتی یک هفته به هدفم پایبند می‌مانم به خودم یک پاداش کوچک می‌دهم.", "describe_motivation", ["reward", "goal"], 3),
            U("slip", "If I slip up one day, I just start again the next morning.", "اگر یک روز از برنامه خارج شوم، صبح روز بعد دوباره شروع می‌کنم.", "describe_recovery", ["slip_up", "goal"], 3),
        ],
        "grammar": [
            G("used_to_variants", "used to, be used to, get used to", "Used to describes a past habit; be used to means something is familiar; get used to describes the process of becoming familiar.", "used to برای عادت گذشته است، be used to یعنی چیزی برایمان عادی است و get used to روند عادت کردن را بیان می‌کند.", [("I used to check my phone in bed.", "قبلاً در تخت گوشی‌ام را چک می‌کردم."), ("I'm getting used to leaving it outside the bedroom.", "دارم عادت می‌کنم گوشی را بیرون اتاق خواب بگذارم.")], 1),
            G("gerunds", "Gerunds after common verbs", "After verbs such as avoid, enjoy, keep, finish, and consider, use the -ing form.", "بعد از فعل‌هایی مثل avoid، enjoy، keep، finish و consider از شکل ing استفاده می‌کنیم.", [("I avoid checking messages during meals.", "هنگام غذا از چک کردن پیام‌ها خودداری می‌کنم."), ("Keep tracking your progress.", "به پیگیری پیشرفتت ادامه بده.")], 2),
            G("degree", "Adverbs of degree", "Use words such as really, fairly, slightly, and extremely to show the strength of an adjective or adverb.", "با کلماتی مثل really، fairly، slightly و extremely شدت یک صفت یا قید را نشان می‌دهیم.", [("It's fairly easy now.", "الان نسبتاً آسونه."), ("Notifications are extremely distracting for me.", "اعلان‌ها برای من به‌شدت حواس‌پرت‌کن هستند.")], 3),
        ],
        "dialogues": [
            D("screen_time", "Cutting down screen time", "lunch break", ["Nia", "Yusuf"], [
                T("Nia", "I'm trying to cut down on screen time after work.", "دارم سعی می‌کنم بعد از کار زمان صفحه‌نمایشم رو کم کنم."),
                T("Yusuf", "What are you doing differently?", "چه چیزی رو متفاوت انجام می‌دی؟"),
                T("Nia", "I leave my phone in another room while I eat.", "موقع غذا گوشی رو در یک اتاق دیگه می‌ذارم."),
                T("Yusuf", "That would definitely stop me from checking it every two minutes.", "این قطعاً جلوی من رو می‌گرفت که هر دو دقیقه چکش کنم.")
            ], 1),
            D("morning", "Building a morning routine", "gym lobby", ["Ava", "Jack"], [
                T("Ava", "You've been coming here early lately.", "این اواخر زود میای اینجا."),
                T("Jack", "I'm getting used to exercising before work.", "دارم عادت می‌کنم قبل از کار ورزش کنم."),
                T("Ava", "Was it hard at first?", "اولش سخت بود؟"),
                T("Jack", "Very. I changed my bedtime gradually, and that helped.", "خیلی. زمان خوابم رو کم‌کم تغییر دادم و کمک کرد.")
            ], 2),
            D("reset", "Getting back on track", "phone call", ["Hana", "Ben"], [
                T("Hana", "I missed two study sessions this week. I feel like I ruined the routine.", "این هفته دو جلسه مطالعه رو از دست دادم. حس می‌کنم روالم خراب شده."),
                T("Ben", "Two days won't ruin anything. Just restart tomorrow.", "دو روز چیزی رو خراب نمی‌کنه. فقط فردا دوباره شروع کن."),
                T("Hana", "You're right. I need to stop treating every slip-up like a failure.", "درسته. باید دست بردارم از اینکه هر لغزش کوچکی رو شکست ببینم."),
                T("Ben", "Exactly. Consistency matters more than perfection.", "دقیقاً. استمرار از بی‌نقص بودن مهم‌تره.")
            ], 3),
        ],
        "fill": ["I'm getting used to ___ my phone outside the bedroom.", ["leaving", "leave", "left", "to leave"], "leaving"],
    },
    {
        "slug": "b1-events-in-progress",
        "file": "b1-events-in-progress-v1.json",
        "topic": "simple-messages",
        "lessons": 3,
        "vocab": [
            V("while", "while", "در حالی که", "conjunction"),
            V("when", "when", "وقتی", "conjunction"),
            V("outage", "power outage", "قطع برق", "noun_phrase"),
            V("ring", "ring", "زنگ خوردن", "verb"),
            V("drive", "drive", "رانندگی کردن", "verb"),
            V("meeting", "meeting", "جلسه"),
            V("suddenly", "suddenly", "ناگهان", "adverb"),
            V("interrupt", "interrupt", "قطع کردن / وقفه انداختن", "verb"),
            V("notice", "notice", "متوجه شدن", "verb"),
            V("happen", "happen", "اتفاق افتادن", "verb"),
        ],
        "utterances": [
            U("outage", "We were having dinner when the power suddenly went out.", "داشتیم شام می‌خوردیم که ناگهان برق قطع شد.", "describe_interruption", ["outage", "suddenly", "when"], 1),
            U("call", "My phone rang while I was driving home.", "وقتی داشتم به خانه رانندگی می‌کردم گوشیم زنگ خورد.", "describe_parallel_event", ["ring", "while", "drive"], 1),
            U("meeting", "While we were discussing the budget, the fire alarm started.", "وقتی داشتیم درباره بودجه حرف می‌زدیم، آژیر آتش‌سوزی شروع شد.", "describe_interruption", ["meeting", "while"], 1),
            U("notice", "I didn't notice the rain because I was wearing headphones.", "متوجه باران نشدم چون هدفون داشتم.", "explain_missed_event", ["notice"], 2),
            U("happened", "What were you doing when it happened?", "وقتی اتفاق افتاد داشتی چه کار می‌کردی؟", "ask_background", ["happen", "when"], 2),
            U("interrupted", "The connection dropped and interrupted the call.", "اتصال قطع شد و تماس را به هم زد.", "describe_consequence", ["interrupt"], 2),
            U("background", "People were still working while the technicians were checking the system.", "وقتی تکنسین‌ها سیستم را بررسی می‌کردند، مردم هنوز داشتند کار می‌کردند.", "describe_parallel_background", ["while"], 3),
            U("summary", "Nothing serious happened, but the interruption delayed us by half an hour.", "اتفاق جدی‌ای نیفتاد، ولی این وقفه نیم ساعت ما را عقب انداخت.", "summarize_event", ["happen", "interrupt"], 3),
        ],
        "grammar": [
            G("past_continuous", "Past continuous for background", "Use was/were + -ing for an action that was in progress around a past moment.", "برای کاری که در یک لحظه گذشته در حال انجام بوده از was/were + ing استفاده می‌کنیم.", [("I was driving home at six.", "ساعت شش داشتم به خانه رانندگی می‌کردم."), ("They were having a meeting.", "آن‌ها در حال جلسه بودند.")], 1),
            G("when_while", "when and while", "Use when commonly with the shorter interrupting event and while with an action that was already in progress.", "معمولاً when را با اتفاق کوتاه‌تر و قطع‌کننده و while را با کاری که از قبل در جریان بوده به کار می‌بریم.", [("I was cooking when the phone rang.", "داشتم آشپزی می‌کردم که تلفن زنگ خورد."), ("The lights went out while we were eating.", "وقتی داشتیم غذا می‌خوردیم چراغ‌ها خاموش شدند.")], 1),
            G("interruption", "Background and interruption", "Combine the past continuous and past simple to show an ongoing situation interrupted by a completed event.", "past continuous و past simple را کنار هم می‌آوریم تا نشان دهیم یک وضعیت در حال انجام با یک اتفاق کامل‌شده قطع شده است.", [("We were talking when the connection dropped.", "داشتیم حرف می‌زدیم که اتصال قطع شد."), ("She was presenting when the alarm started.", "داشت ارائه می‌داد که آژیر شروع شد.")], 2),
        ],
        "dialogues": [
            D("blackout", "A power outage at dinner", "apartment", ["Mia", "Noah"], [
                T("Mia", "What happened here last night?", "دیشب اینجا چی شد؟"),
                T("Noah", "We were having dinner when the whole building lost power.", "داشتیم شام می‌خوردیم که برق کل ساختمان رفت."),
                T("Mia", "How long was it out?", "چقدر قطع بود؟"),
                T("Noah", "About forty minutes. We finished dinner by phone light.", "حدود چهل دقیقه. شام رو با نور گوشی تموم کردیم.")
            ], 1),
            D("alarm", "An interrupted meeting", "office hallway", ["Claire", "Adam"], [
                T("Claire", "The meeting ended early, didn't it?", "جلسه زود تموم شد، نه؟"),
                T("Adam", "Kind of. We were reviewing the numbers when the fire alarm started.", "یه جورایی. داشتیم اعداد رو مرور می‌کردیم که آژیر آتش‌سوزی شروع شد."),
                T("Claire", "Was there actually a fire?", "واقعاً آتش‌سوزی شده بود؟"),
                T("Adam", "No. Someone burned lunch in the kitchen.", "نه. یکی توی آشپزخونه ناهارش رو سوزونده بود.")
            ], 2),
            D("connection", "A call that kept dropping", "video call", ["Ella", "Ravi"], [
                T("Ella", "Sorry the call was such a mess earlier.", "ببخشید تماس قبلی این‌قدر به‌هم‌ریخته بود."),
                T("Ravi", "No problem. What was happening with your internet?", "اشکالی نداره. اینترنتت چی شده بود؟"),
                T("Ella", "Technicians were working on the building network while we were talking.", "وقتی داشتیم حرف می‌زدیم تکنسین‌ها روی شبکه ساختمان کار می‌کردند."),
                T("Ravi", "That explains why you disappeared every two minutes.", "پس معلوم شد چرا هر دو دقیقه غیب می‌شدی.")
            ], 3),
        ],
        "fill": ["We were having dinner when the power suddenly ___ out.", ["went", "goes", "was going", "going"], "went"],
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
                "cefr": "B1",
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
                "cefr": "B1",
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
                "cefr": "B1",
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
                "cefr": "B1",
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
                "cefr": "B1",
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
                "cefr": "B1",
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
        {
            "external_id": f"ex_{prefix}_fill",
            "data": {
                "lesson_key": f"{spec['slug']}-01",
                "exercise_type": "fill_blank",
                "prompt": {"text": fill_prompt},
                "options": fill_options,
                "answer": {"value": fill_answer},
                "difficulty": 3,
                "cefr": "B1",
                "status": "approved",
            },
        },
        {
            "external_id": f"ex_{prefix}_listen1",
            "data": {
                "lesson_key": f"{spec['slug']}-{u[1]['lesson']:02d}",
                "exercise_type": "listening",
                "prompt": {"instruction_fa": "گوش کن و نزدیک‌ترین معنی را انتخاب کن.", "audio_text": u[1]["en"]},
                "options": [u[1]["fa"], u[0]["fa"], u[4]["fa"], u[6]["fa"]],
                "answer": {"value": u[1]["fa"]},
                "difficulty": 3,
                "cefr": "B1",
                "status": "approved",
            },
        },
        {
            "external_id": f"ex_{prefix}_speak1",
            "data": {
                "lesson_key": f"{spec['slug']}-{u[2]['lesson']:02d}",
                "exercise_type": "speaking",
                "prompt": {"instruction_fa": f"این جمله را طبیعی به انگلیسی بگو: {u[2]['fa']}"},
                "answer": {"expected_text": u[2]["en"]},
                "difficulty": 3,
                "cefr": "B1",
                "status": "approved",
            },
        },
        {
            "external_id": f"ex_{prefix}_build1",
            "data": {
                "lesson_key": f"{spec['slug']}-{u[3]['lesson']:02d}",
                "exercise_type": "sentence_building",
                "prompt": {"fa": u[3]["fa"], "tokens": list(reversed(u[3]["en"].split()))},
                "answer": {"tokens": u[3]["en"].split(), "text": u[3]["en"]},
                "difficulty": 3,
                "cefr": "B1",
                "status": "approved",
            },
        },
        {
            "external_id": f"ex_{prefix}_meaning",
            "data": {
                "lesson_key": f"{spec['slug']}-{u[4]['lesson']:02d}",
                "exercise_type": "multiple_choice",
                "prompt": {"fa": "معنی درست جمله کدام است؟", "text": u[4]["en"]},
                "options": [u[4]["fa"], u[2]["fa"], u[6]["fa"], u[0]["fa"]],
                "answer": {"value": u[4]["fa"]},
                "difficulty": 3,
                "cefr": "B1",
                "status": "approved",
            },
        },
        {
            "external_id": f"ex_{prefix}_listen2",
            "data": {
                "lesson_key": f"{spec['slug']}-{u[5]['lesson']:02d}",
                "exercise_type": "listening",
                "prompt": {"instruction_fa": "گوش کن و منظور گوینده را انتخاب کن.", "audio_text": u[5]["en"]},
                "options": [u[5]["fa"], u[1]["fa"], u[3]["fa"], u[7]["fa"]],
                "answer": {"value": u[5]["fa"]},
                "difficulty": 3,
                "cefr": "B1",
                "status": "approved",
            },
        },
        {
            "external_id": f"ex_{prefix}_speak2",
            "data": {
                "lesson_key": f"{spec['slug']}-{u[6]['lesson']:02d}",
                "exercise_type": "speaking",
                "prompt": {"instruction_fa": f"این ایده را با جمله کامل انگلیسی بگو: {u[6]['fa']}"},
                "answer": {"expected_text": u[6]["en"]},
                "difficulty": 3,
                "cefr": "B1",
                "status": "approved",
            },
        },
        {
            "external_id": f"ex_{prefix}_build2",
            "data": {
                "lesson_key": f"{spec['slug']}-{u[7]['lesson']:02d}",
                "exercise_type": "sentence_building",
                "prompt": {"fa": u[7]["fa"], "tokens": list(reversed(u[7]["en"].split()))},
                "answer": {"tokens": u[7]["en"].split(), "text": u[7]["en"]},
                "difficulty": 3,
                "cefr": "B1",
                "status": "approved",
            },
        },
    ]
    items.extend({"kind": "exercise", **e} for e in exercises)

    return enrich_batch({
        "batch_id": f"en-us-{spec['slug']}-v1",
        "course": "fa-en-us",
        "learner_language": "fa",
        "learner_variant": "fa-IR",
        "target_language": "en",
        "target_variant": "en-US",
        "cefr": "B1",
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
