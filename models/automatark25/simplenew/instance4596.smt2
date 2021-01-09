(declare-const X String)
; Host\x3AHANDYwww\x2Epurityscan\x2Ecom
(assert (str.in.re X (str.to.re "Host:HANDYwww.purityscan.com\x0a")))
(check-sat)
