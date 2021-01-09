(declare-const X String)
; cojud\x2Edmcast\x2EcomAgentHost\x3Ainsertkeys\x3Ckeys\x40hotpop
(assert (str.in.re X (str.to.re "cojud.dmcast.comAgentHost:insertkeys<keys@hotpop\x0a")))
(check-sat)
