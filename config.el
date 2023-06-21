;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; NOTE: no need to run 'doom sync' after modifying this file!
;; ────────────────────────────────────────────────────────────────────────────
;; Here are some additional functions/macros that will help you configure Doom:
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path',
;;    relative to this file. Emacs searches the `load-path' when
;;    you load packages with `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(defvar PATH_TO_HOME ( getenv "HOME" ))
(defvar PATH_TO_CONF ( format "%s/.config" PATH_TO_HOME ))

(load-file ( format "%s/doom/lisp/general.el"           PATH_TO_CONF ))
(load-file ( format "%s/doom/lisp/appearance.el"        PATH_TO_CONF ))
(load-file ( format "%s/doom/lisp/navigation.el"        PATH_TO_CONF ))
(load-file ( format "%s/doom/lisp/jupyter.el"           PATH_TO_CONF ))

(load-file ( format "%s/doom/lisp/org.el"               PATH_TO_CONF ))
(load-file ( format "%s/doom/lisp/org-appearance.el"    PATH_TO_CONF ))
(load-file ( format "%s/doom/lisp/org-agenda.el"        PATH_TO_CONF ))
(load-file ( format "%s/doom/lisp/org-latex.el"         PATH_TO_CONF ))
(load-file ( format "%s/doom/lisp/org-notifications.el" PATH_TO_CONF ))
(load-file ( format "%s/doom/lisp/org-statusbar.el"     PATH_TO_CONF ))
