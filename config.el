;; $DOOMDIR/config.el -*- lexical-binding: t; -*-


;; NOTE: no need to run 'doom sync' after modifying this file!


;; ============================================================================

;; Here are some additional functions/macros that will help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', 
;;    relative to this file. Emacs searches the `load-path' when 
;;    you load packages with `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, 
;; move the cursor over the highlighted symbol at press 'K' 
;; (non-evil users must press 'C-c c k'). This will open documentation 
;; for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.


;; GENERAL
;; ============================================================================

;; identification
(setq user-full-name "Vincent C. Mader"
      user-mail-address "vincent@mader.xyz")

;; disable emacs-quit prompt
(setq confirm-kill-emacs nil)

;; auto-refresh dired on file change
(add-hook 'dired-mode-hook 'auto-revert-mode)  ;; TODO: make sure this works


;; Projects
;; ----------------------------------------------------------------------------

(projectile-add-known-project "~/.config")
(projectile-add-known-project "~/code/mader.xyz")
(projectile-add-known-project "~/code/auto-rice-scripts")
(projectile-add-known-project "~/docs/uni")


;; FONTS
;; ============================================================================

;; Doom exposes 5 (optional) variables for controlling fonts in Doom. 
;; Here are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'
;;    (use this for presentations or streaming)
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), 
;; or xlfd font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

(setq doom-font (font-spec :family "Hack Nerd Font" :size 18))


;; ORG-MODE
;; ============================================================================

;; General
;; ----------------------------------------------------------------------------

;; location of org files on disk  (home directory, sym-linked else-where)
(setq org-directory "~/org/")

;; set default folding level  (TODO move else-where?)
(setq org-startup-folded t)  ;; TODO make sure I can see two levels by default?


;; Org-Agenda & TODOs
;; ----------------------------------------------------------------------------

;; recursively add all files in ~/org/ to org-agenda
; (setq org-agenda-files (directory-files-recursively "~/org/" "\\.org$"))
;; -> but exclude journal files!
(setq org-agenda-files
      (seq-filter (lambda(x) (not (string-match "/journal/"(file-name-directory x))))
                  (directory-files-recursively "~/org/" "\\.org$")
                  ))

