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















;; ;; specify the justification you want
;; (plist-put org-format-latex-options :justify 'center)

;; (defun org-justify-fragment-overlay (beg end image imagetype)
;;   "Adjust the justification of a LaTeX fragment.
;; The justification is set by :justify in
;; `org-format-latex-options'. Only equations at the beginning of a
;; line are justified."
;;   (cond
;;    ;; Centered justification
;;    ((and (eq 'center (plist-get org-format-latex-options :justify))
;;          (= beg (line-beginning-position)))
;;     (let* ((img (create-image image 'imagemagick t))
;;            (width (car (image-size img)))
;;            (offset (floor (- (/ (window-text-width) 2) (/ width 2)))))
;;       (overlay-put (ov-at) 'before-string (make-string offset ? ))))
;;    ;; Right justification
;;    ((and (eq 'right (plist-get org-format-latex-options :justify))
;;          (= beg (line-beginning-position)))
;;     (let* ((img (create-image image 'imagemagick t))
;;            (width (car (image-display-size (overlay-get (ov-at) 'display))))
;;            (offset (floor (- (window-text-width) width (- (line-end-position) end)))))
;;       (overlay-put (ov-at) 'before-string (make-string offset ? ))))))

;; (defun org-latex-fragment-tooltip (beg end image imagetype)
;;   "Add the fragment tooltip to the overlay and set click function to toggle it."
;;   (overlay-put (ov-at) 'help-echo
;;                (concat (buffer-substring beg end)
;;                        "mouse-1 to toggle."))
;;   (overlay-put (ov-at) 'local-map (let ((map (make-sparse-keymap)))
;;                                     (define-key map [mouse-1]
;;                                       `(lambda ()
;;                                          (interactive)
;;                                          (org-remove-latex-fragment-image-overlays ,beg ,end)))
;;                                     map)))

;; ;; advise the function to a
;; (advice-add 'org--format-latex-make-overlay :after 'org-justify-fragment-overlay)
;; (advice-add 'org--format-latex-make-overlay :after 'org-latex-fragment-tooltip)
;; ;; If you get tired of the advice, remove it like this:
;; ;; (advice-remove 'org--format-latex-make-overlay 'org-justify-fragment-overlay)
;; ;; (advice-remove 'org--format-latex-make-overlay 'org-latex-fragment-tooltip)
