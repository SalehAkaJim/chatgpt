#!/usr/bin/env python3
"""Import publisher-authored Deutsch im Blick vocabulary without generating educational text."""
from __future__ import annotations

import argparse
import json
import re
from datetime import date
from pathlib import Path

import requests
from bs4 import BeautifulSoup
from jsonschema import validate

ROOT = Path(__file__).resolve().parents[1]
SOURCE_ID = "coerll-deutsch-im-blick"
URL = "https://coerll.utexas.edu/dib/voc.php?k={chapter}"
LICENSE = "CC BY 4.0"
LICENSE_URL = "https://creativecommons.org/licenses/by/4.0/"


def clean(value: str) -> str:
    return " ".join(value.replace("\xa0", " ").split())


def slug(value: str) -> str:
    value = value.casefold().replace("ä", "ae").replace("ö", "oe").replace("ü", "ue").replace("ß", "ss")
    return re.sub(r"[^a-z0-9]+", "-", value).strip("-") or "section"


def section_label(raw: str) -> tuple[str, str | None]:
    if "•" in raw:
        de, en = raw.split("•", 1)
        return clean(de), clean(en)
    return clean(raw), None


def find_section(node, known_sections: list[str]) -> str | None:
    known = set(known_sections)
    for prev in node.find_all_previous(limit=80):
        text = clean(prev.get_text(" ", strip=True))
        if text in known:
            return text
    return None


def extract_pairs(html: str) -> tuple[str, list[dict]]:
    soup = BeautifulSoup(html, "html.parser")
    visible = clean(soup.get_text(" ", strip=True))
    title_match = re.search(r"Kapitel\s+\d+\s*:\s*[^|]+?(?=\s+This chapter|\s+Sections|$)", visible)
    chapter_title = clean(title_match.group(0)) if title_match else ""

    known_sections: list[str] = []
    for a in soup.find_all("a"):
        text = clean(a.get_text(" ", strip=True))
        if "•" in text and 2 < len(text) < 140 and text not in known_sections:
            known_sections.append(text)

    rows: list[dict] = []
    seen: set[tuple[str, str, str]] = set()
    for tr in soup.find_all("tr"):
        cells = [clean(c.get_text(" ", strip=True)) for c in tr.find_all(["td", "th"], recursive=False)]
        cells = [c for c in cells if c]
        if len(cells) < 2:
            continue
        de, en = cells[0], cells[1]
        if len(de) > 220 or len(en) > 300 or de == en:
            continue
        section = find_section(tr, known_sections)
        if not section:
            continue
        key = (section, de, en)
        if key in seen:
            continue
        seen.add(key)
        rows.append({"section": section, "de": de, "en": en})

    if len(rows) < 10:
        raise RuntimeError(f"Parser found only {len(rows)} vocabulary pairs; refusing to guess or generate missing content")
    if not chapter_title:
        chapter_title = f"Kapitel {re.search(r'k=(\d+)', soup.base.get('href', '') if soup.base else '') or ''}".strip()
    return chapter_title, rows


def build_batch(chapter: int, title: str, rows: list[dict]) -> dict:
    unit_key = f"coerll-dib-k{chapter:02d}"
    sections: list[str] = []
    for row in rows:
        if row["section"] not in sections:
            sections.append(row["section"])

    lessons = []
    section_keys = {}
    for idx, raw in enumerate(sections, 1):
        de_title, en_title = section_label(raw)
        key = f"{unit_key}-{slug(de_title)}"
        section_keys[raw] = (idx, key)
        lesson = {"key": key, "title": de_title, "sort_order": idx, "source_url": URL.format(chapter=chapter)}
        if en_title:
            lesson["source_translation"] = en_title
        lessons.append(lesson)

    items = []
    counters = {raw: 0 for raw in sections}
    for row in rows:
        section_idx, lesson_key = section_keys[row["section"]]
        counters[row["section"]] += 1
        item_idx = counters[row["section"]]
        items.append({
            "kind": "concept",
            "external_id": f"{unit_key}-s{section_idx:02d}-i{item_idx:03d}",
            "data": {
                "lesson_key": lesson_key,
                "forms": {"de": row["de"]},
                "translations": {"en": row["en"]},
                "source_order": item_idx,
            },
        })

    return {
        "batch_id": f"de-coerll-dib-k{chapter:02d}-v1",
        "course": SOURCE_ID,
        "target_language": "de",
        "target_variant": "de-DE",
        "cefr": None,
        "source_level": "first-year German",
        "curriculum_unit": unit_key,
        "generator": "source-import:coerll-deutsch-im-blick-v1",
        "source": {
            "source_id": SOURCE_ID,
            "title": "Deutsch im Blick",
            "publisher": "COERLL, The University of Texas at Austin",
            "author": "Dr. Zsuzsanna Abrams",
            "source_url": URL.format(chapter=chapter),
            "license": LICENSE,
            "license_url": LICENSE_URL,
            "retrieved_at": date.today().isoformat(),
        },
        "unit": {"external_id": unit_key, "title": title, "sort_order": chapter},
        "lessons": lessons,
        "items": items,
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--chapters", default="1-10", help="e.g. 1-10 or 1,2,5")
    args = parser.parse_args()
    if "-" in args.chapters and "," not in args.chapters:
        start, end = map(int, args.chapters.split("-", 1))
        chapters = list(range(start, end + 1))
    else:
        chapters = [int(x) for x in args.chapters.split(",")]

    schema = json.loads((ROOT / "content" / "batch.schema.json").read_text(encoding="utf-8"))
    out_dir = ROOT / "content" / "production" / "de" / SOURCE_ID
    out_dir.mkdir(parents=True, exist_ok=True)
    session = requests.Session()
    session.headers["User-Agent"] = "NovaLanguageSourceImporter/1.0 (+source-attribution)"

    for chapter in chapters:
        url = URL.format(chapter=chapter)
        response = session.get(url, timeout=30)
        response.raise_for_status()
        title, rows = extract_pairs(response.text)
        batch = build_batch(chapter, title, rows)
        validate(instance=batch, schema=schema)
        path = out_dir / f"chapter-{chapter:02d}.json"
        path.write_text(json.dumps(batch, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        print(f"chapter {chapter}: {len(batch['lessons'])} lessons, {len(batch['items'])} source items -> {path}")


if __name__ == "__main__":
    main()
