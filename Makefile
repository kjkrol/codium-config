# Eksportuje listę rozszerzeń do extensions.txt
export-extensions:
	codium --list-extensions > extensions.txt
	@echo "Extensions exported to extensions.txt"

# Instaluje rozszerzenia z extensions.txt
import-extensions:
	xargs -n1 codium --install-extension < extensions.txt
	@echo "Extensions installed"

# Ustawia symlink na settings.json i instaluje rozszerzenia
setup:
	./replace-codium-user-settings.sh

# Szybkie odświeżenie konfiguracji (eksport + commit)
update: export-extensions
	git add settings.json extensions.txt
	git commit -m "Update Codium config"
	@echo "Config updated and committed"
