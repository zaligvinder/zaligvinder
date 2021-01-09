(declare-const X String)
; X-Mailer\x3aSpyAgentRootHost\x3A
(assert (str.in.re X (str.to.re "X-Mailer:\x13SpyAgentRootHost:\x0a")))
(check-sat)
