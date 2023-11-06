#!/bin/sh

src=$(realpath "../src")
cfg="$XDG_CONFIG_HOME/emacs-doom"
ln -s "$src" "$cfg"
