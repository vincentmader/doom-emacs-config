;; ╔══════════════════════════════════════════════════════════════════════════╗
;; ║                             EMACS - JUPYTER                              ║
;; ╚══════════════════════════════════════════════════════════════════════════╝

;; Define languages.
;; ────────────────────────────────────────────────────────────────────────────
   (org-babel-do-load-languages
    'org-babel-load-languages
    '((emacs-lisp . t) ;; Other languages
      (shell . t)
      (python . t)
      (jupyter . t)
      (jupyter-python . t)))
