(declare-const X String)
; aohobygi\x2fzwiwHost\x3a\x7D\x7Crichfind\x2Ecom
(assert (str.in.re X (str.to.re "aohobygi/zwiwHost:}|richfind.com\x0a")))
(check-sat)
