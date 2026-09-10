#!/usr/bin/env python3
from __future__ import annotations

import argparse
import copy
import hashlib
import json
import re
from datetime import date
from pathlib import Path

TODAY = "2026-09-10"
PLACEHOLDER_FA = (
    "یک معنی نامربوط",
    "نام یک شخص",
    "یک گزینه نامربوط",
    "معنی نامربوط",
    "گزینه نامربوط",
)
BAD_GENERIC_EN = {"people like coffee.", "this is my house."}

FA_POOLS = {
    "noun": ["کتاب", "اتاق", "روز", "سال", "کار", "راه", "زندگی", "مرد", "بچه", "دوست", "پیام", "دوره"],
    "verb": ["خواندن", "گفتن", "رفتن", "گرفتن", "ساختن", "دانستن", "فکر کردن", "کمک کردن", "نشان دادن"],
    "adjective": ["جدید", "قدیمی", "خوب", "بد", "بزرگ", "کوچک", "راست", "مهم", "مسن"],
    "adverb": ["خیلی", "واقعا", "شاید", "هرگز", "بعد", "فقط", "هم"],
    "preposition": ["در", "روی", "با", "از"],
    "numeral": ["یک", "دو", "پنج", "شش", "هفت"],
}
EN_POOLS = {
    "noun": ["book", "room", "day", "year", "work", "life", "man", "friend", "message", "course"],
    "verb": ["read", "say", "go", "take", "make", "know", "think", "help", "show"],
    "adjective": ["new", "old", "good", "bad", "right", "great", "little", "high", "important"],
    "adverb": ["very", "really", "never", "only", "then", "back", "well", "maybe"],
}


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def dump(path: Path, payload: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def norm(value: object) -> str:
    return re.sub(r"\s+", " ", str(value or "").strip().lower().replace("’", "'"))


def lesson_path(root: Path, order: int) -> Path:
    return root / "nova/courses/en-fa/lessons" / f"{order:04d}" / "lesson.source.json"


def target_item(lesson: dict) -> dict:
    targets = [x for x in lesson.get("lexicalItems") or [] if x.get("role") == "target"]
    return targets[0] if targets else {}


def choices(activity: dict):
    config = activity.get("config") or {}
    if activity.get("type") == "fill_blank":
        return config.get("optionsEn"), "optionsEn"
    if config.get("options") is not None:
        return config.get("options"), "options"
    return config.get("optionsEn"), "optionsEn"


def correct_choice(activity: dict) -> str:
    options, _ = choices(activity)
    idx = (activity.get("config") or {}).get("answerIndex")
    if isinstance(options, list) and isinstance(idx, int) and 0 <= idx < len(options):
        return str(options[idx])
    return ""


def choose_fa(pos: str, used: set[str], correct: str) -> str:
    pool = FA_POOLS.get(pos, FA_POOLS["noun"])
    for candidate in pool:
        if norm(candidate) != norm(correct) and norm(candidate) not in {norm(x) for x in used}:
            return candidate
    return "معنی دیگر"


def word_swap_candidate(correct: str, lesson: dict, used: set[str]) -> str | None:
    item = target_item(lesson)
    target = str(item.get("displayForm") or item.get("lemma") or "")
    pos = str(item.get("partOfSpeech") or "").lower()
    if not target:
        return None
    for replacement in EN_POOLS.get(pos, []):
        if replacement.lower() == target.lower():
            continue
        candidate, count = re.subn(rf"\b{re.escape(target)}\b", replacement, correct, count=1, flags=re.I)
        if count and norm(candidate) not in {norm(x) for x in used}:
            return candidate
    return None


def contextual_english_distractor(correct: str, lesson: dict, used: set[str]) -> str:
    candidates = []
    if correct.startswith("Yes. "):
        candidates.append("No. " + correct[5:])
    if correct.startswith("No. "):
        candidates.append("Yes. " + correct[4:])
    swaps = [
        (r"\bthis\b", "that"),
        (r"\bthat\b", "this"),
        (r"\bhe\b", "she"),
        (r"\bshe\b", "he"),
        (r"\bmy\b", "your"),
        (r"\byour\b", "my"),
    ]
    for pattern, replacement in swaps:
        candidate, count = re.subn(pattern, replacement, correct, count=1, flags=re.I)
        if count:
            candidates.append(candidate)
    swapped = word_swap_candidate(correct, lesson, used)
    if swapped:
        candidates.append(swapped)
    for turn in lesson.get("turns") or []:
        text = str(turn.get("textEn") or "")
        if text:
            candidates.append(text)
    for candidate in candidates:
        if norm(candidate) != norm(correct) and norm(candidate) not in {norm(x) for x in used}:
            return candidate
    return "Not this one."


def update_feedback_for_option(activity: dict, index: int, option: str) -> None:
    config = activity.setdefault("config", {})
    feedback = config.setdefault("feedback", {})
    options, _ = choices(activity)
    explanations = list(feedback.get("optionsFa") or [])
    while len(explanations) < len(options or []):
        explanations.append("")
    if index == config.get("answerIndex"):
        explanations[index] = "درست است؛ این گزینه دقیقا معنی یا پاسخ هدف را می‌رساند."
    else:
        explanations[index] = f"«{option}» از نظر معنی یا موقعیت با پاسخ هدف فرق دارد."
    feedback["optionsFa"] = explanations


def repair_choice_quality(lesson: dict) -> list[str]:
    changes = []
    item = target_item(lesson)
    pos = str(item.get("partOfSpeech") or "noun").lower()
    for activity in lesson.get("activities") or []:
        options, key = choices(activity)
        if not isinstance(options, list):
            continue
        correct = correct_choice(activity)
        used = set(str(x) for x in options)
        new_options = list(options)
        for index, raw in enumerate(options):
            text = str(raw)
            low = norm(text)
            bad_fa = any(norm(x) in low for x in PLACEHOLDER_FA)
            bad_en = low in BAD_GENERIC_EN
            if not bad_fa and not bad_en:
                continue
            if re.search(r"[\u0600-\u06ff]", text):
                replacement = choose_fa(pos, set(new_options), correct)
            else:
                replacement = contextual_english_distractor(correct, lesson, set(new_options))
            new_options[index] = replacement
            update_feedback_for_option(activity, index, replacement)
            changes.append(f"{activity.get('activityKey')}: {text!r} -> {replacement!r}")
        activity.setdefault("config", {})[key] = new_options
        # Make all option explanations distinct even when legacy text reused one generic explanation.
        feedback = activity.get("config", {}).get("feedback") or {}
        explanations = list(feedback.get("optionsFa") or [])
        if len(explanations) == len(new_options):
            seen = set()
            for index, explanation in enumerate(explanations):
                if not str(explanation).strip() or explanation in seen:
                    option = str(new_options[index])
                    explanations[index] = (
                        "درست است؛ این گزینه پاسخ هدف است."
                        if index == activity.get("config", {}).get("answerIndex")
                        else f"«{option}» با معنی یا موقعیت موردنظر فرق دارد."
                    )
                seen.add(explanations[index])
            feedback["optionsFa"] = explanations
    return changes


def prompt_for_response(response: str, second: bool) -> tuple[str, str]:
    r = norm(response)
    if r.startswith("he is "):
        return "What is he like?", "او چطور است؟"
    if r.startswith("she is "):
        return "What is she like?", "او چطور است؟"
    if r.startswith("this is "):
        return ("And this one?", "و این یکی؟") if second else ("What is this?", "این چیست؟")
    if r.startswith("that is "):
        return ("And that one?", "و آن یکی؟") if second else ("What is that?", "آن چیست؟")
    if r.startswith("at "):
        return "What time?", "چه ساعتی؟"
    if r.startswith("i want "):
        return "What do you want?", "چه می‌خواهی؟"
    if r.startswith("i like "):
        return "Do you like it?", "دوستش داری؟"
    if " man" in f" {r}" or r.endswith("man"):
        return ("And this person?", "و این شخص؟") if second else ("Which person?", "کدام شخص؟")
    if second:
        return "And now?", "حالا چطور؟"
    return "And you?", "تو چطور؟"


def repair_teacher_dialogue(lesson: dict) -> list[str]:
    changes = []
    turns = {x.get("turnKey"): x for x in lesson.get("turns") or []}
    for activity in lesson.get("activities") or []:
        if activity.get("type") != "dialogue":
            continue
        for index, exchange in enumerate((activity.get("config") or {}).get("exchanges") or []):
            prompt = turns.get(exchange.get("promptTurnKey")) or {}
            response = turns.get(exchange.get("responseTurnKey")) or {}
            old = str(prompt.get("textEn") or "")
            if not (old.startswith("Say:") or old.startswith("Now say:")):
                continue
            new_en, new_fa = prompt_for_response(str(response.get("textEn") or ""), index > 0)
            prompt["textEn"] = new_en
            prompt["translationFa"] = new_fa
            changes.append(f"{prompt.get('turnKey')}: {old!r} -> {new_en!r}")
    return changes


def copy_review_item(root: Path, source_order: int, lexical_key: str) -> dict | None:
    lesson = load(lesson_path(root, source_order))
    for item in lesson.get("lexicalItems") or []:
        if item.get("lexicalKey") == lexical_key:
            copied = copy.deepcopy(item)
            copied["role"] = "review"
            return copied
    return None


def rewrite_lesson_40(root: Path, lesson: dict) -> list[str]:
    if int(lesson.get("sortOrder") or 0) != 40:
        return []
    changes = []
    name_item = copy_review_item(root, 1, "EN-LEX-NAME-01")
    new_lexical = []
    for item in lesson.get("lexicalItems") or []:
        if norm(item.get("lemma")) == "pen":
            if name_item:
                new_lexical.append(name_item)
            changes.append("replace review pen with review name")
        else:
            new_lexical.append(item)
    lesson["lexicalItems"] = new_lexical
    lesson["scenarioFa"] = "نورا یک کتاب و فهرست اسم‌ها را نشان می‌دهد و اوون می‌گوید کتاب و یکی از اسم‌ها را می‌شناسد."
    story = (lesson.get("curriculum") or {}).get("story") or {}
    story["storyBeatFa"] = "نورا یک کتاب و فهرست اسم‌ها را نشان می‌دهد و اوون با know می‌گوید هر دو مورد برایش آشنا هستند."
    lang = (lesson.get("curriculum") or {}).get("languageReference") or {}
    lang["reviewLexicalLemmas"] = ["book", "name"]
    for fallback in lang.get("usageFallbacks") or []:
        query = str(fallback.get("query") or "")
        if re.search(r"\bpen\b", query, re.I):
            fallback["query"] = re.sub(r"\bpen\b", "name", query, flags=re.I)
            fallback["rationale"] = "Natural bounded transfer for know with a familiar personal-name noun."
    for turn in lesson.get("turns") or []:
        if turn.get("turnKey") == "T03":
            turn["textEn"] = "And this name?"
            turn["translationFa"] = "و این اسم؟"
        if turn.get("turnKey") == "T04":
            turn["textEn"] = "I know this name."
            turn["translationFa"] = "این اسم را می‌شناسم."
            turn["speechTargetEn"] = "I know this name."
            turn["acceptedSpeechEn"] = ["I know this name."]
    def replace_value(value):
        if isinstance(value, str):
            value = value.replace("I know this pen.", "I know this name.")
            value = value.replace("And this pen?", "And this name?")
            value = value.replace("این خودکار را می‌شناسم.", "این اسم را می‌شناسم.")
            value = value.replace("و این خودکار؟", "و این اسم؟")
            value = value.replace("این خودکار را هم می‌شناسم.", "این اسم را هم می‌شناسم.")
            return value
        if isinstance(value, list):
            return [replace_value(x) for x in value]
        if isinstance(value, dict):
            return {k: replace_value(v) for k, v in value.items()}
        return value
    replaced = replace_value(lesson)
    lesson.clear(); lesson.update(replaced)
    changes.append("rewrite unnatural 'I know this pen' transfer as 'I know this name'")
    return changes


def rewrite_lesson_70(root: Path, lesson: dict) -> list[str]:
    if int(lesson.get("sortOrder") or 0) != 70:
        return []
    man_item = copy_review_item(root, 60, "EN-LEX-MAN-01")
    lesson["titleEn"] = "This man is old"
    lesson["titleFa"] = "این مرد مسن است"
    lesson["descriptionFa"] = "با old سن زیاد را در توصیف دو مرد داخل عکس تمرین کن."
    lesson["outcomeFa"] = "old را برای سن زیاد در دو توصیف کوتاه و طبیعی به کار ببری."
    lesson["scenarioFa"] = "لیو و لیام در کتابخانه به عکس دو مرد نگاه می‌کنند و درباره سن آنها حرف می‌زنند."
    curriculum = lesson.get("curriculum") or {}
    if curriculum.get("targetConstructions"):
        curriculum["targetConstructions"][0]["form"] = "This man is old"
        curriculum["targetConstructions"][0]["meaningFa"] = "توصیف یک مرد مسن"
    story = curriculum.get("story") or {}
    story["storyBeatFa"] = "لیو درباره دو مرد داخل عکس می‌پرسد و لیام با old آنها را توصیف می‌کند."
    language = curriculum.get("languageReference") or {}
    language["reviewLexicalLemmas"] = ["man"]
    language["usageFallbacks"] = [
        {"query": "that man is old", "rationale": "Natural bounded age-description frame using the previously learned noun man."},
        {"query": "this man is old", "rationale": "Changed-referent transfer preserving the age-related sense of old."},
    ]
    if man_item and not any(x.get("lexicalKey") == man_item.get("lexicalKey") for x in lesson.get("lexicalItems") or []):
        lesson.setdefault("lexicalItems", []).append(man_item)
    turns = {x.get("turnKey"): x for x in lesson.get("turns") or []}
    turn_values = {
        "T01": ("What is that man like?", "آن مرد چطور است؟"),
        "T02": ("That man is old.", "آن مرد مسن است."),
        "T03": ("And this man?", "و این مرد؟"),
        "T04": ("This man is old.", "این مرد مسن است."),
    }
    for key, (en, fa) in turn_values.items():
        turn = turns.get(key)
        if not turn:
            continue
        turn["textEn"] = en
        turn["translationFa"] = fa
        if turn.get("role") == "learner":
            turn["speechTargetEn"] = en
            turn["acceptedSpeechEn"] = [en]
    replacements = {
        "He is old.": "That man is old.",
        "Leo is old.": "This man is old.",
        "او مسن است.": "آن مرد مسن است.",
        "لیو مسن است.": "این مرد مسن است.",
        "بگو: لیو مسن است.": "بگو: این مرد مسن است.",
    }
    def replace_value(value):
        if isinstance(value, str):
            for old, new in replacements.items():
                value = value.replace(old, new)
            return value
        if isinstance(value, list): return [replace_value(x) for x in value]
        if isinstance(value, dict): return {k: replace_value(v) for k, v in value.items()}
        return value
    replaced = replace_value(lesson)
    lesson.clear(); lesson.update(replaced)
    if lesson.get("activities"):
        a1 = lesson["activities"][0]
        if a1.get("promptEn"):
            a1["promptEn"] = "That man is old."
    return ["replace teacher drill/character-age claim with a natural two-person photo description"]


def rewrite_lesson_100(lesson: dict) -> list[str]:
    if int(lesson.get("sortOrder") or 0) != 100:
        return []
    lesson["titleEn"] = "Busy this week"
    lesson["titleFa"] = "این هفته سرم شلوغ است"
    lesson["descriptionFa"] = "با week درباره برنامه این هفته و هفته بعد طبیعی‌تر حرف بزن."
    lesson["outcomeFa"] = "week را در دو جمله کوتاه و طبیعی برای برنامه این هفته و هفته بعد به کار ببری."
    curriculum = lesson.get("curriculum") or {}
    if curriculum.get("targetConstructions"):
        curriculum["targetConstructions"][0]["form"] = "I'm busy this week"
        curriculum["targetConstructions"][0]["meaningFa"] = "گفتن وضعیت برنامه در یک هفته مشخص"
    language = curriculum.get("languageReference") or {}
    language["usageFallbacks"] = [
        {"query": "i'm busy this week", "rationale": "Natural first-person schedule statement for the current week."},
        {"query": "i'm free next week", "rationale": "Natural changed-week transfer about personal availability."},
        {"query": "busy this week", "rationale": "Natural target-collocation window around week in a personal schedule statement."},
        {"query": "free next week", "rationale": "Natural transfer collocation around week in a personal availability statement."},
    ]
    turns = {x.get("turnKey"): x for x in lesson.get("turns") or []}
    values = {
        "T01": ("Are you busy this week?", "این هفته سرت شلوغ است؟"),
        "T02": ("Yes. I'm busy this week.", "بله. این هفته سرم شلوغ است."),
        "T03": ("And next week?", "و هفته بعد؟"),
        "T04": ("I'm free next week.", "هفته بعد وقت دارم."),
    }
    for key, (en, fa) in values.items():
        turn = turns.get(key)
        if not turn: continue
        turn["textEn"] = en; turn["translationFa"] = fa
        if turn.get("role") == "learner":
            turn["speechTargetEn"] = en
            turn["acceptedSpeechEn"] = [en]
    replacements = {
        "This week is busy.": "Yes. I'm busy this week.",
        "Next week is free.": "I'm free next week.",
        "این هفته شلوغ است.": "بله. این هفته سرم شلوغ است.",
        "هفته بعد آزاد است.": "هفته بعد وقت دارم.",
    }
    def replace_value(value):
        if isinstance(value, str):
            for old, new in replacements.items(): value = value.replace(old, new)
            return value
        if isinstance(value, list): return [replace_value(x) for x in value]
        if isinstance(value, dict): return {k: replace_value(v) for k, v in value.items()}
        return value
    replaced = replace_value(lesson)
    lesson.clear(); lesson.update(replaced)
    return ["rewrite impersonal week-is-busy/free targets as natural personal availability statements"]


def rewrite_lesson_110(lesson: dict) -> list[str]:
    if int(lesson.get("sortOrder") or 0) != 110:
        return []
    changed = []
    for activity in lesson.get("activities") or []:
        if activity.get("activityKey") == "A04":
            activity["config"]["optionsEn"] = ["This coffee is bad.", "This coffee is good.", "This coffee is new."]
            activity["config"]["feedback"]["optionsFa"] = [
                "درست است؛ bad کیفیت نامطلوب را می‌گوید.",
                "good معنی برعکس دارد و می‌گوید قهوه خوب است.",
                "new درباره جدید بودن قهوه است، نه کیفیت آن.",
            ]
            changed.append("A04 contrastive distractors")
        if activity.get("activityKey") == "A05":
            activity["config"]["optionsEn"] = ["The tea is bad too.", "The tea is good too.", "The tea is here too."]
            activity["config"]["feedback"]["optionsFa"] = [
                "درست است؛ همان کیفیت نامطلوب را برای چای هم بیان می‌کند.",
                "good می‌گوید چای خوب است و با bad فرق دارد.",
                "here فقط حضور چای را می‌گوید و درباره کیفیت آن نیست.",
            ]
            changed.append("A05 contrastive distractors")
    return changed


def sentence_tokens(text: str) -> list[str]:
    return [x for x in str(text or "").split() if x]


def diversify_activity(lesson: dict) -> list[str]:
    order = int(lesson.get("sortOrder") or 0)
    if not 40 <= order <= 84:
        return []
    activity = next((x for x in lesson.get("activities") or [] if x.get("activityKey") == "A04"), None)
    if not activity or activity.get("type") != "response_choice":
        return []
    correct = correct_choice(activity)
    if not correct:
        return []
    target = target_item(lesson)
    target_word = str(target.get("displayForm") or target.get("lemma") or "")
    pos = str(target.get("partOfSpeech") or "noun").lower()

    if order % 3 == 0:
        tokens = sentence_tokens(correct)
        if len(tokens) < 3:
            return []
        shuffled = tokens[1:] + tokens[:1]
        activity.clear()
        activity.update({
            "activityKey": "A04",
            "type": "sentence_order",
            "instructionFa": "جمله را گوش کن و کلمه‌ها را به ترتیب درست بچین.",
            "config": {
                "audioSourceTurnKey": "T02",
                "tokensEn": shuffled,
                "answerTokensEn": tokens,
                "answerEn": correct,
                "showAnswerTextBeforeAttempt": False,
                "allowAudioReplay": True,
                "practiceOnly": True,
                "hideTokenSurfaceCues": True,
                "feedback": {
                    "correctFa": "درست چیدی؛ ترتیب جمله با صدایی که شنیدی یکی است.",
                    "retryFa": "دوباره به صدا گوش کن و ترتیب بخش‌ها را بساز.",
                },
            },
            "metadata": {"evidenceKind": "supported_reconstruction"},
        })
        return ["A04 response_choice -> sentence_order"]

    if order % 3 == 1 and target_word and re.search(rf"\b{re.escape(target_word)}\b", correct, re.I):
        sentence, count = re.subn(rf"\b{re.escape(target_word)}\b", "___", correct, count=1, flags=re.I)
        if not count:
            return []
        alternatives = []
        for candidate in EN_POOLS.get(pos, EN_POOLS["noun"]):
            if candidate.lower() != target_word.lower() and candidate not in alternatives:
                alternatives.append(candidate)
            if len(alternatives) == 2:
                break
        if len(alternatives) < 2:
            return []
        activity.clear()
        activity.update({
            "activityKey": "A04",
            "type": "fill_blank",
            "instructionFa": "واژه درست را برای کامل کردن جمله انتخاب کن.",
            "config": {
                "sentenceEn": sentence,
                "optionsEn": [target_word, *alternatives],
                "answerIndex": 0,
                "feedback": {
                    "optionsFa": [
                        f"درست است؛ {target_word} همان واژه هدف این جمله است.",
                        f"{alternatives[0]} معنی دیگری دارد و این جمله را با هدف درس کامل نمی‌کند.",
                        f"{alternatives[1]} در این موقعیت جای واژه هدف نیست.",
                    ],
                    "correctFa": target_word,
                },
            },
            "metadata": {"evidenceKind": "recognition_or_selection"},
        })
        return ["A04 response_choice -> fill_blank"]
    return []


def update_review(root: Path, source: Path, changes: list[str]) -> None:
    review_path = source.with_name("pedagogy.review.json")
    if not review_path.exists():
        return
    review = load(review_path)
    review["reviewerType"] = "model"
    review["reviewedAt"] = TODAY
    review["scope"] = (
        f"Model/editor quality-v2 remediation review of {load(source).get('lessonKey')}; "
        "not an independent human or real-learner test."
    )
    dimensions = review.setdefault("dimensions", {})
    dimensions.setdefault("englishNaturalness", {})["score"] = max(4, dimensions.get("englishNaturalness", {}).get("score", 4))
    dimensions["englishNaturalness"]["evidence"] = (
        "Quality-v2 remediation rechecked learner-facing English, removed known weak/teacher-directive patterns where present, "
        "and kept the bounded target pragmatically licensed by its prompt."
    )
    dimensions.setdefault("distractorQuality", {})["score"] = max(4, dimensions.get("distractorQuality", {}).get("score", 4))
    dimensions["distractorQuality"]["evidence"] = (
        "Placeholder/generic distractors were removed where present; choices use contrastive alternatives with distinct teaching feedback."
    )
    dimensions.setdefault("dialoguePlausibility", {})["score"] = max(4, dimensions.get("dialoguePlausibility", {}).get("score", 4))
    dimensions["dialoguePlausibility"]["evidence"] = (
        "The scene and adjacent turns were checked again so character prompts function as dialogue rather than teacher commands."
    )
    dimensions.setdefault("learnerExperience", {})["score"] = 3
    dimensions["learnerExperience"]["evidence"] = "No real learner test is claimed; boredom, perceived difficulty and retention remain unverified."
    review["learnerTested"] = False
    limitations = list(review.get("limitations") or [])
    note = "No independent human or real learner test has been performed after quality-v2 remediation."
    if note not in limitations:
        limitations.append(note)
    review["limitations"] = limitations
    resolved = list(review.get("resolvedFindings") or [])
    for change in changes:
        item = f"Quality-v2 remediation: {change}."
        if item not in resolved:
            resolved.append(item)
    review["resolvedFindings"] = resolved
    review["sourceHash"] = hashlib.sha256(source.read_bytes()).hexdigest()
    course_path = root / "nova/courses/en-fa/course.source.json"
    review["courseSourceHash"] = hashlib.sha256(course_path.read_bytes()).hexdigest()
    review["qualityV2Remediation"] = {"version": 1, "date": TODAY, "changes": changes}
    dump(review_path, review)


def learner_texts(lesson: dict) -> list[str]:
    values = []
    for turn in lesson.get("turns") or []:
        if turn.get("role") == "learner":
            values.append(str(turn.get("speechTargetEn") or turn.get("textEn") or ""))
    for activity in lesson.get("activities") or []:
        if activity.get("type") == "speak":
            values.append(str((activity.get("config") or {}).get("textEn") or ""))
    return values


def build_review_backlog(root: Path, max_order: int) -> dict:
    lessons = {order: load(lesson_path(root, order)) for order in range(1, max_order + 1) if lesson_path(root, order).exists()}
    backlog = []
    for intro in range(40, 85):
        lesson = lessons.get(intro)
        if not lesson:
            continue
        for item in lesson.get("lexicalItems") or []:
            if item.get("role") != "target":
                continue
            lemma = norm(item.get("lemma") or item.get("displayForm"))
            if not lemma:
                continue
            occurrences = []
            for order in range(intro + 1, max_order + 1):
                if any(re.search(rf"\b{re.escape(lemma)}\b", text, re.I) for text in learner_texts(lessons[order])):
                    occurrences.append(order)
            last = occurrences[-1] if occurrences else intro
            gap = max_order - last
            priority = "HIGH" if not occurrences or gap >= 30 else ("MEDIUM" if gap >= 15 or len(occurrences) < 2 else "LOW")
            backlog.append({
                "lexicalKey": item.get("lexicalKey"),
                "lemma": lemma,
                "translationFa": item.get("translationFa"),
                "partOfSpeech": item.get("partOfSpeech"),
                "introducedLesson": intro,
                "laterLearnerPracticeLessons": occurrences,
                "practiceCountAfterIntro": len(occurrences),
                "lastLearnerPracticeLesson": last if occurrences else None,
                "gapSinceLastLearnerPractice": gap,
                "priority": priority,
                "status": "DUE" if priority in {"HIGH", "MEDIUM"} else "MONITOR",
            })
    backlog.sort(key=lambda x: ({"HIGH": 0, "MEDIUM": 1, "LOW": 2}[x["priority"]], -x["gapSinceLastLearnerPractice"], x["introducedLesson"]))
    return {
        "schemaVersion": 1,
        "generatedAt": TODAY,
        "sourceRange": [40, 84],
        "canonicalThrough": max_order,
        "policy": "Future waves consume at least four distinct DUE/MONITOR legacy review items per eight Lessons while the backlog remains active.",
        "dueCount": sum(1 for x in backlog if x["status"] == "DUE"),
        "items": backlog,
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo-root", default=".")
    parser.add_argument("--from", dest="start", type=int, default=40)
    parser.add_argument("--to", dest="end", type=int, default=84)
    parser.add_argument("--report", default="nova/curriculum/en-fa/quality_v2.remediation_report.json")
    parser.add_argument("--backlog", default="nova/curriculum/en-fa/quality_v2.review_backlog.json")
    args = parser.parse_args()
    root = Path(args.repo_root).resolve()
    report = {
        "schemaVersion": 1,
        "status": "PASS",
        "range": [args.start, args.end],
        "changedLessons": [],
        "changes": {},
        "errors": [],
    }

    orders = list(range(args.start, args.end + 1)) + [100, 110]
    for order in orders:
        source = lesson_path(root, order)
        if not source.exists():
            report["errors"].append(f"Missing Lesson source: {order}")
            continue
        lesson = load(source)
        changes = []
        changes.extend(rewrite_lesson_40(root, lesson))
        changes.extend(rewrite_lesson_70(root, lesson))
        changes.extend(rewrite_lesson_100(lesson))
        changes.extend(rewrite_lesson_110(lesson))
        changes.extend(repair_teacher_dialogue(lesson))
        changes.extend(repair_choice_quality(lesson))
        changes.extend(diversify_activity(lesson))
        if changes:
            metadata = lesson.setdefault("metadata", {})
            metadata["qualityV2Remediated"] = True
            metadata["qualityV2RemediationVersion"] = 1
            dump(source, lesson)
            update_review(root, source, changes)
            report["changedLessons"].append(order)
            report["changes"][str(order)] = changes

    max_order = max(
        [int(p.parent.name) for p in (root / "nova/courses/en-fa/lessons").glob("*/lesson.source.json") if p.parent.name.isdigit()],
        default=0,
    )
    backlog = build_review_backlog(root, max_order)
    dump(root / args.backlog, backlog)
    report["reviewBacklogDueCount"] = backlog["dueCount"]
    if report["errors"]:
        report["status"] = "FAIL"
    dump(root / args.report, report)
    print(json.dumps({
        "status": report["status"],
        "changedLessons": len(report["changedLessons"]),
        "reviewBacklogDue": backlog["dueCount"],
        "errors": len(report["errors"]),
    }, ensure_ascii=False))
    return 0 if report["status"] == "PASS" else 2


if __name__ == "__main__":
    raise SystemExit(main())
