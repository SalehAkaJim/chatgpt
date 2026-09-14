#!/usr/bin/env python3
"""Upgrade the completed Pre-A1 courses to broader CEFR-style real-world readiness.

This is intentionally deterministic. It adds the same four can-do domains to the
completed English, German, Turkish and Korean absolute-beginner courses while
keeping the actual language natural and language-specific:

* about me: origin, age, feelings and one family chunk
* real-life numbers: 11/15/20, phone numbers, prices, day/date recognition
* forms and signs: simple personal-information forms and visual/sign reading
* real-world gate: personalized open speaking/writing plus listening/repair

It also repairs three meaning-request dialogues, aligns the Turkish exit register,
and removes one stale English template-feedback artifact.
"""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

LANGS = {
    "en": {
        "variant": "en-US", "course": "fa-en-us", "prefix": "en",
        "dir": "en", "cast": [("Maya", "Arman"), ("Nora", "Ben"), ("Lina", "Kai"), ("Aisha", "Adam"), ("Nina", "Alex"), ("Ella", "Daniel"), ("Ava", "Chris"), ("Dina", "Jack")],
        "greet": "Hello!", "greet_fa": "سلام!",
        "name_q": "What's your name?", "name_q_fa": "اسمت چیه؟",
        "name_a": "My name is Sara.", "name_a_fa": "اسم من ساراست.",
        "origin_q": "Where are you from?", "origin_q_fa": "اهل کجایی؟",
        "origin_a": "I'm from Iran.", "origin_a_fa": "من از ایران هستم.",
        "age_q": "How old are you?", "age_q_fa": "چند سالته؟",
        "age_a": "I'm twenty.", "age_a_fa": "بیست سالمه.",
        "feel_q": "How are you?", "feel_q_fa": "حالت چطوره؟",
        "feel_a": "I'm good, thanks.", "feel_a_fa": "خوبم، ممنون.",
        "family": "This is my sister.", "family_fa": "این خواهر من است.",
        "n11": "eleven", "n15": "fifteen", "n20": "twenty",
        "phone_q": "What's your phone number?", "phone_q_fa": "شماره تلفنت چنده؟",
        "phone_a": "Zero nine one two, three four five, six seven eight nine.", "phone_a_fa": "۰۹۱۲، ۳۴۵، ۶۷۸۹.",
        "price_q": "How much is it?", "price_q_fa": "قیمتش چنده؟",
        "price_a": "It's five dollars.", "price_a_fa": "پنج دلار است.",
        "day": "Monday", "day_fa": "دوشنبه", "date": "May fifth", "date_fa": "پنجم مه",
        "fields": [("Name", "نام"), ("Country", "کشور"), ("Phone", "تلفن")],
        "exit": "EXIT", "exit_fa": "خروج", "open": "OPEN", "open_fa": "باز",
        "exit_q": "Where is the exit?", "exit_q_fa": "خروج کجاست؟", "exit_a": "The exit is there.", "exit_a_fa": "خروج آنجاست.",
        "repeat": "Again, please.", "repeat_fa": "دوباره، لطفاً.",
        "self_model": "My name is Sara. I'm from Iran. I'm good.",
        "form_model": "Name: Sara\nCountry: Iran\nPhone: 0912 345 6789",
    },
    "de": {
        "variant": "de-DE", "course": "fa-de-de", "prefix": "de",
        "dir": "de", "cast": [("Anna", "Lukas"), ("Mia", "Jonas"), ("Lea", "Emil"), ("Sofia", "Noah"), ("Nina", "Max"), ("Clara", "Leon"), ("Mara", "Emil"), ("Anna", "Noah")],
        "greet": "Hallo!", "greet_fa": "سلام!",
        "name_q": "Wie heißt du?", "name_q_fa": "اسمت چیه؟",
        "name_a": "Ich heiße Sara.", "name_a_fa": "اسم من ساراست.",
        "origin_q": "Woher kommst du?", "origin_q_fa": "اهل کجایی؟",
        "origin_a": "Ich komme aus dem Iran.", "origin_a_fa": "من از ایران می‌آیم.",
        "age_q": "Wie alt bist du?", "age_q_fa": "چند سالته؟",
        "age_a": "Ich bin zwanzig Jahre alt.", "age_a_fa": "بیست سالمه.",
        "feel_q": "Wie geht's?", "feel_q_fa": "حالت چطوره؟",
        "feel_a": "Gut, danke.", "feel_a_fa": "خوبم، ممنون.",
        "family": "Das ist meine Schwester.", "family_fa": "این خواهر من است.",
        "n11": "elf", "n15": "fünfzehn", "n20": "zwanzig",
        "phone_q": "Wie ist deine Telefonnummer?", "phone_q_fa": "شماره تلفنت چنده؟",
        "phone_a": "Null neun eins zwei, drei vier fünf, sechs sieben acht neun.", "phone_a_fa": "۰۹۱۲، ۳۴۵، ۶۷۸۹.",
        "price_q": "Wie viel kostet das?", "price_q_fa": "این چقدر قیمت دارد؟",
        "price_a": "Fünf Euro.", "price_a_fa": "پنج یورو.",
        "day": "Montag", "day_fa": "دوشنبه", "date": "fünfter Mai", "date_fa": "پنجم مه",
        "fields": [("Name", "نام"), ("Land", "کشور"), ("Telefon", "تلفن")],
        "exit": "AUSGANG", "exit_fa": "خروج", "open": "OFFEN", "open_fa": "باز",
        "exit_q": "Wo ist der Ausgang?", "exit_q_fa": "خروج کجاست؟", "exit_a": "Dort.", "exit_a_fa": "آنجاست.",
        "repeat": "Noch einmal, bitte.", "repeat_fa": "یک بار دیگر، لطفاً.",
        "self_model": "Ich heiße Sara. Ich komme aus dem Iran. Mir geht's gut.",
        "form_model": "Name: Sara\nLand: Iran\nTelefon: 0912 345 6789",
    },
    "tr": {
        "variant": "tr-TR", "course": "fa-tr-tr", "prefix": "tr",
        "dir": "tr", "cast": [("Elif", "Mert"), ("Selin", "Kaan"), ("Deniz", "Emre"), ("Zeynep", "Burak"), ("Elif", "Kaan"), ("Selin", "Mert"), ("Deniz", "Burak"), ("Zeynep", "Emre")],
        "greet": "Merhaba!", "greet_fa": "سلام!",
        "name_q": "Adın ne?", "name_q_fa": "اسمت چیه؟",
        "name_a": "Benim adım Sara.", "name_a_fa": "من سارا هستم.",
        "origin_q": "Nerelisin?", "origin_q_fa": "اهل کجایی؟",
        "origin_a": "İranlıyım.", "origin_a_fa": "ایرانی‌ام.",
        "age_q": "Kaç yaşındasın?", "age_q_fa": "چند سالته؟",
        "age_a": "Yirmi yaşındayım.", "age_a_fa": "بیست سالمه.",
        "feel_q": "Nasılsın?", "feel_q_fa": "حالت چطوره؟",
        "feel_a": "İyiyim, teşekkürler.", "feel_a_fa": "خوبم، ممنون.",
        "family": "Bu benim kız kardeşim.", "family_fa": "این خواهر من است.",
        "n11": "on bir", "n15": "on beş", "n20": "yirmi",
        "phone_q": "Telefon numaran ne?", "phone_q_fa": "شماره تلفنت چنده؟",
        "phone_a": "Sıfır dokuz bir iki, üç dört beş, altı yedi sekiz dokuz.", "phone_a_fa": "۰۹۱۲، ۳۴۵، ۶۷۸۹.",
        "price_q": "Bu ne kadar?", "price_q_fa": "این چنده؟",
        "price_a": "Beş lira.", "price_a_fa": "پنج لیر.",
        "day": "Pazartesi", "day_fa": "دوشنبه", "date": "beş Mayıs", "date_fa": "پنجم مه",
        "fields": [("Ad", "نام"), ("Ülke", "کشور"), ("Telefon", "تلفن")],
        "exit": "ÇIKIŞ", "exit_fa": "خروج", "open": "AÇIK", "open_fa": "باز",
        "exit_q": "Çıkış nerede?", "exit_q_fa": "خروج کجاست؟", "exit_a": "Orada.", "exit_a_fa": "آنجاست.",
        "repeat": "Tekrar eder misiniz?", "repeat_fa": "دوباره می‌گویید؟",
        "self_model": "Benim adım Sara. İranlıyım. İyiyim.",
        "form_model": "Ad: Sara\nÜlke: İran\nTelefon: 0912 345 6789",
    },
    "ko": {
        "variant": "ko-KR", "course": "fa-ko-kr", "prefix": "ko",
        "dir": "ko", "cast": [("지민", "민수"), ("서연", "준호"), ("하나", "태호"), ("유나", "도윤"), ("지민", "준호"), ("서연", "민수"), ("하나", "도윤"), ("유나", "태호")],
        "greet": "안녕하세요!", "greet_fa": "سلام!",
        "name_q": "이름이 뭐예요?", "name_q_fa": "اسمتان چیست؟",
        "name_a": "저는 사라예요.", "name_a_fa": "من سارا هستم.",
        "origin_q": "어디에서 왔어요?", "origin_q_fa": "از کجا آمده‌اید؟",
        "origin_a": "저는 이란에서 왔어요.", "origin_a_fa": "من از ایران آمده‌ام.",
        "age_q": "몇 살이에요?", "age_q_fa": "چند سالتان است؟",
        "age_a": "스무 살이에요.", "age_a_fa": "بیست سالم است.",
        "feel_q": "잘 지내요?", "feel_q_fa": "خوب هستید؟",
        "feel_a": "네, 잘 지내요.", "feel_a_fa": "بله، خوبم.",
        "family": "제 가족이에요.", "family_fa": "این خانوادهٔ من است.",
        "n11": "십일", "n15": "십오", "n20": "이십",
        "phone_q": "전화번호가 뭐예요?", "phone_q_fa": "شماره تلفنتان چیست؟",
        "phone_a": "공일공, 일이삼사, 오육칠팔이에요.", "phone_a_fa": "۰۱۰، ۱۲۳۴، ۵۶۷۸ است.",
        "price_q": "얼마예요?", "price_q_fa": "چقدر است؟",
        "price_a": "오천 원이에요.", "price_a_fa": "پنج هزار وون است.",
        "day": "월요일", "day_fa": "دوشنبه", "date": "오월 오일", "date_fa": "پنجم مه",
        "fields": [("이름", "نام"), ("나라", "کشور"), ("전화번호", "شماره تلفن")],
        "exit": "출구", "exit_fa": "خروج", "open": "입구", "open_fa": "ورودی",
        "exit_q": "출구가 어디예요?", "exit_q_fa": "خروج کجاست؟", "exit_a": "저기예요.", "exit_a_fa": "آنجاست.",
        "repeat": "다시 말해 주세요.", "repeat_fa": "لطفاً دوباره بگویید.",
        "self_model": "저는 사라예요. 이란에서 왔어요. 잘 지내요.",
        "form_model": "이름: 사라\n나라: 이란\n전화번호: 010 1234 5678",
    },
}


