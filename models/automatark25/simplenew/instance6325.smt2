(declare-const X String)
; www\x2Eonetoolbar\x2Ecomcommunity
(assert (str.in.re X (str.to.re "www.onetoolbar.comcommunity\x0a")))
(check-sat)
