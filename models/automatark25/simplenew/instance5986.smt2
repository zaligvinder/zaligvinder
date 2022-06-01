(declare-const X String)
; Stealth\u{2E}phpSpyAgentHost\u{3A}IterenetUser-Agent\u{3A}Host\u{3A}Host\u{3A}origin\u{3D}sidefind
(assert (str.in_re X (str.to_re "Stealth.phpSpyAgentHost:IterenetUser-Agent:Host:Host:origin=sidefind\u{a}")))
(check-sat)
