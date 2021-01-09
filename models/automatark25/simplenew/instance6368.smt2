(declare-const X String)
; AgentanswerHost\x3Atool\x2Eworld2\x2EcnTCwhenu\x2Ecom
(assert (str.in.re X (str.to.re "AgentanswerHost:tool.world2.cn\x13TCwhenu.com\x13\x0a")))
(check-sat)
