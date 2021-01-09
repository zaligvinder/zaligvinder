(declare-const X String)
; Contact\d+Host\x3A\d+MailHost\x3aMSNLOGOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Contact") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "MailHost:MSNLOGOVNUsertooffers.bullseye-network.com\x0a"))))
; Port\s+AgentHost\x3Ainsertkeys\x3Ckeys\x40hotpop
(assert (not (str.in.re X (re.++ (str.to.re "Port") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "AgentHost:insertkeys<keys@hotpop\x0a")))))
; ^([^\.]+).([^\.]+).([^\.]+).([^\.]+)$
(assert (not (str.in.re X (re.++ (re.+ (re.comp (str.to.re "."))) re.allchar (re.+ (re.comp (str.to.re "."))) re.allchar (re.+ (re.comp (str.to.re "."))) re.allchar (re.+ (re.comp (str.to.re "."))) (str.to.re "\x0a")))))
(check-sat)
