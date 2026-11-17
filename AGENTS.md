# AGENTS.md — upleaides

Technical orientation for agents and contributors. The README describes the
product; this file explains how to build, verify and work in the repository.

## Overview

Pleaides provides reusable utilities for agents, including skills, instructions, workflows and native Rust capabilities.

## Repository layout

| Path | Purpose |
|---|---|
| `crates/pleaides/` | Library crate |
| `docs/` | Product documentation |
| `tools/` | Validation entry points |

## Development

Use `pnpm` (never `npm` or `npx`). Run:

```sh
pnpm validate
```

It runs formatting, clippy with `-D warnings`, the full workspace test suite
and repository hygiene checks. Checks emit `PASS`, `FAIL` or `SKIP` and fail
on any error.

## Conventions

- English across source, docs, file names, output and commits.
- Comments are written in English and only where they explain non-obvious code;
  longer explanation belongs in `docs/`.
- Source files stay within 500 lines.
- Never print secrets; `.env.example` holds placeholders only.
- Use short-lived branches (`feat/...`, `fix/...`, `docs/...`), open a pull
  request against `dev` and consolidate into `main` after review.
- Commit format: `type(scope): description`, scope in English, 3–7 words, a body
  with at least three bullets `- **Title**: body` and one newline between them.
  Author `leojara95`; never add a `Co-authored-by` trailer.
