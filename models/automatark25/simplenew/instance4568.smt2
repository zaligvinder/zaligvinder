(declare-const X String)
; Mirar_KeywordContent
(assert (str.in.re X (str.to.re "Mirar_KeywordContent\x13\x0a")))
(check-sat)
