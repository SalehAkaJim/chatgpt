"""Validate declared cross-Lesson story continuity; semantic review stays explicit."""
from __future__ import annotations


def validate_story(records):
    errors = []
    groups = {}
    for record in records:
        groups.setdefault(record['course']['courseCode'], []).append(record)
    for code, group in groups.items():
        course = group[0]['course']
        contract = course.get('narrative')
        if not contract:
            continue  # Non-story Courses keep their existing source contract.
        if contract.get('version') != 1 or not contract.get('learnerRoleKey'):
            errors.append(f'{code}: invalid Course narrative contract')
        cast = {c['characterKey']: c for c in course.get('characters', [])}
        if len(cast) != len(course.get('characters', [])):
            errors.append(f'{code}: duplicate story character key')
        seen_lessons, seen_characters, scenes = set(), set(), set()
        for record in group:
            lesson = record['lesson']
            key = lesson['lessonKey']
            curriculum = lesson.get('curriculum', {})
            story = curriculum.get('story') or {}
            for field in ('arcKey', 'sceneKey', 'settingFa', 'storyBeatFa'):
                if not str(story.get(field) or '').strip():
                    errors.append(f'{key}: story requires {field}')
            if story.get('learnerRoleKey') != contract.get('learnerRoleKey'):
                errors.append(f'{key}: learner role drift')
            scene = story.get('sceneKey')
            if scene in scenes:
                errors.append(f'{key}: duplicate story scene')
            scenes.add(scene)
            participants = story.get('participants')
            if not isinstance(participants, list) or len(participants) != len(set(participants)):
                errors.append(f'{key}: story requires distinct participant keys')
                participants = []
            people = set(participants)
            actual = {t.get('characterKey') for t in lesson.get('turns', []) if t.get('role') == 'character'}
            if people != actual or not people.issubset(cast):
                errors.append(f'{key}: story participants must match known Turn speakers')
            first = story.get('firstMeetings')
            if not isinstance(first, list) or len(first) != len(set(first)):
                errors.append(f'{key}: firstMeetings must be a distinct list')
                first = []
            newcomers = people - seen_characters
            if set(first) != newcomers:
                errors.append(f'{key}: first meetings must be exactly new characters; no relationship reset')
            if lesson.get('levelKey') == 'A1' and len(newcomers) > 1:
                errors.append(f'{key}: early A1 allows at most one character debut per Lesson')
            for character in newcomers & cast.keys():
                if cast[character].get('metadata', {}).get('debutLessonKey') != key:
                    errors.append(f'{key}: incorrect declared debut for {character}')
            dependencies = story.get('dependsOnLessonKeys')
            if not isinstance(dependencies, list) or any(x not in seen_lessons for x in dependencies):
                errors.append(f'{key}: story dependencies must reference earlier Lessons')
            links = curriculum.get('reviewLinks')
            if not isinstance(links, list) or (seen_lessons and not links):
                errors.append(f'{key}: later story Lessons require reviewLinks')
                links = []
            activity_keys = {a['activityKey'] for a in lesson.get('activities', [])}
            for link in links:
                if link.get('lessonKey') not in seen_lessons:
                    errors.append(f'{key}: review must reference an earlier Lesson')
                targets = link.get('activityKeys')
                if not isinstance(targets, list) or not targets or not set(targets).issubset(activity_keys):
                    errors.append(f'{key}: review must name current Activity keys')
                if link.get('learningDemand') not in {'recognition','retrieval','transfer'} or not str(link.get('note') or '').strip():
                    errors.append(f'{key}: review requires an explicit learning demand and rationale')
            seen_lessons.add(key)
            seen_characters.update(people)
        for character, profile in cast.items():
            if not profile.get('metadata', {}).get('debutLessonKey'):
                errors.append(f'{code}: {character} needs a declared debut')
    return errors
