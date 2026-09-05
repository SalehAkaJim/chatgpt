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
    @staticmethod
    def word_row(
        *,
        key: str = "a" * 64,
        display_form: str = "Nachbar",
        part_of_speech: str = "noun",
    ):
        return {
            "key": key,
            "series": 92,
            "cefr_level": "B1",
            "lemma": display_form,
            "display_form": display_form,
            "part_of_speech": part_of_speech,
            "translation": "نمونه",
            "source_file": "chapter.sql",
        }

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

    def test_word_audio_eligibility_keeps_words_and_short_unpunctuated_chunks(self):
        self.assertTrue(nova_word_tts.is_word_audio_eligible(self.word_row()))
        self.assertTrue(
            nova_word_tts.is_word_audio_eligible(
                self.word_row(display_form="Guten Morgen", part_of_speech="phrase")
            )
        )

    def test_word_audio_eligibility_rejects_complete_sentences(self):
        for text in (
            "Wie geht es dir?",
            "Wir steigen um.",
            "Seit wir offen miteinander sprechen lösen wir Probleme schneller",
        ):
            with self.subTest(text=text):
                self.assertFalse(
                    nova_word_tts.is_word_audio_eligible(
                        self.word_row(display_form=text, part_of_speech="phrase")
                    )
                )

    def test_build_tasks_never_sends_complete_sentence_to_elevenlabs(self):
        word = self.word_row()
        sentence = self.word_row(
            key="f" * 64,
            display_form="Das ist ein vollständiger Satz.",
            part_of_speech="phrase",
        )
        config = nova_word_tts.load_word_voice()
        with tempfile.TemporaryDirectory() as directory:
            with mock.patch.object(nova_word_tts, "REPO_ROOT", Path(directory)):
                tasks = nova_word_tts.build_tasks(
                    [word, sentence], config, nova_word_tts.new_manifest()
                )
        self.assertEqual([task["display_form"] for task in tasks], ["Nachbar"])

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

    def test_generated_sql_clears_audio_only_for_exact_excluded_phrases(self):
        entry = self.word_row()
        entry.update(
            {
                "text_sha256": "b" * 64,
                "duration_ms": 987,
                "path": "nova/audio/words/de-fa/aa/nachbar-demo.mp3",
            }
        )
        excluded = self.word_row(
            key="c" * 64,
            display_form="Seit wir hier wohnen, ist es ruhiger.",
            part_of_speech="phrase",
        )
        sql = nova_word_tts.render_update_sql(
            [entry], excluded_entries=[excluded]
        )
        self.assertIn("nova_word_audio_exclusions", sql)
        self.assertIn("SET w.audio_url=NULL", sql)
        self.assertIn("w.audio_duration_ms=NULL", sql)
        self.assertIn("BINARY x.lemma=BINARY w.lemma", sql)
        self.assertIn("excluded_words", sql)

    def test_prune_removes_ineligible_manifest_entry_and_audio_file(self):
        row = self.word_row(
            key="d" * 64,
            display_form="Das ist ein vollständiger Satz.",
            part_of_speech="phrase",
        )
        manifest = nova_word_tts.new_manifest()
        manifest["entries"][row["key"]] = {
            **row,
            "path": "nova/audio/words/de-fa/dd/sentence.mp3",
        }
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            audio = root / manifest["entries"][row["key"]]["path"]
            audio.parent.mkdir(parents=True)
            audio.write_bytes(b"x" * 100)
            manifest_path = root / "manifest.json"
            with (
                mock.patch.object(nova_word_tts, "REPO_ROOT", root),
                mock.patch.object(nova_word_tts, "MANIFEST_PATH", manifest_path),
            ):
                removed = nova_word_tts.prune_ineligible_manifest_entries(
                    [row], manifest
                )
        self.assertEqual(len(removed), 1)
        self.assertFalse(audio.exists())
        self.assertEqual(manifest["entries"], {})

    def test_manifest_verification_rejects_sentence_entry(self):
        row = self.word_row(
            key="e" * 64,
            display_form="Das ist ein Satz.",
            part_of_speech="phrase",
        )
        manifest = nova_word_tts.new_manifest()
        manifest["entries"][row["key"]] = row
        with self.assertRaises(nova_word_tts.NovaTtsError):
            nova_word_tts.verify_manifest_eligibility([row], manifest)


if __name__ == "__main__":
    unittest.main()
