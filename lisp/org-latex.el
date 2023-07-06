; ╔═══════════════════════════════════════════════════════════════════════════╗
; ║                             ORG-MODE - LaTeX                              ║
; ╚═══════════════════════════════════════════════════════════════════════════╝

; Configure LaTeX fragment-preview.                                         {{{
; ─────────────────────────────────────────────────────────────────────────────

; Increase fragment snize.
  (after! org (plist-put org-format-latex-options :scale 1.5))

; Configure fragment colors.
  (add-to-list 'default-frame-alist '(background-color . "#000000"))
  (add-to-list 'default-frame-alist '(foreground-color . "#FFFFFF"))
;                                     TODO ^ not working (e.g. foreground red)

; }}}
; Configure LaTeX snippet-preview on macOS.                                 {{{
; ─────────────────────────────────────────────────────────────────────────────

  (setenv "PATH" (concat "/Library/TeX/texbin" (getenv "PATH")))
  (setq exec-path (append '("/Library/TeX/texbin") exec-path))

; }}}
; Configure usage of `dvisvg' instead of `dvipng'. (INACTIVE)               {{{ 
; ─────────────────────────────────────────────────────────────────────────────

; (setq org-latex-create-formula-image-program 'dvisvgm)  ; <- obsolete
; (setq org-preview-latex-default-process 'dvisvgm)       ; <- use instead

; }}}
; Configure LaTeX snippet-preview on macOS.                                 {{{  
; ─────────────────────────────────────────────────────────────────────────────

  (setq org-preview-latex-process-alist '(
    ;; (dvisvgm
    ;;  :programs ("latex" "dvisvgm")
    ;;  :description "dvi > svg"
    ;;  :message "you need to install the programs: latex and dvisvgm."
    ;;  :image-input-type "dvi"
    ;;  :image-output-type "svg"
    ;;  :image-size-adjust (1.7 . 1.5)
    ;;  :latex-compiler ("latex -interaction nonstopmode -output-directory %o %f")
    ;;  :image-converter ("dvisvgm %f -n -b min -c %S -o %O"))

    ;; (dvipng
    ;;  :programs ("latex" "dvipng")
    ;;  :description "dvi > png"
    ;;  :message "you need to install the programs: latex and dvipng."
    ;;  :image-input-type "dvi"
    ;;  :image-output-type "png"
    ;;  :image-size-adjust (1.0 . 1.0)
    ;;  :latex-compiler ("latex -interaction nonstopmode -output-directory %o %f")
    ;;  :image-converter ("dvipng -D %D -T tight -o %O %f -bd 100")
    ;;  :transparent-image-converter ("dvipng -D %D -T tight -bg Transparent -o %O %f -bd 100"))

    (dvipng
     :programs ("latex" "dvipng")
     :description "dvi > png"
     :message "you need to install the programs: latex and dvipng."
     :image-input-type "dvi"
     :image-output-type "png"
     :image-size-adjust (1.0 . 1.0)
     :latex-compiler ("latex -interaction nonstopmode -output-directory %o %f")
     :image-converter ("dvipng -D %D -T tight -o %O %f")
     ;; ^ this one is used at the moment
     ;; ("dvipng -D %D -T tight -o %O %f -bd '1 white'")  ;; <- border is not working
     :transparent-image-converter ("dvipng -D %D -T tight -o %O %f -bg Transparent"))

    ;; (imagemagick
    ;;  :programs ("latex" "convert")
    ;;  :description "pdf > png"
    ;;  :message "you need to install the programs: latex and imagemagick."
    ;;  :image-input-type "pdf"
    ;;  :image-output-type "png"
    ;;  :image-size-adjust (1.0 . 1.0)
    ;;  :latex-compiler ("pdflatex -interaction nonstopmode -output-directory %o %f")
    ;;  :image-converter ("convert -bordercolor white -border 10 -density %D -trim -antialias %f -quality 100 %O"))
  ))

; re: dvipng options, see here:
;     -> https://www.nongnu.org/dvipng/dvipng_4.html

; }}}
; Configure table of contents to be displayed on new page.                  {{{  
; ─────────────────────────────────────────────────────────────────────────────

  (setq org-latex-toc-command "\\clearpage \\tableofcontents")
; (setq org-latex-toc-command "\\clearpage \\tableofcontents \\clearpage")

; }}}