def item(kind: str, external_id: str, data: dict) -> dict:
    return {"kind": kind, "external_id": external_id, "data": data}


def concept(lang: str, unit: str, lesson: int, idx: str, form: str, fa: str, topic: str) -> dict:
    slug = f"prea1_{lang}_{unit}_{idx}"
    return item("concept", f"c_{lang}_{unit}_{idx}", {
        "slug": slug, "lesson_key": f"prea1-{lang}-{unit}-{lesson:02d}", "concept_type": "functional",
        "forms": {lang: form}, "translations": {"fa": fa}, "cefr": "Pre-A1", "topic": topic,
        "status": "validated",
    })


def utter(lang: str, unit: str, lesson: int, idx: str, text: str, fa: str, topic: str, intent: str) -> dict:
    return item("utterance", f"u_{lang}_{unit}_{idx}", {
        "lesson_key": f"prea1-{lang}-{unit}-{lesson:02d}", "text": {lang: text}, "translations": {"fa": fa},
        "intent": intent, "cefr": "Pre-A1", "topic": topic, "register": "neutral", "status": "validated",
    })


def dialogue(lang: str, unit: str, lesson: int, idx: str, chars: tuple[str, str], title: str, setting: str, turns: list[tuple[str, str, str]], outcome: str = "completed") -> dict:
    return item("dialogue", f"d_{lang}_{unit}_{idx}", {
        "lesson_key": f"prea1-{lang}-{unit}-{lesson:02d}", "title": title, "setting": setting,
        "cefr": "Pre-A1", "topic": "simple-messages", "characters": list(chars),
        "turns": [{"order": i + 1, "speaker": speaker, "text": text, "translation_fa": fa} for i, (speaker, text, fa) in enumerate(turns)],
        "communication_outcome": outcome, "status": "validated",
    })


