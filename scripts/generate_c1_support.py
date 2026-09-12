#!/usr/bin/env python3
from __future__ import annotations

import json
from pathlib import Path

from scripts import generate_b2_batch as base

V = base.V
U = base.U
G = base.G
D = base.D
T = base.T

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "content" / "production" / "en" / "C1"
CEFR = "C1"

# C1 focuses on precision, discourse control, inference, stance, register,
# synthesis, mediation, and flexible control of complex structures.
GRAMMAR = {
    "advanced_hedging": ("Advanced hedging and calibration", "Calibrate certainty with expressions such as arguably, broadly speaking, tends to, appears to, and cannot entirely be ruled out.", "در C1 میزان قطعیت را با عبارت‌هایی مثل arguably، broadly speaking، tends to، appears to و cannot entirely be ruled out دقیق تنظیم می‌کنیم.", [("The change appears to have improved access, although the evidence is still limited.", "به نظر می‌رسد این تغییر دسترسی را بهتر کرده، هرچند شواهد هنوز محدود است."), ("That explanation cannot entirely be ruled out.", "نمی‌توان آن توضیح را کاملاً منتفی دانست.")]),
    "stance_markers": ("Stance and viewpoint markers", "Signal your relationship to a claim with frankly, admittedly, from my perspective, in practical terms, and crucially.", "با عبارت‌هایی مثل frankly، admittedly، from my perspective، in practical terms و crucially موضع خود نسبت به یک ادعا را روشن می‌کنیم.", [("Admittedly, the proposal is expensive, but the long-term case is stronger.", "درست است که پیشنهاد گران است، اما در بلندمدت استدلال قوی‌تری دارد."), ("Crucially, the figures do not show who was affected most.", "نکته کلیدی این است که ارقام نشان نمی‌دهند چه کسانی بیشترین تأثیر را گرفته‌اند.")]),
    "concession_rebuttal": ("Concession followed by rebuttal", "Acknowledge a reasonable opposing point before limiting it or presenting a stronger counterargument.", "ابتدا یک نکته منطقی از طرف مقابل را می‌پذیریم و سپس دامنه آن را محدود می‌کنیم یا پاسخ قوی‌تری می‌دهیم.", [("Granted, the process is faster; that does not necessarily make it fairer.", "درست است که روند سریع‌تر است؛ اما لزوماً عادلانه‌تر نیست."), ("While that concern is valid, it overlooks the cost of doing nothing.", "با اینکه آن نگرانی معتبر است، هزینه هیچ کاری نکردن را نادیده می‌گیرد.")]),
    "inversion_emphasis": ("Inversion for emphasis", "Use negative or limiting adverbials such as rarely, only then, and under no circumstances with inversion for strong formal emphasis.", "برای تأکید رسمی و قوی، بعد از عباراتی مثل rarely، only then و under no circumstances از وارونگی استفاده می‌کنیم.", [("Rarely have we seen such a rapid shift in public attitudes.", "به‌ندرت چنین تغییر سریعی در نگرش عمومی دیده‌ایم."), ("Only then did we realize how much information was missing.", "فقط آن موقع فهمیدیم چه مقدار اطلاعات کم بوده است.")]),
    "cleft_sentences": ("Cleft sentences for focus", "Use what-clauses and it-clefts to place deliberate emphasis on the most important part of a message.", "با what-clause و it-cleft بخش مهم پیام را برجسته می‌کنیم.", [("What concerns me most is the lack of independent oversight.", "چیزی که بیشتر نگرانم می‌کند نبود نظارت مستقل است."), ("It was the timing, rather than the decision itself, that caused the problem.", "زمان‌بندی بود، نه خود تصمیم، که مشکل را ایجاد کرد.")]),
    "nominalisation": ("Nominalisation in formal discourse", "Turn verbs or adjectives into noun phrases to make formal arguments more compact and abstract when appropriate.", "در گفتار و نوشتار رسمی، در صورت مناسب بودن فعل یا صفت را به عبارت اسمی تبدیل می‌کنیم تا استدلال فشرده‌تر و انتزاعی‌تر شود.", [("The rapid expansion of the service created new risks.", "گسترش سریع سرویس ریسک‌های جدیدی ایجاد کرد."), ("A reduction in waiting times would benefit everyone.", "کاهش زمان انتظار به نفع همه خواهد بود.")]),
    "participle_clauses": ("Participle clauses", "Use -ing and past-participle clauses to compress background, cause, sequence, or conditions when the subject relationship is clear.", "وقتی رابطه فاعل روشن است، با clauseهای -ing و past participle اطلاعات زمینه، علت، توالی یا شرط را فشرده می‌کنیم.", [("Having reviewed the evidence, we changed our recommendation.", "بعد از بررسی شواهد، توصیه‌مان را تغییر دادیم."), ("Viewed in isolation, the figure looks impressive.", "اگر عدد را جداگانه ببینیم، چشمگیر به نظر می‌رسد.")]),
    "reduced_relatives": ("Reduced relative clauses", "Reduce relative clauses when the meaning remains clear, especially in formal descriptions and summaries.", "در توصیف‌ها و خلاصه‌های رسمی، وقتی معنا روشن می‌ماند relative clause را کوتاه می‌کنیم.", [("The measures introduced last year are being reviewed.", "اقداماتی که پارسال معرفی شدند در حال بازبینی‌اند."), ("People working remotely reported fewer interruptions.", "افرادی که دورکاری می‌کردند مزاحمت کمتری گزارش کردند.")]),
    "mixed_conditionals": ("Mixed conditionals", "Combine different time references when a past condition has a present result or a present state explains a past outcome.", "وقتی شرط و نتیجه به زمان‌های متفاوت مربوط‌اند از mixed conditional استفاده می‌کنیم.", [("If we had invested earlier, we would be in a stronger position now.", "اگر زودتر سرمایه‌گذاری کرده بودیم، الان موقعیت قوی‌تری داشتیم."), ("If she were less cautious, she might have accepted the offer.", "اگر این‌قدر محتاط نبود، شاید پیشنهاد را قبول کرده بود.")]),
    "counterfactual_past": ("Counterfactual past and regret", "Use would have, could have, might have, and if only to evaluate unreal past alternatives and their consequences.", "برای ارزیابی گزینه‌های فرضی در گذشته و پیامدهایشان از would have، could have، might have و if only استفاده می‌کنیم.", [("We could have avoided the delay if the warning had been taken seriously.", "اگر هشدار جدی گرفته شده بود می‌توانستیم از تأخیر جلوگیری کنیم."), ("If only we had checked the assumptions first.", "کاش اول فرض‌ها را بررسی کرده بودیم.")]),
    "modal_deduction_past": ("Past deduction and speculation", "Use must have, may have, might have, could have, and cannot have to infer past causes with different degrees of certainty.", "برای استنباط درباره علت‌های گذشته با درجات مختلف اطمینان از must have، may have، might have، could have و cannot have استفاده می‌کنیم.", [("They must have underestimated the demand.", "حتماً تقاضا را کمتر از واقع برآورد کرده‌اند."), ("The figures may have been affected by seasonal changes.", "ممکن است ارقام تحت‌تأثیر تغییرات فصلی بوده باشند.")]),
    "advanced_reporting": ("Advanced reporting verbs", "Choose reporting verbs such as acknowledge, maintain, concede, dispute, imply, and caution to represent a source's stance accurately.", "برای بازتاب دقیق موضع منبع از فعل‌هایی مثل acknowledge، maintain، concede، dispute، imply و caution استفاده می‌کنیم.", [("The author acknowledges the limitation but maintains that the trend is meaningful.", "نویسنده محدودیت را می‌پذیرد اما همچنان معتقد است روند معنادار است."), ("The report cautions against treating correlation as proof of cause.", "گزارش هشدار می‌دهد همبستگی را به‌عنوان اثبات علت در نظر نگیریم.")]),
    "reporting_passive": ("Impersonal reporting structures", "Use structures such as is thought to, is believed to, and has been reported to when the source is general or deliberately backgrounded.", "وقتی منبع عمومی است یا عمداً در پس‌زمینه قرار می‌گیرد از ساختارهایی مثل is thought to، is believed to و has been reported to استفاده می‌کنیم.", [("The policy is thought to have reduced short-term demand.", "گمان می‌رود این سیاست تقاضای کوتاه‌مدت را کاهش داده باشد."), ("The company is reported to be reconsidering the plan.", "گزارش شده شرکت در حال بازنگری برنامه است.")]),
    "distancing": ("Distancing from claims", "Use apparently, reportedly, according to, it would seem, and claims that to avoid presenting uncertain information as your own fact.", "برای اینکه اطلاعات نامطمئن را واقعیت قطعی خودمان نشان ندهیم از apparently، reportedly، according to، it would seem و claims that استفاده می‌کنیم.", [("According to the review, the benefits were unevenly distributed.", "طبق بررسی، مزایا به‌طور نابرابر توزیع شده بود."), ("It would seem that the original estimate was too optimistic.", "به نظر می‌رسد برآورد اولیه بیش از حد خوش‌بینانه بوده است.")]),
    "discourse_management": ("Managing complex discourse", "Use signposting and metadiscourse to frame, sequence, return to, and close complex points without losing the listener.", "با signposting و metadiscourse نکات پیچیده را قاب‌بندی، مرتب، دوباره جمع و نتیجه‌گیری می‌کنیم تا شنونده مسیر بحث را گم نکند.", [("Before I come back to that point, let me clarify one assumption.", "قبل از اینکه به آن نکته برگردم، بگذار یک فرض را روشن کنم."), ("That brings us to the broader question of accountability.", "این ما را به پرسش گسترده‌تر پاسخ‌گویی می‌رساند.")]),
    "reformulation": ("Reformulation and precision", "Use in other words, more precisely, what I mean is, or rather to refine a statement when the first wording is incomplete or misleading.", "با in other words، more precisely، what I mean is و or rather جمله را اصلاح یا دقیق‌تر می‌کنیم.", [("The system is inefficient—or rather, inefficient under peak demand.", "سیستم ناکارآمد است؛ یا دقیق‌تر بگویم، در اوج تقاضا ناکارآمد است."), ("What I mean is that the risk is concentrated, not universal.", "منظورم این است که ریسک متمرکز است، نه همگانی.")]),
    "ellipsis_substitution": ("Ellipsis and substitution", "Avoid unnecessary repetition with so, do so, one/ones, neither, nor, and deliberate omission where the missing material is recoverable.", "برای جلوگیری از تکرار غیرضروری از so، do so، one/ones، neither، nor و حذف کنترل‌شده استفاده می‌کنیم.", [("Some teams adapted quickly; others did not.", "بعضی تیم‌ها سریع سازگار شدند؛ بعضی نه."), ("If you decide to appeal, do so before the deadline.", "اگر تصمیم به اعتراض گرفتی، قبل از موعد انجامش بده.")]),
    "register_shift": ("Shifting register deliberately", "Adjust vocabulary, directness, contractions, and sentence structure to move appropriately between informal, neutral, and formal contexts.", "برای جابه‌جایی آگاهانه بین لحن خودمانی، خنثی و رسمی، واژگان، صراحت، contraction و ساختار جمله را تغییر می‌دهیم.", [("Can we move this? → Would it be possible to reschedule the meeting?", "می‌شه جابه‌جاش کنیم؟ → آیا امکان تغییر زمان جلسه وجود دارد؟"), ("That's not right. → That interpretation may not fully reflect the evidence.", "این درست نیست. → آن تفسیر ممکن است شواهد را به‌طور کامل بازتاب ندهد.")]),
    "diplomatic_language": ("Diplomatic challenge and disagreement", "Challenge an idea rather than a person, acknowledge intent, and soften direct negatives while keeping the substantive point clear.", "به‌جای شخص، ایده را به چالش می‌کشیم؛ نیت را می‌پذیریم و بدون مبهم کردن اصل پیام، منفی مستقیم را نرم‌تر می‌کنیم.", [("I see the logic, though I'm not convinced the assumption holds in this case.", "منطقش را می‌بینم، هرچند قانع نشده‌ام این فرض در این مورد برقرار باشد."), ("That may be true in principle, but the practical constraints are different.", "در اصل شاید درست باشد، اما محدودیت‌های عملی متفاوت‌اند.")]),
    "rhetorical_questions": ("Rhetorical questions in argument", "Use rhetorical questions sparingly to foreground an implication, then answer or develop the point rather than leaving it vague.", "از سؤال بلاغی با احتیاط برای برجسته کردن یک پیامد استفاده می‌کنیم و بعد پاسخ یا استدلال را ادامه می‌دهیم.", [("If the data are incomplete, how confident can we really be?", "اگر داده‌ها ناقص‌اند، واقعاً چقدر می‌توانیم مطمئن باشیم؟"), ("What happens when the exception becomes the norm?", "وقتی استثنا تبدیل به قاعده شود چه اتفاقی می‌افتد؟")]),
    "cohesion_reference": ("Cohesion through reference", "Use this, such, the former/latter, these findings, and related reference devices so longer discourse remains connected without repetition.", "با this، such، the former/latter، these findings و ابزارهای ارجاعی مشابه، متن یا گفتار طولانی را بدون تکرار منسجم نگه می‌داریم.", [("The first approach is cheaper; the latter, however, is easier to scale.", "رویکرد اول ارزان‌تر است؛ اما دومی مقیاس‌پذیرتر است."), ("These findings raise a further question about access.", "این یافته‌ها پرسش دیگری درباره دسترسی مطرح می‌کنند.")]),
    "complex_prepositions": ("Complex prepositional phrases", "Use in light of, with regard to, in the absence of, by virtue of, and at the expense of to express precise logical relations.", "برای بیان روابط منطقی دقیق از in light of، with regard to، in the absence of، by virtue of و at the expense of استفاده می‌کنیم.", [("In light of the new evidence, the recommendation should be revised.", "با توجه به شواهد جدید، توصیه باید بازبینی شود."), ("Efficiency should not come at the expense of accessibility.", "کارایی نباید به قیمت دسترسی‌پذیری تمام شود.")]),
    "emphasis_adverbs": ("Fine-grained emphasis", "Use notably, particularly, fundamentally, merely, largely, and precisely to control which part of a claim receives emphasis.", "با notably، particularly، fundamentally، merely، largely و precisely مشخص می‌کنیم کدام بخش ادعا باید برجسته شود.", [("The problem is largely procedural rather than technical.", "مشکل عمدتاً فرایندی است نه فنی."), ("That is precisely why the distinction matters.", "دقیقاً به همین دلیل این تمایز مهم است.")]),
    "future_in_past": ("Future viewed from the past", "Use was/were going to, would, was due to, and was about to when describing a future event from an earlier viewpoint.", "برای توصیف آینده از یک نقطه در گذشته از was/were going to، would، was due to و was about to استفاده می‌کنیم.", [("The policy was due to take effect in June, but the launch was postponed.", "قرار بود سیاست در ژوئن اجرا شود، اما شروع آن عقب افتاد."), ("We thought the change would be temporary.", "فکر می‌کردیم تغییر موقتی خواهد بود.")]),
    "advanced_passive": ("Advanced passive choices", "Use passive forms, including get-passives and passive infinitives, when agency is unknown, sensitive, obvious, or less important than the process.", "وقتی انجام‌دهنده نامعلوم، حساس، بدیهی یا کم‌اهمیت‌تر از فرایند است از شکل‌های پیشرفته مجهول، از جمله get-passive و passive infinitive استفاده می‌کنیم.", [("Several applications appear to have been rejected automatically.", "به نظر می‌رسد چند درخواست به‌صورت خودکار رد شده‌اند."), ("The issue needs to be addressed before launch.", "این مسئله باید قبل از عرضه رسیدگی شود.")]),
    "formal_subjunctive": ("Formal mandative structures", "In formal recommendations and requirements, use structures such as it is essential that ... be and they recommended that ... be.", "در توصیه‌ها و الزامات رسمی می‌توان از ساختارهایی مثل it is essential that ... be و they recommended that ... be استفاده کرد.", [("It is essential that every applicant be given the same information.", "ضروری است به هر متقاضی اطلاعات یکسان داده شود."), ("The committee recommended that the proposal be revised.", "کمیته توصیه کرد پیشنهاد بازبینی شود.")]),
}

