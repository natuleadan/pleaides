# Contributing to Natuleadan Pleaides

> Read these conventions before contributing. This repository follows the same
> commit and CI standards as the other Natuleadan constellation repositories.

## Quick start

1. Clone `https://github.com/natuleadan/pleaides.git`.
2. Run `pnpm install` to install commitlint and Husky hooks.
3. Run `cargo check --workspace` to verify the Rust workspace.
4. Run `pnpm validate` before opening a pull request.

## Layout

| Path | Purpose |
|---|---|
- `crates/pleaides/` | Reusable utilities crate
| `docs/` | Product documentation |
| `tools/` | Validation entry points |

## Branches

`main` is the protected release branch and `dev` is the protected integration
branch. Create a short branch (`feat/...`, `fix/...`, `docs/...`) per work item,
open a pull request toward `dev` (then consolidate `dev` into `main`), and delete
the branch after merge.

## Commit conventions

Format: `type(scope): description`. The scope is mandatory, in English and lower
case. Scopes: skills, instructions, workflows, agents, capabilities, tools, docs, ci, workflow, hooks, release, license, deps. CI rejects any other scope.

| Type | Use |
|---|---|
| `feat` | new capability or feature |
| `fix` | bug fix |
| `upgrade` | breaking change |
| `docs` | documentation |
| `style` | formatting only |
| `refactor` | internal restructuring |
| `perf` | performance improvement |
| `test` | tests |
| `chore` | configuration and tooling |
| `ci` | CI or hooks |
| `revert` | revert a previous commit |

Title and body rules:

- Title has 3 to 7 words, counting `type(scope):`.
- Maximum 100 characters, no trailing period.
- Blank line after the title.
- At least 3 bullets shaped `- **Label**: body`.
- Each bullet body has 3 to 7 words.

Rules live in `commitlint.config.js` and run in the `commit-msg` hook and in the
Conventional Commits CI job.

## License

Apache-2.0. See [LICENSE](LICENSE).
