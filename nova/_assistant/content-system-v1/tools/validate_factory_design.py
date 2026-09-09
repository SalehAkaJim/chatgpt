from __future__ import annotations

import re

from language_units import is_word_unit, word_unit_errors

WORD = re.compile(r"[A-Za-z]+(?:'[A-Za-z]+)?")
NON_LEXICAL_FILLER_SLOTS = {"name", "person", "place", "city", "country"}
SINGLE_TOKEN_SLOTS = {"number", "time", "day"}


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

            if re.fullmatch(r"[A-Za-z]+\?", raw_prompt) and (r.startswith("i like ") or r.startswith("yes i like ")):
                errors.append(f"NF-H01 {label}: bare-item offer/ellipsis cannot elicit a like-preference statement")

            if " or " in f" {p} " and r.startswith("i want "):
                errors.append(f"NF-H02 {label}: either-or offer unnaturally forces I want; use a natural choice or a want-eliciting context")

            if r.startswith("i like ") and " like " not in f" {p} ":
                errors.append(f"NF-H03 {label}: preference answer is not pragmatically licensed by the prompt")
    return errors


def _construction_parts(form: str):
    # Only machine-enforce simple one-slot constructions. More complex forms
    # such as "item + or + item" need an explicit authored test rather than a
    # lossy parser.
    if form.count("+") != 1:
        return None
    left, right = form.split("+", 1)
    m = re.fullmatch(r"\s*([A-Za-z_]+)\s*[?.!]?\s*", right)
    if not m:
        return None
    slot = m.group(1).lower()
    return norm(left), slot


def _extract_filler(text: str, prefix: str, slot: str) -> str | None:
    value = norm(text)
    if prefix and not value.startswith(prefix + " "):
        return None
    middle = value[len(prefix):].strip() if prefix else value
    if not middle:
        return None

    # Common politeness and article material belongs to the construction, not
    # to the word identity of the filler.
    middle = re.sub(r"\s+please$", "", middle)
    middle = re.sub(r"^(a|an|the)\s+", "", middle)

    if slot in SINGLE_TOKEN_SLOTS:
        return middle.split()[0] if middle else None

    # Reject obvious compound-turn residue such as "one or room two". The
    # construction parser should collect a filler, not swallow the rest of a
    # dialogue turn.
    if " or " in f" {middle} ":
        return None
    if len(middle.split()) > 3:
        return None
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
            prefix, slot = parsed
            # Names/places can be proper nouns or contextual labels rather than
            # reusable word-table entries; do not apply lexical-filler checks.
            if slot in NON_LEXICAL_FILLER_SLOTS:
                continue

            due = intro + max_delay
            if max_order < due:
                continue
            fillers: set[str] = set()
            word_forms: set[str] = set()
            for order in range(intro, due + 1):
                for text in texts_by_order.get(order, []):
                    filler = _extract_filler(text, prefix, slot)
                    if filler:
                        fillers.add(filler)
                word_forms |= word_forms_by_order.get(order, set())

            key = construction.get("key") or construction.get("form")
            if len(fillers) < 2:
                errors.append(
                    f"DG-H01 {lesson.get('lessonKey')} {key}: productive construction has fewer than two distinct fillers within {max_delay} Lessons"
                )
                continue

            for filler in sorted(fillers):
                if filler not in word_forms:
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
