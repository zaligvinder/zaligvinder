(declare-const X String)
; Host\x3a===========\x3Ewww\x2Eonetoolbar\x2Ecom
(assert (str.in.re X (str.to.re "Host:===========>www.onetoolbar.com\x0a")))
(check-sat)
