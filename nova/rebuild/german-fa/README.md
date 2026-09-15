# Nova German → Persian rebuild

This branch rebuilds the German course from source material instead of authoring the target-language curriculum from scratch.

## Course contract

- Learner language: Persian (`fa-IR`)
- Target language: German (`de-DE`)
- Levels: `Pre-A1`, `A1`, `A2`, `B1`, `B2`, `C1`, `C2`
- Source German sentences, vocabulary, drills and grammar examples are imported from source-backed material.
- Persian learner-facing translations and explanations are authored during import.
- Every lesson is decomposed into ordered stages and items.
- Words and phrases in utterances can be linked through lexical annotations to lexemes/word forms and Persian translation/explanation payloads.

## Primary source

FSI German Basic Course, 24 units, 725 pages and 34+ hours of audio. FSI materials are public-domain US Government material. Source landing page: https://www.fsi-language-courses.org/fsi-german-basic-course/

FSI is the primary source backbone for the initial curriculum. Additional source-backed material is required for complete C1/C2 coverage; source identity remains attached to imported entities.

## CEFR mapping policy

FSI did not publish these 24 units as CEFR levels. Nova therefore stores CEFR placement as a Nova curriculum mapping, not as a claim made by FSI. The mapping must be audited against the actual linguistic functions and grammar in each unit.

Initial curriculum placement:

- Pre-A1: onboarding / survival subset extracted from Unit 1
- A1: Units 1–5
- A2: Units 6–10
- B1: Units 11–15
- B2: Units 16–20
- C1: Units 21–24 plus advanced source supplements
- C2: advanced source supplements only; FSI Basic alone is not represented as C2

## Status

The source ingestion has started. `source-map.json` records all 24 FSI units and their curriculum placement. `pre-a1/unit-01.json` is the first Persian learner-facing mapped unit and is intentionally source-backed rather than invented German content.
