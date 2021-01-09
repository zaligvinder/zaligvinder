(declare-const X String)
; StarLoggerCookie\x3aHost\x3APRODUCEDwebsearch\.getmirar\.com
(assert (not (str.in.re X (str.to.re "StarLoggerCookie:Host:PRODUCEDwebsearch.getmirar.com\x0a"))))
; ovplEchelonUser-Agent\x3AUser-Agent\x3AHost\x3a
(assert (str.in.re X (str.to.re "ovplEchelonUser-Agent:User-Agent:Host:\x0a")))
(check-sat)