def feedback(explanation: str, model: str, retry: str) -> dict:
    return {"explanation_fa": explanation, "model_answer": model, "retry_tip_fa": retry}


def rubric_answer(model_text: str, required: list[str]) -> tuple[dict, dict]:
    answer = {"evaluation_mode": "rubric", "model_text": model_text, "required_points_fa": required}
    assessment = {
        "exact_match_allowed": False,
        "criteria": [
            {"id": "task", "label_fa": "انجام کار", "weight": 60, "descriptors_fa": {
                "0": "اطلاعات خواسته‌شده را منتقل نمی‌کند.", "1": "فقط یک بخش را منتقل می‌کند.",
                "2": "بیشتر بخش‌ها را به‌صورت قابل‌فهم منتقل می‌کند.", "3": "همهٔ بخش‌های اصلی را کوتاه و قابل‌فهم منتقل می‌کند."}},
            {"id": "clarity", "label_fa": "قابل‌فهم بودن", "weight": 40, "descriptors_fa": {
                "0": "پاسخ قابل‌فهم نیست.", "1": "فقط بخش کوچکی قابل‌فهم است.",
                "2": "با چند خطای ساده همچنان قابل‌فهم است.", "3": "برای سطح Pre-A1 روشن و قابل‌فهم است."}},
        ],
    }
    return answer, assessment


def ex_mc(lang: str, unit: str, lesson: int, idx: str, instruction: str, options: list[str], answer_value: str, explanation: str, prompt_extra: dict | None = None) -> dict:
    prompt = {"instruction_fa": instruction, "value": answer_value}
    if prompt_extra:
        prompt.update(prompt_extra)
    return item("exercise", f"ex_{lang}_{unit}_{idx}", {
        "lesson_key": f"prea1-{lang}-{unit}-{lesson:02d}", "exercise_type": "multiple_choice",
        "prompt": prompt, "options": options, "answer": {"value": answer_value}, "difficulty": 1,
        "cefr": "Pre-A1", "status": "validated", "feedback": feedback(explanation, answer_value, "به موقعیت و نشانهٔ اصلی دوباره توجه کن."),
    })


def ex_listen(lang: str, unit: str, lesson: int, idx: str, instruction: str, audio: str, options: list[str], answer_value: str, explanation: str) -> dict:
    return item("exercise", f"ex_{lang}_{unit}_{idx}", {
        "lesson_key": f"prea1-{lang}-{unit}-{lesson:02d}", "exercise_type": "listening",
        "prompt": {"instruction_fa": instruction, "audio_text": audio}, "options": options,
        "answer": {"value": answer_value}, "difficulty": 1, "cefr": "Pre-A1", "status": "validated",
        "feedback": {**feedback(explanation, answer_value, "دوباره گوش کن و فقط اطلاعات هدف را پیدا کن."), "transcript_en": audio},
    })


def ex_speak(lang: str, unit: str, lesson: int, idx: str, instruction: str, text: str, explanation: str) -> dict:
    return item("exercise", f"ex_{lang}_{unit}_{idx}", {
        "lesson_key": f"prea1-{lang}-{unit}-{lesson:02d}", "exercise_type": "speaking",
        "prompt": {"instruction_fa": instruction, "value": text}, "answer": {"expected_text": text},
        "difficulty": 1, "cefr": "Pre-A1", "status": "validated",
        "feedback": feedback(explanation, text, "عبارت را یک‌تکه و طبیعی بگو؛ هدف قابل‌فهم بودن است."),
    })


def ex_open(lang: str, unit: str, lesson: int, idx: str, exercise_type: str, instruction: str, model: str, required: list[str]) -> dict:
    ans, assessment = rubric_answer(model, required)
    return item("exercise", f"ex_{lang}_{unit}_{idx}", {
        "lesson_key": f"prea1-{lang}-{unit}-{lesson:02d}", "exercise_type": exercise_type,
        "prompt": {"instruction_fa": instruction, "personalized": True}, "answer": ans,
        "assessment": assessment, "difficulty": 2, "cefr": "Pre-A1", "status": "validated",
        "feedback": feedback("پاسخ شخصی تو لازم نیست عین نمونه باشد؛ مهم انتقال اطلاعات خواسته‌شده و قابل‌فهم بودن است.", model, "از الگو کمک بگیر اما اطلاعات واقعی خودت را جایگزین کن."),
    })


def grammar(lang: str, unit: str, lesson: int, title: str, summary: str, fa: str, examples: list[tuple[str, str]]) -> dict:
    return item("grammar_point", f"g_{lang}_{unit}", {
        "lesson_key": f"prea1-{lang}-{unit}-{lesson:02d}", "slug": f"g-{lang}-prea1-{unit}", "title": title,
        "rule_summary": summary, "explanation": {"fa": fa},
        "examples": [{lang: t, "fa": f} for t, f in examples], "cefr": "Pre-A1", "status": "validated", "audio_examples": True,
    })


