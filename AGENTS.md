# AGENTS.md

Technical instructions for agents and contributors. The README describes the
product; this file explains how to build, verify and work in the repository.

## Development

Use `pnpm` (never `npm` or `npx`). Install hooks with `pnpm install`, then
run the single gate before pushing:

```sh
pnpm validate
```

## Validation

`pnpm validate` is the only gate before pushing. It enforces:

- `cargo fmt --all -- --check` — formatting.
- `cargo clippy --workspace --all-targets -- -D warnings` — lint with zero warnings.
- `cargo test --workspace` — the full test suite.

Repository hygiene: every source, script and document stays within 500 lines;
no hardcoded paths or secrets. Checks emit `PASS`, `FAIL` or `SKIP` and fail
the build when any check fails. Never skip a check because a binary is missing.
The same command runs in CI.

## Repository layout

| Path | Purpose |
|---|---|
| `crates/pleaides/` | Library crate |
| `docs/` | Product documentation |
| `tools/` | Validation entry points |

## Conventions

- English across source, identifiers, comments, docs, file names, output and
  commits. Comments are short and explain non-obvious code; longer explanation
  belongs in `docs/`.
- Source files stay within 500 lines.
- Never print secrets; `.env.example` holds placeholders only.
- One skill is one folder with `SKILL.md` at its root; its frontmatter carries `name` and `description`, and `description` says when to use the skill.
- Extra material becomes a sub-skill or a `references/` folder, not a new skill.

## Branches

`main` is the protected release branch; `dev` is the protected integration
branch where feature PRs land before consolidated releases. Work on short-lived
branches (`feat/<scope>`, `fix/<scope>`, `docs/<scope>`) and reach `dev` (or
`main`) only through pull requests reviewed by the maintainer. Never rewrite
published history.

## Commits

Format: `type(scope): description`, lowercase, in English.

- Header: 3 to 7 words counting `type(scope):`, maximum 100 characters, no
  trailing period, blank line after it.
- Body: at least three bullets `- **Title**: body`, each body with 3 to 7 words.
- Allowed scopes: `server`, `client`, `tools`, `docs`, `ci`, `workflow`,
  `hooks`, `release`, `license`, `deps`.

## Releases

Versions derive from conventional commits since the last `v*` tag: `fix`,
`perf` and `revert` bump patch; `feat` bumps minor; a breaking change bumps
major; `docs`, `ci`, `chore`, `test`, `style` and `refactor` do not trigger a
release. Before a functional PR toward `main`, update `package.json` and
`CHANGELOG.md` and verify them with the release check.
