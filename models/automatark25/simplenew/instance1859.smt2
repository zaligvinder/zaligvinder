(declare-const X String)
; Host\x3a\x7D\x7BPort\x3Awww\x2Einstafinder\x2Ecom
(assert (not (str.in.re X (str.to.re "Host:}{Port:www.instafinder.com\x0a"))))
(check-sat)
