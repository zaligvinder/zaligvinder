(declare-const X String)
; ServerAgentX-Mailer\u{3a}TencentTraveler
(assert (not (str.in_re X (str.to_re "ServerAgentX-Mailer:\u{13}TencentTraveler\u{a}"))))
(check-sat)
