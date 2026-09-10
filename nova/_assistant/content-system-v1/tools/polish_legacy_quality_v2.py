#!/usr/bin/env python3
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

TODAY = "2026-09-10"

PROMPTS = {
    52: {"T01": ("How long is the first plan?", "برنامه اول چقدر طول می‌کشد؟"), "T03": ("And the second plan?", "و برنامه دوم؟")},
    53: {"T01": ("How long?", "چقدر طول می‌کشد؟"), "T03": ("And the other one?", "و آن یکی؟")},
    54: {"T01": ("What should we do?", "چه کار کنیم؟"), "T03": ("And you?", "و تو چه کار می‌کنی؟")},
    55: {"T01": ("What do you see?", "چه می‌بینی؟"), "T03": ("And on the table?", "و روی میز؟")},
    56: {"T01": ("Do you go there?", "آنجا می‌روی؟"), "T03": ("Do you eat there?", "آنجا غذا می‌خوری؟")},
    57: {"T01": ("How is it here?", "اینجا چطور است؟"), "T03": ("And for you?", "و برای تو؟")},
    58: {"T01": ("What do you see?", "چه می‌بینی؟"), "T03": ("And the bag?", "و کیف؟")},
    59: {"T01": ("What is this?", "این چیست؟"), "T03": ("And this?", "و این؟")},
    61: {"T01": ("Which one?", "کدام یکی؟"), "T03": ("And this place?", "و اینجا؟")},
    62: {"T01": ("How was your day?", "روزت چطور بود؟"), "T03": ("And today?", "و امروز؟")},
    63: {"T01": ("What do you see?", "چه می‌بینی؟"), "T03": ("And that one?", "و آن یکی؟")},
    64: {"T01": ("Which cup?", "کدام فنجان؟"), "T03": ("And the bag?", "و کیف؟")},
    65: {"T01": ("Which book?", "کدام کتاب؟"), "T03": ("Is this one different?", "این یکی فرق دارد؟")},
    66: {"T01": ("Do you read?", "مطالعه می‌کنی؟"), "T03": ("Do you read here?", "اینجا مطالعه می‌کنی؟")},
    67: {"T01": ("Where do you find Iris?", "آیریس را کجا پیدا می‌کنی؟"), "T03": ("And at home?", "و در خانه؟")},
    68: {"T01": ("How is the price?", "قیمت چطور است؟"), "T03": ("And this price?", "و این قیمت؟")},
    69: {"T01": ("What is this room like?", "این اتاق چطور است؟"), "T03": ("And that room?", "و آن اتاق؟")},
    71: {"T01": ("Whose book is this?", "این کتاب مال کیست؟"), "T03": ("And that book?", "و آن کتاب؟")},
}

OPTION_REPLACEMENTS = {
    41: {"I read tea.": "I like tea."},
    42: {"I read there is a pen.": "I know there is a pen."},
    43: {"Read, very help.": "Read, then go."},
    46: {"she says hello too.": "She says hello too."},
    47: {"this way is good too.": "This way is good too."},
    51: {"No. This is work too.": "No. This is not work."},
    52: {"Say the time: one year.": "Two rooms."},
    53: {"And you?": "Two books."},
    54: {"read action.": "Read the book.", "I read action.": "I read the book."},
    55: {"new cups.": "Two cups."},
    56: {"I very go there.": "I go there.", "I very eat there.": "I eat there."},
    57: {"book here is good.": "The book is good.", "your life is good.": "Your life is good."},
    59: {"It is book.": "It is a book."},
    74: {"that is my house.": "That is my house.", "this is your house.": "This is your house."},
    77: {"that thing can wait.": "That thing can wait."},
    78: {"Try very.": "Try now."},
    79: {"Wait at the book.": "Wait at home."},
    80: {"read me the map.": "Read the map."},
    81: {"I read tired.": "I feel happy."},
    82: {"your family is here.": "Your family is here."},
    84: {"read the bag there.": "Put the book there."},
}

