# kjkrol VSCodium configuration

Create symlink to use:

linux
```shell
mv "$HOME/.config/VSCodium/User/settings.json" \
   "$HOME/.config/VSCodium/User/settings.json.bak"

ln -s "$(pwd)/settings.json" \
   "$HOME/.config/VSCodium/User/settings.json"
```

osx
```shell
mv "$HOME/Library/Application Support/VSCodium/User/settings.json" \
   "$HOME/Library/Application Support/VSCodium/User/settings.json.bak"

ln -s "$(pwd)/settings.json" \
   "$HOME/Library/Application Support/VSCodium/User/settings.json"
```
