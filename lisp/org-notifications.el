; ╔═══════════════════════════════════════════════════════════════════════════╗
; ║                          ORG-MODE - NOTIFICATIONS                         ║
; ╚═══════════════════════════════════════════════════════════════════════════╝

; Setup notifications on macOS.                                             {{{
; ───────────────────────────────────────────────────────────────────────────── 
; TODO Make OS-independent.
; TODO Get this to work.

  (defvar terminal-notifier-command (executable-find "terminal-notifier") "The path to terminal-notifier.")

; (setq exec-path (append '("/Users/vinc/bin" "/usr/local/bin" "/usr/local/sbin") exec-path))

; }}}
