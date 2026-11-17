# Natuleadan® Pleaides™

> Reusable utilities for AI coding agents.

Pleaides collects the reusable building blocks around agents: skills, instructions, workflows, agent definitions and native Rust capabilities. Skills written here are first-party and published from this repository.

## What it provides

- One folder per skill with a `SKILL.md` at its root.
- Reusable instructions, workflows and agent definitions.
- Native Rust capabilities exposed as utilities.

## Layout

| Path | Purpose |
|---|---|
| `crates/pleaides/` | Library crate |
| `docs/` | Product documentation |
| `tools/` | Validation entry points |

## Development

Requires Rust 1.100 or newer and pnpm. Run the same checks locally that CI
runs before opening a pull request.

```sh
pnpm validate
```

## Documentation

- [Architecture](docs/ARCHITECTURE.md)
- [Contributing](CONTRIBUTING.md)

## License

Apache-2.0. See [LICENSE](LICENSE).
