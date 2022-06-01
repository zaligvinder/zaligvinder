(declare-const X String)
; cojud\u{2E}dmcast\u{2E}comAgentHost\u{3A}insertkeys\u{3C}keys\u{40}hotpop
(assert (not (str.in_re X (str.to_re "cojud.dmcast.comAgentHost:insertkeys<keys@hotpop\u{a}"))))
; Apofis.*Port\u{2E}\s+\u{2F}NFO\u{2C}Registered
(assert (str.in_re X (re.++ (str.to_re "Apofis") (re.* re.allchar) (str.to_re "Port.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/NFO,Registered\u{a}"))))
; Explorer\u{2F}sto=notificationfind
(assert (str.in_re X (str.to_re "Explorer/sto=notification\u{13}find\u{a}")))
(check-sat)
