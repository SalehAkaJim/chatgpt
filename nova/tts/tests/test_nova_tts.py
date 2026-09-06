import importlib.util
import os
from pathlib import Path
import tempfile
import unittest

os.environ.setdefault("NOVA_COURSE", "de-fa")
P = Path(__file__).resolve().parents[1] / "nova_tts.py"
S = importlib.util.spec_from_file_location("nova_tts", P)
M = importlib.util.module_from_spec(S)
assert S.loader is not None
S.loader.exec_module(M)

class TestTts(unittest.TestCase):
    def test_course_scoped_paths(self):
        self.assertEqual(M.COURSE_AUDIO_DIR, M.AUDIO_DIR / M.COURSE)
        self.assertEqual(M.VOICE_MAP_PATH.name, f"voice_map_{M.COURSE.replace('-', '_')}.json")

    def test_b2_speed(self):
        self.assertGreaterEqual(M.speed_for_level("B2"), M.speed_for_level("B1"))

    def test_discovery_is_course_scoped(self):
        sql = """-- NOVA v9 / SERIES 001
SELECT id INTO v_level FROM levels WHERE cefr_level='A1';
SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1;
SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1;
INSERT INTO turns (lesson_id,character_id,sort_order,role,text,translation,difficulty,tokens)
VALUES (1,1,1,'character','Hallo','سلام',1,'[]');
"""
        with tempfile.TemporaryDirectory() as d:
            root = Path(d)
            p = root / "nova" / "courses" / M.COURSE / "staging" / "batch_01" / "chapter_0001"
            p.mkdir(parents=True)
            (p / "chapter.sql").write_text(sql, encoding="utf-8")
            self.assertEqual(len(M.discover_source_files(root)), 1)

if __name__ == "__main__":
    unittest.main()
