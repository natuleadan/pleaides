# Natuleadan® upleaides™

> Reusable utilities: skills, instructions, workflows, agents and capabilities.

Technical documentation for the repository. Product scope and specifications
live in `docs/`; work is tracked in `tareas/`.

## Structure

| Path | Purpose |
|---|---|
| `crates/` | Rust library crates, one concern per crate |
| `docs/` | Product documentation |
| `tools/` | Validation entry points |

## Validation

Run `pnpm validate` before pushing. It runs formatting, linting, tests and
repository hygiene checks, and is the same command CI uses.

## Trademark

Natuleadan® upleaides™ is a trademark of Natuleadan.

## Branching workflow

`main` is the protected production branch and the default branch. `dev` is the
protected integration branch. Work happens on short-lived branches
(`feat/...`, `fix/...`, `docs/...`, `refactor/...`, `ci/...`) and reaches `dev`
through a pull request; `dev` is consolidated into `main` afterwards. Never
push directly to `main` or `dev`, and never rewrite published history.
