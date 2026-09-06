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

    def test_guarded_count_min_locator(self):
        sql = """-- NOVA INDEPENDENT DE-FA COURSE V2
-- SERIES 3
SELECT COUNT(*),MIN(id) INTO v_count,v_level FROM levels WHERE cefr_level='A1';
SELECT COUNT(*),MIN(id) INTO v_count,v_module FROM modules WHERE sort_order=1;
SELECT COUNT(*),MIN(id) INTO v_count,v_chapter FROM chapters WHERE sort_order=3;
"""
        locator = M.parse_source_locator(Path("chapter.sql"), sql)
        self.assertEqual(locator, {
            "cefr_level": "A1",
            "module_order": 1,
            "chapter_order": 3,
            "series": 3,
        })

    def test_guarded_character_lookup(self):
        sql = """-- SERIES 3
SELECT COUNT(*),MIN(id) INTO v_count,v_level FROM levels WHERE cefr_level='A1';
SELECT COUNT(*),MIN(id) INTO v_count,v_module FROM modules WHERE sort_order=1;
SELECT COUNT(*),MIN(id) INTO v_count,v_chapter FROM chapters WHERE sort_order=3;
SELECT COUNT(*),MIN(id) INTO v_count,v_c_lena FROM characters WHERE name='Lena' AND gender='female';
INSERT INTO lessons (sort_order) VALUES (1);
SET v_l_1=LAST_INSERT_ID();
INSERT INTO turns (lesson_id,character_id,sort_order,role,text) VALUES (v_l_1,v_c_lena,1,'character','Hallo');
"""
        with tempfile.TemporaryDirectory() as d:
            root = Path(d)
            path = root / "chapter.sql"
            path.write_text(sql, encoding="utf-8")
            rows = M.parse_source_file(path, root)
            self.assertEqual(rows[0]["character_name"], "Lena")
            self.assertEqual(rows[0]["character_gender"], "female")

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
