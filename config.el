;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; NOTE: no need to run 'doom sync' after modifying this file!
;; ----------------------------------------------------------------------------
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

;; ============================================================================
;;                               EMACS - GENERAL                              |
;; ============================================================================

;; Add Personal Identification Information.
   (setq user-full-name "Vincent C. Mader"
         user-mail-address "vincent@mader.xyz")

;; Disable Emacs' quit-prompt.
   (setq confirm-kill-emacs nil)

;; ============================================================================
;;                              EMACS - APPEARANCE                            |
;; ============================================================================

;; Customize Emacs startup dashboard.
;; ----------------------------------------------------------------------------
;; Add background image for startup dashboard.
   (setq fancy-splash-image "~/.config/doom/media/black-hole.png")
;; Specify what widgets to show on startup dashboard.
   (setq +doom-dashboard-functions
     '(doom-dashboard-widget-banner
       doom-dashboard-widget-shortmenu
       doom-dashboard-widget-loaded
      ;doom-dashboard-widget-footer
   ))
;; ----------------------------------------------------------------------------

;; Specify theme.
;; ----------------------------------------------------------------------------
;; Choose dark solarized theme.
   (setq doom-theme 'doom-solarized-dark)
;; Other options:                                             (incomplete list)
;; - doom-solarized-dark
;; - doom-solarized
;; - doom-gruvbox
;; - doom-molokai
;; - doom-laserwave
;; - doom-city-lights
;; - doom-one                                                   (default theme)
;; - doom-vibrant
;; ----------------------------------------------------------------------------

;; Specify fonts.
;; ----------------------------------------------------------------------------
;; Doom exposes 5 (optional) variables for controlling fonts in Doom.
;; Here are the three important ones:
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'
;;    (use this for presentations or streaming)
;; They all accept either a font-spec, font string ("Input Mono-12"),
;; or xlfd font string. You generally only need these two:
   (setq doom-font (font-spec :family "Hack Nerd Font" :size 18))
 ; (setq doom-font (font-spec :family "Hack Regular" :size 18))
 ; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light) doom-variable-pitch-font (font-spec :family "sans" :size 13))
;; ----------------------------------------------------------------------------

;; Configure text display.
;; ----------------------------------------------------------------------------
;; Specify default line spacing.
   (setq-default line-spacing 0.15)
;; Activate relative line numbers.
   (setq display-line-numbers-type 'relative)  ; NOTE: or 'nil
;; ----------------------------------------------------------------------------

;; ============================================================================
;;                             EMACS - NAVIGATION                             |
;; ============================================================================

;; Setup Emacs' dired.
;; ----------------------------------------------------------------------------
;; Auto-refresh dired on file change.
   (add-hook 'dired-mode-hook 'auto-revert-mode)    ;TODO: make sure this works
;; ----------------------------------------------------------------------------

;; Setup Emacs' neotree.
;; ----------------------------------------------------------------------------
;; Specify width of neotree window.
   (setq neo-window-width 32)
;; ----------------------------------------------------------------------------

;; ============================================================================
;;                              EMACS - JUPYTER                               |
;; ============================================================================

;; Define languages.
;; ----------------------------------------------------------------------------
   (org-babel-do-load-languages
    'org-babel-load-languages
    '((emacs-lisp . t) ;; Other languages
      (shell . t)
      (python . t)
      (jupyter . t)
      (jupyter-python . t)))
;; ----------------------------------------------------------------------------

;; ============================================================================
;;                               EMACS - LATEX                                |
;; ============================================================================

;; Configure LaTeX fragment-preview.
;; ----------------------------------------------------------------------------
;; Increase fragment snize.
   (after! org (plist-put org-format-latex-options :scale 2.0))
;; Configure fragment colors.
   (add-to-list 'default-frame-alist '(background-color . "#000000"))
   (add-to-list 'default-frame-alist '(foreground-color . "#FFFFFF"))
