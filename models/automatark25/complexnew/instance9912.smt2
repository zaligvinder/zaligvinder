(declare-const X String)
; ((079)|(078)|(077)){1}[0-9]{7}
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "079") (str.to.re "078") (str.to.re "077"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; [A-Za-z_.0-9-]+@{1}[a-z]+([.]{1}[a-z]{2,4})+
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re ".") (re.range "0" "9") (str.to.re "-"))) ((_ re.loop 1 1) (str.to.re "@")) (re.+ (re.range "a" "z")) (re.+ (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 2 4) (re.range "a" "z")))) (str.to.re "\x0a"))))
; eveocczmthmmq\x2fomzl\d+Host\x3Aulmxct\x2fmqoyc
(assert (str.in.re X (re.++ (str.to.re "eveocczmthmmq/omzl") (re.+ (re.range "0" "9")) (str.to.re "Host:ulmxct/mqoyc\x0a"))))
; X-Mailer\x3A\s+Toolbar\s+supremetoolbar\.comst=Host\x3A\x5Chome\/lordofsearchMicrosoftHost\x3a\+The\+password\+is\x3A
(assert (not (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "supremetoolbar.comst=Host:\x5chome/lordofsearchMicrosoftHost:+The+password+is:\x0a")))))
(check-sat)
