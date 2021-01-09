(declare-const X String)
; ServerAgentX-Mailer\x3aTencentTraveler
(assert (not (str.in.re X (str.to.re "ServerAgentX-Mailer:\x13TencentTraveler\x0a"))))
(check-sat)
