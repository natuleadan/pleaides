#!/usr/bin/env bash
set -euo pipefail

cargo fmt --all -- --check
cargo clippy --workspace --all-targets -- -D warnings
cargo test --workspace
node helpers/tools/third-party-notices.mjs --check

echo "PASS: validate"
