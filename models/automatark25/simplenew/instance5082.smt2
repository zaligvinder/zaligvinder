(declare-const X String)
; ProAgentHost\u{3A}LOGSeconds\-
(assert (not (str.in_re X (str.to_re "ProAgentHost:LOGSeconds-\u{a}"))))
(check-sat)
