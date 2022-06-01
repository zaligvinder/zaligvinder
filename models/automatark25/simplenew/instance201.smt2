(declare-const X String)
; ProAgentHost\u{3a}Host\u{3A}iOpuss_sq=aolsnssigninwininet
(assert (not (str.in_re X (str.to_re "ProAgentHost:Host:iOpuss_sq=aolsnssigninwininet\u{a}"))))
(check-sat)
