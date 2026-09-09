from __future__ import annotations

import re
from collections import defaultdict

from language_units import is_word_unit, word_unit_errors

WORD = re.compile(r"[A-Za-z]+(?:'[A-Za-z]+)?")
NON_LEXICAL_FILLER_SLOTS = {"name", "person", "place", "city", "country"}


def norm(text: str) -> str:
    return " ".join(WORD.findall(str(text or "").lower().replace("’", "'")))


def activity_answer(activity: dict) -> str:
    c = activity.get("config") or {}
    t = activity.get("type")
    if t == "sentence_order":
        return str(c.get("answerEn") or "")
    if t == "speak":
        return str(c.get("textEn") or "")
    if t in {"response_choice", "comprehension", "fill_blank"}:
        opts = c.get("optionsEn") if t == "fill_blank" else (c.get("optionsEn") or c.get("options") or [])
        idx = c.get("answerIndex")
        if isinstance(idx, int) and 0 <= idx < len(opts):
            return str(opts[idx])
    return ""


def naturalness_errors(lesson: dict) -> list[str]:
    errors: list[str] = []
    turns = {t.get("turnKey"): t for t in lesson.get("turns") or []}
    for activity in lesson.get("activities") or []:
        if activity.get("type") != "dialogue":
            continue
        for ex in (activity.get("config") or {}).get("exchanges") or []:
            prompt = turns.get(ex.get("promptTurnKey")) or {}
            response = turns.get(ex.get("responseTurnKey")) or {}
            p = norm(prompt.get("textEn"))
            r = norm(response.get("textEn"))
            raw_prompt = str(prompt.get("textEn") or "").strip()
            label = f"{lesson.get('lessonKey')}/{activity.get('activityKey')}/{ex.get('exchangeKey')}"

            # Bare noun offers such as "Coffee?" do not naturally elicit a
            # preference statement such as "I like coffee.".
            if re.fullmatch(r"[A-Za-z]+\?", raw_prompt) and (r.startswith("i like ") or r.startswith("yes i like ")):
                errors.append(f"NF-H01 {label}: bare-item offer/ellipsis cannot elicit a like-preference statement")

            # An either-or offer normally elicits a choice. If the curriculum
            # needs I want..., the context must explicitly license want or the
            # learner must reject/correct the offered option first.
            if " or " in f" {p} " and r.startswith("i want "):
                errors.append(f"NF-H02 {label}: either-or offer unnaturally forces I want; use a natural choice or a want-eliciting context")

            # If an answer is explicitly a preference statement, a direct
            # preference question is the clean beginner prompt unless the
            # response is a correction/contrast.
            if r.startswith("i like ") and " like " not in f" {p} ":
                errors.append(f"NF-H03 {label}: preference answer is not pragmatically licensed by the prompt")
    return errors


def _construction_parts(form: str):
    if "+" not in form:
        return None
    left, right = form.split("+", 1)
    slot_match = re.search(r"[A-Za-z_]+", right)
    if not slot_match:
        return None
    slot = slot_match.group(0).lower()
    suffix = right[slot_match.end():]
    return norm(left), slot, norm(suffix)


def _extract_filler(text: str, prefix: str, suffix: str) -> str | None:
    value = norm(text)
    if prefix and not value.startswith(prefix + " "):
        return None
    if not prefix and not value:
        return None
    middle = value[len(prefix):].strip() if prefix else value
    if suffix:
        if not middle.endswith(" " + suffix) and middle != suffix:
            return None
        middle = middle[: -len(suffix)].strip()
    return middle or None


def generativity_errors(lessons: list[dict], max_delay: int = 4) -> list[str]:
    errors: list[str] = []
    lessons = sorted(lessons, key=lambda x: int(x.get("sortOrder") or 0))
    if not lessons:
        return errors
    max_order = int(lessons[-1].get("sortOrder") or 0)

    word_forms_by_order: dict[int, set[str]] = {}
    texts_by_order: dict[int, list[str]] = {}
    for lesson in lessons:
        order = int(lesson.get("sortOrder") or 0)
        word_forms_by_order[order] = {norm(x.get("displayForm")) for x in lesson.get("lexicalItems") or [] if is_word_unit(x)}
        texts = [str(t.get("textEn") or "") for t in lesson.get("turns") or []]
        texts += [activity_answer(a) for a in lesson.get("activities") or []]
        texts_by_order[order] = [x for x in texts if x]

    for lesson in lessons:
        intro = int(lesson.get("sortOrder") or 0)
        for construction in (lesson.get("curriculum") or {}).get("targetConstructions") or []:
            parsed = _construction_parts(str(construction.get("form") or ""))
            if not parsed:
                continue
            prefix, slot, suffix = parsed
            due = intro + max_delay
            if max_order < due:
                continue
            fillers: set[str] = set()
            word_forms: set[str] = set()
            for order in range(intro, due + 1):
                for text in texts_by_order.get(order, []):
                    filler = _extract_filler(text, prefix, suffix)
                    if filler:
                        fillers.add(filler)
                word_forms |= word_forms_by_order.get(order, set())

            key = construction.get("key") or construction.get("form")
            if len(fillers) < 2:
                errors.append(
                    f"DG-H01 {lesson.get('lessonKey')} {key}: productive construction has fewer than two distinct fillers within {max_delay} Lessons"
                )
                continue

            if slot not in NON_LEXICAL_FILLER_SLOTS:
                for filler in sorted(fillers):
                    candidate = re.sub(r"^(a|an|the)\s+", "", filler)
                    # A multiword filler may itself be a lexicalized word unit,
                    # but an arbitrary phrase such as 'a bus' is never accepted
                    # as the word merely because it filled the slot.
                    if candidate not in word_forms and filler not in word_forms:
                        errors.append(
                            f"DG-H02 {lesson.get('lessonKey')} {key}: filler '{filler}' was used productively but no independent word/lexeme exists by Lesson {due}"
                        )
    return errors


def word_layer_errors(lesson: dict) -> list[str]:
    errors: list[str] = []
    for item in lesson.get("lexicalItems") or []:
        for msg in word_unit_errors(item):
            errors.append(f"WL-H01 {lesson.get('lessonKey')} {item.get('lexicalKey')}: {msg}")
        if not is_word_unit(item):
            errors.append(
                f"WL-H02 {lesson.get('lessonKey')} {item.get('lexicalKey')}: non-word teaching unit is stored in lexicalItems/words"
            )
    return errors


def validate_factory_design(lessons: list[dict], max_delay: int = 4) -> dict:
    errors: list[str] = []
    for lesson in lessons:
        errors.extend(word_layer_errors(lesson))
        errors.extend(naturalness_errors(lesson))
    errors.extend(generativity_errors(lessons, max_delay=max_delay))
    return {"status": "PASS" if not errors else "FAIL", "errors": errors}
