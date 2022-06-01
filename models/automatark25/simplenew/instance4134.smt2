(declare-const X String)
; InformationAgentReferer\u{3A}Client
(assert (str.in_re X (str.to_re "InformationAgentReferer:Client\u{a}")))
(check-sat)
