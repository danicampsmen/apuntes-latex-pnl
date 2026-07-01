;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "Apuntes-Programacion-No-Lineal"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("apuntes-scr" "book" "spanish" "10pt")))
   (TeX-run-style-hooks
    "latex2e"
    "apuntes-scr"
    "apuntes-scr10"))
 :latex)

