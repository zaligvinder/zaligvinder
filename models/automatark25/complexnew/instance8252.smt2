(declare-const X String)
; (^(5[0678])\d{11,18}$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 11 18) (re.range "0" "9")) (str.to.re "5") (re.union (str.to.re "0") (str.to.re "6") (str.to.re "7") (str.to.re "8"))))))
; Everyware.*Email.*Host\x3Astepwww\x2Ekornputers\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Everyware") (re.* re.allchar) (str.to.re "Email") (re.* re.allchar) (str.to.re "Host:stepwww.kornputers.com\x0a")))))
; ^\d{3}-\d{2}-\d{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
