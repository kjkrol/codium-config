# kjkrol VSCodium configuration

Create symlink to use:

linux
```shell
mv ~/.config/VSCodium/User/settings.json \
   ~/.config/VSCodium/User/settings.json.bak
ln -s ~/CODE/codium-config/settings.json ~/.config/VSCodium/User/settings.json
```

osx
```shell
mv "~/Library/Application Support/VSCodium/User/settings.json" \
   "~/Library/Application Support/VSCodium/User/settings.json.bak"
ln -s ~/CODE/codium-config/settings.json "~/Library/Application Support/VSCodium/User/settings.json"
```