PAIR_ROTATION = [
    ("Maya", "Daniel"), ("Nora", "Samir"), ("Elena", "Marcus"),
    ("Hana", "Luis"), ("Mei", "Omar"), ("Ava", "Ben"),
    ("Claire", "Diego"), ("Ella", "Amir"), ("Emma", "Kai"),
    ("Dina", "Alex"), ("Ivy", "David"), ("Fatima", "Chris"),
    ("Lena", "Marco"), ("Noor", "Liam"), ("Leila", "Adam"),
]

def grammar_points(keys: list[str]):
    result = []
    for lesson, key in enumerate(keys[:3], 1):
        title, rule, fa, examples = GRAMMAR[key]
        result.append(G(key, title, rule, fa, examples, lesson))
    return result


def authored_dialogues(slug, index):
    patches = json.loads((ROOT / "content/enrichment/en/dialogue-overrides.json").read_text())
    prefix = slug.replace("-", "_")
    result = []
    for lesson in range(1, 4):
        key = f"d_{prefix}_scene_{lesson}"
        if key not in patches:
            raise ValueError(f"{slug}: authored dialogue {lesson} is missing")
        data = patches[key]
        # Speaker identities come from the authored, cast-validated turns.
        turns = data["turns"]
        names = list(dict.fromkeys(t["speaker"] for t in turns))
        result.append(D(f"scene_{lesson}", data["title"], data["setting"], names,
                        [T(t["speaker"], t["text"], t["translation_fa"]) for t in turns], lesson))
    return result


