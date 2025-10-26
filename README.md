# VSCodium User Configuration

Personal configuration for [VSCodium](https://vscodium.com/).

This repository contains:
- `settings.json` – editor settings (theme, fonts, guides, etc.)
- `extensions.txt` – list of installed extensions
- `replace-codium-user-settings.sh` – script that symlinks `settings.json` and installs extensions
- `Makefile` – helper tasks for export/import of extensions and setup

## Usage

Clone the repository and run setup:

```bash
git clone https://github.com/kjkrol/codium-config.git
cd codium-config
make setup
