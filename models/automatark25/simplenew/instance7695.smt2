(declare-const X String)
; (\n\r)   replacement string---->\n
(assert (str.in.re X (str.to.re "\x0a\x0d   replacement string---->\x0a\x0a")))
(check-sat)
