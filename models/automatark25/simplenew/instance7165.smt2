(declare-const X String)
; SSKCstech\u{2E}web-nexus\u{2E}net
(assert (str.in_re X (str.to_re "SSKCstech.web-nexus.net\u{a}")))
(check-sat)
