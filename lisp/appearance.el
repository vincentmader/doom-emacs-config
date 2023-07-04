; ╔═══════════════════════════════════════════════════════════════════════════╗
; ║                            EMACS - APPEARANCE                             ║
; ╚═══════════════════════════════════════════════════════════════════════════╝

; Customize Emacs startup dashboard.                                        {{{
; ─────────────────────────────────────────────────────────────────────────────

; Add background image for startup dashboard.
  (setq fancy-splash-image ( format "%s/media/black-hole.png" PATH_TO_DOOM ))

; Specify what widgets to show on startup dashboard.
  (setq +doom-dashboard-functions
    '(doom-dashboard-widget-banner
      doom-dashboard-widget-shortmenu
      doom-dashboard-widget-loaded
     ;doom-dashboard-widget-footer
  ))

; }}}
; Specify theme.                                                            {{{
; ─────────────────────────────────────────────────────────────────────────────

; Choose dark solarized theme.
  (setq doom-theme 'doom-solarized-dark)

; Other options:                                             (incomplete list)
; - doom-solarized-dark
; - doom-solarized
; - doom-gruvbox
; - doom-molokai
; - doom-laserwave
; - doom-city-lights
; - doom-one                                                   (default theme)
; - doom-vibrant

; }}}
; Configure transparency alpha-value for Emacs GUI application window.      {{{
; ─────────────────────────────────────────────────────────────────────────────

; Set transparency to <active> & <inactive>
  (set-frame-parameter (selected-frame) 'alpha '(90 . 90))
  (add-to-list 'default-frame-alist '(alpha . (90 . 90)))

; Toggle transparency on `C-c t'
  (defun toggle-transparency ()
    (interactive)
    (let ((alpha (frame-parameter nil 'alpha)))
      (set-frame-parameter
       nil 'alpha
       (if (eql (cond ((numberp alpha) alpha)
                      ((numberp (cdr alpha)) (cdr alpha))
                      ;; Also handle undocumented (<active> <inactive>) form.
                      ((numberp (cadr alpha)) (cadr alpha)))
                100)
           '(85 . 50) '(100 . 100)))))
  (global-set-key (kbd "C-c t") 'toggle-transparency)

; }}}
; Specify fonts.                                                            {{{
; ─────────────────────────────────────────────────────────────────────────────

; Doom exposes 5 (optional) variables for controlling fonts in Doom.
; Here are the three important ones:
; + `doom-font'
; + `doom-variable-pitch-font'
; + `doom-big-font' -- used for `doom-big-font-mode'
;    (use this for presentations or streaming)
; They all accept either a font-spec, font string ("Input Mono-12"),
; or xlfd font string. You generally only need these two:
  (setq doom-font (font-spec :family "Hack Nerd Font" :size 14))
; (setq doom-font (font-spec :family "Hack Regular" :size 18))
; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light) doom-variable-pitch-font (font-spec :family "sans" :size 13))

; }}}
; Configure text display.                                                   {{{
; ─────────────────────────────────────────────────────────────────────────────

; Specify default line spacing.
  (setq-default line-spacing 0.15)

; Activate relative line numbers.
  (setq display-line-numbers-type 'relative)  ; NOTE: or 'nil

; }}}
