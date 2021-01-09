(declare-const X String)
; ^(0|1)+$
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "0") (str.to.re "1"))) (str.to.re "\x0a"))))
; ovpl\s+\x7D\x7BPort\x3A.*SOAPAction\x3A.*adfsgecoiwnfHost\x3A\x3Fsearch\x3D
(assert (str.in.re X (re.++ (str.to.re "ovpl") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Port:") (re.* re.allchar) (str.to.re "SOAPAction:") (re.* re.allchar) (str.to.re "adfsgecoiwnf\x1bHost:?search=\x0a"))))
; areHost\x3Ae2give\.comHost\x3aX-Mailer\x3AsportsHost\x3AToolbar
(assert (not (str.in.re X (str.to.re "areHost:e2give.comHost:X-Mailer:\x13sportsHost:Toolbar\x0a"))))
; Host\x3A\dName=Your\+Host\+is\x3A.*has\s+ComputerKeylogger\x2EcomHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Name=Your+Host+is:") (re.* re.allchar) (str.to.re "has") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ComputerKeylogger.comHost:\x0a")))))
; (1[8,9]|20)[0-9]{2}
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "8") (str.to.re ",") (str.to.re "9"))) (str.to.re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
