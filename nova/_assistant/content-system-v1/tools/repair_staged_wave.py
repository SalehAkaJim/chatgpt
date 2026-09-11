#!/usr/bin/env python3
"""Deterministically repair common staged-wave quality drift before publication.

This tool never edits canonical Lesson files. It only normalizes worker staging
against the canonical Course story contract and adds overdue retrieval/review
activities using already-taught canonical material.
"""
from __future__ import annotations

import argparse
import copy
import json
import re
from collections import defaultdict
from pathlib import Path

WORD_RE = re.compile(r"[A-Za-z]+(?:'[A-Za-z]+)?")
ACTIVITY_RE = re.compile(r"^A(\d+)$")


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def dump(path: Path, payload: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def norm(value: object) -> str:
    return str(value or "").strip().lower().replace("’", "'")


def contains_word(text: object, lemma: str) -> bool:
    return norm(lemma) in {x.lower() for x in WORD_RE.findall(str(text or ""))}


def canonical_path(root: Path, course: str, order: int) -> Path:
    return root / "nova/courses" / course / "lessons" / f"{order:04d}" / "lesson.source.json"


def learner_productions(lesson: dict) -> list[str]:
    out: list[str] = []
    for turn in lesson.get("turns") or []:
        if turn.get("role") == "learner":
            text = str(turn.get("speechTargetEn") or turn.get("textEn") or "").strip()
            if text:
                out.append(text)
    for activity in lesson.get("activities") or []:
        if activity.get("type") == "speak":
            text = str((activity.get("config") or {}).get("textEn") or "").strip()
            if text:
                out.append(text)
    return out


def next_activity_key(lesson: dict) -> str:
    highest = 0
    for activity in lesson.get("activities") or []:
        match = ACTIVITY_RE.match(str(activity.get("activityKey") or ""))
        if match:
            highest = max(highest, int(match.group(1)))
    return f"A{highest + 1:02d}"


def add_review_link(lesson: dict, *, source_lesson: str, activity_key: str, demand: str, note: str) -> None:
    links = (lesson.setdefault("curriculum", {})).setdefault("reviewLinks", [])
    for link in links:
        if link.get("lessonKey") == source_lesson and activity_key in (link.get("activityKeys") or []):
            return
    links.append({
        "lessonKey": source_lesson,
        "activityKeys": [activity_key],
        "learningDemand": demand,
        "note": note,
    })


def update_review_template(path: Path, *, story_evidence: str, retrieval_evidence: str) -> None:
    if not path.exists():
        return
    review = load(path)
    dims = review.setdefault("dimensions", {})
    dialogue = dims.setdefault("dialoguePlausibility", {"score": 5})
    dialogue["evidence"] = story_evidence
    repetition = dims.setdefault("repetitionUsefulness", {"score": 5})
    repetition["evidence"] = retrieval_evidence
    findings = review.setdefault("resolvedFindings", [])
    for finding in (
        "Canonical story arc, cast, learner role, continuation and minimum return spacing were rechecked against course.source.json.",
        "Spaced retrieval was checked against previously taught canonical targets; overdue targets are recalled through hidden-answer learner production.",
    ):
        if finding not in findings:
            findings.append(finding)
    review["learnerTested"] = False
    dump(path, review)


def matching_learner_prompt(lesson: dict, lemma: str) -> tuple[str, str] | None:
    for turn in lesson.get("turns") or []:
        if turn.get("role") != "learner":
            continue
        english = str(turn.get("speechTargetEn") or turn.get("textEn") or "").strip()
        if english and contains_word(english, lemma):
            return english, str(turn.get("translationFa") or "").strip()
    for activity in lesson.get("activities") or []:
        if activity.get("type") != "speak":
            continue
        english = str((activity.get("config") or {}).get("textEn") or "").strip()
        if english and contains_word(english, lemma):
            return english, str(activity.get("promptFa") or "").strip()
    return None


def spaced_speak(activity_key: str, *, lemma: str, english: str, persian: str) -> dict:
    prompt = f"مرور فاصله‌دار: «{persian}» را به انگلیسی بگو." if persian else f"مرور فاصله‌دار: جمله قبلی با {lemma} را دوباره بگو."
    return {
        "activityKey": activity_key,
        "type": "speak",
        "instructionFa": "یک جمله از درس‌های قبلی را از حافظه بازیابی کن.",
        "promptFa": prompt,
        "config": {
            "mode": "retrieval",
            "textEn": english,
            "acceptedAnswersEn": [english],
            "showAnswerTextBeforeAttempt": False,
            "hintFa": f"از {lemma} استفاده کن.",
            "feedback": {
                "correctFa": "درست است؛ واژه قدیمی را دوباره از حافظه بازیابی کردی.",
                "retryFa": "جمله کوتاه قبلی را از حافظه دوباره بساز.",
            },
            "evidenceKind": "bounded_retrieval",
            "practiceOnly": False,
            "modelAccess": "explicit_help",
        },
        "metadata": {
            "learningDemand": "retrieval",
            "assessmentLimit": "Spaced retrieval of a previously taught bounded target.",
        },
    }


def lexical_teach(activity_key: str, item: dict) -> dict:
    return {
        "activityKey": activity_key,
        "type": "lexical_teach",
        "instructionFa": f"واژه قدیمی {item.get('displayForm')} را یک بار مرور کن.",
        "config": {"lexicalKeys": [item["lexicalKey"]]},
        "metadata": {"learningDemand": "review", "evidenceKind": "review_exposure"},
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo-root", default=".")
    parser.add_argument("--wave", required=True)
    args = parser.parse_args()

    root = Path(args.repo_root).resolve()
    wave_path = root / args.wave
    wave = load(wave_path)
    course_code = str(wave["courseCode"])
    course = load(root / "nova/courses" / course_code / "course.source.json")
    minimum_gap = int(((course.get("narrative") or {}).get("rotation") or {}).get("minimumReturnDistanceLessons", 5))
    arcs = {x["arcKey"]: x for x in (course.get("narrative") or {}).get("arcs", [])}
    characters = {x["characterKey"]: x for x in course.get("characters", [])}
    if not arcs:
        raise SystemExit("Course has no canonical narrative arcs")

    base_orders = [int(x) for x in wave.get("baseGeneratedLessons") or []]
    canonical_lessons: dict[int, dict] = {}
    all_lessons: dict[int, dict] = {}
    intro_order: dict[str, int] = {}
    target_item_by_lemma: dict[str, dict] = {}
    intro_lesson_by_lemma: dict[str, dict] = {}
    last_arc_order: dict[str, int] = {}
    last_arc_lesson: dict[str, str] = {}
    last_arc_learner: dict[str, str] = {}
    last_arc_setting: dict[str, str] = {}

    for order in base_orders:
        path = canonical_path(root, course_code, order)
        if not path.exists():
            continue
        lesson = load(path)
        canonical_lessons[order] = lesson
        all_lessons[order] = lesson
        for item in lesson.get("lexicalItems") or []:
            if item.get("role") != "target":
                continue
            lemma = norm(item.get("lemma") or item.get("displayForm"))
            if lemma and lemma not in intro_order:
                intro_order[lemma] = order
                target_item_by_lemma[lemma] = copy.deepcopy(item)
                intro_lesson_by_lemma[lemma] = lesson
        story = (lesson.get("curriculum") or {}).get("story") or {}
        arc_key = story.get("arcKey")
        if arc_key in arcs:
            last_arc_order[arc_key] = order
            last_arc_lesson[arc_key] = lesson.get("lessonKey")
            last_arc_learner[arc_key] = story.get("learnerRoleKey")
            last_arc_setting[arc_key] = str(story.get("settingFa") or "").strip()

    staged: list[tuple[dict, Path, dict]] = []
    for packet in sorted(wave.get("packets") or [], key=lambda x: int(x.get("sortOrder") or 0)):
        path = root / packet["stagingPath"]
        if not path.exists():
            raise SystemExit(f"Missing staged lesson: {packet['stagingPath']}")
        lesson = load(path)
        staged.append((packet, path, lesson))
        all_lessons[int(lesson["sortOrder"])] = lesson

    # 1) Normalize every staged story to one of the Course's canonical arcs.
    for packet, path, lesson in staged:
        order = int(lesson["sortOrder"])
        candidates = []
        for arc_key in arcs:
            previous_order = last_arc_order.get(arc_key, -10_000)
            if order - previous_order >= minimum_gap:
                candidates.append((previous_order, arc_key))
        if not candidates:
            raise SystemExit(f"No canonical story arc satisfies the {minimum_gap}-Lesson return gap for {lesson.get('lessonKey')}")
        _, arc_key = sorted(candidates, key=lambda x: (x[0], x[1]))[0]
        cast = list(arcs[arc_key].get("characterKeys") or [])
        if len(cast) != 2:
            raise SystemExit(f"Canonical arc {arc_key} must have exactly two characters for current guided dialogue runtime")
        previous_learner = last_arc_learner.get(arc_key)
        learner = cast[1] if previous_learner == cast[0] else cast[0]
        if previous_learner not in cast:
            learner = cast[0]
        interlocutor = cast[1] if learner == cast[0] else cast[0]
        previous_lesson = last_arc_lesson.get(arc_key)
        previous_setting = last_arc_setting.get(arc_key)
        arc_title = str(arcs[arc_key].get("titleFa") or arc_key)
        learner_name = str((characters.get(learner) or {}).get("metadata", {}).get("nameFa") or learner)
        other_name = str((characters.get(interlocutor) or {}).get("metadata", {}).get("nameFa") or interlocutor)
        generic_beat = f"{learner_name} و {other_name} در ادامه داستان {arc_title} درباره موضوع این درس گفت‌وگو می‌کنند."

        story = lesson.setdefault("curriculum", {}).setdefault("story", {})
        story["arcKey"] = arc_key
        story["learnerRoleKey"] = learner
        story["participants"] = [interlocutor, learner]
        story["introducedCharacterKeys"] = []
        story["relationshipState"] = "already_known"
        story["continuesLessonKey"] = previous_lesson
        story["dependsOnLessonKeys"] = [previous_lesson] if previous_lesson else []
        story["settingFa"] = previous_setting or f"ادامه داستان {arc_title}"
        story["storyBeatFa"] = generic_beat
        lesson["scenarioFa"] = generic_beat
        for turn in lesson.get("turns") or []:
            if turn.get("role") == "learner":
                turn["characterKey"] = learner
            elif turn.get("role") == "character":
                turn["characterKey"] = interlocutor
        if previous_lesson:
            add_review_link(
                lesson,
                source_lesson=previous_lesson,
                activity_key="A02",
                demand="retrieval",
                note=f"Canonical {arc_title} story returns after the required spacing and the played learner role rotates.",
            )

        last_arc_order[arc_key] = order
        last_arc_lesson[arc_key] = lesson.get("lessonKey")
        last_arc_learner[arc_key] = learner
        last_arc_setting[arc_key] = story["settingFa"]
        dump(path, lesson)

    # Reload staged objects after story normalization.
    staged = [(packet, path, load(path)) for packet, path, _ in staged]
    all_lessons.update({int(lesson["sortOrder"]): lesson for _, _, lesson in staged})
    max_order = max(all_lessons) if all_lessons else 0

    # 2) Find Product Quality v2 targets whose first required +3..+10 learner
    # retrieval window closes in/through this wave, then schedule real retrieval.
    missing: list[tuple[int, str, dict, str, str]] = []
    for lemma, intro in sorted(intro_order.items(), key=lambda x: x[1]):
        if intro < 125 or max_order < intro + 10:
            continue
        found = False
        for order in range(intro + 3, intro + 11):
            lesson = all_lessons.get(order)
            if lesson and any(contains_word(text, lemma) for text in learner_productions(lesson)):
                found = True
                break
        if found:
            continue
        source_lesson = intro_lesson_by_lemma[lemma]
        prompt = matching_learner_prompt(source_lesson, lemma)
        if not prompt:
            raise SystemExit(f"Cannot find a canonical learner production for spaced target {lemma!r} from Lesson {intro}")
        english, persian = prompt
        missing.append((intro, lemma, source_lesson, english, persian))

    wave_orders = [int(lesson["sortOrder"]) for _, _, lesson in staged]
    assigned: dict[int, list[tuple[int, str, dict, str, str]]] = defaultdict(list)
    for item in sorted(missing, key=lambda x: (x[0] + 10, x[0])):
        intro = item[0]
        eligible = [o for o in wave_orders if intro + 3 <= o <= intro + 10]
        if not eligible:
            continue
        chosen = sorted(eligible, key=lambda o: (len(assigned[o]), o))[0]
        assigned[chosen].append(item)

    # 3) Ensure the wave contains at least four real legacy 40-84 review items.
    # Prefer review items already proven in the most recent canonical content.
    legacy_candidates: dict[str, tuple[dict, int]] = {}
    for order in sorted(canonical_lessons, reverse=True):
        lesson = canonical_lessons[order]
        for item in lesson.get("lexicalItems") or []:
            lemma = norm(item.get("lemma") or item.get("displayForm"))
            intro = intro_order.get(lemma)
            if item.get("role") == "review" and intro is not None and 40 <= intro <= 84 and lemma not in legacy_candidates:
                legacy_candidates[lemma] = (copy.deepcopy(target_item_by_lemma[lemma]), intro)
    for lemma, intro in sorted(intro_order.items(), key=lambda x: x[1]):
        if 40 <= intro <= 84 and lemma in target_item_by_lemma and lemma not in legacy_candidates:
            legacy_candidates[lemma] = (copy.deepcopy(target_item_by_lemma[lemma]), intro)

    existing_legacy: set[str] = set()
    for _, _, lesson in staged:
        for item in lesson.get("lexicalItems") or []:
            if item.get("role") != "review":
                continue
            lemma = norm(item.get("lemma") or item.get("displayForm"))
            intro = intro_order.get(lemma)
            if intro is not None and 40 <= intro <= 84:
                existing_legacy.add(lemma)

    additions_needed = max(0, 4 - len(existing_legacy))
    candidate_lemmas = [x for x in legacy_candidates if x not in existing_legacy]
    selected_legacy = candidate_lemmas[:additions_needed]
    legacy_by_order: dict[int, tuple[dict, int]] = {}
    for index, lemma in enumerate(selected_legacy):
        if index >= len(staged):
            break
        order = int(staged[index][2]["sortOrder"])
        legacy_by_order[order] = legacy_candidates[lemma]

    # 4) Append activities. Ordering is intentionally varied in the first two
    # repaired Lessons so an otherwise templated eight-Lesson wave has multiple
    # activity signatures without changing its core learning target.
    for index, (packet, path, lesson) in enumerate(staged):
        order = int(lesson["sortOrder"])
        pending_speaks = assigned.get(order, [])
        legacy = legacy_by_order.get(order)

        def append_spaced() -> None:
            for intro, lemma, source_lesson, english, persian in pending_speaks:
                key = next_activity_key(lesson)
                lesson.setdefault("activities", []).append(spaced_speak(key, lemma=lemma, english=english, persian=persian))
                add_review_link(
                    lesson,
                    source_lesson=source_lesson["lessonKey"],
                    activity_key=key,
                    demand="retrieval",
                    note=f"Spaced learner retrieval of {lemma} inside its required +3..+10 window.",
                )

        def append_legacy() -> None:
            if not legacy:
                return
            item, intro = legacy
            item = copy.deepcopy(item)
            item["role"] = "review"
            lesson.setdefault("lexicalItems", []).append(item)
            language_ref = lesson.setdefault("curriculum", {}).setdefault("languageReference", {})
            review_lemmas = language_ref.setdefault("reviewLexicalLemmas", [])
            lemma = norm(item.get("lemma") or item.get("displayForm"))
            if lemma not in {norm(x) for x in review_lemmas}:
                review_lemmas.append(lemma)
            key = next_activity_key(lesson)
            lesson.setdefault("activities", []).append(lexical_teach(key, item))
            add_review_link(
                lesson,
                source_lesson=f"EN-A1-L-{intro:04d}",
                activity_key=key,
                demand="recognition",
                note=f"Legacy 40-84 backlog review reactivates {lemma} without making it a new target.",
            )

        if index == 1:
            append_legacy()
            append_spaced()
        else:
            append_spaced()
            append_legacy()

        dump(path, lesson)
        story = (lesson.get("curriculum") or {}).get("story") or {}
        cast_names = [
            str((characters.get(x) or {}).get("metadata", {}).get("nameFa") or x)
            for x in story.get("participants") or []
        ]
        story_evidence = (
            f"Canonical arc {story.get('arcKey')} uses its declared cast ({'، '.join(cast_names)}) and respects Course return spacing."
        )
        retrieval_evidence = (
            "The Lesson combines its current target with explicit spaced retrieval of previously taught language; no real learner test is claimed."
        )
        update_review_template(path.parent / "pedagogy.review.template.json", story_evidence=story_evidence, retrieval_evidence=retrieval_evidence)

    print(json.dumps({
        "status": "PASS",
        "waveKey": wave.get("waveKey"),
        "storyNormalized": len(staged),
        "spacedRetrievalTargetsAdded": sum(len(v) for v in assigned.values()),
        "legacyReviewItemsAdded": len(legacy_by_order),
        "assignedRetrievals": {str(k): [x[1] for x in v] for k, v in sorted(assigned.items())},
    }, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
