(declare-const X String)
; /\/pdfx\.html$/U
(assert (not (str.in.re X (str.to.re "//pdfx.html/U\x0a"))))
(check-sat)
