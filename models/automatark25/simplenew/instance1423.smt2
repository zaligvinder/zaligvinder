(declare-const X String)
; www\x2eurlblaze\x2enetCurrentHost\x3A
(assert (str.in.re X (str.to.re "www.urlblaze.netCurrentHost:\x0a")))
(check-sat)
