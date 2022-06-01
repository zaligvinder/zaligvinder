(declare-const X String)
; StarLoggerCookie\u{3a}Host\u{3A}PRODUCEDwebsearch\.getmirar\.com
(assert (not (str.in_re X (str.to_re "StarLoggerCookie:Host:PRODUCEDwebsearch.getmirar.com\u{a}"))))
; ovplEchelonUser-Agent\u{3A}User-Agent\u{3A}Host\u{3a}
(assert (str.in_re X (str.to_re "ovplEchelonUser-Agent:User-Agent:Host:\u{a}")))
(check-sat)