def make_spec(*, index: int, slug: str, topic: str, title: str, vocab: list[dict], utterances: list[dict], grammar: list[str], fill, dialogues=None):
    if len(vocab) < 8:
        raise ValueError(f"{slug}: at least 8 vocabulary items are required")
    if len(utterances) != 8:
        raise ValueError(f"{slug}: exactly 8 utterances are required")
    if len(grammar) != 3:
        raise ValueError(f"{slug}: exactly 3 grammar/discourse focuses are required")
    return {
        "slug": slug,
        "file": f"{slug}-v1.json",
        "topic": topic,
        "lessons": 3,
        "vocab": vocab,
        "utterances": utterances,
        "grammar": grammar_points(grammar),
        "dialogues": authored_dialogues(slug, index) if dialogues is None else dialogues,
        "fill": fill,
    }


def build_c1(spec: dict) -> dict:
    previous = base.CEFR
    try:
        base.CEFR = CEFR
        batch = base.build(spec)
    finally:
        base.CEFR = previous
    batch["generator"] = "gpt-5.6-sol:golden-dataset-c1-v1"
    for item in batch.get("items", []):
        if item.get("kind") == "exercise":
            item.get("data", {})["difficulty"] = 5
    return batch


def write_units(units: list[dict]):
    OUT.mkdir(parents=True, exist_ok=True)
    written = []
    for spec in units:
        path = OUT / spec["file"]
        path.write_text(json.dumps(build_c1(spec), ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        written.append(path.name)
    print(json.dumps({"level": CEFR, "written": len(written), "files": written}, ensure_ascii=False, indent=2))
