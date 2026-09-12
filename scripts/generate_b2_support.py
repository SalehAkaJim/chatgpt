#!/usr/bin/env python3
from __future__ import annotations

import json
from pathlib import Path

from scripts.generate_b2_batch import V, U, G, D, T, build, OUT

# Shared grammar bank for B2 units 06-45. Each entry is intentionally practical,
# learner-facing, and reusable across several real-world units.
GRAMMAR = {
    "probability_modals": ("Degrees of future probability", "Use will for confident predictions and may, might, or could for less certain possibilities.", "برای پیش‌بینی مطمئن‌تر از will و برای احتمال کمتر از may، might یا could استفاده می‌کنیم.", [("The plan will probably change.", "احتمالاً برنامه تغییر می‌کند."), ("We might need more time.", "ممکن است به زمان بیشتری نیاز داشته باشیم.")]),
    "future_time": ("Future time clauses", "After when, as soon as, before, and until, use a present form to refer to the future.", "بعد از when، as soon as، before و until برای اشاره به آینده معمولاً از زمان حال استفاده می‌کنیم.", [("I'll call you when I arrive.", "وقتی برسم بهت زنگ می‌زنم."), ("We'll decide after we hear back.", "بعد از اینکه جواب بگیریم تصمیم می‌گیریم.")]),
    "second_conditional": ("Second conditional", "Use if + past form with would, could, or might to discuss unreal or unlikely present and future situations.", "برای موقعیت فرضی یا بعید در حال و آینده از if + گذشته و would/could/might استفاده می‌کنیم.", [("If I had more time, I'd take the course.", "اگر وقت بیشتری داشتم دوره را می‌گرفتم."), ("If we moved, we could reduce the commute.", "اگر جابه‌جا می‌شدیم می‌توانستیم رفت‌وآمد را کمتر کنیم.")]),
    "conditionals": ("Conditionals for consequences", "Use conditional clauses to connect a possible action with its likely or imagined consequence.", "با جمله‌های شرطی یک اقدام احتمالی را به نتیجه واقعی یا فرضی آن وصل می‌کنیم.", [("If we leave earlier, we'll avoid traffic.", "اگر زودتر راه بیفتیم از ترافیک دور می‌مانیم."), ("If I had a larger budget, I'd choose the faster option.", "اگر بودجه بیشتری داشتم گزینه سریع‌تر را انتخاب می‌کردم.")]),
    "purpose": ("Purpose clauses", "Use to, in order to, and so that to explain the purpose behind an action or decision.", "برای توضیح هدف یک کار از to، in order to و so that استفاده می‌کنیم.", [("I'm saving to take a longer trip.", "دارم پس‌انداز می‌کنم تا سفر طولانی‌تری بروم."), ("We wrote it down so that nobody would forget.", "نوشتیمش تا کسی فراموش نکند.")]),
    "concession": ("Concession and contrast", "Use although, even though, despite, and in spite of to acknowledge a contrasting fact.", "با although، even though، despite و in spite of یک نکته متضاد را هم‌زمان می‌پذیریم.", [("Although it costs more, it's more reliable.", "با اینکه گران‌تر است، قابل‌اعتمادتر است."), ("Despite the delay, we arrived on time.", "با وجود تأخیر، سر وقت رسیدیم.")]),
    "softening": ("Softening requests and disagreement", "Use could, would, perhaps, a little, and indirect wording to make requests or disagreement less abrupt.", "برای نرم‌تر کردن درخواست یا مخالفت از could، would، perhaps و عبارت‌های غیرمستقیم استفاده می‌کنیم.", [("Could we look at another option?", "می‌شه یک گزینه دیگر را بررسی کنیم؟"), ("I'm not sure that would solve the main issue.", "مطمئن نیستم این مشکل اصلی را حل کند.")]),
    "hedging": ("Hedging opinions", "Use phrases such as I tend to think, it seems to me, and to some extent to avoid sounding absolute.", "برای قطعی و مطلق به نظر نرسیدن از عبارت‌هایی مثل I tend to think، it seems to me و to some extent استفاده می‌کنیم.", [("I tend to think the benefits outweigh the risks.", "فکر می‌کنم معمولاً مزایا بیشتر از ریسک‌هاست."), ("To some extent, I agree.", "تا حدی موافقم.")]),
    "contrast": ("Linking contrasting ideas", "Use whereas, while, on the other hand, and however to compare or contrast viewpoints and facts.", "برای مقایسه یا تضاد دیدگاه‌ها و واقعیت‌ها از whereas، while، on the other hand و however استفاده می‌کنیم.", [("The first option is cheaper, whereas the second is faster.", "گزینه اول ارزان‌تر است، در حالی که دومی سریع‌تر است."), ("I understand the argument; however, I see one major risk.", "استدلال را می‌فهمم؛ با این حال یک ریسک مهم می‌بینم.")]),
    "cause_result": ("Cause and result connectors", "Use because of and due to before noun phrases, and therefore, so, or as a result to introduce consequences.", "پیش از عبارت اسمی از because of و due to و برای بیان نتیجه از therefore، so یا as a result استفاده می‌کنیم.", [("The event was moved due to the weather.", "برنامه به دلیل هوا جابه‌جا شد."), ("Demand increased; as a result, prices rose.", "تقاضا بالا رفت؛ در نتیجه قیمت‌ها افزایش پیدا کرد.")]),
    "examples": ("Supporting ideas with examples", "Use for example, for instance, and in particular to add focused evidence or illustration.", "برای اضافه کردن مثال یا شاهد مشخص از for example، for instance و in particular استفاده می‌کنیم.", [("Several costs have increased, particularly rent.", "چند هزینه بالا رفته، مخصوصاً اجاره."), ("We could save money; for example, we could cook more often.", "می‌توانیم پول پس‌انداز کنیم؛ مثلاً بیشتر در خانه غذا بپزیم.")]),
    "relative_clauses": ("Relative clauses for detail", "Use who, which, that, and where to add identifying or extra information without starting a new sentence.", "با who، which، that و where اطلاعات شناسایی‌کننده یا تکمیلی را بدون جمله جدا اضافه می‌کنیم.", [("I chose a hotel that includes breakfast.", "هتلی را انتخاب کردم که صبحانه دارد."), ("The manager, who joined last year, led the meeting.", "مدیر که پارسال اضافه شد جلسه را هدایت کرد.")]),
    "comparatives": ("Complex comparison", "Use comparatives, less/more, and structures such as not as ... as to compare several criteria precisely.", "برای مقایسه دقیق چند معیار از comparative، less/more و not as ... as استفاده می‌کنیم.", [("It's slightly more expensive but much more reliable.", "کمی گران‌تر ولی خیلی قابل‌اعتمادتر است."), ("The cheaper route isn't as flexible.", "مسیر ارزان‌تر به همان اندازه انعطاف‌پذیر نیست.")]),
    "the_more": ("The more ... the more", "Use the + comparative, the + comparative to show that two changes are connected.", "با ساختار the + comparative, the + comparative نشان می‌دهیم دو تغییر به هم وابسته‌اند.", [("The earlier we book, the less we pay.", "هرچه زودتر رزرو کنیم کمتر پول می‌دهیم."), ("The more I practice, the more confident I feel.", "هرچه بیشتر تمرین می‌کنم اعتمادبه‌نفس بیشتری دارم.")]),
    "recommendations": ("Qualified recommendations", "Use would recommend, should, ought to, and conditional wording to tailor advice to a person's needs.", "برای توصیه متناسب با شرایط فرد از would recommend، should، ought to و ساختارهای شرطی استفاده می‌کنیم.", [("I'd recommend the train if comfort matters most.", "اگر راحتی مهم‌تر است قطار را پیشنهاد می‌کنم."), ("You should check the cancellation policy first.", "بهتره اول قوانین لغو را بررسی کنی.")]),
    "present_perfect": ("Present perfect for unresolved situations", "Use the present perfect for actions or situations connected to now, especially previous attempts, progress, and recent changes.", "برای کارها یا وضعیت‌هایی که به حال مربوط‌اند، مخصوصاً تلاش‌های قبلی و تغییرات اخیر، از present perfect استفاده می‌کنیم.", [("I've contacted support twice.", "دو بار با پشتیبانی تماس گرفته‌ام."), ("The problem has become more frequent.", "مشکل بیشتر شده است.")]),
    "present_perfect_continuous": ("Present perfect continuous", "Use have/has been + -ing to emphasize duration or repeated activity continuing up to now.", "برای تأکید روی مدت یا فعالیت تکراری که تا حال ادامه داشته از have/has been + ing استفاده می‌کنیم.", [("I've been sleeping badly for a week.", "یک هفته است بد می‌خوابم."), ("We've been comparing prices since Monday.", "از دوشنبه داریم قیمت‌ها را مقایسه می‌کنیم.")]),
    "for_since": ("for and since", "Use for with a duration and since with a starting point when describing situations that continue to now.", "برای مدت از for و برای نقطه شروع از since استفاده می‌کنیم.", [("I've had the symptoms for three days.", "سه روز است این علائم را دارم."), ("I've felt better since Tuesday.", "از سه‌شنبه حالم بهتر شده است.")]),
    "passive": ("Passive voice", "Use the passive when the action or result matters more than who performed it.", "وقتی خود عمل یا نتیجه مهم‌تر از انجام‌دهنده است از مجهول استفاده می‌کنیم.", [("The booking was changed without notice.", "رزرو بدون اطلاع تغییر داده شد."), ("The device should be checked by a technician.", "دستگاه باید توسط تکنسین بررسی شود.")]),
    "formal_requests": ("Firm but polite formal requests", "Use would like, could you, and I would appreciate it if to make clear requests without sounding aggressive.", "برای درخواست روشن ولی محترمانه از would like، could you و I would appreciate it if استفاده می‌کنیم.", [("I would like this issue reviewed today.", "می‌خواهم این مشکل امروز بررسی شود."), ("I would appreciate it if you could confirm the refund.", "ممنون می‌شوم اگر بازپرداخت را تأیید کنید.")]),
    "reported_speech": ("Reported speech", "Use reported speech to relay what someone said, asked, or promised while adjusting pronouns and time references when needed.", "برای انتقال حرف، سؤال یا قول دیگران از reported speech استفاده می‌کنیم و در صورت نیاز ضمیر و زمان را تغییر می‌دهیم.", [("She said the repair would take two days.", "گفت تعمیر دو روز طول می‌کشد."), ("They asked whether I had the receipt.", "پرسیدند آیا رسید را دارم یا نه.")]),
    "causative": ("have / get something done", "Use have or get + object + past participle when another person performs a service for you.", "وقتی شخص دیگری کاری خدماتی را برای ما انجام می‌دهد از have/get + object + past participle استفاده می‌کنیم.", [("I had the screen replaced last week.", "هفته پیش صفحه را عوض کردم/دادم عوض کنند."), ("We need to get the brakes checked.", "باید ترمزها را بدهیم بررسی کنند.")]),
    "quantifiers": ("Quantifiers and approximation", "Use roughly, about, nearly, a little, far more, and far less to discuss amounts without false precision.", "برای مقدارهای تقریبی از roughly، about، nearly و برای مقایسه مقدار از far more/far less استفاده می‌کنیم.", [("Rent takes roughly a third of my income.", "اجاره تقریباً یک‌سوم درآمدم را می‌گیرد."), ("We spend far less on transport now.", "الان خیلی کمتر برای رفت‌وآمد هزینه می‌کنیم.")]),
    "gerunds_infinitives": ("Gerunds and infinitives", "Use common verb patterns such as avoid doing, consider doing, decide to do, and aim to do accurately.", "الگوهای رایج فعل مثل avoid doing، consider doing، decide to do و aim to do را درست به کار می‌بریم.", [("I'm trying to improve my sleep.", "دارم سعی می‌کنم خوابم را بهتر کنم."), ("I've considered reducing my screen time.", "به کم کردن زمان صفحه فکر کرده‌ام.")]),
    "future_forms": ("Choosing future forms", "Use will for decisions and predictions, be going to for intentions, and present continuous for fixed arrangements.", "از will برای تصمیم و پیش‌بینی، be going to برای قصد و present continuous برای برنامه قطعی استفاده می‌کنیم.", [("I'll check the later train.", "قطار بعدی را بررسی می‌کنم."), ("We're meeting the guide at nine.", "ساعت نه راهنما را می‌بینیم.")]),
    "narrative_tenses": ("Narrative tenses for reconstruction", "Combine past simple, past continuous, and past perfect to reconstruct events in a clear order.", "برای بازسازی روشن اتفاقات از past simple، past continuous و past perfect کنار هم استفاده می‌کنیم.", [("We were waiting when the announcement came.", "منتظر بودیم که اعلام شد."), ("The train had already left when we reached the platform.", "وقتی به سکو رسیدیم قطار رفته بود.")]),
    "polite_insistence": ("Polite insistence", "Acknowledge the other person's position, then restate the unresolved need or promised outcome clearly.", "اول موضع طرف مقابل را می‌پذیریم و بعد نیاز حل‌نشده یا نتیجه وعده‌داده‌شده را روشن تکرار می‌کنیم.", [("I understand that, but the room I booked is still unavailable.", "متوجه‌ام، اما اتاقی که رزرو کردم هنوز در دسترس نیست."), ("I appreciate the offer; however, I still need a written confirmation.", "از پیشنهاد ممنونم؛ با این حال هنوز تأیید کتبی لازم دارم.")]),
    "modals": ("Modal verbs for options and obligation", "Use must, have to, should, could, and might to distinguish obligation, advice, possibility, and options.", "با must، have to، should، could و might اجبار، توصیه، احتمال و گزینه را از هم جدا می‌کنیم.", [("We have to submit it by Friday.", "باید تا جمعه تحویلش بدهیم."), ("We could ask for an extension.", "می‌توانیم درخواست تمدید کنیم.")]),
    "obligation": ("Degrees of obligation", "Use must and have to for strong obligation, should for advice, and don't have to for lack of necessity.", "برای اجبار قوی از must/have to، برای توصیه از should و برای نبود ضرورت از don't have to استفاده می‌کنیم.", [("I have to finish this today.", "باید امروز تمامش کنم."), ("You don't have to attend in person.", "لازم نیست حضوری شرکت کنی.")]),
    "deadline_language": ("Deadline and progress language", "Use by, within, on track, behind schedule, and due to describe timing and progress precisely.", "برای زمان‌بندی و پیشرفت از by، within، on track، behind schedule و due استفاده می‌کنیم.", [("We're on track to finish by Thursday.", "طبق برنامه تا پنجشنبه تمام می‌کنیم."), ("The report is due at noon.", "گزارش ظهر موعد تحویل دارد.")]),
    "participle_adjectives": ("-ed and -ing adjectives", "Use -ing adjectives for the thing that causes a feeling and -ed adjectives for the person who experiences it.", "صفت -ing چیزی را توصیف می‌کند که احساس را ایجاد می‌کند و -ed فردی را که آن احساس را دارد.", [("The ending was surprising.", "پایان غافلگیرکننده بود."), ("I was surprised by the ending.", "از پایان غافلگیر شدم.")]),
    "probability_language": ("Probability language", "Use likely, unlikely, expected to, and may or might to discuss consequences without presenting guesses as facts.", "برای بیان نتیجه احتمالی بدون قطعی نشان دادن حدس از likely، unlikely، expected to و may/might استفاده می‌کنیم.", [("The change is likely to affect commuters.", "احتمالاً این تغییر روی رفت‌وآمدکنندگان اثر می‌گذارد."), ("Prices may rise temporarily.", "ممکن است قیمت‌ها موقتاً بالا بروند.")]),
    "modal_deduction": ("Modal deduction", "Use must, might, could, and can't to make different-strength deductions from available evidence.", "برای نتیجه‌گیری با درجه اطمینان متفاوت از must، might، could و can't استفاده می‌کنیم.", [("She must have misunderstood the message.", "حتماً پیام را اشتباه فهمیده."), ("He might not have seen the update.", "شاید به‌روزرسانی را ندیده باشد.")]),
    "signposting": ("Presentation signposting", "Use first, the main point is, moving on to, for example, and to sum up to make a presentation easy to follow.", "برای قابل‌دنبال بودن ارائه از first، the main point is، moving on to، for example و to sum up استفاده می‌کنیم.", [("First, I'd like to explain the problem.", "اول می‌خواهم مشکل را توضیح بدهم."), ("To sum up, we have two realistic options.", "در جمع‌بندی دو گزینه واقع‌بینانه داریم.")]),
    "reporting_verbs": ("Reporting verbs for summaries", "Use says, explains, argues, reports, and suggests to separate the source's ideas from your own voice.", "برای جدا کردن حرف منبع از نظر خودمان از says، explains، argues، reports و suggests استفاده می‌کنیم.", [("The article argues that small changes can help.", "مقاله استدلال می‌کند که تغییرات کوچک می‌تواند کمک کند."), ("The report suggests two main causes.", "گزارش دو علت اصلی را مطرح می‌کند.")]),
    "say_tell_ask": ("say, tell, and ask", "Use say without a person object, tell with a person object, and ask for questions or requests.", "say معمولاً بدون مفعول شخص، tell با مفعول شخص و ask برای سؤال یا درخواست می‌آید.", [("She said the meeting was moved.", "گفت جلسه جابه‌جا شده."), ("She told me to arrive early.", "به من گفت زود برسم.")]),
    "shifts": ("Time and pronoun shifts in reporting", "When the reporting viewpoint changes, adjust pronouns and time expressions so the relayed message remains clear.", "وقتی زاویه گزارش تغییر می‌کند، ضمیر و عبارت زمانی را طوری تغییر می‌دهیم که پیام روشن بماند.", [("'I'll call tomorrow.' → He said he'd call the next day.", "«فردا زنگ می‌زنم.» → گفت روز بعد زنگ می‌زند."), ("'My file is here.' → She said her file was there.", "«فایلم اینجاست.» → گفت فایلش آنجا بود.")]),
    "register": ("Choosing an appropriate register", "Match formality to the relationship and purpose: use concise friendly language with peers and more explicit polite wording in formal messages.", "رسمیت را با رابطه و هدف هماهنگ می‌کنیم: با همکار نزدیک کوتاه‌تر و دوستانه‌تر، در پیام رسمی روشن‌تر و مؤدبانه‌تر.", [("Can you send me the file when you get a chance?", "هر وقت فرصت داشتی فایل را می‌فرستی؟"), ("Could you please confirm receipt of the attached document?", "لطفاً دریافت فایل پیوست را تأیید می‌کنید؟")]),
    "linking_devices": ("Cohesive linking devices", "Use however, therefore, in addition, as a result, and meanwhile to make relationships between sentences explicit.", "با however، therefore، in addition، as a result و meanwhile رابطه بین جمله‌ها را روشن می‌کنیم.", [("The first option is cheaper. However, it takes longer.", "گزینه اول ارزان‌تر است؛ با این حال بیشتر طول می‌کشد."), ("The deadline moved; therefore, we revised the plan.", "موعد تغییر کرد؛ بنابراین برنامه را بازبینی کردیم.")]),
    "indirect_requests": ("Indirect requests", "Use could you, would it be possible, and I was wondering if to make practical requests appropriately polite.", "برای درخواست مؤدبانه از could you، would it be possible و I was wondering if استفاده می‌کنیم.", [("Would it be possible to move the appointment?", "امکانش هست وقت را جابه‌جا کنیم؟"), ("I was wondering if you could send the revised version.", "می‌خواستم ببینم می‌توانید نسخه اصلاح‌شده را بفرستید؟")]),
    "negotiation": ("Negotiation language", "Clarify constraints, propose alternatives, and use conditional offers to move toward a workable agreement.", "در مذاکره محدودیت را روشن می‌کنیم، گزینه جایگزین می‌دهیم و با پیشنهاد شرطی به توافق عملی نزدیک می‌شویم.", [("If you can deliver by Friday, we can accept the higher price.", "اگر تا جمعه تحویل بدهید می‌توانیم قیمت بالاتر را قبول کنیم."), ("What if we split the work into two stages?", "اگر کار را به دو مرحله تقسیم کنیم چطور؟")]),
}

