(declare-const X String)
; adserver\.warezclient\.com530Host\u{3A}
(assert (str.in_re X (str.to_re "adserver.warezclient.com530Host:\u{a}")))
(check-sat)
