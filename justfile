# .github: the org profile. Markdown only; the linters run in containers.

markdownlint_version := "0.23.2"
actionlint_version := "1.7.12"

# List the available recipes.
default:
    @just --list

# ---------------------------------------------------------------------------
# Dependencies
# ---------------------------------------------------------------------------

# Check the system prerequisite: Docker. The linters run in containers.
deps:
    #!/usr/bin/env bash
    set -euo pipefail
    command -v docker >/dev/null 2>&1 || { echo "Docker is required. On macOS use OrbStack: brew install orbstack" >&2; exit 1; }
    echo "Docker present: the checks need nothing else."

# ---------------------------------------------------------------------------
# Lint
# ---------------------------------------------------------------------------

# Everything CI runs, in CI's order.
check: markdownlint actionlint
    @echo "All checks passed."

# Every linter, no fixes applied.
lint: markdownlint actionlint

# Lint the Markdown structure (not links; see STANDARDS.md section 6).
markdownlint *args:
    docker run --rm -v "{{ justfile_directory() }}:/repo:ro" -w /repo node:26 npx --yes markdownlint-cli2@{{ markdownlint_version }} {{ args }}

# Lint the workflow files.
actionlint *args:
    docker run --rm -v "{{ justfile_directory() }}:/repo:ro" -w /repo rhysd/actionlint:{{ actionlint_version }} {{ args }}
