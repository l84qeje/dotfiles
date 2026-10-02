#!/usr/bin/env bash
# Dotfiles setup script for GitHub Codespaces.
# Codespaces automatically runs this script after cloning the dotfiles
# repository. Keep it idempotent: it may run again on rebuilds.
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "[dotfiles] Running install.sh from ${DOTFILES_DIR}"

# ---------------------------------------------------------------------------
# GitHub Copilot instructions
# ---------------------------------------------------------------------------
# Expose the canonical instructions file to Copilot CLI as personal
# instructions. Repository-level instructions
# (.github/copilot-instructions.md in each project) take precedence.
COPILOT_CONFIG_DIR="${HOME}/.copilot"
INSTRUCTIONS_SRC="${DOTFILES_DIR}/copilot/copilot-instructions.md"
INSTRUCTIONS_DEST="${COPILOT_CONFIG_DIR}/copilot-instructions.md"

mkdir -p "${COPILOT_CONFIG_DIR}"
ln -sfn "${INSTRUCTIONS_SRC}" "${INSTRUCTIONS_DEST}"
echo "[dotfiles] Linked Copilot instructions: ${INSTRUCTIONS_DEST} -> ${INSTRUCTIONS_SRC}"

echo "[dotfiles] Done."
