(declare-const X String)
; \x7D\x7BOS\x3AsecurityUser-Agent\x3awww\x2Esogou\x2Ecom
(assert (str.in.re X (str.to.re "}{OS:securityUser-Agent:www.sogou.com\x0a")))
(check-sat)
