(declare-const X String)
; /\/pdfx\.html$/U
(assert (str.in.re X (str.to.re "//pdfx.html/U\x0a")))
(check-sat)
