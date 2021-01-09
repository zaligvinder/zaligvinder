(declare-const X String)
; www\x2Esogou\x2EcomUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "www.sogou.comUser-Agent:\x0a"))))
(check-sat)
