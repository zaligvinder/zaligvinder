(declare-const X String)
; cojud\u{2E}dmcast\u{2E}comAgentHost\u{3A}insertkeys\u{3C}keys\u{40}hotpop
(assert (str.in_re X (str.to_re "cojud.dmcast.comAgentHost:insertkeys<keys@hotpop\u{a}")))
; ^0*(\d{1,3}(\.?\d{3})*)\-?([\dkK])$
(assert (str.in_re X (re.++ (re.* (str.to_re "0")) (re.opt (str.to_re "-")) (re.union (re.range "0" "9") (str.to_re "k") (str.to_re "K")) (str.to_re "\u{a}") ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (re.opt (str.to_re ".")) ((_ re.loop 3 3) (re.range "0" "9")))))))
(check-sat)