def make_about(lang: str, c: dict) -> dict:
    unit = f"{lang}-about-me"
    p1, p2 = c["cast"][0], c["cast"][1]
    items = [
        concept(lang, unit, 1, "origin_q", c["origin_q"], c["origin_q_fa"], "introductions"),
        concept(lang, unit, 1, "origin_a", c["origin_a"], c["origin_a_fa"], "introductions"),
        concept(lang, unit, 1, "age_q", c["age_q"], c["age_q_fa"], "introductions"),
        concept(lang, unit, 1, "age_a", c["age_a"], c["age_a_fa"], "introductions"),
        concept(lang, unit, 2, "feeling", c["feel_a"], c["feel_a_fa"], "introductions"),
        concept(lang, unit, 2, "family", c["family"], c["family_fa"], "introductions"),
        utter(lang, unit, 1, "origin", c["origin_a"], c["origin_a_fa"], "introductions", "state_origin"),
        utter(lang, unit, 1, "age", c["age_a"], c["age_a_fa"], "introductions", "state_age"),
        utter(lang, unit, 2, "feeling", c["feel_a"], c["feel_a_fa"], "introductions", "state_feeling"),
        utter(lang, unit, 2, "family", c["family"], c["family_fa"], "introductions", "identify_family"),
        dialogue(lang, unit, 1, "origin_age", p1, "About me", "community", [
            (p1[0], c["greet"], c["greet_fa"]), (p1[1], c["greet"], c["greet_fa"]),
            (p1[0], c["origin_q"], c["origin_q_fa"]), (p1[1], c["origin_a"], c["origin_a_fa"]),
            (p1[0], c["age_q"], c["age_q_fa"]), (p1[1], c["age_a"], c["age_a_fa"]),
        ]),
        dialogue(lang, unit, 2, "feeling_family", p2, "Feeling and family", "community", [
            (p2[0], c["feel_q"], c["feel_q_fa"]), (p2[1], c["feel_a"], c["feel_a_fa"]),
            (p2[1], c["family"], c["family_fa"]), (p2[0], c["feel_a"], c["feel_a_fa"]),
        ]),
        ex_listen(lang, unit, 1, "origin_listen", "اهل کجاست؟", c["origin_a"], [c["origin_a"], c["age_a"], c["feel_a"], c["family"]], c["origin_a"], "پاسخ، مبدأ/کشور را بیان می‌کند."),
        ex_speak(lang, unit, 1, "age_speak", "با الگوی نمونه سن را بگو.", c["age_a"], "این یک الگوی بسیار کوتاه برای گفتن سن است."),
        ex_mc(lang, unit, 2, "feeling_choice", "کدام پاسخ دربارهٔ حال فرد است؟", [c["feel_a"], c["origin_a"], c["age_a"], c["family"]], c["feel_a"], "این عبارت حال سادهٔ فرد را بیان می‌کند."),
        ex_open(lang, unit, 2, "about_write", "writing", "سه خط خیلی کوتاه دربارهٔ خودت بنویس: نام، کشور/مبدأ، و سن یا حالت. اطلاعات خودت را بنویس؛ لازم نیست عین نمونه باشد.", c["self_model"], ["نام واقعی یا نام انتخابی خودت", "کشور یا مبدأ", "سن یا یک حالت ساده"]),
        grammar(lang, unit, 2, "About-me chunks", "At Pre-A1, personal information can be learned as short whole chunks before grammar analysis.", "هدف این بخش دادن اطلاعات واقعی و خیلی کوتاه دربارهٔ خودت است، نه تحلیل دستور زبان.", [(c["origin_a"], c["origin_a_fa"]), (c["age_a"], c["age_a_fa"]), (c["feel_a"], c["feel_a_fa"])]),
    ]
    return batch(c, f"prea1-{lang}-about-me", items)


def make_numbers(lang: str, c: dict) -> dict:
    unit = f"{lang}-real-life-numbers"
    p1, p2 = c["cast"][2], c["cast"][3]
    vals = [("n11", c["n11"], "یازده"), ("n15", c["n15"], "پانزده"), ("n20", c["n20"], "بیست")]
    items = [concept(lang, unit, 1, k, v, fa, "numbers") for k, v, fa in vals]
    items += [
        concept(lang, unit, 1, "phone_q", c["phone_q"], c["phone_q_fa"], "numbers"),
        concept(lang, unit, 2, "price_q", c["price_q"], c["price_q_fa"], "numbers"),
        concept(lang, unit, 2, "day", c["day"], c["day_fa"], "numbers"),
        concept(lang, unit, 2, "date", c["date"], c["date_fa"], "numbers"),
        utter(lang, unit, 1, "n11", c["n11"], "یازده", "numbers", "say_number"),
        utter(lang, unit, 1, "n15", c["n15"], "پانزده", "numbers", "say_number"),
        utter(lang, unit, 1, "n20", c["n20"], "بیست", "numbers", "say_number"),
        utter(lang, unit, 1, "phone", c["phone_a"], c["phone_a_fa"], "numbers", "give_phone_number"),
        utter(lang, unit, 2, "price", c["price_a"], c["price_a_fa"], "numbers", "state_price"),
        utter(lang, unit, 2, "day", c["day"], c["day_fa"], "numbers", "state_day"),
        utter(lang, unit, 2, "date", c["date"], c["date_fa"], "numbers", "state_date"),
        dialogue(lang, unit, 1, "phone", p1, "A phone number", "registration_desk", [
            (p1[0], c["phone_q"], c["phone_q_fa"]), (p1[1], c["phone_a"], c["phone_a_fa"]),
            (p1[0], c["repeat"], c["repeat_fa"]), (p1[1], c["phone_a"], c["phone_a_fa"]),
        ], "information_exchanged"),
        dialogue(lang, unit, 2, "price_day", p2, "Price and day", "shop", [
            (p2[0], c["price_q"], c["price_q_fa"]), (p2[1], c["price_a"], c["price_a_fa"]),
            (p2[0], c["day"], c["day_fa"]), (p2[1], c["date"], c["date_fa"]),
        ], "information_exchanged"),
        ex_listen(lang, unit, 1, "number_listen", "کدام عدد را شنیدی؟", c["n15"], [c["n11"], c["n15"], c["n20"], c["day"]], c["n15"], "این شکل گفتاری عدد پانزده است."),
        ex_speak(lang, unit, 1, "phone_speak", "شمارهٔ نمونه را شمرده و واضح بگو.", c["phone_a"], "شماره تلفن در مکالمه واقعی معمولاً رقم‌به‌رقم یا در گروه‌های کوتاه گفته می‌شود."),
        ex_mc(lang, unit, 2, "price_choice", "کدام پاسخ یک قیمت است؟", [c["price_a"], c["day"], c["date"], c["origin_a"]], c["price_a"], "این عبارت قیمت را بیان می‌کند."),
        ex_mc(lang, unit, 2, "day_choice", "کدام گزینه نام یک روز است؟", [c["day"], c["n15"], c["price_a"], c["exit"]], c["day"], "این واژه نام روز هفته است."),
        ex_speak(lang, unit, 2, "price_speak", "قیمت نمونه را با صدای بلند بگو.", c["price_a"], "هدف، گرفتن و گفتن یک قیمت خیلی ساده است."),
        grammar(lang, unit, 2, "Numbers as information", "At Pre-A1, numbers are practiced inside useful information such as phone numbers, prices and dates.", "عددها را فقط فهرست حفظ نکن؛ آن‌ها را داخل شماره تلفن، قیمت، روز و تاریخ تشخیص بده و استفاده کن.", [(c["phone_a"], c["phone_a_fa"]), (c["price_a"], c["price_a_fa"]), (c["date"], c["date_fa"])]),
    ]
    return batch(c, f"prea1-{lang}-real-life-numbers", items)


