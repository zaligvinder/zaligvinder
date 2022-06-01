(declare-const X String)
; Referer\u{3A}dialupvpn\u{5f}pwdwww\u{2E}searchreslt\u{2E}com
(assert (not (str.in_re X (str.to_re "Referer:dialupvpn_pwdwww.searchreslt.com\u{a}"))))
(check-sat)
