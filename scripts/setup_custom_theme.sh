#!/bin/sh

PATH_TO_THEME="$XDG_CONFIG_HOME/emacs/.local/straight/build-27.2/doom-themes/doom-solarized-dark-theme.el"
rm $PATH_TO_THEME 2> /dev/null
ln -s $XDG_CONFIG_HOME/doom/lisp/themes/solarized-custom.el $PATH_TO_THEME

PATH_TO_THEME="$XDG_CONFIG_HOME/emacs/.local/straight/build-28.1/doom-themes/doom-solarized-dark-theme.el"
rm $PATH_TO_THEME 2> /dev/null
ln -s $XDG_CONFIG_HOME/doom/lisp/themes/solarized-custom.el $PATH_TO_THEME
