(declare-const X String)
; /\?a=dw[a-z]$/U
(assert (str.in.re X (re.++ (str.to.re "/?a=dw") (re.range "a" "z") (str.to.re "/U\x0a"))))
(check-sat)