PAIR_ROTATION = [
    ("Maya", "Daniel"), ("Nora", "Samir"), ("Elena", "Marcus"),
    ("Hana", "Luis"), ("Mei", "Omar"), ("Ava", "Ben"),
    ("Claire", "Diego"), ("Ella", "Amir"), ("Emma", "Kai"),
    ("Dina", "Alex"), ("Ivy", "David"), ("Fatima", "Chris"),
]

PROMPTS = [
    ("What do you think is the main issue here?", "فکر می‌کنی مسئله اصلی اینجا چیه؟", "What makes that the most important point?", "چی باعث می‌شه این مهم‌ترین نکته باشه؟"),
    ("How would you handle this situation?", "تو این موقعیت رو چطور مدیریت می‌کردی؟", "What would you consider before deciding?", "قبل از تصمیم گرفتن چه چیزی رو در نظر می‌گرفتی؟"),
    ("What's changed compared with before?", "نسبت به قبل چی تغییر کرده؟", "And what effect has that had?", "و این چه اثری داشته؟"),
    ("Which option seems more realistic to you?", "کدوم گزینه به نظرت واقع‌بینانه‌تره؟", "Why does that option work better?", "چرا اون گزینه بهتر جواب می‌ده؟"),
]


def grammar_points(keys: list[str]):
    result = []
    for lesson, key in enumerate(keys[:3], 1):
        title, rule, fa, examples = GRAMMAR[key]
        result.append(G(key, title, rule, fa, examples, lesson))
    return result


