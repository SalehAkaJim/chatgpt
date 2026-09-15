# Nova Canonical Lesson Viewer

This is the reference frontend for the English `fa-en-us` implementation.

Unlike the retired prototype branch, this viewer **does not** read `content/production/**` and does not derive lesson stages in JavaScript. It consumes the same versioned lesson API contract that a production frontend should use.

## What it proves

- course/level lesson discovery comes from `GET /api/v1/courses/{course}/levels/{level}/lessons`;
- each lesson comes from `GET /api/v1/lessons/{slug}?course=fa-en-us`;
- `steps` are rendered in the exact order stored in `lesson_steps`;
- vocabulary renders from canonical `concept`, `lexeme`, or `word_form` content without flattening identities;
- tappable text uses public `utf16_start` / `utf16_end` annotation offsets;
- exercise answers are not inferred in the browser; submissions go to `POST /api/v1/exercises/{uuid}/grade`;
- returned audio URLs are used directly when present, with browser speech synthesis only as a prototype fallback when canonical audio metadata is unavailable;
- progress remains local for now, keyed by canonical lesson and step IDs.

## Run

Prepare/import the English reference database, then from the repository root run:

```bash
python prototype/lesson-viewer/server.py
```

Open:

```text
http://127.0.0.1:8765
```

The helper starts both the static viewer (`8765`) and canonical lesson API (`8787`). If the API is already running, use:

```bash
python prototype/lesson-viewer/server.py --no-api
```

The frontend API base can be overridden before `app.js` loads by setting `window.NOVA_API_BASE`; otherwise it defaults to `http://127.0.0.1:8787`.

## Boundary

This viewer intentionally contains no `buildSteps()` equivalent and no `/api/unit`/raw-content path. If the stored delivery graph is missing, the API returns a delivery error instead of letting the frontend invent a flow.
