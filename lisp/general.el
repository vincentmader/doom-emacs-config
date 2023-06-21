; ╔═══════════════════════════════════════════════════════════════════════════╗
; ║                             EMACS - GENERAL                               ║
; ╚═══════════════════════════════════════════════════════════════════════════╝

; Add Personal Identification Information.                                  {{{
; ─────────────────────────────────────────────────────────────────────────────

   (setq user-full-name "Vincent C. Mader"
         user-mail-address "vincent@mader.xyz")

; }}}
; Disable Emacs' quit-prompt.                                               {{{
; ─────────────────────────────────────────────────────────────────────────────

   (setq confirm-kill-emacs nil)

; }}}
; Auto-save on insert-mode exit.                                            {{{
; ─────────────────────────────────────────────────────────────────────────────

   (add-hook 'evil-insert-state-exit-hook (
     lambda () (call-interactively #'save-buffer)
   ))

; }}}
