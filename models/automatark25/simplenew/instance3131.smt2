(declare-const X String)
; cojud\u{2E}dmcast\u{2E}comAgentHost\u{3A}insertkeys\u{3C}keys\u{40}hotpop
(assert (not (str.in_re X (str.to_re "cojud.dmcast.comAgentHost:insertkeys<keys@hotpop\u{a}"))))
(check-sat)
