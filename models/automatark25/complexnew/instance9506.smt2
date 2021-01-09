(declare-const X String)
; cojud\x2Edmcast\x2EcomAgentHost\x3Ainsertkeys\x3Ckeys\x40hotpop
(assert (str.in.re X (str.to.re "cojud.dmcast.comAgentHost:insertkeys<keys@hotpop\x0a")))
; ^0*(\d{1,3}(\.?\d{3})*)\-?([\dkK])$
(assert (str.in.re X (re.++ (re.* (str.to.re "0")) (re.opt (str.to.re "-")) (re.union (re.range "0" "9") (str.to.re "k") (str.to.re "K")) (str.to.re "\x0a") ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (re.opt (str.to.re ".")) ((_ re.loop 3 3) (re.range "0" "9")))))))
(check-sat)
