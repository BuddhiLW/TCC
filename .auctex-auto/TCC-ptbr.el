(TeX-add-style-hook
 "TCC-ptbr"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("abntex2" "12pt" "				openright" "			oneside" "			a4paper" "			english" "			french" "				spanish" "			brazil" "				")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1") ("inputenc" "utf8") ("ulem" "normalem") ("backref" "brazilian" "hyperpageref") ("abntex2cite" "alf")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "abntex2"
    "abntex212"
    "lmodern"
    "fontenc"
    "inputenc"
    "indentfirst"
    "color"
    "graphicx"
    "microtype"
    "amsmath"
    "xltxtra"
    "grffile"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "textcomp"
    "amssymb"
    "capt-of"
    "hyperref"
    "backref"
    "abntex2cite"
    "graphics"
    "enumitem")
   (TeX-add-symbols
    '("backrefalt" 4))
   (LaTeX-add-labels
    "fig:tower"
    "fig:tower2"
    "fig:os"
    "sec:opensource"
    "sec:diversidade"
    "fig:linux-genealogy"
    "sec:origem-linux"
    "fig:exwm1"
    "fig:diagrama-freqtrade"
    "fig:diagrama-freqtrade2"
    "sec:ortools"
    "sec:scim"
    "subsec:res-academia")
   (LaTeX-add-bibliographies
    "bib")
   (LaTeX-add-color-definecolors
    "blue"))
 :latex)

