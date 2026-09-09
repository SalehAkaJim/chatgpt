# Nova Reference Snapshots

This directory is the durable archive/index for reusable Nova language-reference snapshots.

The active production snapshot continues to live under `nova/reference/<courseCode>/` so existing tools and CI do not change paths.

Each archived snapshot stores an immutable Git commit pointer plus the exact manifest/blob hashes and the canonical paths that make up that snapshot. We intentionally do not duplicate the large lexical/grammar JSON files here: Git already stores the exact bytes at the recorded commit, so copying them again would bloat the repository without adding reproducibility.

## Layout

```
nova/reference-snapshots/
  README.md
  en-fa/
    latest.json
    <snapshot-id>/
      snapshot.json
```

## Reuse

A snapshot is reusable as long as its `git.commit` and `files` entries are preserved. Restore/read the exact historical bytes from the recorded commit, for example:

```bash
git show <commit>:nova/reference/en-fa/lexical/A1.json
```

or check out the recorded commit in a temporary worktree/branch and point `ReferenceCatalog` / `LanguageReferenceCatalog` at that tree.

## Rules

- Never hand-edit an archived `snapshot.json` after publication.
- `latest.json` is only a convenience pointer; historical snapshot folders are immutable.
- The production pipeline keeps reading `nova/reference/<courseCode>/`.
- A new archive entry should be created whenever source locks, generated reference manifests, or language-reference extension manifests materially change.