def make_forms(lang: str, c: dict) -> dict:
    unit = f"{lang}-forms-signs"
    p1, p2 = c["cast"][4], c["cast"][5]
    items = []
    for i, (form, fa) in enumerate(c["fields"], 1):
        items.append(concept(lang, unit, 1, f"field{i}", form, fa, "simple-messages"))
    items += [
        concept(lang, unit, 2, "exit", c["exit"], c["exit_fa"], "simple-messages"),
        concept(lang, unit, 2, "open", c["open"], c["open_fa"], "simple-messages"),
        utter(lang, unit, 1, "name_field", c["fields"][0][0], c["fields"][0][1], "simple-messages", "read_form_field"),
        utter(lang, unit, 2, "exit_q", c["exit_q"], c["exit_q_fa"], "simple-messages", "ask_exit"),
        utter(lang, unit, 2, "exit_a", c["exit_a"], c["exit_a_fa"], "simple-messages", "point_exit"),
        dialogue(lang, unit, 1, "form", p1, "A very short form", "registration_desk", [
            (p1[0], c["fields"][0][0] + "?", c["fields"][0][1] + "؟"), (p1[1], c["name_a"], c["name_a_fa"]),
            (p1[0], c["fields"][1][0] + "?", c["fields"][1][1] + "؟"), (p1[1], c["origin_a"], c["origin_a_fa"]),
        ], "form_information_supplied"),
        dialogue(lang, unit, 2, "sign", p2, "Find the exit", "public_building", [
            (p2[0], c["exit_q"], c["exit_q_fa"]), (p2[1], c["exit_a"], c["exit_a_fa"]),
            (p2[0], c["repeat"], c["repeat_fa"]), (p2[1], c["exit_a"], c["exit_a_fa"]),
        ], "destination_found"),
        ex_mc(lang, unit, 2, "visual_exit", "به نشانه نگاه کن. کدام واژه/عبارت مفهوم «خروج» را می‌دهد؟", [c["exit"], c["open"], c["fields"][0][0], c["day"]], c["exit"], "این نشانه خروج را نشان می‌دهد.", {"visual_asset": {"kind": "icon", "semantic": "exit", "fallback": "🚪➡️"}, "requires_visual_support": True}),
        ex_listen(lang, unit, 1, "field_listen", "کدام عنوان فرم را شنیدی؟", c["fields"][2][0], [x[0] for x in c["fields"]] + [c["exit"]], c["fields"][2][0], "این عنوان مربوط به شماره تلفن است."),
        ex_speak(lang, unit, 2, "exit_speak", "در یک ساختمان بپرس خروج کجاست.", c["exit_q"], "این سؤال در یک موقعیت واقعی مسیر‌یابی کاربرد دارد."),
        ex_open(lang, unit, 1, "form_write", "writing", "یک فرم سه‌فیلدی را با اطلاعات خودت پر کن: نام، کشور، و شماره تلفن نمونه یا واقعی. لازم نیست قالب دقیق نمونه را کپی کنی.", c["form_model"], ["نام", "کشور", "شماره تلفن"]),
        ex_mc(lang, unit, 2, "visual_open", "این نشانه چه اطلاعاتی می‌دهد؟", [c["open"], c["exit"], c["day"], c["fields"][1][0]], c["open"], "این واژه/نشانه وضعیت ورودی یا بازبودن را نشان می‌دهد.", {"visual_asset": {"kind": "sign", "semantic": "open_or_entry", "fallback": "🟢"}, "requires_visual_support": True}),
        grammar(lang, unit, 2, "Read for a purpose", "Pre-A1 reading should help the learner do something simple: fill a field, recognize a sign or find a place.", "در این سطح لازم نیست متن بلند بخوانی؛ هدف این است که یک عنوان فرم یا نشانهٔ کاربردی را ببینی و کار درست را انجام بدهی.", [(c["exit"], c["exit_fa"]), (c["fields"][0][0], c["fields"][0][1])]),
    ]
    return batch(c, f"prea1-{lang}-forms-signs", items)


