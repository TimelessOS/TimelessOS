# TimelessOS Agent Guidelines

## Build Commands
- Build image: `mkosi --force`
- Generate secureboot keys: `mkosi genkey`
- Update system: `mkosi sysupdate`
- Clean build: `mkosi clean`

## Code Style Guidelines
- Use tabs for indentation (per .editorconfig)
- Trim trailing whitespace and add final newlines
- Shell scripts: Use `set -eux` for error handling
- Configuration files: Follow systemd naming conventions
- Error handling: Use `set -e` in scripts, validate inputs
- Naming: Use lowercase with hyphens for config files
- Imports: Keep dependencies minimal, prefer system tools