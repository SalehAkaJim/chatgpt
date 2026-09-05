import importlib.util
import json
from pathlib import Path
import tempfile
import unittest


MODULE_PATH = Path(__file__).resolve().parents[1] / "nova_tts.py"
SPEC = importlib.util.spec_from_file_location("nova_tts", MODULE_PATH)
nova_tts = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
SPEC.loader.exec_module(nova_tts)


class NovaTtsTests(unittest.TestCase):
    def test_character_slug(self):
        self.assertEqual(nova_tts.character_slug("Dr. Weber"), "dr-weber")
        self.assertEqual(nova_tts.character_slug("Herr Becker"), "herr-becker")

    def test_level_speeds_are_progressive(self):
        self.assertLess(nova_tts.speed_for_level("A1"), nova_tts.speed_for_level("A2"))
        self.assertLess(nova_tts.speed_for_level("A2"), nova_tts.speed_for_level("B1"))

    def test_fingerprint_changes_with_voice_context_and_level(self):
        base = dict(
            text="Guten Morgen.",
            previous_text="Hallo!",
            next_text="Wie geht es dir?",
            voice_id="voice-a",
            level="A1",
        )
        original = nova_tts.request_fingerprint(**base)
        for key, replacement in (
            ("voice_id", "voice-b"),
            ("previous_text", "Guten Abend."),
            ("next_text", "Bis später."),
            ("level", "A2"),
        ):
            changed = dict(base)
            changed[key] = replacement
            self.assertNotEqual(original, nova_tts.request_fingerprint(**changed))

    def test_duration_prefers_normalized_alignment(self):
        response = {
            "normalized_alignment": {"character_end_times_seconds": [0.1, 1.234]},
            "alignment": {"character_end_times_seconds": [0.1, 9.0]},
        }
        self.assertEqual(nova_tts.duration_from_alignment(response), 1234)

    def test_parser_reads_turns_without_database_ids(self):
        sql = """-- NOVA v9 / SERIES 999 / Mia's test
        CREATE PROCEDURE x()
        BEGIN
          SELECT id INTO v_level FROM levels WHERE cefr_level='B1';
          SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=2;
          SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3;
          SELECT id INTO v_c_lena FROM characters
            WHERE course_id=v_course AND name='Lena' AND gender='female';
          INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,
            title,title_translation,difficulty,sort_order)
          VALUES(v_chapter,v_c_lena,v_c_lena,'Lesson','درس',41,1);
          SET v_l_1=LAST_INSERT_ID();
          INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,
            difficulty,audio_url,audio_duration_ms,tokens)
          VALUES(v_l_1,v_c_lena,1,'character','Lena sagt: ''Hallo; Anna!''',
            'سلام',41,NULL,NULL,'[]');
        END;
        """
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "chapter.sql"
            path.write_text(sql, encoding="utf-8")
            rows = nova_tts.parse_source_file(path, Path(directory))
        self.assertEqual(len(rows), 1)
        self.assertEqual(rows[0]["key"], "B1-M02-C03-L01-T01")
        self.assertEqual(rows[0]["character_name"], "Lena")
        self.assertEqual(rows[0]["character_gender"], "female")
        self.assertEqual(rows[0]["text"], "Lena sagt: 'Hallo; Anna!'")

    def test_canonical_archive_turn_count_when_present(self):
        archive = (
            MODULE_PATH.parents[1]
            / "archive"
            / "series_001_080_fixed"
            / "extracted"
        )
        if not archive.is_dir():
            self.skipTest("Canonical archive is not materialized in this test checkout")
        files = sorted(archive.glob("nova_DE_FA_*_series_*_v9*.sql"))
        rows = [
            row
            for path in files
            for row in nova_tts.parse_source_file(path, MODULE_PATH.parents[2])
        ]
        self.assertEqual(len(files), 80)
        self.assertEqual(len(rows), 1524)
        self.assertEqual(len({row["character_name"] for row in rows}), 24)

    def test_wrong_gender_voice_is_rejected_for_lena(self):
        lena = {
            "name": "Lena",
            "gender": "female",
            "voice_preferences": {
                "preferred_ages": ["young"],
                "use_cases": ["conversational"],
                "traits": ["warm"],
            },
        }
        male_voice = {
            "voice_id": "source-1",
            "public_owner_id": "owner-1",
            "gender": "male",
            "language": "de",
        }
        score, reasons = nova_tts.character_voice_score(lena, male_voice)
        self.assertLess(score, nova_tts.MIN_VOICE_MATCH_SCORE)
        self.assertIn("hard-constraint-mismatch", reasons)

    def test_matching_female_german_voice_passes_for_lena(self):
        lena = {
            "name": "Lena",
            "gender": "female",
            "voice_preferences": {
                "preferred_ages": ["young"],
                "use_cases": ["conversational"],
                "traits": ["warm"],
            },
        }
        female_voice = {
            "voice_id": "source-1",
            "public_owner_id": "owner-1",
            "gender": "female",
            "language": "de",
            "verified_languages": [
                {"language": "de", "model_id": "eleven_multilingual_v2"}
            ],
            "category": "professional",
            "age": "young",
            "use_case": "conversational",
            "descriptive": "warm and clear",
            "usage_character_count_1y": 10000,
        }
        score, reasons = nova_tts.character_voice_score(lena, female_voice)
        self.assertGreaterEqual(score, nova_tts.MIN_VOICE_MATCH_SCORE)
        self.assertIn("gender-exact", reasons)
        self.assertIn("german-verified", reasons)

    def test_duplicate_audited_voice_is_rejected(self):
        mapping_path = Path(__file__).resolve().parents[1] / "voice_map.json"
        mapping = json.loads(mapping_path.read_text(encoding="utf-8"))
        archetype = mapping["characters"][0]["voice_archetype"]
        characters = []
        for name in ("Lena", "Anna"):
            characters.append(
                {
                    "name": name,
                    "gender": "female",
                    "role": "language_student",
                    "profile_source": "test.sql",
                    "voice_archetype": archetype,
                    "voice_id": "same",
                    "source_voice_id": "same-source",
                    "source_metadata": {
                        "gender": "female",
                        "language": "de",
                        "verified_languages": [],
                    },
                    "selection": {"score": 50},
                }
            )
        mapping["characters"] = characters
        with self.assertRaises(nova_tts.NovaTtsError):
            nova_tts.validate_voice_map(mapping)

    def test_voice_map_covers_current_character_roster(self):
        mapping_path = Path(__file__).resolve().parents[1] / "voice_map.json"
        mapping = json.loads(mapping_path.read_text(encoding="utf-8"))
        names = [item["name"] for item in mapping["characters"]]
        self.assertEqual(len(names), 24)
        self.assertEqual(len(set(names)), 24)
        self.assertEqual(next(x for x in mapping["characters"] if x["name"] == "Lena")["gender"], "female")
        self.assertIn("Dr. Weber", names)
        self.assertIn("Herr Becker", names)
        nova_tts.validate_voice_map(mapping, require_complete=False)

    def test_generated_sql_updates_only_two_persistent_turn_fields(self):
        entry = {
            "key": "A1-M01-C01-L01-T01",
            "cefr_level": "A1",
            "module_order": 1,
            "chapter_order": 1,
            "lesson_order": 1,
            "turn_order": 1,
            "character": "Lena",
            "role": "character",
            "text_sha256": "a" * 64,
            "duration_ms": 1234,
            "path": "nova/audio/turns/de-fa/A1/m01/c01/l01/t01-lena-demo.mp3",
        }
        sql = nova_tts.render_update_sql([entry])
        set_clause = sql.split("  SET t.audio_url=", 1)[1].split(";", 1)[0]
        self.assertIn("t.audio_duration_ms=", set_clause)
        self.assertNotIn("metadata", set_clause)
        self.assertNotIn("voice_key", sql)
        self.assertNotIn("UPDATE characters", sql)
        self.assertIn("SHA2(t.text,256)", sql)


if __name__ == "__main__":
    unittest.main()
