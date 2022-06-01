(declare-const X String)
; securityon\u{3A}Host\u{3A}Redirector\u{22}ServerHost\u{3A}
(assert (not (str.in_re X (str.to_re "securityon:Host:Redirector\u{22}ServerHost:\u{a}"))))
(check-sat)
