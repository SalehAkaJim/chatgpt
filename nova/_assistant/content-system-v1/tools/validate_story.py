"""Validate interleaved stories and Lesson-specific played characters."""
from __future__ import annotations


def validate_story(records):
    errors, groups = [], {}
    for record in records:
        groups.setdefault(record['course']['courseCode'], []).append(record)
    for code, group in groups.items():
        course = group[0]['course']
        contract = course.get('narrative')
        if not contract:
            continue
        if contract.get('version') != 2:
            errors.append(f'{code}: story rotation requires narrative version 2')
        if any(k in contract for k in ('learnerRoleKey', 'learnerName', 'stableFacts')):
            errors.append(f'{code}: no Course-wide learner persona is allowed')
        rotation = contract.get('rotation', {})
        minimum = rotation.get('minimumReturnDistanceLessons')
        if type(minimum) is not int or minimum < 5:
            errors.append(f'{code}: minimum story/character return distance must be at least 5 Lessons')
            minimum = 5
        cast = {c['characterKey']: c for c in course.get('characters', [])}
        if len(cast) != len(course.get('characters', [])):
            errors.append(f'{code}: duplicate story character key')
        arcs = {a['arcKey']: a for a in contract.get('arcs', [])}
        if not arcs or len(arcs) != len(contract.get('arcs', [])):
            errors.append(f'{code}: distinct canonical story arcs are required')
        for arc in arcs.values():
            if not set(arc.get('characterKeys', [])).issubset(cast):
                errors.append(f'{code}: arc contains an unknown character')
        seen_lessons, seen_characters, scenes = set(), set(), set()
        last_character, last_arc = {}, {}
        for position, record in enumerate(group):
            lesson = record['lesson']; key = lesson['lessonKey']
            curriculum = lesson.get('curriculum', {}); story = curriculum.get('story') or {}
            for field in ('arcKey', 'sceneKey', 'settingFa', 'storyBeatFa'):
                if not str(story.get(field) or '').strip():
                    errors.append(f'{key}: story requires {field}')
            learner = story.get('learnerRoleKey')
            if learner not in cast:
                errors.append(f'{key}: unknown Lesson learner role')
            scene = story.get('sceneKey')
            if scene in scenes: errors.append(f'{key}: duplicate story scene')
            scenes.add(scene)
            participants = story.get('participants')
            if not isinstance(participants, list) or any(not isinstance(x, str) for x in participants) or len(participants) != len(set(participants)):
                errors.append(f'{key}: story requires distinct participant keys'); participants = []
            people = set(participants)
            actual = {t.get('characterKey') for t in lesson.get('turns', []) if t.get('role') in {'character','learner'}} | {learner}
            if people != actual or not people.issubset(cast):
                errors.append(f'{key}: story participants must match all Turn speakers including the played role')
            for turn in lesson.get('turns', []):
                if turn.get('role') == 'learner' and turn.get('characterKey') != learner:
                    errors.append(f'{key}: learner role drift within the Lesson')
                if turn.get('role') == 'character' and turn.get('characterKey') == learner:
                    errors.append(f'{key}: played character cannot also be its own interlocutor')
            for person in people:
                if person in last_character and position - last_character[person] < minimum:
                    errors.append(f'{key}: character return is too soon: {person} (learner and listening roles included)')
            arc_key = story.get('arcKey'); arc = arcs.get(arc_key)
            if not arc or not people.issubset(arc.get('characterKeys', [])):
                errors.append(f'{key}: participants must belong to the canonical story arc')
            previous = last_arc.get(arc_key)
            if previous and position - previous[0] < minimum:
                errors.append(f'{key}: story arc return is too soon')
            expected_previous = previous[1] if previous else None
            if story.get('continuesLessonKey') != expected_previous:
                errors.append(f'{key}: continuation must point to the latest earlier episode of this arc')
            relation = story.get('relationshipState')
            if relation not in {'first_meeting','already_known'} or (previous and relation == 'first_meeting'):
                errors.append(f'{key}: invalid relationship state or relationship reset')
            introduced = story.get('introducedCharacterKeys')
            if not isinstance(introduced, list) or len(introduced) != len(set(introduced)) or set(introduced) != people-seen_characters:
                errors.append(f'{key}: introducedCharacterKeys must match first course appearances')
            for person in (people-seen_characters) & cast.keys():
                if cast[person].get('metadata', {}).get('debutLessonKey') != key:
                    errors.append(f'{key}: incorrect declared debut for {person}')
            dependencies = story.get('dependsOnLessonKeys')
            if not isinstance(dependencies, list) or any(x not in seen_lessons for x in dependencies) or (expected_previous and expected_previous not in dependencies):
                errors.append(f'{key}: story dependencies must include the earlier episode')
            links = curriculum.get('reviewLinks')
            if not isinstance(links, list) or (seen_lessons and not links):
                errors.append(f'{key}: later story Lessons require reviewLinks'); links = []
            activity_keys = {a['activityKey'] for a in lesson.get('activities', [])}
            for link in links:
                if link.get('lessonKey') not in seen_lessons:
                    errors.append(f'{key}: review must reference an earlier Lesson')
                targets = link.get('activityKeys')
                if not isinstance(targets, list) or not targets or not set(targets).issubset(activity_keys):
                    errors.append(f'{key}: review must name current Activity keys')
                if link.get('learningDemand') not in {'recognition','retrieval','transfer'} or not str(link.get('note') or '').strip():
                    errors.append(f'{key}: review requires a learning demand and rationale')
            seen_lessons.add(key); seen_characters.update(people)
            last_character.update({p:position for p in people}); last_arc[arc_key] = (position,key)
        for person, profile in cast.items():
            if not profile.get('metadata', {}).get('debutLessonKey'):
                errors.append(f'{code}: {person} needs a declared debut')
    return errors
