#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
from pathlib import Path


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo-root", default=".")
    parser.add_argument("--output", default="nova/curriculum/en-fa/release_readiness.json")
    args = parser.parse_args()

    root = Path(args.repo_root).resolve()
    policy = load(root / "nova/_assistant/content-system-v1/product_quality_v2.policy.json")
    pilot = load(root / "nova/curriculum/en-fa/learner_pilot.json")
    factory = load(root / "nova/curriculum/en-fa/factory_validation.json")
    release_policy = policy.get("releaseReadiness") or {}

    errors = []
    if factory.get("status") != "PASS":
        errors.append("Canonical full-prefix validation is not PASS.")

    if release_policy.get("requireRealLearnerPilotForPublicRelease", True):
        if pilot.get("learnerTested") is not True:
            errors.append("Real learner pilot has not been completed.")
        if int(pilot.get("learners") or 0) < int(release_policy.get("minimumLearners", 10)):
            errors.append("Learner count is below the public-release threshold.")
        if int(pilot.get("minimumLessonsPerLearner") or 0) < int(release_policy.get("minimumLessonsPerLearner", 20)):
            errors.append("Lessons completed per learner are below the public-release threshold.")
        if int(pilot.get("completedSessions") or 0) < int(release_policy.get("minimumCompletedSessions", 100)):
            errors.append("Completed learner sessions are below the public-release threshold.")
        if pilot.get("learnerTested") is True and not pilot.get("evidence"):
            errors.append("Learner-tested status requires explicit evidence references.")

    payload = {
        "schemaVersion": 1,
        "status": "READY" if not errors else "NOT_READY",
        "authoringMayContinue": True,
        "publicReleaseReady": not errors,
        "factoryStatus": factory.get("status"),
        "passedPrefixLength": factory.get("passedPrefixLength"),
        "learnerPilot": pilot,
        "errors": errors,
    }
    output = root / args.output
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"status": payload["status"], "errors": len(errors)}, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
