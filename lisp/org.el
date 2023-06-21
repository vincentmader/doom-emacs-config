;; ╔══════════════════════════════════════════════════════════════════════════╗
;; ║                            EMACS - ORG-MODE                              ║
;; ╚══════════════════════════════════════════════════════════════════════════╝

;; Setup location of org on disk.
;; ────────────────────────────────────────────────────────────────────────────
;; Define path to org-files.                (sym-link in home-dir to elsewhere)
   (setq org-directory "~/org/")
;; Define path to some of my projects.
   (projectile-add-known-project "~/.config")
   (projectile-add-known-project "~/org/Projects/University")
   (projectile-add-known-project "~/org/Projects/mader.xyz")

;; Define custom org to-do keywords.
;; ────────────────────────────────────────────────────────────────────────────
;; Specify collection of org-todo keywords.
   (after! org (setq org-todo-keywords '((sequence
       "TODO(t)"
       "IDEA(i)"
       "PROJ(p)"
       "SIDE(s)"
       "QUES(q)"
       "MEET(m)"
       "SDMB(b)"
       "WAIT(w)"
       "|"
       "DONE(d)"
       "CANC(c)"
       "HOLD(h)"
       "ANSW(a)"
   ))))
;; Specify colors of org-todo keywords.
   (setq org-todo-keyword-faces '(
       ;; ("TODO" . "#ae1703")
       ("TODO" . "#ff6600")
       ;; ("PROJ" . "#849902")
       ;; ("PROJ" . "#217ebd")
       ("PROJ" . "#798b09")
       ("IDEA" . "#00aa33")
       ("MEET" . "red")
       ("DONE" . "#3f5a62")
       ("QUES" . "#798b09")
       ("ANSW" . "#3f5a62")
       ("SIDE" . "blue")
       ("WAIT" . "#3f5a62")
       ("SDMB" . "#3f5a62")
       ("HOLD" . "#888888")
       ("CANC" . "#3f5a62")
   ))

;; Setup Emacs' journaling functionality.
;; ────────────────────────────────────────────────────────────────────────────
;; Define org-journal template.                           NOTE: not used a.t.m.
   (setq org-journal-date-prefix "#+title: "
         org-journal-time-prefix "* "
         org-journal-date-format "%A, %B %d. %Y"
         org-journal-file-format "%Y-%m-%d.org")
