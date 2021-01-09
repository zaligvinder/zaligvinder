(declare-const X String)
; www\x2Ewebcruiser\x2Eccgot
(assert (str.in.re X (str.to.re "www.webcruiser.ccgot\x0a")))
(check-sat)