;; TODO keywords
;; (after! org (setq org-todo-keywords
;;       '((sequence "TODO(t)" "|" "WAIT(w)" "CANC(c)" "DONE(d)"))))
;; ;         ;; (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")


;; Org-Journal
;; ----------------------------------------------------------------------------

;; set org-journal template
(setq org-journal-date-prefix "#+TITLE: "
      org-journal-time-prefix "* "
      org-journal-date-format "%A, %B %d. %Y"
      org-journal-file-format "%Y-%m-%d.org")


;; VISUAL
;; ============================================================================

;; General
;; ----------------------------------------------------------------------------

;; set default line spacing
(setq-default line-spacing 0.15)

;; line numbers
(setq display-line-numbers-type 'relative)  ; or 'nil

;; hide emphasis markup (e.g. /../ for italics, *...* for bold)
(setq org-hide-emphasis-markers t)


;; Startup-Dashboard
;; ----------------------------------------------------------------------------

(setq fancy-splash-image "~/.config/doom/media/black-hole.png")

(setq +doom-dashboard-functions
      '(doom-dashboard-widget-banner
        doom-dashboard-widget-shortmenu
        doom-dashboard-widget-loaded
        ;doom-dashboard-widget-footer
      ))


;; Themes
;; ----------------------------------------------------------------------------

(setq doom-theme 'doom-solarized-dark)
; (setq doom-theme 'doom-solarized)
; (setq doom-theme 'doom-gruvbox)
; (setq doom-theme 'doom-molokai)
; (setq doom-theme 'doom-laserwave)
; (setq doom-theme 'doom-city-lights)
; (setq doom-theme 'doom-one)  ;; default
; (setq doom-theme 'doom-vibrant)


;; Org-Bullet-Points
;; ----------------------------------------------------------------------------

;; prettify org bullet points
; (use-package org-bullets
;    :config
;    (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(setq
    org-superstar-headline-bullets-list '("◉" "○")
) ; "⁖" "◉" "○" "✸" "✿"


;; Org-Checkbox Symbols
;; ----------------------------------------------------------------------------

;; prettify org checkbox symbols
(add-hook 'org-mode-hook (lambda ()
  "Beautify Org Checkbox Symbol"
  (push '("[ ]" . "☐") prettify-symbols-alist)
  (push '("[X]" . "✓" ) prettify-symbols-alist)
  (push '("[-]" . "❍" ) prettify-symbols-alist)
  (prettify-symbols-mode)))


;; NeoTree
;; ----------------------------------------------------------------------------

;; set width of neotree window
(setq neo-window-width 32)


;; VARIOUS  (TODO: clean up)
;; ============================================================================

; (add-to-list 'default-frame-alist '(foreground-color . "#FFFFFF"))
; (add-to-list 'default-frame-alist '(background-color . "#FF0000"))


;; (add-hook! org-mode :append
;;            #'visual-line-mode
;;            #'variable-pitch-mode
;;            (lambda () (add-hook 'after-save-hook 'org-babel-tangle :append :local)))


;; (setq ido-enable-flex-matching t)
;; (setq ido-everywhere t)
;; (ido-mode 1)


;; Enable logging of done tasks, log stuff into the LOGBOOK drawer by default
;; (after! org
;;   (setq org-log-done t)
;;   (setq org-log-into-drawer t))


;; ;; recursively find .org files in provided directory
;; ;; modified from an Emacs Lisp Intro example
;; (defun sa-find-org-file-recursively (&optional directory filext)
;;   "Return .org and .org_archive files recursively from DIRECTORY.
;; If FILEXT is provided, return files with extension FILEXT instead."
;;   (interactive "DDirectory: ")
;;   (let* (org-file-list
;;          (case-fold-search t)         ; filesystems are case sensitive
;;          (file-name-regex "^[^.#].*") ; exclude dot, autosave, and backupfiles
;;          (filext (or filext "org$\\\|org_archive"))
;;          (fileregex (format "%s\\.\\(%s$\\)" file-name-regex filext))
;;          (cur-dir-list (directory-files directory t file-name-regex)))
;;     ;; loop over directory listing
;;     (dolist (file-or-dir cur-dir-list org-file-list) ; returns org-file-list
;;       (cond
;;        ((file-regular-p file-or-dir)             ; regular files
;;         (if (string-match fileregex file-or-dir) ; org files
;;             (add-to-list 'org-file-list file-or-dir)))
;;        ((file-directory-p file-or-dir)
;;         (dolist (org-file (sa-find-org-file-recursively file-or-dir filext)
;;                           org-file-list) ; add files found to result
;;           (add-to-list 'org-file-list org-file)))))))

;; (setq org-agenda-text-search-extra-files
;;       (append (sa-find-org-file-recursively "~/" "org")))

;; Customize the agenda display to indent todo items by level to show nesting,
;; and enable showing holidays in the Org agenda display.
;; (after! org-agenda
;;   (setq org-agenda-prefix-format '((agenda . " %i %-12:c%?-12t% s")
;;                                    ;; Indent todo items by level to show nesting
;;                                    (todo . " %i %-12:c%l")
;;                                    (tags . " %i %-12:c")
;;                                    (search . " %i %-12:c")))
;;   (setq org-agenda-include-diary t))


;;; This determines the style of line numbers in effect. If set to `nil', line
;;; numbers are disabled. For relative line numbers, set this to `relative'.
;(setq display-line-numbers-type t)


; (add-to-list 'load-path "~/.doom.d/lisp/")  ;; TODO: needed?


;; (setq org-agenda-skip-scheduled-if-done t
;;       org-priority-faces '((65 :foreground "#e54649"   ; a
;;                             66 :foreground "#da8548"   ; b
;;                             67 :foreground "#0098dd")) ; c
;;       )


;; (def-package! org-fancy-priorities
;;   :hook (org-mode . org-fancy-priorities-mode)
;;   :config
;;   (setq org-fancy-priorities-list '("!!", "!", "!")))


;; (setq org-todo-keyword-faces
;;       '(("TODO" . org-warning)
;;         ("STARTED" . "yellow")
;;         ("CANCELED" . (:foreground "blue" :weight bold))
;;         ("WAITING" . "#222222")
;;         ("DONE" . "#222222")
;;         ;; ("PROJ" . "yellow")
;;         ))



;; needed for latex-preview on macOS
(setenv "PATH" (concat "/Library/TeX/texbin" (getenv "PATH")))
(setq exec-path (append '("/Library/TeX/texbin") exec-path))


; (setq org-latex-create-formula-image-program 'dvisvgm)
; (setq org-preview-latex-default-process 'dvisvgm)
; (setq org-startup-with-latex-preview t)
(after! org (plist-put org-format-latex-options :scale 1.75))

;; bigger latex fragment
; (plist-put org-format-latex-options :scale 1.5)


