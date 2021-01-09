(declare-const X String)
; e2give\.comADRemoteHost\x3A
(assert (not (str.in.re X (str.to.re "e2give.comADRemoteHost:\x0a"))))
(check-sat)
