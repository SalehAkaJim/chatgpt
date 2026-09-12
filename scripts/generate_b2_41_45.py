#!/usr/bin/env python3
from scripts.generate_b2_batch import V, U, D, T
from scripts.generate_b2_support import make_spec, write_units


def four_lesson(spec, pair, title):
    spec["lessons"] = 4
    u = spec["utterances"]
    spec["dialogues"].append(D(
        "scene_4", f"{title}: part 4", "planning session", list(pair),
        [
            T(pair[0], "Before we finish, what still needs to be clarified?", "قبل از اینکه تموم کنیم، چه چیزی هنوز باید روشن بشه؟"),
            T(pair[1], u[6]["en"], u[6]["fa"]),
            T(pair[0], "And what should happen next?", "و بعدش باید چه اتفاقی بیفته؟"),
            T(pair[1], u[7]["en"], u[7]["fa"]),
        ], 4,
    ))
    return spec


UNITS = [
make_spec(index=41, slug="b2-summarizing-sources", topic="simple-messages", title="Summarizing Information",
    vocab=[V("main_point","main point","نکته اصلی"),V("detail","detail","جزئیات"),V("concise","concise","مختصر و دقیق","adjective"),V("source","source","منبع"),V("paraphrase","paraphrase","بازگویی با بیان خود","verb"),V("relevant","relevant","مرتبط","adjective"),V("omit","omit","حذف کردن","verb"),V("finding","finding","یافته")],
    utterances=[
        U("main","The main point of the report is that small scheduling changes reduced waiting time significantly.","نکته اصلی گزارش اینه که تغییرهای کوچک زمان‌بندی، زمان انتظار رو به شکل قابل‌توجهی کم کرده.","identify_main_point",["main_point","finding"],1),
        U("detail","I would omit the background detail about the old office because it doesn't affect the conclusion.","جزئیات پس‌زمینه درباره دفتر قدیمی رو حذف می‌کنم چون روی نتیجه اثر نداره.","remove_minor_detail",["omit","detail"],1),
        U("source","The source explains three causes, but only one is supported by data from all four locations.","منبع سه علت رو توضیح می‌ده، ولی فقط یکی با داده هر چهار محل پشتیبانی می‌شه.","distinguish_source_points",["source","finding"],2),
        U("paraphrase","Instead of copying the sentence, I'd paraphrase it as 'staff had less time for routine tasks.'","به‌جای کپی کردن جمله، با بیان خودم می‌گم «کارکنان زمان کمتری برای کارهای روزمره داشتن».","paraphrase_source",["paraphrase","concise"],2),
        U("relevant","The exact date isn't relevant to this summary, but the size of the change is.","تاریخ دقیق برای این خلاصه مرتبط نیست، ولی اندازه تغییر مهمه.","select_relevant_detail",["relevant","detail"],3),
        U("finding","One key finding is that the improvement continued even after the trial period ended.","یک یافته کلیدی اینه که بهبود حتی بعد از پایان دوره آزمایشی ادامه داشت.","report_key_finding",["finding"],3),
        U("concise","A concise summary should keep the result and the strongest reason without repeating every example.","یک خلاصه مختصر باید نتیجه و قوی‌ترین دلیل رو نگه داره، بدون تکرار همه مثال‌ها.","define_concise_summary",["concise","main_point"],3),
        U("summary","So, in two sentences: the new process reduced delays, and clearer ownership appears to be the main reason.","پس در دو جمله: روند جدید تأخیر رو کم کرد و مسئولیت روشن‌تر ظاهراً دلیل اصلیه.","deliver_summary",["main_point","finding"],3),
    ], grammar=["reporting_verbs","relative_clauses","linking_devices"], fill=["A ___ summary keeps the main result without repeating every example.",["concise","relevant","source","finding"],"concise"]),

make_spec(index=42, slug="b2-relaying-information", topic="simple-messages", title="Relaying Information Accurately",
    vocab=[V("instruction","instruction","دستورالعمل"),V("request","request","درخواست"),V("deadline","deadline","موعد"),V("confirm","confirm","تأیید کردن","verb"),V("accurately","accurately","دقیق","adverb"),V("originally","originally","در ابتدا","adverb"),V("update","update","به‌روزرسانی"),V("relay","relay","انتقال دادن پیام","verb")],
    utterances=[
        U("message","Sara said the meeting had moved to Thursday, but the start time was unchanged.","سارا گفت جلسه به پنجشنبه منتقل شده، ولی ساعت شروع همونه.","relay_update",["relay","update"],1),
        U("request","She asked me to tell everyone to read the revised document before the meeting.","ازم خواست به همه بگم قبل از جلسه سند اصلاح‌شده رو بخونن.","relay_request",["request","instruction"],1),
        U("deadline","The original deadline was Friday, but they have now extended it until Monday morning.","موعد اولیه جمعه بود، ولی حالا تا دوشنبه صبح تمدیدش کردن.","relay_deadline_change",["deadline","originally","update"],2),
        U("confirm","Could you confirm that I understood correctly: the draft is due Monday, not the final version?","می‌شه تأیید کنی درست فهمیدم: پیش‌نویس دوشنبه موعدشه، نه نسخه نهایی؟","confirm_relayed_detail",["confirm","deadline"],2),
        U("saytell","The manager told us to use the new form, but said the old reference numbers should remain the same.","مدیر به ما گفت از فرم جدید استفاده کنیم، ولی گفت شماره‌های مرجع قدیمی باید همون بمونه.","relay_mixed_instruction",["instruction"],3),
        U("accurate","I want to relay this accurately because one small time change affects several teams.","می‌خوام این رو دقیق منتقل کنم چون یک تغییر کوچک زمانی روی چند تیم اثر می‌ذاره.","prioritize_accuracy",["accurately","relay"],3),
        U("shift","He said he'd call the next day once he had spoken to the supplier.","گفت روز بعد، وقتی با تأمین‌کننده صحبت کرد، زنگ می‌زنه.","report_time_shift",["relay"],3),
        U("summary","So the action is the same, the deadline is later, and the only new instruction is to use the revised form.","پس اقدام همونه، موعد دیرتره و تنها دستور جدید استفاده از فرم اصلاح‌شده‌ست.","summarize_relayed_information",["instruction","deadline","update"],3),
    ], grammar=["reported_speech","say_tell_ask","shifts"], fill=["She asked me to ___ everyone that the meeting had moved.",["tell","say","ask","relay to"],"tell"]),

make_spec(index=43, slug="b2-practical-writing", topic="simple-messages", title="Practical Messages & Emails",
    vocab=[V("subject_line","subject line","عنوان ایمیل"),V("context","context","زمینه"),V("concise","concise","مختصر","adjective"),V("formal","formal","رسمی","adjective"),V("request","request","درخواست"),V("attachment","attachment","پیوست"),V("follow_up","follow-up","پیگیری"),V("next_step","next step","مرحله بعد")],
    utterances=[
        U("subject","A clear subject line should tell the reader what the message is about before they open it.","عنوان روشن باید قبل از باز کردن ایمیل به خواننده بگه پیام درباره چیه.","choose_subject_line",["subject_line","context"],1),
        U("context","I'll give one sentence of context before making the request so the reader understands why it matters.","قبل از درخواست یک جمله زمینه می‌دم تا خواننده بفهمه چرا مهمه.","provide_context",["context","request"],1),
        U("request","Would it be possible to move our appointment to Thursday afternoon?","امکانش هست وقت‌مون رو به پنجشنبه بعدازظهر منتقل کنیم؟","make_indirect_request",["request","formal"],2),
        U("attachment","I've attached the revised document and highlighted the two sections that need your review.","سند اصلاح‌شده رو پیوست کرده‌ام و دو بخشی که نیاز به بررسی دارن مشخص کرده‌ام.","refer_to_attachment",["attachment"],2),
        U("link","The delivery has been delayed. Therefore, we need to update the launch date before sending the announcement.","تحویل به تأخیر افتاده. بنابراین قبل از فرستادن اطلاعیه باید تاریخ عرضه رو به‌روز کنیم.","link_message_ideas",["context","next_step"],3),
        U("concise","I'm keeping the message concise because the recipient only needs the decision and the next action.","پیام رو مختصر نگه می‌دارم چون گیرنده فقط تصمیم و اقدام بعدی رو لازم داره.","control_message_length",["concise","next_step"],3),
        U("followup","I'm following up on my message from Monday because I need confirmation before tomorrow afternoon.","دارم پیام دوشنبه رو پیگیری می‌کنم چون قبل از فردا بعدازظهر تأیید لازم دارم.","write_followup",["follow_up"],3),
        U("close","Please let me know if the proposed next step works for you, or if another option would be easier.","لطفاً بگید مرحله بعدی پیشنهادی براتون مناسبه یا گزینه دیگه‌ای راحت‌تره.","close_practical_message",["next_step","request"],3),
    ], grammar=["register","linking_devices","indirect_requests"], fill=["I've included the revised document as an ___.",["attachment","context","follow-up","subject line"],"attachment"]),

four_lesson(make_spec(index=44, slug="b2-multi-step-problem-solving", topic="requests", title="Multi-step Problem Solving",
    vocab=[V("constraint","constraint","محدودیت"),V("clarify","clarify","روشن کردن","verb"),V("option","option","گزینه"),V("negotiate","negotiate","مذاکره کردن","verb"),V("confirm","confirm","تأیید کردن","verb"),V("dependency","dependency","وابستگی"),V("fallback","fallback","راه جایگزین"),V("resolution","resolution","راه‌حل نهایی")],
    utterances=[
        U("clarify","Before proposing anything, I want to clarify whether the Friday deadline can move at all.","قبل از هر پیشنهادی می‌خوام روشن کنم آیا موعد جمعه اصلاً قابل‌جابه‌جایی هست یا نه.","clarify_constraint",["clarify","constraint"],1),
        U("dependency","The schedule also depends on a supplier confirmation we won't receive until tomorrow.","برنامه به تأیید تأمین‌کننده هم وابسته‌ست که تا فردا نمی‌گیریم.","identify_dependency",["dependency"],1),
        U("options","We have two realistic options: reduce the first delivery or add a temporary second shift.","دو گزینه واقع‌بینانه داریم: تحویل اول رو کوچک‌تر کنیم یا موقتاً شیفت دوم اضافه کنیم.","present_options",["option"],2),
        U("evaluate","The second option is faster, but it creates a staffing constraint and a higher cost.","گزینه دوم سریع‌تره، ولی محدودیت نیروی انسانی و هزینه بیشتر ایجاد می‌کنه.","evaluate_options",["option","constraint"],2),
        U("negotiate","If the client can accept the core features on Friday, we can negotiate the remaining work for Tuesday.","اگر مشتری قابلیت‌های اصلی رو جمعه قبول کنه، می‌تونیم برای کار باقی‌مونده تا سه‌شنبه مذاکره کنیم.","negotiate_solution",["negotiate"],3),
        U("reported","They said quality mattered more than having every optional feature in the first delivery.","گفتن کیفیت از داشتن همه قابلیت‌های اختیاری در تحویل اول مهم‌تره.","use_relayed_constraint",["resolution"],3),
        U("fallback","If the supplier misses tomorrow's confirmation, our fallback is to use the existing component for the pilot.","اگر تأمین‌کننده تأیید فردا رو نده، راه جایگزینمون استفاده از قطعه فعلی برای پایلوته.","set_fallback",["fallback","dependency"],4),
        U("confirm","Let's confirm the resolution in writing: core delivery Friday, optional work Tuesday, with the fallback if supply slips.","بیاید راه‌حل نهایی رو کتبی تأیید کنیم: تحویل اصلی جمعه، کار اختیاری سه‌شنبه و راه جایگزین در صورت تأخیر تأمین.","confirm_resolution",["confirm","resolution","fallback"],4),
    ], grammar=["conditionals","reported_speech","negotiation"], fill=["Our ___ is to use the existing component if the supplier is late.",["fallback","constraint","dependency","resolution"],"fallback"]), ("Ari","Jon"), "Multi-step Problem Solving"),

four_lesson(make_spec(index=45, slug="b2-integrated-capstone", topic="simple-messages", title="B2 Independent Challenge",
    vocab=[V("integrate","integrate","ترکیب کردن","verb"),V("clarify","clarify","روشن کردن","verb"),V("mediate","mediate","انتقال و میانجی‌گری اطلاعات","verb"),V("negotiate","negotiate","مذاکره کردن","verb"),V("summarize","summarize","خلاصه کردن","verb"),V("evidence","evidence","شواهد"),V("independent","independent","مستقل","adjective"),V("outcome","outcome","نتیجه")],
    utterances=[
        U("receive","The message confirms the event is still happening, but the venue and start time have both changed.","پیام تأیید می‌کنه برنامه هنوز برگزار می‌شه، ولی مکان و ساعت شروع هر دو عوض شده.","extract_key_information",["clarify","outcome"],1),
        U("clarify","Before I respond, I need to clarify whether our booking automatically moves to the new venue.","قبل از جواب دادن باید روشن کنم آیا رزرو ما خودکار به مکان جدید منتقل می‌شه یا نه.","clarify_missing_detail",["clarify"],1),
        U("evaluate","Based on the evidence we have, the train is still the safest option despite the longer journey.","بر اساس شواهدی که داریم، قطار با وجود سفر طولانی‌تر هنوز امن‌ترین گزینه‌ست.","evaluate_with_evidence",["evidence","outcome"],2),
        U("negotiate","If the hotel can keep our original rate, I'd accept the different room rather than cancel the whole booking.","اگر هتل نرخ اصلی رو نگه داره، اتاق متفاوت رو قبول می‌کنم به‌جای اینکه کل رزرو رو لغو کنم.","negotiate_practical_outcome",["negotiate","outcome"],2),
        U("mediate","I'll tell the group that the organizer changed the schedule and asked everyone to arrive thirty minutes earlier.","به گروه می‌گم برگزارکننده برنامه رو عوض کرده و از همه خواسته سی دقیقه زودتر برسن.","mediate_information",["mediate"],3),
        U("summarize","To summarize, we have a new venue, an earlier start, and one transport decision still to make.","در جمع‌بندی، مکان جدید، شروع زودتر و یک تصمیم حمل‌ونقل باقی‌مونده داریم.","summarize_scenario",["summarize"],3),
        U("independent","I can handle the remaining steps independently as long as the organizer confirms the ticket transfer.","تا وقتی برگزارکننده انتقال بلیت رو تأیید کنه، می‌تونم مراحل باقی‌مونده رو مستقل مدیریت کنم.","state_independent_action",["independent","clarify"],4),
        U("final","The final outcome is workable: the booking is protected, everyone has the updated information, and we have a backup route.","نتیجه نهایی قابل‌اجراست: رزرو حفظ شده، همه اطلاعات جدید رو دارن و یک مسیر پشتیبان هم داریم.","close_integrated_scenario",["outcome","integrate"],4),
    ], grammar=["signposting","reported_speech","negotiation"], fill=["To ___, we have a new venue and an earlier start.",["summarize","mediate","integrate","clarify"],"summarize"]), ("Ari","Jon"), "B2 Independent Challenge"),
]

if __name__ == "__main__":
    write_units(UNITS)
