;; ╔══════════════════════════════════════════════════════════════════════════╗
;; ║                          ORG-MODE - APPEARANCE                           ║
;; ╚══════════════════════════════════════════════════════════════════════════╝

;; Configure org-text display.
;; ────────────────────────────────────────────────────────────────────────────
;; Specify default folding level.            TODO Unfold two levels by default.
  (setq org-startup-folded t)
;; Hide emphasis markup                (e.g. /.../ for italics, *...* for bold)
  (setq org-hide-emphasis-markers t)
;; Define custom headline bullet symbols.
  (setq org-superstar-headline-bullets-list '("◉" "○")) ; "⁖" "◉" "○" "✸" "✿"

;; Specify colors of org-headings.
;; ────────────────────────────────────────────────────────────────────────────
  (custom-set-faces
    '(org-level-1 ((t (:foreground "#247ebe" :bold t))))
    '(org-level-2 ((t (:foreground "#306704" :bold t))))
    '(org-level-3 ((t (:foreground "#247ebe" :bold t))))
    '(org-level-4 ((t (:foreground "#306704" :bold t))))
    '(org-level-5 ((t (:foreground "#247ebe" :bold t))))
    '(org-level-6 ((t (:foreground "#306704" :bold t))))
    '(org-level-7 ((t (:foreground "#247ebe" :bold t))))
    '(org-level-8 ((t (:foreground "#306704" :bold t))))
  )

;; Prettify checkbox symbols.
;; ────────────────────────────────────────────────────────────────────────────
;; Redefine symbols.
  (add-hook 'org-mode-hook (lambda ()
    "Beautify Org Checkbox Symbol"
    (push '("[ ]" . "☐") prettify-symbols-alist)
    (push '("[X]" . "✓" ) prettify-symbols-alist)
    (push '("[-]" . "❍" ) prettify-symbols-alist)
    (prettify-symbols-mode)))

;; Set inline-display-width for images to 1/3 of screen width.
  (setq org-image-actual-width (/ (display-pixel-width) 3))
