#!/bin/sh

# Get version of installed Emacs.
version="$(emacs --version)"
version=(${version// / })
version="${version[2]}"

# Remove current version of `doom-solarized-dark-theme.el`.
PATH_TO_EMACS="$XDG_CONFIG_HOME/emacs"
PATH_TO_BUILD="$PATH_TO_EMACS/.local/straight/build-$version"
PATH_TO_THEME="$PATH_TO_BUILD/doom-themes/doom-solarized-dark-theme.el"
rm "$PATH_TO_THEME" 2> /dev/null

# Link my `solarized-custom.el` theme.
ln -s "$XDG_CONFIG_HOME/emacs-doom/lisp/themes/solarized-custom.el" "$PATH_TO_THEME"
