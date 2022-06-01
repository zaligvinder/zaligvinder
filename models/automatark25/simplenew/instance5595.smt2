(declare-const X String)
; Contact\d+Host\u{3A}\d+MailHost\u{3a}MSNLOGOVNUsertooffers\u{2E}bullseye-network\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Contact") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "MailHost:MSNLOGOVNUsertooffers.bullseye-network.com\u{a}")))))
(check-sat)
