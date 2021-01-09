(declare-const X String)
; ProAgentHost\x3ALOGSeconds\-
(assert (not (str.in.re X (str.to.re "ProAgentHost:LOGSeconds-\x0a"))))
(check-sat)
