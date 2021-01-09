(declare-const X String)
; /filename=[^\n]*\x2ecpe/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cpe/i\x0a"))))
; Contact\d+Host\x3A\d+MailHost\x3aMSNLOGOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Contact") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "MailHost:MSNLOGOVNUsertooffers.bullseye-network.com\x0a")))))
; twfofrfzlugq\x2feve\.qd\d+
(assert (not (str.in.re X (re.++ (str.to.re "twfofrfzlugq/eve.qd") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