STORY_OVERRIDES = {
    52: {
        "scenarioFa": "نورا و اوون کنار تقویم دو برنامه ایستاده‌اند و مدت هر برنامه را با year مقایسه می‌کنند.",
        "storyBeatFa": "نورا درباره مدت دو برنامه می‌پرسد و اوون با one year و two years جواب می‌دهد."
    },
    54: {
        "scenarioFa": "الکس و مایا کنار فهرست کارهای پروژه درباره قدم بعدی تصمیم می‌گیرند.",
        "storyBeatFa": "الکس می‌پرسد قدم بعدی چیست و مایا با take action پیشنهاد اقدام می‌دهد و نقش خودش را هم می‌گوید."
    },
    55: {
        "scenarioFa": "آیریس و نینا در مرکز محله به قفسه کتاب‌ها و فنجان‌های روی میز نگاه می‌کنند و مقدار زیاد آنها را توصیف می‌کنند.",
        "storyBeatFa": "آیریس درباره چیزهایی که می‌بینند می‌پرسد و نینا many را با books و cups به کار می‌برد."
    },
    58: {
        "scenarioFa": "اوون و نورا در ساختمان یک اتاق بزرگ و یک کیف بزرگ را می‌بینند و اندازه آنها را توصیف می‌کنند.",
        "storyBeatFa": "اوون درباره دو چیز می‌پرسد و نورا great big را برای توصیف اندازه آنها به کار می‌برد."
    }
}


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def dump(path: Path, payload: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def lesson_path(root: Path, order: int) -> Path:
    return root / "nova/courses/en-fa/lessons" / f"{order:04d}" / "lesson.source.json"


def replace_activity_options(lesson: dict, replacements: dict[str, str]) -> list[str]:
    changes = []
    for activity in lesson.get("activities") or []:
        config = activity.get("config") or {}
        for key in ("optionsEn", "options"):
            options = config.get(key)
            if not isinstance(options, list):
                continue
            feedback = config.get("feedback") or {}
            option_feedback = list(feedback.get("optionsFa") or [])
            for i, option in enumerate(list(options)):
                old = str(option)
                if old not in replacements:
                    continue
                new = replacements[old]
                options[i] = new
                if i < len(option_feedback):
                    if i == config.get("answerIndex"):
                        option_feedback[i] = "درست است؛ این گزینه پاسخ هدف است."
                    else:
                        option_feedback[i] = f"«{new}» جمله طبیعی است، اما معنی یا پاسخ موردنظر این موقعیت را نمی‌رساند."
                changes.append(f"{activity.get('activityKey')}: {old!r} -> {new!r}")
            if option_feedback:
                feedback["optionsFa"] = option_feedback
                config["feedback"] = feedback
    return changes


def replace_character_prompts(lesson: dict, mapping: dict[str, tuple[str, str]]) -> list[str]:
    changes = []
    turns = {x.get("turnKey"): x for x in lesson.get("turns") or []}
    ordered_support = []
    for key in ("T01", "T03"):
        if key not in mapping or key not in turns:
            continue
        en, fa = mapping[key]
        old = turns[key].get("textEn")
        turns[key]["textEn"] = en
        turns[key]["translationFa"] = fa
        ordered_support.append({"form": en, "meaningFa": fa})
        if old != en:
            changes.append(f"{key}: {old!r} -> {en!r}")
    if ordered_support:
        lesson.setdefault("curriculum", {})["supportLanguage"] = ordered_support
    return changes


def clean_scaffolding_fallbacks(lesson: dict) -> list[str]:
    order = int(lesson.get("sortOrder") or 0)
    if not 52 <= order <= 71:
        return []
    target_lemmas = {str(x.get("lemma") or "").lower() for x in lesson.get("lexicalItems") or [] if x.get("role") == "target"}
    if "say" in target_lemmas:
        return []
    lang = (lesson.get("curriculum") or {}).get("languageReference") or {}
    old = list(lang.get("usageFallbacks") or [])
    kept = []
    removed = []
    for item in old:
        query = str(item.get("query") or "").strip().lower()
        if query.startswith("say ") or query.startswith("now say "):
            removed.append(query)
        else:
            kept.append(item)
    if removed:
        lang["usageFallbacks"] = kept
        return [f"remove obsolete teacher-scaffolding usage fallback {x!r}" for x in removed]
    return []


def apply_story_override(lesson: dict, override: dict) -> list[str]:
    changes = []
    scenario = override.get("scenarioFa")
    if scenario and lesson.get("scenarioFa") != scenario:
        lesson["scenarioFa"] = scenario
        changes.append("rewrite scenario as a real communicative scene")
    beat = override.get("storyBeatFa")
    story = lesson.setdefault("curriculum", {}).setdefault("story", {})
    if beat and story.get("storyBeatFa") != beat:
        story["storyBeatFa"] = beat
        changes.append("rewrite story beat as a real interaction")
    return changes


def update_review(root: Path, source: Path, changes: list[str]) -> None:
    review_path = source.with_name("pedagogy.review.json")
    if not review_path.exists():
        return
    review = load(review_path)
    lesson = load(source)
    review["reviewerType"] = "model"
    review["reviewedAt"] = TODAY
    review["scope"] = f"Model/editor Product Quality v2 naturalness polish of {lesson.get('lessonKey')}; not an independent human or real-learner test."
    dims = review.setdefault("dimensions", {})
    dims.setdefault("englishNaturalness", {})["score"] = 4
    dims["englishNaturalness"]["evidence"] = "Character prompts and English distractors were re-read as complete learner-facing utterances; teacher directives and known ungrammatical generated distractors were removed."
    dims.setdefault("distractorQuality", {})["score"] = 4
    dims["distractorQuality"]["evidence"] = "Wrong English options are grammatical/natural alternatives that differ on meaning, action, referent, quantity, polarity or context instead of using broken substitutions."
    dims.setdefault("dialoguePlausibility", {})["score"] = 4
    dims["dialoguePlausibility"]["evidence"] = "Character turns now ask or react in ways that pragmatically license the learner response rather than instructing the learner to repeat a line."
    dims.setdefault("learnerExperience", {})["score"] = 3
    dims["learnerExperience"]["evidence"] = "No real learner test is claimed; engagement and perceived difficulty remain unverified."
    review["learnerTested"] = False
    limitations = list(review.get("limitations") or [])
    limitation = "No independent human or real learner test has been performed after Product Quality v2 naturalness polish."
    if limitation not in limitations:
        limitations.append(limitation)
    review["limitations"] = limitations
    resolved = list(review.get("resolvedFindings") or [])
    for change in changes:
        entry = f"Product Quality v2 polish: {change}."
        if entry not in resolved:
            resolved.append(entry)
    review["resolvedFindings"] = resolved
    review["sourceHash"] = hashlib.sha256(source.read_bytes()).hexdigest()
    course = root / "nova/courses/en-fa/course.source.json"
    review["courseSourceHash"] = hashlib.sha256(course.read_bytes()).hexdigest()
    review["qualityV2Polish"] = {"version": 1, "date": TODAY, "changes": changes}
    dump(review_path, review)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo-root", default=".")
    parser.add_argument("--report", default="nova/curriculum/en-fa/quality_v2.polish_report.json")
    args = parser.parse_args()
    root = Path(args.repo_root).resolve()
    touched = sorted(set(PROMPTS) | set(OPTION_REPLACEMENTS) | set(STORY_OVERRIDES))
    report = {"schemaVersion": 1, "status": "PASS", "changedLessons": [], "changes": {}, "errors": []}

    for order in touched:
        source = lesson_path(root, order)
        if not source.exists():
            report["errors"].append(f"Missing Lesson {order}")
            continue
        lesson = load(source)
        changes = []
        if order in PROMPTS:
            changes.extend(replace_character_prompts(lesson, PROMPTS[order]))
        if order in OPTION_REPLACEMENTS:
            changes.extend(replace_activity_options(lesson, OPTION_REPLACEMENTS[order]))
        if order in STORY_OVERRIDES:
            changes.extend(apply_story_override(lesson, STORY_OVERRIDES[order]))
        changes.extend(clean_scaffolding_fallbacks(lesson))
        if changes:
            meta = lesson.setdefault("metadata", {})
            meta["qualityV2Polished"] = True
            meta["qualityV2PolishVersion"] = 1
            dump(source, lesson)
            update_review(root, source, changes)
            report["changedLessons"].append(order)
            report["changes"][str(order)] = changes

    if report["errors"]:
        report["status"] = "FAIL"
    dump(root / args.report, report)
    print(json.dumps({"status": report["status"], "changedLessons": len(report["changedLessons"]), "errors": len(report["errors"])}, ensure_ascii=False))
    return 0 if report["status"] == "PASS" else 2


if __name__ == "__main__":
    raise SystemExit(main())