def make_gate(lang: str, c: dict) -> dict:
    unit = f"{lang}-real-world-gate"
    p1, p2 = c["cast"][6], c["cast"][7]
    items = [
        dialogue(lang, unit, 1, "meet", p1, "Meet and give real information", "community", [
            (p1[0], c["name_q"], c["name_q_fa"]), (p1[1], c["name_a"], c["name_a_fa"]),
            (p1[0], c["origin_q"], c["origin_q_fa"]), (p1[1], c["origin_a"], c["origin_a_fa"]),
            (p1[0], c["feel_q"], c["feel_q_fa"]), (p1[1], c["feel_a"], c["feel_a_fa"]),
        ], "personal_information_exchanged"),
        dialogue(lang, unit, 2, "public_task", p2, "Complete a tiny public task", "service_desk", [
            (p2[0], c["phone_q"], c["phone_q_fa"]), (p2[1], c["phone_a"], c["phone_a_fa"]),
            (p2[0], c["price_q"], c["price_q_fa"]), (p2[1], c["price_a"], c["price_a_fa"]),
            (p2[1], c["exit_q"], c["exit_q_fa"]), (p2[0], c["exit_a"], c["exit_a_fa"]),
        ], "service_task_completed"),
        ex_open(lang, unit, 1, "personal_speaking", "speaking", "بدون نقشِ کاراکتر، با اطلاعات خودت خیلی کوتاه معرفی شو: نام، کشور/مبدأ، و حالت. لازم نیست عین نمونه بگویی.", c["self_model"], ["نام خودت", "کشور یا مبدأ", "یک حالت ساده"]),
        ex_open(lang, unit, 2, "personal_form", "writing", "فرم کوتاه را با اطلاعات خودت پر کن: نام، کشور و شماره تلفن. پاسخ آزاد است و exact-match نیست.", c["form_model"], ["نام", "کشور", "شماره تلفن"]),
        ex_listen(lang, unit, 2, "phone_listen", "از صوت، شماره تلفن را تشخیص بده.", c["phone_a"], [c["phone_a"], c["price_a"], c["age_a"], c["date"]], c["phone_a"], "این پاسخ یک شماره تلفن را منتقل می‌کند."),
        ex_mc(lang, unit, 2, "visual_gate", "در یک ساختمان این نشانه را می‌بینی. برای خروج دنبال کدام واژه می‌گردی؟", [c["exit"], c["open"], c["day"], c["fields"][0][0]], c["exit"], "هدف، استفاده از خواندن برای انجام یک کار واقعی است.", {"visual_asset": {"kind": "icon", "semantic": "exit", "fallback": "🚪➡️"}, "requires_visual_support": True}),
        ex_mc(lang, unit, 1, "repair_choice", "اگر جمله را نفهمیدی، کدام درخواست کمک می‌کند مکالمه ادامه پیدا کند؟", [c["repeat"], c["greet"], c["price_a"], c["day"]], c["repeat"], "درخواست تکرار یک راهبرد ارتباطی واقعی است."),
        ex_speak(lang, unit, 2, "repair_speak", "اگر نفهمیدی، درخواست تکرار را با صدای بلند بگو.", c["repeat"], "هدف این است که بتوانی هنگام مشکل، مکالمه را زنده نگه داری."),
        grammar(lang, unit, 2, "A real Pre-A1 exit", "The final gate checks task completion with personal information, listening, visual reading, writing and repair rather than imitation alone.", "این خروجی نهایی فقط حفظ‌کردن جمله نیست. باید با اطلاعات خودت چیزی بگویی/بنویسی، یک اطلاعات شنیداری را بگیری، از نشانه استفاده کنی و اگر نفهمیدی درخواست کمک کنی.", [(c["self_model"], "نمونهٔ معرفی شخصی"), (c["repeat"], c["repeat_fa"])]),
    ]
    return batch(c, f"prea1-{lang}-real-world-gate", items)


def batch(c: dict, unit_slug: str, items: list[dict]) -> dict:
    lang = c["prefix"]
    return {
        "batch_id": f"{c['variant'].lower()}-{unit_slug}-v1",
        "course": c["course"], "learner_language": "fa", "learner_variant": "fa-IR",
        "target_language": lang, "target_variant": c["variant"], "cefr": "Pre-A1",
        "curriculum_unit": unit_slug, "generator": "gpt-5.6-sol:cefr-prea1-real-world-upgrade-v1",
        "items": items,
    }


