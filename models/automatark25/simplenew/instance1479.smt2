(declare-const X String)
; ProPOWRSTRPquick\x2Eqsrch\x2EcomReferer\x3A
(assert (str.in.re X (str.to.re "ProPOWRSTRPquick.qsrch.comReferer:\x0a")))
(check-sat)
