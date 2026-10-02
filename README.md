# dotfiles

Personal dotfiles for GitHub Codespaces.

## Structure

```
.
├── copilot/
│   └── copilot-instructions.md  # Global Copilot instructions (canonical source)
├── .github/
│   └── copilot-instructions.md  # Symlink to the canonical file (applies to this repo)
└── install.sh                   # Codespaces setup script (runs automatically)
```

## How It Works

- GitHub Codespaces clones this repository and runs `install.sh` automatically.
- `install.sh` symlinks `copilot/copilot-instructions.md` to
  `~/.copilot/copilot-instructions.md`, so Copilot CLI picks it up as
  personal instructions in every codespace.
- `.github/copilot-instructions.md` is a symlink to the same file, so the
  instructions also apply when working on this repository itself.

## Notes

- Repository-level instructions (`.github/copilot-instructions.md` in each
  project) take precedence over these personal instructions.
- All documentation in this repository is written in English.