#!/usr/bin/env python3
"""Validate English lexical sidecars using the app-wide dictionary inventory."""
try:
    from scripts import validate_english_lexical_annotations as base
    from scripts.build_english_lexical_annotations_v2 import load_augmented_corpus
except ModuleNotFoundError:
    import validate_english_lexical_annotations as base
    from build_english_lexical_annotations_v2 import load_augmented_corpus

base.load_corpus = load_augmented_corpus

if __name__ == "__main__":
    base.main()
