#!/usr/bin/env bash
set -euo pipefail

SOURCE="$(pwd)/settings.json"

if [[ "$OSTYPE" == "darwin"* ]]; then
    TARGET="$HOME/Library/Application Support/VSCodium/User/settings.json"
else
    TARGET="$HOME/.config/VSCodium/User/settings.json"
fi

# backup jeśli istnieje plik
if [[ -e "$TARGET" && ! -L "$TARGET" ]]; then
    mv "$TARGET" "$TARGET.bak"
fi

# usuń stary symlink jeśli istnieje
if [[ -L "$TARGET" ]]; then
    rm "$TARGET"
fi

ln -s "$SOURCE" "$TARGET"
echo "Symlink created: $TARGET -> $SOURCE"

