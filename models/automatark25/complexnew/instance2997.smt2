(declare-const X String)
; ^(6553[0-5]|655[0-2]\d|65[0-4]\d\d|6[0-4]\d{3}|5\d{4}|49[2-9]\d\d|491[6-9]\d|4915[2-9])$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "6553") (re.range "0" "5")) (re.++ (str.to.re "655") (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "65") (re.range "0" "4") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "6") (re.range "0" "4") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "5") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to.re "49") (re.range "2" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "491") (re.range "6" "9") (re.range "0" "9")) (re.++ (str.to.re "4915") (re.range "2" "9"))) (str.to.re "\x0a"))))
; /\x2ejp2([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jp2") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; Everyware.*Email.*Host\x3Astepwww\x2Ekornputers\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Everyware") (re.* re.allchar) (str.to.re "Email") (re.* re.allchar) (str.to.re "Host:stepwww.kornputers.com\x0a"))))
(check-sat)