def dialogues_for(unit_index: int, title: str, utterances: list[dict]):
    dialogues = []
    settings = ["coffee break", "video call", "walk after work"]
    for lesson in range(1, 4):
        pair = PAIR_ROTATION[(unit_index * 3 + lesson - 3) % len(PAIR_ROTATION)]
        p = PROMPTS[(unit_index + lesson - 2) % len(PROMPTS)]
        first = utterances[(lesson - 1) * 2]
        second = utterances[(lesson - 1) * 2 + 1]
        dialogues.append(D(
            f"scene_{lesson}",
            f"{title}: part {lesson}",
            settings[lesson - 1],
            [pair[0], pair[1]],
            [
                T(pair[0], p[0], p[1]),
                T(pair[1], first["en"], first["fa"]),
                T(pair[0], p[2], p[3]),
                T(pair[1], second["en"], second["fa"]),
            ],
            lesson,
        ))
    return dialogues


def make_spec(*, index: int, slug: str, topic: str, title: str, vocab: list[dict], utterances: list[dict], grammar: list[str], fill):
    if len(vocab) < 8:
        raise ValueError(f"{slug}: at least 8 vocabulary items are required")
    if len(utterances) != 8:
        raise ValueError(f"{slug}: exactly 8 utterances are required by the B2 exercise builder")
    if len(grammar) != 3:
        raise ValueError(f"{slug}: exactly 3 grammar focuses are required")
    return {
        "slug": slug,
        "file": f"{slug}-v1.json",
        "topic": topic,
        "lessons": 3,
        "vocab": vocab,
        "utterances": utterances,
        "grammar": grammar_points(grammar),
        "dialogues": dialogues_for(index, title, utterances),
        "fill": fill,
    }


def write_units(units: list[dict]):
    OUT.mkdir(parents=True, exist_ok=True)
    written = []
    for spec in units:
        path = OUT / spec["file"]
        path.write_text(json.dumps(build(spec), ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        written.append(path.name)
    print(json.dumps({"written": len(written), "files": written}, ensure_ascii=False, indent=2))
