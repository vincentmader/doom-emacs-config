setup:
	make custom_theme
	make doom_sync
server:
	cd bin && ./start_emacs_server.sh
custom_theme:
	cd bin && ./setup_custom_theme.sh
doom_sync:
	cd $(XDG_CONFIG_HOME)/emacs/bin && ./doom sync