;;                                     TODO ^ not working (e.g. foreground red)
;; ----------------------------------------------------------------------------

;; Configure LaTeX snippet-preview on macOS.
;; ----------------------------------------------------------------------------
   (setenv "PATH" (concat "/Library/TeX/texbin" (getenv "PATH")))
   (setq exec-path (append '("/Library/TeX/texbin") exec-path))
;; ----------------------------------------------------------------------------

;; ============================================================================
;;                             EMACS - ORG-MODE                               |
;; ============================================================================

;; Setup location of org on disk.
;; ----------------------------------------------------------------------------
;; Define path to org-files.                (sym-link in home-dir to elsewhere)
   (setq org-directory "~/org/")
;; Define path to some of my projects.
   (projectile-add-known-project "~/.config")
   (projectile-add-known-project "~/org/Projects/All Projects/University")
   (projectile-add-known-project "~/org/Projects/All Projects/mader.xyz")
;; ----------------------------------------------------------------------------

;; Define custom org to-do keywords.
;; ----------------------------------------------------------------------------
;; Specify collection of org-todo keywords.
   (after! org (setq org-todo-keywords '((sequence
       "TODO(t)"
       "NEXT(n)"
       "PROJ(p)"
       "|"
       "DONE(d)"
       "WAIT(w)"
       "SDMB(m)"
       "HOLD(h)"
       "CANC(c)"
   ))))
;; Specify colors of org-todo keywords.
   (setq org-todo-keyword-faces '(
       ("TODO" . "orange")
       ("NEXT" . "#ae1703")
       ("PROJ" . "#849902")
       ("WAIT" . "gray")
       ("HOLD" . "gray")
       ("DONE" . "#3f5a62")
       ("CANC" . "#3f5a62")
       ("SDMB" . "gray")
   ))
;; -> TODO The code above doesn't do anything -> Fix! (??)
;; ----------------------------------------------------------------------------

;; Setup Emacs' journaling functionality.
;; ----------------------------------------------------------------------------
;; Define org-journal template.                           NOTE: not used a.t.m.
   (setq org-journal-date-prefix "#+title: "
         org-journal-time-prefix "* "
         org-journal-date-format "%A, %B %d. %Y"
         org-journal-file-format "%Y-%m-%d.org")
;; ----------------------------------------------------------------------------

;; ============================================================================
;;                           ORG-MODE - APPEARANCE                            |
;; ============================================================================

;; Configure org-text display.
;; ----------------------------------------------------------------------------
;; Specify default folding level.            TODO Unfold two levels by default.
   (setq org-startup-folded t)
;; Hide emphasis markup                (e.g. /.../ for italics, *...* for bold)
   (setq org-hide-emphasis-markers t)
