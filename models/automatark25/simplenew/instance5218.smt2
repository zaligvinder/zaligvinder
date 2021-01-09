(declare-const X String)
; Prodaosearch\x2EcomReferer\x3A007User-Agent\x3A
(assert (str.in.re X (str.to.re "Prodaosearch.comReferer:007User-Agent:\x0a")))
(check-sat)
