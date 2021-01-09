(declare-const X String)
; www\x2Eserverlogic3\x2Ecom
(assert (not (str.in.re X (str.to.re "www.serverlogic3.com\x0a"))))
(check-sat)
