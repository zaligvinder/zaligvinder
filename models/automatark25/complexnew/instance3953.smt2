(declare-const X String)
; \u{2F}bar_pl\u{2F}chk\.fcgiHost\u{3a}
(assert (not (str.in_re X (str.to_re "/bar_pl/chk.fcgiHost:\u{a}"))))
; ServerAgentX-Mailer\u{3a}TencentTraveler
(assert (not (str.in_re X (str.to_re "ServerAgentX-Mailer:\u{13}TencentTraveler\u{a}"))))
(check-sat)
