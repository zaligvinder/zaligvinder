(declare-const X String)
; attachedEverywareHELOBasic
(assert (str.in.re X (str.to.re "attachedEverywareHELOBasic\x0a")))
(check-sat)
