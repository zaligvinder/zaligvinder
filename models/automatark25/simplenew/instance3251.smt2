(declare-const X String)
; /\x3d\x0a$/P
(assert (str.in.re X (str.to.re "/=\x0a/P\x0a")))
(check-sat)
