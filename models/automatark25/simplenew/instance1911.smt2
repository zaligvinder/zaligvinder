(declare-const X String)
; Host\x3ASubject\x3Awhenu\x2EcomHost\x3Awww\x2Evip-se\x2Ecom
(assert (not (str.in.re X (str.to.re "Host:Subject:whenu.com\x1bHost:www.vip-se.com\x13\x0a"))))
(check-sat)
