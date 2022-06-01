(declare-const X String)
; pass=Referer\u{3A}Surveillance
(assert (str.in_re X (str.to_re "pass=Referer:Surveillance\u{13}\u{a}")))
(check-sat)
