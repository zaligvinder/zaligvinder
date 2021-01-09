(declare-const X String)
; \x2Fbar_pl\x2Fchk\.fcgiHost\x3a
(assert (not (str.in.re X (str.to.re "/bar_pl/chk.fcgiHost:\x0a"))))
; ServerAgentX-Mailer\x3aTencentTraveler
(assert (not (str.in.re X (str.to.re "ServerAgentX-Mailer:\x13TencentTraveler\x0a"))))
(check-sat)
