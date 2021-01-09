(declare-const X String)
; StarLoggerCookie\x3aHost\x3APRODUCEDwebsearch\.getmirar\.com
(assert (str.in.re X (str.to.re "StarLoggerCookie:Host:PRODUCEDwebsearch.getmirar.com\x0a")))
(check-sat)
