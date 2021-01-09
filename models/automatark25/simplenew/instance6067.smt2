(declare-const X String)
; Host\x3A\x2Fta\x2FNEWS\x2Fyayad\x2Ecom
(assert (str.in.re X (str.to.re "Host:/ta/NEWS/yayad.com\x13\x0a")))
(check-sat)
