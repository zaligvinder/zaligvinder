(declare-const X String)
; \x2Fsearchfast\x2FNavhelper
(assert (str.in.re X (str.to.re "/searchfast/Navhelper\x0a")))
(check-sat)