def write_batch(lang: str, name: str, data: dict) -> None:
    path = ROOT / "content" / "production" / LANGS[lang]["dir"] / "Pre-A1" / f"prea1-{lang}-{name}-v1.json"
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def patch_dialogues() -> None:
    patches = [
        (ROOT / "content/production/de/Pre-A1/prea1-de-meaning-help-v1.json", "d_de_meaning_help", [
            ("Sofia", "Das ist ein Buch.", "این یک کتاب است."), ("Noah", "Wie bitte?", "ببخشید؟"),
            ("Sofia", "Ein Buch.", "یک کتاب."), ("Noah", "Was bedeutet das?", "این یعنی چه؟"),
            ("Sofia", "Buch. Das hier.", "Buch یعنی کتاب؛ همین چیزی که اینجاست."), ("Noah", "Ah, ein Buch. Danke.", "آها، یک کتاب. ممنون.")]),
        (ROOT / "content/production/tr/Pre-A1/prea1-tr-meaning-help-v1.json", "d_tr_meaning_help", [
            ("Deniz", "Bu bir defter.", "این یک دفتر است."), ("Emre", "Bu ne demek?", "این یعنی چه؟"),
            ("Deniz", "Defter. Bu.", "Defter یعنی دفتر؛ همین."), ("Emre", "Tekrar eder misiniz?", "دوباره می‌گویید؟"),
            ("Deniz", "Defter.", "دفتر."), ("Emre", "Anladım, teşekkürler.", "فهمیدم، ممنون.")]),
        (ROOT / "content/production/ko/Pre-A1/prea1-ko-meaning-help-v1.json", "d_ko_meaning_help", [
            ("지민", "이건 가방이에요.", "این کیف است."), ("민수", "무슨 뜻이에요?", "یعنی چه؟"),
            ("지민", "가방. 이거예요.", "가방 یعنی کیف؛ همین است."), ("민수", "다시 말해 주세요.", "لطفاً دوباره بگویید."),
            ("지민", "가방이에요.", "کیف است."), ("민수", "아, 알겠어요. 감사합니다.", "آها، فهمیدم. ممنونم.")]),
        (ROOT / "content/production/de/Pre-A1/prea1-de-ready-for-a1-v1.json", "d_de_ready_repair", [
            ("Lea", "Das ist eine Tasche.", "این یک کیف است."), ("Emil", "Noch einmal, bitte.", "یک بار دیگر، لطفاً."),
            ("Lea", "Eine Tasche.", "یک کیف."), ("Emil", "Was bedeutet das?", "این یعنی چه؟"),
            ("Lea", "Tasche. Das hier.", "Tasche یعنی کیف؛ همین چیزی که اینجاست."), ("Emil", "Ah, danke.", "آها، ممنون.")]),
        (ROOT / "content/production/tr/Pre-A1/prea1-tr-ready-for-a1-v1.json", "d_tr_ready_repair", [
            ("Zeynep", "Bu bir çanta.", "این یک کیف است."), ("Burak", "Bu ne demek?", "این یعنی چه؟"),
            ("Zeynep", "Çanta. Bu.", "Çanta یعنی کیف؛ همین."), ("Burak", "Anladım, teşekkürler.", "فهمیدم، ممنون.")]),
        (ROOT / "content/production/ko/Pre-A1/prea1-ko-ready-for-a1-v1.json", "d_ko_ready_repair", [
            ("하나", "이건 우산이에요.", "این چتر است."), ("태호", "무슨 뜻이에요?", "یعنی چه؟"),
            ("하나", "우산. 이거예요.", "우산 یعنی چتر؛ همین است."), ("태호", "아, 우산. 알겠어요. 감사합니다.", "آها، چتر. فهمیدم. ممنونم.")]),
    ]
    for path, dialogue_id, turns in patches:
        data = json.loads(path.read_text(encoding="utf-8"))
        for it in data["items"]:
            if it.get("external_id") == dialogue_id:
                it["data"]["turns"] = [{"order": i + 1, "speaker": s, "text": t, "translation_fa": fa} for i, (s, t, fa) in enumerate(turns)]
                it["data"]["communication_outcome"] = "meaning_resolved"
        path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    # Keep one consistent formal register in the Turkish readiness dialogue.
    path = ROOT / "content/production/tr/Pre-A1/prea1-tr-ready-for-a1-v1.json"
    data = json.loads(path.read_text(encoding="utf-8"))
    for it in data["items"]:
        if it.get("external_id") == "d_tr_ready_intro":
            it["data"]["turns"][0]["text"] = "Merhaba! Adınız ne?"
            it["data"]["turns"][0]["translation_fa"] = "سلام! اسمتان چیست؟"
            it["data"]["turns"][2]["text"] = "Adınız ne?"
            it["data"]["turns"][2]["translation_fa"] = "اسمتان چیست؟"
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    # Remove a stale generic feedback sentence from a concrete English object task.
    path = ROOT / "content/production/en/Pre-A1/prea1-en-first-objects-v1.json"
    data = json.loads(path.read_text(encoding="utf-8"))
    for it in data["items"]:
        if it.get("external_id") == "ex_pre_this_book_build":
            it["data"]["feedback"]["explanation_fa"] = "This is a book. یعنی «این یک کتاب است». در این الگو This به چیزی نزدیک اشاره می‌کند و is a book آن را معرفی می‌کند."
            it["data"]["feedback"]["retry_tip_fa"] = "اول This is را کنار هم بگذار، بعد a book را اضافه کن."
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def patch_seed(path: Path, anchor: str, snippet: str) -> None:
    text = path.read_text(encoding="utf-8")
    first_slug = snippet.split("'prea1-")[1].split("'")[0]
    if f"'prea1-{first_slug}'" in text:
        return
    if anchor not in text:
        raise RuntimeError(f"Seed anchor not found in {path}: {anchor}")
    text = text.replace(anchor, snippet + "\n  " + anchor, 1)
    path.write_text(text, encoding="utf-8")


