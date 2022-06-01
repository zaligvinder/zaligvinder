(declare-const X String)
; /\/pdfx\.html$/U
(assert (str.in_re X (str.to_re "//pdfx.html/U\u{a}")))
(check-sat)
