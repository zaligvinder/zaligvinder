(declare-const X String)
; AgentHWAEUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "AgentHWAEUser-Agent:\u{a}")))
(check-sat)