def patch_seeds() -> None:
    patch_seed(ROOT / "database/seed/english-prea1-curriculum.sql",
        "UNION ALL SELECT 110,'communication','simple-messages','prea1-en-ready-for-a1'",
        "UNION ALL SELECT 65,'foundations','introductions','prea1-en-about-me','About Me',\n         'Give very basic personal information about origin, age, feelings and family with short supported chunks.',2,\n         JSON_OBJECT('focus','personal_information','cefr_can_do',TRUE,'personalized',TRUE)\n  UNION ALL SELECT 75,'foundations','numbers','prea1-en-real-life-numbers','Numbers in Real Life',\n         'Use and recognize small numbers in phone numbers, prices, days and simple dates.',2,\n         JSON_OBJECT('focus','real_world_numbers','phone',TRUE,'prices',TRUE,'dates',TRUE)\n  UNION ALL SELECT 95,'communication','simple-messages','prea1-en-forms-signs','Forms & Signs',\n         'Read a few highly familiar form labels and public signs and fill a three-field personal-information form.',2,\n         JSON_OBJECT('focus','functional_reading_writing','visual_support',TRUE,'writing',TRUE)\n  UNION ALL SELECT 120,'communication','simple-messages','prea1-en-real-world-gate','Real-World Pre-A1 Check',\n         'Complete tiny real-world tasks with personal speaking, form writing, listening, visual reading and communication repair.',2,\n         JSON_OBJECT('focus','prea1_real_world_exit','personalized',TRUE,'writing',TRUE,'visual',TRUE,'repair',TRUE)\n  ")
    patch_seed(ROOT / "database/seed/german-prea1-curriculum.sql",
        "UNION ALL SELECT 110,'communication','simple-messages','prea1-de-ready-for-a1'",
        "UNION ALL SELECT 25,'foundations','introductions','prea1-de-about-me','Über mich',\n         'Give very basic personal information about origin, age, feelings and family with short German chunks.',2,\n         'Personal-information chunks are used before case or verb analysis.',\n         'نام، مبدأ، سن و حال ساده را با تکه‌های آماده و قابل‌استفاده یاد بگیر.'\n  UNION ALL SELECT 35,'foundations','numbers','prea1-de-real-life-numbers','Zahlen im Alltag',\n         'Recognize and use small numbers in phone numbers, prices, days and simple dates.',2,\n         'Numbers are practiced as useful information, not only as a list.',\n         'عددها را داخل شماره تلفن، قیمت و تاریخ تمرین کن.'\n  UNION ALL SELECT 75,'communication','simple-messages','prea1-de-forms-signs','Formulare und Schilder',\n         'Read a few highly familiar form labels and public signs and fill a three-field form.',2,\n         'Functional reading and writing stay short and visually supported.',\n         'هدف خواندن برای انجام کار است: فیلد فرم را پیدا کن، علامت خروج را بشناس و اطلاعات پایه را بنویس.'\n  UNION ALL SELECT 120,'communication','simple-messages','prea1-de-real-world-gate','Pre-A1 im Alltag',\n         'Complete tiny real-world tasks with personal speaking, form writing, listening, visual reading and repair.',2,\n         'The final gate is task-based rather than imitation-only.',\n         'در آزمون نهایی باید با اطلاعات خودت کار واقعی خیلی کوچکی انجام بدهی، نه فقط جملهٔ نمونه را تکرار کنی.'\n  ")
    patch_seed(ROOT / "database/seed/turkish-prea1-curriculum.sql",
        "UNION ALL SELECT 110,'communication','simple-messages','prea1-tr-ready-for-a1'",
        "UNION ALL SELECT 25,'foundations','introductions','prea1-tr-about-me','Benim hakkımda',\n         'Give very basic personal information about origin, age, feelings and family with short Turkish chunks.',2,\n         'Personal-information chunks are learned before suffix analysis.',\n         'نام، مبدأ، سن و حال ساده را با تکه‌های آماده و کاربردی یاد بگیر.'\n  UNION ALL SELECT 35,'foundations','numbers','prea1-tr-real-life-numbers','Günlük sayılar',\n         'Recognize and use small numbers in phone numbers, prices, days and simple dates.',2,\n         'Use transparent Turkish number forms inside real information.',\n         'عددها را در شماره تلفن، قیمت، روز و تاریخ به کار ببر.'\n  UNION ALL SELECT 75,'communication','simple-messages','prea1-tr-forms-signs','Formlar ve tabelalar',\n         'Read a few highly familiar form labels and public signs and fill a three-field form.',2,\n         'Functional reading uses highly transparent labels and signs.',\n         'فیلدهای سادهٔ فرم و تابلوهای کاربردی را برای انجام کار واقعی بخوان.'\n  UNION ALL SELECT 120,'communication','simple-messages','prea1-tr-real-world-gate','Gerçek hayat kontrolü',\n         'Complete tiny real-world tasks with personal speaking, form writing, listening, visual reading and repair.',2,\n         'The final gate checks successful communication, not suffix analysis.',\n         'در خروجی نهایی باید با اطلاعات خودت صحبت و نوشتن خیلی ساده انجام بدهی و اگر گیر کردی مکالمه را تعمیر کنی.'\n  ")
    patch_seed(ROOT / "database/seed/korean-prea1-curriculum.sql",
        "UNION ALL SELECT 110,'communication','simple-messages','prea1-ko-ready-for-a1'",
        "UNION ALL SELECT 25,'foundations','introductions','prea1-ko-about-me','나에 대해',\n         'Give very basic personal information about origin, age, feelings and family with polite Korean chunks.',2,\n         'Use polite personal-information chunks without requiring particle analysis.',\n         'اطلاعات خیلی پایهٔ شخصی را با تکه‌های مؤدبانه و آماده بیان کن.'\n  UNION ALL SELECT 35,'foundations','numbers','prea1-ko-real-life-numbers','생활 속 숫자',\n         'Recognize useful Sino-Korean numbers in phone numbers, prices, days and simple dates, plus one age chunk.',2,\n         'Keep the two Korean number systems explicit; this unit focuses on useful fixed patterns rather than full mastery.',\n         'کره‌ای دو دستگاه عددی دارد؛ اینجا فقط الگوهای ضروری شماره، قیمت و تاریخ را کاربردی تمرین کن.'\n  UNION ALL SELECT 75,'communication','simple-messages','prea1-ko-forms-signs','양식과 표지판',\n         'Read a few highly familiar form labels and public signs and fill a three-field form.',2,\n         'Functional Hangul reading moves from decoding blocks to completing a real task.',\n         'خواندن هانگول را به کار واقعی وصل کن: عنوان فرم، خروج و ورودی را تشخیص بده.'\n  UNION ALL SELECT 120,'communication','simple-messages','prea1-ko-real-world-gate','실생활 Pre-A1 확인',\n         'Complete tiny real-world tasks with personal speaking, form writing, listening, visual reading and repair.',2,\n         'The final gate checks task completion, not complete Hangul or grammar mastery.',\n         'در خروجی نهایی باید اطلاعات خودت را بگویی/بنویسی، اطلاعات کوتاه را بشنوی، نشانه را بخوانی و در صورت مشکل درخواست کمک کنی.'\n  ")


def main() -> None:
    for lang, c in LANGS.items():
        write_batch(lang, "about-me", make_about(lang, c))
        write_batch(lang, "real-life-numbers", make_numbers(lang, c))
        write_batch(lang, "forms-signs", make_forms(lang, c))
        write_batch(lang, "real-world-gate", make_gate(lang, c))
    patch_dialogues()
    patch_seeds()
    print(json.dumps({"languages": sorted(LANGS), "new_units_per_language": 4, "patched_quality_issues": 7}, ensure_ascii=False))


if __name__ == "__main__":
    main()
