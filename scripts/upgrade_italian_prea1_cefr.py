#!/usr/bin/env python3
"""Add the currently identified real-world CEFR gaps to Italian Pre-A1.

This script is deliberately additive: it preserves the existing Italian Pre-A1
units and writes only capability units that close audited gaps. It does not
encode a target curriculum size or a final unit count.
"""
from __future__ import annotations

import json
from pathlib import Path

from upgrade_prea1_cefr import ROOT, make_about, make_forms, make_gate, make_numbers

ITALIAN = {
    "variant": "it-IT",
    "course": "fa-it-it",
    "prefix": "it",
    "dir": "it",
    "cast": [
        ("Giulia", "Marco"),
        ("Sofia", "Luca"),
        ("Chiara", "Matteo"),
        ("Elena", "Davide"),
        ("Giulia", "Luca"),
        ("Sofia", "Marco"),
        ("Chiara", "Davide"),
        ("Elena", "Matteo"),
    ],
    "greet": "Ciao!",
    "greet_fa": "سلام!",
    "name_q": "Come ti chiami?",
    "name_q_fa": "اسمت چیه؟",
    "name_a": "Mi chiamo Sara.",
    "name_a_fa": "اسم من ساراست.",
    "origin_q": "Di dove sei?",
    "origin_q_fa": "اهل کجایی؟",
    "origin_a": "Vengo dall'Iran.",
    "origin_a_fa": "من از ایران می‌آیم.",
    "age_q": "Quanti anni hai?",
    "age_q_fa": "چند سالته؟",
    "age_a": "Ho vent'anni.",
    "age_a_fa": "بیست سالمه.",
    "feel_q": "Come stai?",
    "feel_q_fa": "حالت چطوره؟",
    "feel_a": "Bene, grazie.",
    "feel_a_fa": "خوبم، ممنون.",
    "family": "Questa è mia sorella.",
    "family_fa": "این خواهر من است.",
    "n11": "undici",
    "n15": "quindici",
    "n20": "venti",
    "phone_q": "Qual è il suo numero di telefono?",
    "phone_q_fa": "شماره تلفنتان چیست؟",
    "phone_a": "Tre tre tre, uno due tre, quattro cinque sei sette.",
    "phone_a_fa": "۳۳۳ ۱۲۳ ۴۵۶۷.",
    "price_q": "Quanto costa?",
    "price_q_fa": "قیمتش چنده؟",
    "price_a": "Cinque euro.",
    "price_a_fa": "پنج یورو.",
    "day": "lunedì",
    "day_fa": "دوشنبه",
    "date": "cinque maggio",
    "date_fa": "پنجم مه",
    "fields": [("Nome", "نام"), ("Paese", "کشور"), ("Telefono", "تلفن")],
    "exit": "USCITA",
    "exit_fa": "خروج",
    "open": "APERTO",
    "open_fa": "باز",
    "exit_q": "Dov'è l'uscita?",
    "exit_q_fa": "خروج کجاست؟",
    "exit_a": "È lì.",
    "exit_a_fa": "آنجاست.",
    "repeat": "Può ripetere, per favore?",
    "repeat_fa": "می‌شود دوباره بگویید، لطفاً؟",
    "self_model": "Mi chiamo Sara. Vengo dall'Iran. Sto bene.",
    "form_model": "Nome: Sara\nPaese: Iran\nTelefono: 333 123 4567",
}

CAPABILITY_BUILDERS = {
    "about-me": make_about,
    "real-life-numbers": make_numbers,
    "forms-signs": make_forms,
    "real-world-gate": make_gate,
}


def main() -> None:
    outdir = ROOT / "content" / "production" / "it" / "Pre-A1"
    if not outdir.exists() or not any(outdir.glob("*.json")):
        raise SystemExit("Italian Pre-A1 base content must exist before the additive CEFR upgrade.")

    written = []
    for name, builder in CAPABILITY_BUILDERS.items():
        data = builder("it", ITALIAN)
        path = outdir / f"prea1-it-{name}-v1.json"
        serialized = json.dumps(data, ensure_ascii=False, indent=2) + "\n"
        changed = not path.exists() or path.read_text(encoding="utf-8") != serialized
        if changed:
            path.write_text(serialized, encoding="utf-8")
        written.append({"capability": name, "file": path.name, "changed": changed})

    print(json.dumps({
        "language": "it",
        "level": "Pre-A1",
        "policy": "add audited capabilities; no target unit count",
        "written": written,
    }, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
