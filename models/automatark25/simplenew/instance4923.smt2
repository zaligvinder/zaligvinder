(declare-const X String)
; \x2FcommunicatortbHost\x3a
(assert (not (str.in.re X (str.to.re "/communicatortbHost:\x0a"))))
(check-sat)
