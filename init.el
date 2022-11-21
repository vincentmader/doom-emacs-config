;;; init.el -*- lexical-binding: t; -*-

;; This file controls what Doom modules are enabled and what order they load
;; in. Remember to run 'doom sync' after modifying it!

;; NOTE Press 'SPC h d h' (or 'C-h d h' for non-vim users) to access Doom's
;;      documentation. There you'll find a "Module Index" link where you'll find
;;      a comprehensive list of Doom's modules and what flags they support.

;; NOTE Move your cursor over a module's name (or its flags) and press 'K' (or
;;      'C-c c k' for non-vim users) to view its documentation. This works on
;;      flags as well (those symbols that start with a plus).
;;
;;      Alternatively, press 'gd' (or 'C-c c d') on a module to browse its
;;      directory (for easy access to its source code).

(doom! :input
       ;;chinese
       ;;japanese
       ;;layout            ; auie,ctsrnm is the superior home row

       :completion
       company           ; the ultimate code completion backend
       ;;helm              ; the *other* search engine for love and life
       ;;ido               ; the other *other* search engine...
       ivy               ; a search engine for love and life

       :ui
       ;;deft              ; notational velocity for Emacs
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a nifty splash screen for Emacs
       ;; doom-quit         ; DOOM quit-message prompts when you quit Emacs
       ;;(emoji +unicode)  ; 🙂
       ;;fill-column       ; a `fill-column' indicator
       hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       ;;hydra
       ;;indent-guides     ; highlighted indent columns
       ;;ligatures         ; ligatures and symbols to make your code pretty again
       ;;minimap           ; show a map of the code on the side
       modeline          ; snazzy, Atom-inspired modeline, plus API
       ;;nav-flash         ; blink cursor line after big motions
       neotree           ; a project drawer, like NERDTree for vim
       ophints           ; highlight the region an operation acts on
       (popup +defaults)   ; tame sudden yet inevitable temporary windows
       ;;tabs              ; a tab bar for Emacs
       ;;treemacs          ; a project drawer, like neotree but cooler
       ;;unicode           ; extended unicode support for various languages
       vc-gutter         ; vcs diff in the fringe
       vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       ;;window-select     ; visually switch windows
       workspaces        ; tab emulation, persistence & separate workspaces
       ;;zen               ; distraction-free coding or writing

       :editor
       (evil +everywhere); come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       fold              ; (nigh) universal code folding
       ;;(format +onsave)  ; automated prettiness
       ;;god               ; run Emacs commands without modifier keys
       ;;lispy             ; vim for lisp, for people who don't like vim
       ;;multiple-cursors  ; editing in many places at once
       ;;objed             ; text object editing for the innocent
       ;;parinfer          ; turn lisp into python, sort of
       ;;rotate-text       ; cycle region at point between text candidates
       snippets          ; my elves. They type so I don't have to
       ;;word-wrap         ; soft wrapping with language-aware indent

       :emacs
       dired             ; making dired pretty [functional]
       electric          ; smarter, keyword-based electric-indent
       ;;ibuffer         ; interactive buffer management
       undo              ; persistent, smarter undo for your inevitable mistakes
       vc                ; version-control and Emacs, sitting in a tree

       :term
       ;;eshell            ; the elisp shell that works everywhere
       ;;shell             ; simple shell REPL for Emacs
       ;;term              ; basic terminal emulator for Emacs
       vterm             ; the best terminal emulation in Emacs

       :checkers
       syntax              ; tasing you for every semicolon you forget
       ;;(spell +flyspell) ; tasing you for misspelling mispelling
       ;;grammar           ; tasing grammar mistake every you make

       :tools
       ;;ansible
       ;;debugger          ; FIXME stepping through code, to help you add bugs
       ;;direnv
       ;;docker
       ;;editorconfig      ; let someone else argue about tabs vs spaces
       jupyter
       ;;ein               ; tame Jupyter notebooks with emacs
       (eval +overlay)     ; run code, run (also, repls)
       ;;gist              ; interacting with github gists
       lookup              ; navigate your code and its documentation
       ;;lsp
       magit             ; a git porcelain for Emacs
       ;;make              ; run make tasks from Emacs
       ;;pass              ; password manager for nerds
       ;;pdf               ; pdf enhancements
       ;;prodigy           ; FIXME managing external services & code builders
       ;;rgb               ; creating color strings
       ;;taskrunner        ; taskrunner for all your projects
       ;;terraform         ; infrastructure as code
       ;;tmux              ; an API for interacting with tmux
       ;;upload            ; map local to remote projects via ssh/ftp

       :os
       (:if IS-MAC macos)  ; improve compatibility with macOS
       ;;tty               ; improve the terminal Emacs experience

       :lang
       ;;agda              ; types of types of types of types...
       ;;beancount         ; mind the GAAP
       ;;cc                ; C > C++ == 1
       ;;clojure           ; java with a lisp
       ;;common-lisp       ; if you've seen one lisp, you've seen them all
       ;;coq               ; proofs-as-programs
       ;;crystal           ; ruby at the speed of c
       ;;csharp            ; unity, .NET, and mono shenanigans
       ;;data              ; config/data formats
       (dart +flutter)   ; paint ui and not much else
       ;;elixir            ; erlang done right
       ;;elm               ; care for a cup of TEA?
       emacs-lisp        ; drown in parentheses
       ;;erlang            ; an elegant language for a more civilized age
       ;;ess               ; emacs speaks statistics
       ;;factor
       ;;faust             ; dsp, but you get to keep your soul
       ;;fsharp            ; ML stands for Microsoft's Language
       ;;fstar             ; (dependent) types and (monadic) effects and Z3
       ;;gdscript          ; the language you waited for
       ;;(go +lsp)         ; the hipster dialect
       ;;(haskell +dante)  ; a language that's lazier than I am
       ;;hy                ; readability of scheme w/ speed of python
       ;;idris             ; a language you can depend on
       json              ; At least it ain't XML
       ;;(java +meghanada) ; the poster child for carpal tunnel syndrome
       javascript        ; all(hope(abandon(ye(who(enter(here))))))
       ;;julia             ; a better, faster MATLAB
       ;;kotlin            ; a better, slicker Java(Script)
       latex             ; writing papers in Emacs has never been so fun
       ;;lean              ; for folks with too much to prove
       ;;ledger            ; be audit you can be
       ;;lua               ; one-based indices? one-based indices
       markdown          ; writing docs for people to ignore
       ;;nim               ; python + lisp at the speed of c
       ;;nix               ; I hereby declare "nix geht mehr!"
       ;;ocaml             ; an objective camel
       (org +pretty )      ; organize your plain life in plain text
       ;;php               ; perl's insecure younger brother
       ;;plantuml          ; diagrams for confusing people more
       ;;purescript        ; javascript, but functional
       python            ; beautiful is better than ugly
       ;;qt                ; the 'cutest' gui framework ever
       ;;racket            ; a DSL for DSLs
       ;;raku              ; the artist formerly known as perl6
       ;;rest              ; Emacs as a REST client
       ;;rst               ; ReST in peace
       ;;(ruby +rails)     ; 1.step {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
       rust              ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       ;;scala             ; java, but good
       ;;(scheme +guile)   ; a fully conniving family of lisps
       sh                ; she sells {ba,z,fi}sh shells on the C xor
       ;;sml
       ;;solidity          ; do you need a blockchain? No.
       swift             ; who asked for emoji variables?
       ;;terra             ; Earth and Moon in alignment for performance.
       ;;web               ; the tubes
       ;;yaml              ; JSON, but readable
       ;;zig               ; C, but simpler

       :email
       ;;(mu4e +gmail)
       ;;notmuch
       ;;(wanderlust +gmail)

       :app
       ;;calendar
       ;;emms
       ;;everywhere        ; *leave* Emacs!? You must be joking
       ;;irc               ; how neckbeards socialize
       ;;(rss +org)        ; emacs as an RSS reader
       ;;twitter           ; twitter client https://twitter.com/vnought

       :config
       ;;literate
       (default +bindings +smartparens))




;; (require 'ox-latex)
;; (add-to-list 'org-latex-packages-alist '("" "minted"))
;; (setq org-latex-listings 'minted)

;; ;; (setq org-latex-pdf-process
;; ;;       '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
;; ;;         "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
;; ;;         "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

;; (setq org-latex-pdf-process
;;       '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
;;         "bibtex %b"
;;         "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
;;         "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))




;; NOTIFICATIONS for macOS (not working)
; =============================================================================

; (require 'appt)

; (setq appt-time-msg-list nil)    ;; clear existing appt list
; (setq appt-display-interval '5)  ;; warn every 5 minutes from t - appt-message-warning-time
; (setq
;   appt-message-warning-time '15  ;; send first warning 15 minutes before appointment
;   appt-display-mode-line nil     ;; don't show in the modeline
;   appt-display-format 'window)   ;; pass warnings to the designated window function
; (setq appt-disp-window-function (function ct/appt-display-native))

; (appt-activate 1)                ;; activate appointment notification
; ; (display-time) ;; Clock in modeline

; (defun ct/send-notification (title msg)
;   (let ((notifier-path (executable-find "alerter")))
;        (start-process
;            "Appointment Alert"
;            "*Appointment Alert*" ; use `nil` to not capture output; this captures output in background
;            notifier-path
;            "-message" msg
;            "-title" title
;            "-sender" "org.gnu.Emacs"
;            "-activate" "org.gnu.Emacs")))
; (defun ct/appt-display-native (min-to-app new-time msg)
;   (ct/send-notification
;     (format "Appointment in %s minutes" min-to-app) ; Title
;     (format "%s" msg)))                             ; Message/detail text

; ;; Agenda-to-appointent hooks
; (org-agenda-to-appt)             ;; generate the appt list from org agenda files on emacs launch
; (run-at-time "24:01" 3600 'org-agenda-to-appt)           ;; update appt list hourly
; (add-hook 'org-finalize-agenda-hook 'org-agenda-to-appt) ;; update appt list on agenda view




;; TODO the code below is not really doing anything... (REMOVE ?)
;; (use-package pretty-symbols
;;   :config
;;   (setq pretty-symbol-categories '(relational logical lambda org-specific nil cpp general))
;;   (defun yant/str-to-glyph (str)
;;     "Transform string into glyph, displayed correctly."
;;     (let ((composition nil))
;;       (dolist (char (string-to-list str)
;;         (nreverse (cdr composition)))
;;         (push char composition)
;;         (push '(Br . Bl) composition)
;;         )))
;;   (setq pretty-symbol-patterns
;;         (append pretty-symbol-patterns
;;         '((▤ org-specific ":LOGBOOK:" (org-mode))
;;         (⚙ org-specific ":PROPERTIES:" (org-mode))
;;         (⏏ org-specific ":END:" (org-mode))
;;         (★ org-specific "\\[#A\\]" (org-mode))
;;         ("" org-specific "\\[#B\\]" (org-mode))
;;         (☕ org-specific "\\[#C\\]" (org-mode))
;;         (⁂ org-specific "\\(^\\*\\)[^*]" (org-mode) 1)
;;         (• org-specific "^\\(?:\\*\\{1\\}\\)\\(\\*\\)[^*]" (org-mode) 1)
;;         (⊢ org-specific "^\\(?:\\*\\{2\\}\\)\\(\\*\\)[^*]" (org-mode) 1)
;;         (⋮ org-specific "^\\(?:\\*\\{3\\}\\)\\(\\*\\)[^*]" (org-mode) 1)
;;         (⋱ org-specific "^\\(?:\\*\\{4,\\}\\)\\(\\*\\)[^*]" (org-mode) 1)
;;         ((yant/str-to-glyph "☐") org-specific "\\(?:^*+ +\\)\\(\\<TODO\\>\\)" (org-mode) 1)
;;         ((yant/str-to-glyph "☑") org-specific "\\(?:^*+ +\\)\\(\\<DONE\\>\\)" (org-mode) 1)
;;         ((yant/str-to-glyph "✘") org-specific "\\(?:^*+ +\\)\\(\\<FAILED\\>\\)" (org-mode) 1)
;;         ((yant/str-to-glyph "✘") org-specific "\\(?:^*+ +\\)\\(\\<CANCELLED\\>\\)" (org-mode) 1)
;;         ((yant/str-to-glyph "▶") org-specific "\\(?:^*+ +\\)\\(\\<NEXT\\>\\)" (org-mode) 1)
;;         ((yant/str-to-glyph "☇") org-specific "\\(?:^*+ +\\)\\(\\<MERGED\\>\\)" (org-mode) 1)
;;         ((yant/str-to-glyph "⚑") org-specific "\\(?:^*+ +\\)\\(\\<WAITING\\>\\)" (org-mode) 1)
;;         ((yant/str-to-glyph "♲") org-specific "\\(?:^*+ +\\)\\(\\<HOLD\\>\\)" (org-mode) 1)
;;         ((yant/str-to-glyph "☠D") org-specific "\\<DEADLINE:" (org-mode))
;;         ((yant/str-to-glyph "◴S") org-specific "\\<SCHEDULED:" (org-mode))))))

(setq org-latex-create-formula-image-program 'dvisvgm)
