(declare-const X String)
; /\x253D$/Im
(assert (str.in.re X (str.to.re "/%3D/Im\x0a")))
(check-sat)
