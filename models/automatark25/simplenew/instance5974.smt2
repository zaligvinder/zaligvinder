(declare-const X String)
; ProAgentHost\x3aHost\x3AiOpuss_sq=aolsnssigninwininet
(assert (not (str.in.re X (str.to.re "ProAgentHost:Host:iOpuss_sq=aolsnssigninwininet\x0a"))))
(check-sat)
