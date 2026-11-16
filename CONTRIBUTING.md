# Contributing

This repository is an install contract for the official GitHub Actions runner.
It is not a job scheduler.

Please report security problems privately per [SECURITY.md](SECURITY.md).

## Rules

- Public CI stays on the exact GitHub-hosted `ubuntu-26.04` image. No
  `-latest` label and no self-hosted label in this repository.
- Do not add GARM, Incus, admission, placement, or a custom queue.
- Do not embed real host, organization, or credential values.
- Pin `actions/runner` by version, URL, and SHA-256 in `config/runner-pin.json`.
- Pin shared workflow calls by full SHA in `.github/workflows`; keep version
  updates in the normal dependency updater.

## Before a pull request

```
just verify
```
