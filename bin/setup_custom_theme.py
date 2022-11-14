#!/usr/bin/env python3
import os
import subprocess

# Define location of configuration files.
XDG_CONFIG_HOME = os.environ["XDG_CONFIG_HOME"]

# Define filename of my personal/custom Emacs theme.
FILENAME_OF_MY_THEME = "solarized-custom.el"
# Define filename of Emacs theme (where it should be copied to).
FILENAME_OF_EMACS_THEME = "doom-solarized-dark-theme.el"

# Define path to my personal/custom Emacs theme.
PATH_TO_MY_THEME = os.path.join(
    XDG_CONFIG_HOME, "doom", "lisp", "themes", FILENAME_OF_MY_THEME
)

# Determine version of currently present Emacs installation.
EMACS_VERSION = subprocess\
    .check_output(["emacs", "--version"])\
    .decode("utf-8")\
    .split("\n", maxsplit=1)[0]\
    .split(" ")[2]
# Determine path to currently present Emacs installation.
PATH_TO_EMACS = os.path.join(
    XDG_CONFIG_HOME, "emacs", ".local", "straight", f"build-{EMACS_VERSION}"
)
# Determine path to Emacs Doom themes.
PATH_TO_THEMES = os.path.join(PATH_TO_EMACS, "doom-themes")
# Determine path to theme currently used by Emacs.
PATH_TO_THEME = os.path.join(PATH_TO_THEMES, FILENAME_OF_EMACS_THEME)

# Remove it, if it exists.
try:
    os.remove(PATH_TO_THEME)
except FileNotFoundError:
    pass

# Link my personal/custom theme into Emacs Doom theme directory.
os.symlink(PATH_TO_MY_THEME, PATH_TO_THEME)
