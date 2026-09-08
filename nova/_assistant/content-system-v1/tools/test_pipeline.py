from __future__ import annotations
import copy
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch
import compile_lesson_sql as compiler
from build_pilot import discover, validate_sequence
from generate_audio import generate, load, save, collect
from validate_audio_manifest import validate_audio
from validate_lesson import validate
from validate_story import validate_story

ROOT = Path(__file__).resolve().parents[4]
TOOLS = Path(__file__).parent
SOURCE = ROOT / 'nova/courses/en-fa/lessons/0001/lesson.source.json'
COURSE = ROOT / 'nova/courses/en-fa/course.source.json'
FIXTURE = ROOT / 'nova/audio/turns/en-fa/EN-A1-L-0001/T01.mp3'


class CompilerTests(unittest.TestCase):
    def setUp(self):
        self.lesson, self.course = load(SOURCE), load(COURSE)

    def test_below_90_blocks_function_and_cli_without_output(self):
        self.lesson['curriculum'].pop('transferPlan', None)
        for a in self.lesson['activities']:
            a.get('metadata', {}).pop('learningDemand', None)
        with self.assertRaisesRegex(ValueError, 'Content quality rejected'):
            compiler.compile_sql(self.course, self.lesson, '0' * 64)
        with tempfile.TemporaryDirectory() as td:
            path, out = Path(td) / 'lesson.json', Path(td) / 'out.sql'
            save(path, self.lesson)
            result = subprocess.run([sys.executable, str(TOOLS / 'compile_lesson_sql.py'), str(COURSE), str(path), '-o', str(out)], capture_output=True, text=True)
            self.assertEqual(result.returncode, 2, result.stderr)
            self.assertFalse(out.exists())

    def test_pending_owner_decision_does_not_block_compiler(self):
        self.lesson['review']['pendingDecisions'] = [{'decisionKey': 'ONE', 'question': 'A or B?',
             'recommendedOption': 'A', 'rationale': 'Keep current outcome while awaiting owner review.'}]
        sql = compiler.compile_sql(self.course, self.lesson, '0' * 64)
        self.assertIn('INSERT INTO lessons', sql)
        self.assertNotIn('pendingDecisions', sql)
        self.assertIn("'draft'", sql)  # Audio has not been provided.

    def test_invalid_level_and_unknown_character_are_rejected(self):
        self.lesson['levelKey'] = 'UNKNOWN'
        with self.assertRaisesRegex(ValueError, 'Canonical validation'):
            compiler.compile_sql(self.course, self.lesson, '0' * 64)
        self.lesson['levelKey'] = 'A1'
        self.lesson['turns'][0]['characterKey'] = 'unknown'
        self.assertEqual(validate(self.lesson, self.course)['status'], 'FAIL')

    def test_tokens_must_reconstruct_actual_answer(self):
        activity = next(a for a in self.lesson['activities'] if a['type'] == 'sentence_order')
        activity['config']['tokensEn'] = ['wrong']
        activity['config']['answerTokensEn'] = ['wrong']
        self.assertEqual(validate(self.lesson, self.course)['status'], 'FAIL')

    def test_course_changes_are_tracked_separately(self):
        first = compiler.compile_sql(self.course, self.lesson, 'a' * 64)
        self.course['levels'][0]['titleFa'] += ' updated'
        second = compiler.compile_sql(self.course, self.lesson, 'a' * 64)
        self.assertNotEqual(next(x for x in first.splitlines() if 'courseSourceHash' in x), next(x for x in second.splitlines() if 'courseSourceHash' in x))

    def test_three_lessons_are_discovered_and_shared_conflict_detected(self):
        records = discover(ROOT)
        self.assertGreaterEqual(len(records), 3)
        self.assertEqual(validate_sequence(records), [])
        records = copy.deepcopy(records)
        common = records[0]['lesson']['lexicalItems'][0]
        records[1]['lesson']['lexicalItems'].append({**common, 'translationFa': 'conflicting meaning'})
        self.assertTrue(any('conflicting shared lexical' in e for e in validate_sequence(records)))


