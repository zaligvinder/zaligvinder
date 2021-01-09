(declare-const X String)
; cojud\x2Edmcast\x2EcomAgentHost\x3Ainsertkeys\x3Ckeys\x40hotpop
(assert (not (str.in.re X (str.to.re "cojud.dmcast.comAgentHost:insertkeys<keys@hotpop\x0a"))))
; Apofis.*Port\x2E\s+\x2FNFO\x2CRegistered
(assert (str.in.re X (re.++ (str.to.re "Apofis") (re.* re.allchar) (str.to.re "Port.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/NFO,Registered\x0a"))))
; Explorer\x2Fsto=notificationfind
(assert (str.in.re X (str.to.re "Explorer/sto=notification\x13find\x0a")))
(check-sat)
