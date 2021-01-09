(declare-const X String)
; ^((0[0-9])|(1[0-2])|(2[1-9])|(3[0-2])|(6[1-9])|(7[0-2])|80)([0-9]{7})$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (str.to.re "2") (re.range "1" "9")) (re.++ (str.to.re "3") (re.range "0" "2")) (re.++ (str.to.re "6") (re.range "1" "9")) (re.++ (str.to.re "7") (re.range "0" "2")) (str.to.re "80")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
