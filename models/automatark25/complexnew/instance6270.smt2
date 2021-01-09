(declare-const X String)
; ^\d{2,6}-\d{2}-\d$
(assert (str.in.re X (re.++ ((_ re.loop 2 6) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") (re.range "0" "9") (str.to.re "\x0a"))))
; [A-Za-z_.0-9-]+@{1}[a-z]+([.]{1}[a-z]{2,4})+
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re ".") (re.range "0" "9") (str.to.re "-"))) ((_ re.loop 1 1) (str.to.re "@")) (re.+ (re.range "a" "z")) (re.+ (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 2 4) (re.range "a" "z")))) (str.to.re "\x0a")))))
; ^((0[0-9])|(1[0-2])|(2[1-9])|(3[0-2])|(6[1-9])|(7[0-2])|80)([0-9]{7})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (str.to.re "2") (re.range "1" "9")) (re.++ (str.to.re "3") (re.range "0" "2")) (re.++ (str.to.re "6") (re.range "1" "9")) (re.++ (str.to.re "7") (re.range "0" "2")) (str.to.re "80")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
