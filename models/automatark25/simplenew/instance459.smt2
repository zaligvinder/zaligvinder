(declare-const X String)
; /\xb6\xb6\xff\xff\xff\xff$/
(assert (str.in.re X (str.to.re "/\xb6\xb6\xff\xff\xff\xff/\x0a")))
(check-sat)
