#!/usr/bin/env python3
"""Idempotently repair known Turkish A2 content that crosses the repo's B1 boundary."""
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

REPAIRS = {
    ROOT / "content/specs/tr/A2/batch-02.json": [
        ('["cocukken","çocukken","وقتی بچه بودم","expression",3]', '["eskiden","eskiden","قبلاً","adverb",3]'),
        ('Çocukken küçük bir şehirde yaşadım.', 'Eskiden küçük bir şehirde yaşadım.'),
        ('"describe_childhood",["cocukken"],3', '"describe_past_background",["eskiden"],3'),
        ('Çocukken nerede yaşadın?', 'Eskiden nerede yaşadın?'),
        ('وقتی بچه بودی کجا زندگی کردی؟', 'قبلاً کجا زندگی کردی؟'),
        ('وقتی بچه بودم در یک شهر کوچک زندگی کردم.', 'قبلاً در یک شهر کوچک زندگی کردم.'),
        ('"Tanışırken"', '"Tanışma"'),
        ('Ne sipariş etmiştiniz?', 'Ne sipariş ettiniz?'),
        ('چه سفارش داده بودید؟', 'چه سفارش دادید؟'),
        ('Tavuk istemiştim, bu balık.', 'Tavuk istedim, bu balık.'),
        ('مرغ خواسته بودم، این ماهی است.', 'مرغ سفارش دادم، این ماهی است.'),
        ('Ben tavuk istemiştim.', 'Ben tavuk istedim.'),
    ],
    ROOT / "content/specs/tr/A2/retrofit-batch-01-third-lessons.json": [
        ('Bence bugün dinlenmelisin; düzelmezse doktora gidebilirsin.', 'Bence bugün dinlenmelisin. Sonra doktora gidebilirsin.'),
        ('به نظرم امروز باید استراحت کنی؛ اگر بهتر نشد می‌توانی پیش پزشک بروی.', 'به نظرم امروز باید استراحت کنی. بعد می‌توانی پیش پزشک بروی.'),
        ('"give_conditional_health_advice"', '"give_simple_health_advice"'),
        ('Haklısın, düzelmezse doktora giderim.', 'Haklısın. Bugün dinleneceğim. Sonra doktora gidebilirim.'),
        ('درست می‌گویی، اگر بهتر نشد پیش پزشک می‌روم.', 'درست می‌گویی. امروز استراحت می‌کنم. بعد می‌توانم پیش پزشک بروم.'),
        ('İki gündür başım ağrıyor ve biraz yorgunum. Bugün dinlenmeliyim. Çok su içmeliyim. Düzelmezsem doktora gidebilirim.', 'İki gündür başım ağrıyor ve biraz yorgunum. Bugün dinlenmeliyim. Çok su içmeliyim. Sonra doktora gidebilirim.'),
        ('Müze kapalı olursa sahile gidebiliriz.', 'Müze bugün kapalı. Bu yüzden sahile gidebiliriz.'),
        ('Başka bir oda varsa değiştirebilir miyiz?', 'Başka bir oda rica ediyorum. Odayı değiştirebilir miyiz?'),
    ],
}


def apply(path: Path, replacements: list[tuple[str, str]]) -> int:
    text = path.read_text(encoding="utf-8")
    changed = 0
    for old, new in replacements:
        if old in text:
            text = text.replace(old, new)
            changed += 1
        elif new not in text:
            raise SystemExit(f"{path}: neither expected old nor repaired text found: {old!r}")
    path.write_text(text, encoding="utf-8")
    return changed


def main() -> None:
    total = 0
    for path, replacements in REPAIRS.items():
        total += apply(path, replacements)
    print(f"Turkish A2 CEFR boundary normalization complete; replacements applied={total}")


if __name__ == "__main__":
    main()
