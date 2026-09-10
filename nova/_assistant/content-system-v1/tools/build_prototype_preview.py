#!/usr/bin/env python3
"""Build a self-contained Nova content-testing preview from committed PASS evidence.

The preview deliberately follows the text/content gate rather than the paid-audio gate:
validated Lessons appear immediately, verified ElevenLabs audio is reused when available,
and the browser prototype falls back to Web Speech synthesis when an audio asset is absent.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import shutil


def load(path: Path):
    return json.loads(path.read_text(encoding="utf-8"))


def save(path: Path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def _patch_preview_app(source: str) -> str:
    replacements = []

    replacements.append((
        "  if (recognizer) { recognizer.abort(); recognizer = null; }\n}",
        "  if (recognizer) { recognizer.abort(); recognizer = null; }\n"
        "  if (window.speechSynthesis) window.speechSynthesis.cancel();\n}"
    ))

    replacements.append((
        "function audioError() { showFeedback(false, 'صدا پخش نشد. اتصال را بررسی کن و دوباره امتحان کن.'); }\n"
        "async function playAudio(sourceKey, kind = 'turn') {\n"
        "  stopMedia();\n"
        "  const item = audioItems.get(kind + ':' + sourceKey);\n"
        "  if (!item) { audioError(); return; }\n"
        "  const current = generation;\n"
        "  const audio = new Audio(audioUrl(item)); playback = audio;\n"
        "  audio.onerror = () => { if (current === generation && playback === audio) audioError(); };\n"
        "  try { await audio.play(); } catch { if (current === generation && playback === audio) audioError(); }\n"
        "}",
        "function audioError() { showFeedback(false, 'صدا پخش نشد. اتصال را بررسی کن و دوباره امتحان کن.'); }\n"
        "function previewText(sourceKey, kind = 'turn') {\n"
        "  if (kind === 'turn') return lesson?.turns?.find(t => t.turnKey === sourceKey)?.textEn || '';\n"
        "  return lesson?.lexicalItems?.find(item => item.lexicalKey === sourceKey)?.displayForm || '';\n"
        "}\n"
        "function speakPreview(text) {\n"
        "  return new Promise(resolve => {\n"
        "    if (!text || !window.speechSynthesis || !window.SpeechSynthesisUtterance) { resolve(false); return; }\n"
        "    const utterance = new SpeechSynthesisUtterance(text);\n"
        "    utterance.lang = 'en-US'; utterance.rate = 0.9;\n"
        "    utterance.onend = () => resolve(true); utterance.onerror = () => resolve(false);\n"
        "    window.speechSynthesis.cancel(); window.speechSynthesis.speak(utterance);\n"
        "  });\n"
        "}\n"
        "async function playAudio(sourceKey, kind = 'turn') {\n"
        "  stopMedia();\n"
        "  const item = audioItems.get(kind + ':' + sourceKey);\n"
        "  if (!item) { if (!await speakPreview(previewText(sourceKey, kind))) audioError(); return; }\n"
        "  const current = generation;\n"
        "  const audio = new Audio(audioUrl(item)); playback = audio;\n"
        "  audio.onerror = async () => {\n"
        "    if (current === generation && playback === audio && !await speakPreview(previewText(sourceKey, kind))) audioError();\n"
        "  };\n"
        "  try { await audio.play(); } catch { if (current === generation && playback === audio && !await speakPreview(previewText(sourceKey, kind))) audioError(); }\n"
        "}"
    ))

    replacements.append((
        "    const item = audioItems.get('turn:' + key);\n"
        "    if (!item) { audioError(); return; }\n"
        "    const audio = new Audio(audioUrl(item)); playback = audio;",
        "    const item = audioItems.get('turn:' + key);\n"
        "    if (!item) {\n"
        "      if (!await speakPreview(previewText(key, 'turn'))) { audioError(); return; }\n"
        "      continue;\n"
        "    }\n"
        "    const audio = new Audio(audioUrl(item)); playback = audio;"
    ))

    replacements.append((
        "    const source = await sourceResponse.text();\n"
        "    const [loadedCourse, manifest] = await Promise.all([jsonFile(entry.courseSource), jsonFile(entry.audioManifest)]);\n"
        "    const loadedLesson = JSON.parse(source);\n"
        "    if (!crypto.subtle) throw new Error('برای بررسی فایل های درس، صفحه را با HTTPS یا localhost باز کن.');\n"
        "    const hash = [...new Uint8Array(await crypto.subtle.digest('SHA-256', new TextEncoder().encode(source)))].map(x => x.toString(16).padStart(2, '0')).join('');\n"
        "    if (manifest.status !== 'PASS' || manifest.sourceHash !== hash || manifest.lessonKey !== loadedLesson.lessonKey) {\n"
        "      throw new Error('صداهای این نسخه از درس هنوز آماده نیستند. کمی بعد دوباره امتحان کن.');\n"
        "    }",
        "    const source = await sourceResponse.text();\n"
        "    const loadedCourse = await jsonFile(entry.courseSource);\n"
        "    let manifest = null;\n"
        "    try { manifest = await jsonFile(entry.audioManifest); } catch {}\n"
        "    const loadedLesson = JSON.parse(source);\n"
        "    let hash = entry.sourceHash || '';\n"
        "    if (crypto.subtle) hash = [...new Uint8Array(await crypto.subtle.digest('SHA-256', new TextEncoder().encode(source)))].map(x => x.toString(16).padStart(2, '0')).join('');\n"
        "    const audioReady = manifest?.status === 'PASS' && manifest.sourceHash === hash && manifest.lessonKey === loadedLesson.lessonKey;"
    ))

    replacements.append((
        "    audioItems = new Map(manifest.items.map(item => [item.audioClass + ':' + item.sourceKey, item]));",
        "    audioItems = new Map((audioReady ? manifest.items : []).map(item => [item.audioClass + ':' + item.sourceKey, item]));"
    ))

    replacements.append((
        "    steps = lesson.activities.flatMap(activity => activity.type === 'dialogue'\n"
        "      ? activity.config.exchanges.map(exchange => ({activity, exchange})) : [{activity}]);",
        "    const activityCorrectText = activity => {\n"
        "      const config = activity.config || {};\n"
        "      if (activity.type === 'sentence_order') return config.answerEn || '';\n"
        "      if (activity.type === 'speak') return config.textEn || '';\n"
        "      if (['response_choice', 'comprehension', 'fill_blank'].includes(activity.type)) {\n"
        "        const options = activity.type === 'fill_blank' ? (config.optionsEn || []) : (config.options || config.optionsEn || []);\n"
        "        return Number.isInteger(config.answerIndex) ? (options[config.answerIndex] || '') : '';\n"
        "      }\n"
        "      return '';\n"
        "    };\n"
        "    let runtimeActivities = lesson.activities;\n"
        "    const dialogueIndex = lesson.activities.findIndex(activity => activity.type === 'dialogue');\n"
        "    if (dialogueIndex > 0) {\n"
        "      const dialogue = lesson.activities[dialogueIndex];\n"
        "      const dialogueKeys = new Set((dialogue.config?.exchanges || []).flatMap(exchange => [exchange.promptTurnKey, exchange.responseTurnKey]));\n"
        "      const dialogueTexts = new Set(lesson.turns.filter(turn => dialogueKeys.has(turn.turnKey)).flatMap(turn => [turn.textEn, turn.translationFa, turn.speechTargetEn]).filter(Boolean).map(speechNorm));\n"
        "      const earlyActivities = lesson.activities.slice(0, dialogueIndex);\n"
        "      const needsDialogueFirst = earlyActivities.some(activity => [activity.promptEn, activityCorrectText(activity)].filter(Boolean).map(speechNorm).some(text => dialogueTexts.has(text)));\n"
        "      if (needsDialogueFirst) runtimeActivities = [dialogue, ...earlyActivities, ...lesson.activities.slice(dialogueIndex + 1)];\n"
        "    }\n"
        "    steps = runtimeActivities.flatMap(activity => activity.type === 'dialogue'\n"
        "      ? activity.config.exchanges.map(exchange => ({activity, exchange})) : [{activity}]);"
    ))

    patched = source
    for old, new in replacements:
        if old not in patched:
            raise ValueError("Prototype source changed; preview patch anchor was not found")
        patched = patched.replace(old, new, 1)
    return patched


def build(repo_root: Path, output: Path, course_code: str) -> dict:
    repo_root = repo_root.resolve()
    output = output.resolve()
    validation_path = repo_root / "nova/curriculum" / course_code / "factory_validation.json"
    validation = load(validation_path)
    if validation.get("status") != "PASS" or validation.get("factoryDesignStatus") != "PASS":
        raise ValueError("Committed factory validation is not PASS; preview will not publish unverified content")

    course_dir = repo_root / "nova/courses" / course_code
    course_source = course_dir / "course.source.json"
    course = load(course_source)
    pass_reports = [r for r in validation.get("lessonReports", []) if r.get("status") == "PASS"]
    pass_reports.sort(key=lambda r: r.get("sortOrder", 0))
    if len(pass_reports) != validation.get("passedPrefixLength"):
        raise ValueError("PASS Lesson report count does not match passedPrefixLength")

    if output.exists():
        shutil.rmtree(output)
    prototype_out = output / "nova/prototype"
    courses_out = output / "nova/courses"
    prototype_out.parent.mkdir(parents=True, exist_ok=True)
    shutil.copytree(repo_root / "nova/prototype", prototype_out)
    (courses_out / course_code).mkdir(parents=True, exist_ok=True)
    shutil.copy2(course_source, courses_out / course_code / "course.source.json")

    entries = []
    copied_audio = 0
    browser_tts_lessons = 0
    for report in pass_reports:
        order = int(report["sortOrder"])
        number = f"{order:04d}"
        source = course_dir / "lessons" / number / "lesson.source.json"
        if not source.is_file():
            raise ValueError(f"Validated Lesson source is missing: {source}")
        lesson = load(source)
        if lesson.get("lessonKey") != report.get("lessonKey") or lesson.get("sortOrder") != order:
            raise ValueError(f"Validation/source mismatch at Lesson {order}")
        source_hash = sha256(source)
        lesson_out_dir = courses_out / course_code / "lessons" / number
        lesson_out_dir.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source, lesson_out_dir / "lesson.source.json")

        manifest_source = source.parent / "audio.manifest.json"
        audio_ready = False
        if manifest_source.is_file():
            manifest = load(manifest_source)
            audio_ready = (
                manifest.get("status") == "PASS"
                and manifest.get("lessonKey") == lesson.get("lessonKey")
                and manifest.get("sourceHash") == source_hash
            )
            if audio_ready:
                shutil.copy2(manifest_source, lesson_out_dir / "audio.manifest.json")
                for item in manifest.get("items", []):
                    relative = item.get("path")
                    if not relative:
                        continue
                    asset = repo_root / relative
                    if not asset.is_file():
                        audio_ready = False
                        break
                    target = output / relative
                    target.parent.mkdir(parents=True, exist_ok=True)
                    if not target.exists():
                        shutil.copy2(asset, target)
                        copied_audio += 1
        if not audio_ready:
            (lesson_out_dir / "audio.manifest.json").unlink(missing_ok=True)
            browser_tts_lessons += 1

        entries.append({
            "courseCode": course_code,
            "levelKey": lesson["levelKey"],
            "lessonKey": lesson["lessonKey"],
            "lessonNumber": number,
            "titleFa": lesson["titleFa"],
            "courseSource": f"courses/{course_code}/course.source.json",
            "lessonSource": f"courses/{course_code}/lessons/{number}/lesson.source.json",
            "audioManifest": f"courses/{course_code}/lessons/{number}/audio.manifest.json",
            "sourceHash": source_hash,
            "previewAudio": "elevenlabs" if audio_ready else "browser_tts",
            "automatedScore": report.get("automatedScore")
        })

    save(courses_out / "index.json", {
        "version": 2,
        "preview": True,
        "source": "committed_factory_validation",
        "courseCode": course_code,
        "lessons": entries,
    })

    app_path = prototype_out / "app.js"
    app_path.write_text(_patch_preview_app(app_path.read_text(encoding="utf-8")), encoding="utf-8")

    meta = {
        "schemaVersion": 1,
        "courseCode": course_code,
        "lessonCount": len(entries),
        "lastLesson": entries[-1]["lessonKey"] if entries else None,
        "validationSource": str(validation_path.relative_to(repo_root)),
        "validationSha256": sha256(validation_path),
        "elevenLabsLessons": len(entries) - browser_tts_lessons,
        "browserTtsLessons": browser_tts_lessons,
        "copiedAudioAssets": copied_audio,
    }
    save(prototype_out / "preview-meta.json", meta)

    (output / ".nojekyll").write_text("", encoding="utf-8")
    (output / "index.html").write_text(
        '<!doctype html><meta charset="utf-8"><meta http-equiv="refresh" content="0;url=nova/prototype/">'
        '<title>Nova Preview</title><a href="nova/prototype/">Open Nova Preview</a>\n',
        encoding="utf-8",
    )
    return meta


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo-root", type=Path, default=Path("."))
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--course", default="en-fa")
    args = parser.parse_args()
    meta = build(args.repo_root, args.output, args.course)
    print(json.dumps(meta, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
