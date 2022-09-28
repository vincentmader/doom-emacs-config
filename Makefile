all:
	make custom_theme
	make doom_sync
doom_sync:
	$(XDG_CONFIG_HOME)/emacs/bin/doom sync
custom_theme:
	./scripts/setup_custom_theme.sh