class StoryTests(unittest.TestCase):
    def setUp(self):
        self.records = copy.deepcopy(discover(ROOT))

    def test_current_story_passes(self):
        self.assertEqual(validate_story(self.records), [])

    def test_repeated_first_meeting_is_rejected(self):
        self.records[5]['lesson']['curriculum']['story']['relationshipState'] = 'first_meeting'
        self.assertTrue(any('relationship reset' in e for e in validate_story(self.records)))

    def test_undeclared_speaker_and_role_drift_are_rejected(self):
        story = self.records[2]['lesson']['curriculum']['story']
        story['participants'] = ['nora']
        story['learnerRoleKey'] = 'someone-else'
        errors = validate_story(self.records)
        self.assertTrue(any('Turn speakers' in e for e in errors))
        self.assertTrue(any('learner role' in e for e in errors))

    def test_learner_persona_cannot_repeat_in_the_next_lesson(self):
        lesson = self.records[1]['lesson']
        lesson['curriculum']['story']['learnerRoleKey'] = 'alex'
        lesson['curriculum']['story']['participants'][0] = 'alex'
        for turn in lesson['turns']:
            if turn['role'] == 'learner': turn['characterKey'] = 'alex'
        self.assertTrue(any('character return is too soon: alex' in e for e in validate_story(self.records)))

    def test_relabeling_arc_does_not_hide_repeated_speakers(self):
        lesson = self.records[1]['lesson']
        lesson['curriculum']['story']['participants'].append('maya')
        lesson['turns'].append({'turnKey':'T99','role':'character','characterKey':'maya'})
        self.assertTrue(any('character return is too soon: maya' in e for e in validate_story(self.records)))

    def test_story_cannot_continue_early_with_a_new_cast(self):
        self.records[1]['lesson']['curriculum']['story']['arcKey'] = self.records[0]['lesson']['curriculum']['story']['arcKey']
        self.assertTrue(any('story arc return is too soon' in e for e in validate_story(self.records)))

    def test_variable_returns_pass_and_reorder_is_rechecked(self):
        self.assertEqual(validate_story(self.records), [])  # Existing gaps include 5, 6 and 7.
        self.records[2], self.records[5] = self.records[5], self.records[2]
        self.assertTrue(any('return is too soon' in e for e in validate_story(self.records)))

    def test_played_character_is_validated_compiled_and_voiced(self):
        record = self.records[1]; lesson, course = record['lesson'], record['course']
        self.assertEqual(validate(lesson, course)['status'], 'PASS')
        sql = compiler.compile_sql(course, lesson, 'a'*64)
        self.assertIn("character_key='owen'", sql)
        voices = load(ROOT/'nova/courses/en-fa/audio_voices.json')
        turns = {t['turnKey']:t for t in lesson['turns']}
        for item in collect(lesson, voices):
            if item['audioClass']=='turn':
                self.assertEqual(item['voiceSpec'], voices['characters'][turns[item['sourceKey']]['characterKey']])
        learner = next(t for t in lesson['turns'] if t['role']=='learner')
        learner['characterKey']='missing'
        self.assertEqual(validate(lesson,course)['status'], 'FAIL')
        with self.assertRaises(ValueError): collect(lesson,voices)

    def test_no_course_wide_learner_fallback(self):
        self.records[0]['course']['narrative']['learnerRoleKey']='alex'
        self.assertTrue(any('Course-wide learner' in e for e in validate_story(self.records)))

    def test_future_dependency_and_invalid_review_are_rejected(self):
        lesson = self.records[1]['lesson']
        lesson['curriculum']['story']['dependsOnLessonKeys'] = [self.records[-1]['lesson']['lessonKey']]
        lesson['curriculum']['reviewLinks'][0]['activityKeys'] = ['A999']
        errors = validate_story(self.records)
        self.assertTrue(any('dependencies' in e for e in errors))
        self.assertTrue(any('Activity keys' in e for e in errors))

    def test_wrong_debut_is_rejected(self):
        self.records[0]['course']['characters'][0]['metadata']['debutLessonKey'] = 'EN-A1-L-9999'
        self.assertTrue(any('incorrect declared debut' in e for e in validate_story(self.records)))


class AudioTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        self.course_dir = self.root / 'nova/courses/en-fa'
        self.voices = self.course_dir / 'audio_voices.json'
        self.config = {'modelId': 'model-one', 'lexicalVoice': {'voiceId': 'lori', 'voiceName': 'Lori'}}
        save(self.voices, self.config)
        self.calls = 0
        def synthesize(text, voice, api_key, output, model):
            self.calls += 1
            output.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(FIXTURE, output)
        self.synth = patch('generate_audio.synthesize', side_effect=synthesize)
        self.synth.start(); self.addCleanup(self.synth.stop)

    def source(self, number, text='hello'):
        path = self.course_dir / 'lessons' / f'{number:04}' / 'lesson.source.json'
        save(path, {'courseCode': 'en-fa', 'lessonKey': f'EN-A1-L-{number:04}',
                    'lexicalItems': [{'lexicalKey': 'HELLO', 'displayForm': text, 'audioEligible': True}], 'turns': []})
        return path

    def run_audio(self, path):
        return generate(path, self.voices, self.root, path.parent / 'audio.manifest.json')

    def manifest(self, path):
        return load(path.parent / 'audio.manifest.json')

    def test_second_lesson_reuses_asset_without_paid_call_or_invalidating_first(self):
        one, two = self.source(1), self.source(2)
        self.run_audio(one)
        before = self.manifest(one)
        report = self.run_audio(two)
        self.assertEqual((self.calls, report['generated'], report['reused']), (1, 0, 1))
        self.assertEqual(before['items'][0]['path'], self.manifest(two)['items'][0]['path'])
        self.assertEqual(validate_audio(one, one.parent / 'audio.manifest.json', self.root, self.voices)['status'], 'PASS')
        self.assertEqual(self.manifest(one), before)

    def test_voice_model_and_text_changes_use_distinct_paths(self):
        one = self.source(1); self.run_audio(one); first = self.manifest(one)['items'][0]
        self.config['lexicalVoice']['voiceId'] = 'new-voice'; save(self.voices, self.config)
        two = self.source(2); self.run_audio(two)
        self.config['modelId'] = 'new-model'; save(self.voices, self.config)
        three = self.source(3); self.run_audio(three)
        four = self.source(4, 'goodbye'); self.run_audio(four)
        self.assertEqual(len({self.manifest(p)['items'][0]['path'] for p in (one, two, three, four)}), 4)
        self.assertEqual(hashlib.sha256((self.root / first['path']).read_bytes()).hexdigest(), first['fileSha256'])

    def test_existing_manifest_bootstraps_registry_without_generation(self):
        one = self.source(1); self.run_audio(one)
        (self.root / 'nova/audio/lexical/en-fa/index.json').unlink()
        report = self.run_audio(self.source(2))
        self.assertEqual((self.calls, report['generated']), (1, 0))

    def test_corrupt_file_or_wrong_voice_cannot_pass_audio_validation(self):
        one = self.source(1); self.run_audio(one)
        manifest_path = one.parent / 'audio.manifest.json'; manifest = load(manifest_path)
        manifest['items'][0]['voiceId'] = 'wrong'; save(manifest_path, manifest)
        self.assertEqual(validate_audio(one, manifest_path, self.root, self.voices)['status'], 'FAIL')
        manifest['items'][0]['voiceId'] = 'lori'
        bad = self.root / manifest['items'][0]['path']; bad.write_bytes(b'not mp3')
        manifest['items'][0]['fileSha256'] = hashlib.sha256(bad.read_bytes()).hexdigest(); save(manifest_path, manifest)
        self.assertEqual(validate_audio(one, manifest_path, self.root, self.voices)['status'], 'FAIL')

    def test_failed_run_checkpoints_completed_turns_for_retry(self):
        one = self.source(1)
        data = load(one)
        data['lexicalItems'] = []
        data['turns'] = [{'turnKey': f'T{i:02}', 'role': 'learner', 'textEn': text, 'audioRequired': True}
                         for i, text in enumerate(['Hello.', 'Goodbye.'], 1)]
        save(one, data)
        self.config['learnerReferenceVoice'] = {'voiceId': 'learner'}
        save(self.voices, self.config)
        completed = []
        def flaky(text, voice, api_key, output, model):
            if text == 'Goodbye.' and not completed:
                completed.append('failed_once')
                raise OSError('temporary response failure')
            output.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(FIXTURE, output)
        with patch('generate_audio.synthesize', side_effect=flaky) as synth:
            with self.assertRaises(OSError):
                self.run_audio(one)
            self.assertEqual(self.manifest(one)['status'], 'FAIL')
            report = self.run_audio(one)
            self.assertEqual(report['reused'], 1)
            self.assertEqual(report['generated'], 1)
            self.assertEqual(sum(call.args[0] == 'Hello.' for call in synth.call_args_list), 1)

    def test_reuse_only_never_synthesizes_missing_audio(self):
        one = self.source(1)
        with self.assertRaisesRegex(ValueError, 'reuse-only'):
            generate(one, self.voices, self.root, one.parent / 'audio.manifest.json', True)
        self.assertEqual(self.calls, 0)


if __name__ == '__main__':
    unittest.main()
