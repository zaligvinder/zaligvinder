(declare-const X String)
; www\x2Epcsentinelsoftware\x2Ecom
(assert (str.in.re X (str.to.re "www.pcsentinelsoftware.com\x0a")))
(check-sat)
