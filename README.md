# Natuleadan® Pleaides™

> Reusable utilities for AI coding agents.

## What it is

Pleaides collects the reusable building blocks around agents: skills, instructions, workflows, agent definitions and native Rust capabilities. Skills written here are first-party and published from this repository.

## What it provides

It provides one folder per skill with a `SKILL.md` at its root, reusable instructions and workflows, and native Rust utilities exposed as capabilities that other agents can consume.

## Architecture

Each skill is self-contained with frontmatter describing when to use it. Extra material becomes a sub-skill or a `references/` folder, never a new top-level skill, keeping the catalog small and predictable.

## Repository layout

The workspace groups the library crate under `crates/`, documentation under `docs/` and validation entry points under `tools/`. All source lives in the development branch until release.

## Getting started

Clone `https://github.com/natuleadan/pleaides.git`. This branch holds only the
project baseline; the source code, build manifests and full validation suite
live in the `dev` branch. Switch to `dev` to build and run the project.

## Development

Work happens on short-lived branches merged into `dev`. Commits follow
`type(scope): description` with a body of at least three bullets; commitlint
enforces the policy locally and in CI. The `main` branch is protected and holds
only this minimal baseline until the first release.

## Status

Pending refactor from a skills-only repository into a broader utilities repository with native Rust code. The first published version will be 0.1.0.

## License

Apache-2.0. See [LICENSE](LICENSE).

## Trademark

Natuleadan® Pleaides™ is a trademark of Natuleadan. Other constellation
repositories: Pulsar, Aurora, Pleaides, Andromeda and Orion.
