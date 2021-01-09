(declare-const X String)
; cyber@yahoo\x2Ecomconfig\x2E180solutions\x2Ecom
(assert (str.in.re X (str.to.re "cyber@yahoo.comconfig.180solutions.com\x0a")))
(check-sat)
