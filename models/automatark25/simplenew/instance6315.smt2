(declare-const X String)
; StarLoggerCookie\u{3a}Host\u{3A}PRODUCEDwebsearch\.getmirar\.com
(assert (str.in_re X (str.to_re "StarLoggerCookie:Host:PRODUCEDwebsearch.getmirar.com\u{a}")))
(check-sat)
