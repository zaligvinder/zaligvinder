(declare-const X String)
; /\x3d\x3d$/P
(assert (str.in.re X (str.to.re "/==/P\x0a")))
(check-sat)