;; Define custom headline bullet symbols.
   (setq org-superstar-headline-bullets-list
         '("◉" "○")) ; "⁖" "◉" "○" "✸" "✿"
;; ----------------------------------------------------------------------------

;; Prettify checkbox symbols.
;; ----------------------------------------------------------------------------
;; Redefine symbols.
   (add-hook 'org-mode-hook (lambda ()
     "Beautify Org Checkbox Symbol"
     (push '("[ ]" . "☐") prettify-symbols-alist)
     (push '("[X]" . "✓" ) prettify-symbols-alist)
     (push '("[-]" . "❍" ) prettify-symbols-alist)
     (prettify-symbols-mode)))
;; ----------------------------------------------------------------------------

;; ============================================================================
;;                             ORG-MODE - AGENDA                              |
;; ============================================================================

;; Specify appearance of agenda.
;; ----------------------------------------------------------------------------
;; Specify how many Days should be included in the Agenda.
   (setq org-agenda-span 28)
;;                    TODO ^ this is not doing anything atm
;; ----------------------------------------------------------------------------

;; Specify what files should be loaded into agenda.
;; ----------------------------------------------------------------------------
;; Define list of agenda-files.
;;
;; NOTE: When adding something here, also add `#agenda` to the top of the file!
   (after! org (setq org-agenda-files '(
      "~/org/Chores/Bureaucracy/Bureaucracy.org"
      "~/org/Chores/Cooking/Cooking.org"
      "~/org/Chores/Finances/Finances.org"
      "~/org/Chores/Groceries/Groceries.org"
      "~/org/Chores/Shopping/Shopping.org"
      "~/org/Chores/Getting Things Done/GTD.org"
      "~/org/Chores/Getting Things Done/Journal/People/People.org"
      "~/org/Chores/Getting Things Done/Journal/Journal by Year/2022.org"
      "~/org/Chores/Getting Things Done/Routines/Routines.org"
      "~/org/Chores/Health/Health.org"
      "~/org/Inbox/Inbox.org"
      "~/org/Index.org"
      "~/org/Projects/All Projects/dev - auto-rice-scripts.nosync/Developer Environment.org"
      "~/org/Projects/All Projects/dev - chronos-stats/chronos.org"
      "~/org/Projects/All Projects/dev - mader.xyz/mxyz.org"
      "~/org/Projects/All Projects/dev - sono app/xwm.org"
      "~/org/Projects/All Projects/DPSG/Aktionen/Aktionen.org"
      "~/org/Projects/All Projects/DPSG/DPSG Kirchheim/DPSG Kirchheim.org"
      "~/org/Projects/All Projects/DPSG/DPSG-Ebenen/DPSG-Ebenen.org"
      "~/org/Projects/All Projects/DPSG/DPSG.org"
      "~/org/Projects/All Projects/DPSG/Haus/DPSG-Haus.org"
      "~/org/Projects/All Projects/DPSG/Leitungs-Runde/DPSG-LR.org"
      "~/org/Projects/All Projects/DPSG/Pfadi-Stufe/DPSG-Pfadis.org"
      "~/org/Projects/All Projects/DPSG/Stammes-Vorstand/DPSG-StaVo.org"
      "~/org/Projects/All Projects/DPSG/Vereins-Vorsitz/DPSG-Verein.org"
      "~/org/Projects/All Projects/edu - University/University.org"
      "~/org/Projects/All Projects/edu - University/sem_13/M.Sc. Thesis/msc_thesis.org"
      "~/org/Projects/All Projects/edu - University/sem_13/M.Sc. Oral Exam/msc_exam.org"
      "~/org/Projects/Projects.org"
   )))
;; ----------------------------------------------------------------------------

;; ============================================================================
;;                         ORG-MODE - NOTIFICATIONS                           |
;; ============================================================================

;; Setup notifications on macOS.                      TODO Make OS-independent.
;; ----------------------------------------------------------------------------
;; TODO Get this to work.
   (defvar terminal-notifier-command
     (executable-find "terminal-notifier") "The path to terminal-notifier.")
;; (setq exec-path (append '("/Users/vinc/bin" "/usr/local/bin" "/usr/local/sbin") exec-path))
;; ----------------------------------------------------------------------------


















;; ----------------------------------------------------------------------------

;; start the agenda today (default: last Monday)
;; (setq org-agenda-start-day "+0d")
;; (setq org-agenda-start-on-weekday nil)
;; (setq org-agenda-inhibit-startup nil)
;; (setq org-agenda-dim-blocked-tasks nil)

;; ;; Set default column view headings: Task Total-Time Time-Stamp
;; (setq org-columns-default-format "%50ITEM(Task) %10CLOCKSUM %16TIMESTAMP_IA")

; (setq org-agenda-files
;       (seq-filter (lambda(x) (not (string-match "/Library/"(file-name-directory x))))
;                   (directory-files-recursively "~/org/" "\\.org$")
;                   ))

;; recursively add all files in ~/org/ to org-agenda
;; (setq org-agenda-files (directory-files-recursively "~/org/" "\\.org$"))
;; -> but exclude journal files!
    ;; (setq org-agenda-files
    ;;       (seq-filter (lambda(x) ((not (
    ;;                                    ;; (string-match "/Library"(file-name-directory x))
    ;;                                    ;; or (string-match "/Files"(file-name-directory x))
    ;;                                    string-match "/Library"(file-name-directory x)
    ;;                                    ;; or (string-match "/Files"(file-name-directory x))
    ;;                                    )) and (not (
    ;;                                    ;; (string-match "/Library"(file-name-directory x))
    ;;                                    ;; or (string-match "/Files"(file-name-directory x))
    ;;                                    string-match "/Library"(file-name-directory x)
    ;;                                    ;; or (string-match "/Files"(file-name-directory x))
    ;;       )) (directory-files-recursively "~/org/" "\\.org$")))

;; (setq org-agenda-files
;;       (seq-filter (lambda(x) (not (string-match "/journal/"(file-name-directory x))))
;;                   (directory-files-recursively "~/org/" "\\.org$")
;;                   ))

;; (remove "/base/Journal/" org-agenda-files)

;; (setq org-tag-alist '((:startgroup . nil)
;;                       ("@work" . ?w)
;;                       ("@home" . ?h)
;;                       (:endgroup . nil)
;;                       ("laptop" . ?l)
;;                       ("pc" . ?p)))

;; (setq org-agenda-todo-ignore-scheduled 'future)
;; (setq org-agenda-tags-todo-honor-ignore-options t)
;; (setq org-agenda-todo-ignore-with-date t)

;; Org-Bullet-Points
;; ----------------------------------------------------------------------------

;; prettify org bullet points
; (use-package org-bullets
;    :config
;    (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

; (setq org-latex-create-formula-image-program 'dvisvgm)
; (setq org-preview-latex-default-process 'dvisvgm)
; (setq org-startup-with-latex-preview t)

;; ============================================================================
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



;; bigger latex fragment
;; (plist-put org-format-latex-options :scale 1.5)



;; (setq org-agenda-custom-commands
;;     '(("t" "Agenda for today" agenda ""
;;         ((org-agenda-overriding-header "Today's agenda")
;;          (org-agenda-span 'day)
;;         ))))

;; (add-to-list 'org-agenda-custom-commands
;;              '("b" agenda "Today's Deadlines"
;;                ((org-agenda-span 'day)
;;                 (org-agenda-skip-function '(org-agenda-skip-deadline-if-not-today))
;;                 (org-agenda-entry-types '(:deadline))
;;                 (org-agenda-overriding-header "Today's Deadlines "))))


;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '((emacs-lisp . t) ;; Other languages
;;    (shell . t)
;;    ;; Python & Jupyter
;;    (python . t)
;;    (jupyter . t)))

;; (setq org-latex-listings t)
;; (add-to-list 'org-latex-packages-alist '("" "minted"))
;; (setq org-latex-listings 'minted)


;; (require 'org)
;; (require 'ox-latex)
;; (add-to-list 'org-latex-packages-alist '("" "minted"))
;; (setq org-latex-listings 'minted)

;; (setq org-latex-pdf-process
;;       '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
;;         "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
;;         "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

;; (setq org-src-fontify-natively t)

;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '((R . t)
;;    (latex . t)))



;; (add-to-list 'org-latex-packages-alist '("" "listingsutf8"))

;; (setq org-src-fontify-natively t)

;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '((R . t)
;;    (latex . t)))


;; (require 'org)
;; (require 'ox-latex)
;; (add-to-list 'org-latex-packages-alist '("" "minted"))
;; (setq org-latex-listings 'minted)

;; (setq org-latex-pdf-process
;;       '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
;;         "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
;;         "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

;; (setq org-src-fontify-natively t)

;; (org-babel-do-load-languages
;;  'org-babel-load-languages
;;  '((R . t)
;;    (latex . t)))

;; Minted Syntax Highlighting
; (setq org-latex-listings 'minted
;       org-latex-packages-alist '(("" "minted"))
;       org-latex-pdf-process
;       '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
;         "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))



