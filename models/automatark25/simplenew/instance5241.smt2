(declare-const X String)
; AgentHWAEUser-Agent\x3A
(assert (str.in.re X (str.to.re "AgentHWAEUser-Agent:\x0a")))
(check-sat)
