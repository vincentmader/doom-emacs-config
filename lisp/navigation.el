;; ╔══════════════════════════════════════════════════════════════════════════╗
;; ║                           EMACS - NAVIGATION                             ║
;; ╚══════════════════════════════════════════════════════════════════════════╝

;; Setup Emacs' dired.
;; ────────────────────────────────────────────────────────────────────────────
;; Auto-refresh dired on file change.
   (add-hook 'dired-mode-hook 'auto-revert-mode)    ;TODO: make sure this works

;; Setup Emacs' neotree.
;; ────────────────────────────────────────────────────────────────────────────
;; Specify width of neotree window.
   (setq neo-window-width 32)
