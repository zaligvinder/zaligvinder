(declare-const X String)
; www\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (str.to.re "www.searchreslt.com\x0a"))))
(check-sat)
