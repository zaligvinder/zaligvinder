(declare-const X String)
; www\x2Erichfind\x2EcomHost\x3A
(assert (str.in.re X (str.to.re "www.richfind.comHost:\x0a")))
(check-sat)
