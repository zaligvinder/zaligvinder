(declare-const X String)
; Contact\d+Host\u{3A}\d+MailHost\u{3a}MSNLOGOVNUsertooffers\u{2E}bullseye-network\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Contact") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "MailHost:MSNLOGOVNUsertooffers.bullseye-network.com\u{a}"))))
; Port\s+AgentHost\u{3A}insertkeys\u{3C}keys\u{40}hotpop
(assert (not (str.in_re X (re.++ (str.to_re "Port") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "AgentHost:insertkeys<keys@hotpop\u{a}")))))
; ^([^\.]+).([^\.]+).([^\.]+).([^\.]+)$
(assert (not (str.in_re X (re.++ (re.+ (re.comp (str.to_re "."))) re.allchar (re.+ (re.comp (str.to_re "."))) re.allchar (re.+ (re.comp (str.to_re "."))) re.allchar (re.+ (re.comp (str.to_re "."))) (str.to_re "\u{a}")))))
(check-sat)
