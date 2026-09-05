import importlib.util
import json
from pathlib import Path
import tempfile
import unittest
from unittest import mock


TTS_DIR = Path(__file__).resolve().parents[1]
MODULE_PATH = TTS_DIR / "nova_word_tts.py"
SPEC = importlib.util.spec_from_file_location("nova_word_tts", MODULE_PATH)
nova_word_tts = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
SPEC.loader.exec_module(nova_word_tts)


class NovaWordTtsTests(unittest.TestCase):
    def test_word_slug_preserves_german_letters_readably(self):
        self.assertEqual(nova_word_tts.word_slug("Tschüss"), "tschuess")
        self.assertEqual(nova_word_tts.word_slug("Über Größe"), "ueber-groesse")

    def test_word_fingerprint_is_pinned_to_text_and_voice(self):
        original = nova_word_tts.word_fingerprint(text="Guten Morgen", voice_id="lori")
        self.assertNotEqual(
            original,
            nova_word_tts.word_fingerprint(text="Guten Abend", voice_id="lori"),
        )
        self.assertNotEqual(
            original,
            nova_word_tts.word_fingerprint(text="Guten Morgen", voice_id="other"),
        )

    def test_parser_reads_word_inserts_without_database_ids(self):
        sql = """-- NOVA v9 / SERIES 999
        CREATE PROCEDURE x()
        BEGIN
          SELECT id INTO v_level FROM levels WHERE cefr_level='A1';
          SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=2;
          SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3;
          IF v_w IS NULL THEN
            INSERT INTO words
              (course_id,lemma,display_form,part_of_speech,translation,difficulty,
               grammar,distractors,example_text,example_translation,audio_url,
               audio_duration_ms,metadata)
            VALUES
              (v_course,'Tschüss','Tschüss','interjection','خداحافظ',1,
               NULL,'[]',NULL,NULL,NULL,NULL,NULL);
          END IF;
        END;
        """
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "chapter.sql"
            path.write_text(sql, encoding="utf-8")
            rows = nova_word_tts.parse_source_words(path, Path(directory))
        self.assertEqual(len(rows), 1)
        self.assertEqual(rows[0]["lemma"], "Tschüss")
        self.assertEqual(rows[0]["display_form"], "Tschüss")
        self.assertEqual(rows[0]["part_of_speech"], "interjection")
        self.assertEqual(rows[0]["translation"], "خداحافظ")
        self.assertEqual(len(rows[0]["key"]), 64)

    def test_lori_config_rejects_wrong_identity_or_gender(self):
        base = {
            "version": 1,
            "provider": "elevenlabs",
            "model_id": nova_word_tts.MODEL_ID,
            "source_voice_id": nova_word_tts.LORI_SOURCE_VOICE_ID,
            "requested_name": "Lori - Happy and Sweet",
            "required_profile": {"gender": "female"},
            "voice_id": nova_word_tts.LORI_SOURCE_VOICE_ID,
            "source_metadata": {"name": "Lori - Happy and Sweet", "gender": "female"},
        }
        nova_word_tts.validate_word_voice(base)
        wrong_voice = dict(base, source_voice_id="another")
        with self.assertRaises(nova_word_tts.NovaTtsError):
            nova_word_tts.validate_word_voice(wrong_voice)
        wrong_gender = dict(base, source_metadata={"name": "Lori", "gender": "male"})
        with self.assertRaises(nova_word_tts.NovaTtsError):
            nova_word_tts.validate_word_voice(wrong_gender)

    def test_lori_copy_may_have_a_different_assigned_voice_id(self):
        config = {
            "version": 1,
            "provider": "elevenlabs",
            "model_id": nova_word_tts.MODEL_ID,
            "source_voice_id": nova_word_tts.LORI_SOURCE_VOICE_ID,
            "requested_name": "Lori - Happy and Sweet",
            "required_profile": {"gender": "female"},
            "voice_id": "account-specific-copy-id",
            "source_metadata": {"name": "Lori - Happy and Sweet", "gender": "female"},
        }
        nova_word_tts.validate_word_voice(config)

    def test_after_series_skips_until_paid_initial_run(self):
        config = json.loads((TTS_DIR / "word_voice.json").read_text(encoding="utf-8"))
        with mock.patch.object(nova_word_tts, "MANIFEST_PATH", Path("missing.json")):
            self.assertFalse(
                nova_word_tts.is_initialized(config, nova_word_tts.new_manifest())
            )

    def test_generated_sql_updates_only_two_persistent_word_fields(self):
        entry = {
            "key": "a" * 64,
            "lemma": "Guten Morgen",
            "display_form": "Guten Morgen",
            "part_of_speech": "phrase",
            "translation": "صبح بخیر",
            "text_sha256": "b" * 64,
            "duration_ms": 987,
            "path": "nova/audio/words/de-fa/aa/guten-morgen-demo.mp3",
        }
        sql = nova_word_tts.render_update_sql([entry])
        set_clause = sql.split("  SET w.audio_url=", 1)[1].split(";", 1)[0]
        self.assertIn("w.audio_duration_ms=", set_clause)
        self.assertNotIn("metadata", set_clause)
        self.assertNotIn("UPDATE turns", sql)
        self.assertIn("SHA2(w.display_form,256)", sql)
        self.assertIn("BINARY w.lemma=BINARY u.lemma", sql)


if __name__ == "__main__":
    unittest.main()
