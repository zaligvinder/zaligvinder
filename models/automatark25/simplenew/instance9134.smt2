(declare-const X String)
; mywayHost\x3Awww\x2Eeblocs\x2Ecom
(assert (not (str.in.re X (str.to.re "mywayHost:www.eblocs.com\x1b\x0a"))))
(check-sat)
