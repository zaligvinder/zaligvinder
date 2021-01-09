(declare-const X String)
; ^\d{1,2}\/\d{1,2}\/\d{4}$
(assert (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^0(5[012345678]|6[47]){1}(\-)?[^0\D]{1}\d{5}$
(assert (not (str.in.re X (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.union (re.++ (str.to.re "5") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8"))) (re.++ (str.to.re "6") (re.union (str.to.re "4") (str.to.re "7"))))) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.union (str.to.re "0") (re.comp (re.range "0" "9")))) ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a")))))
; .*-[0-9]{1,10}.*
(assert (str.in.re X (re.++ (re.* re.allchar) (str.to.re "-") ((_ re.loop 1 10) (re.range "0" "9")) (re.* re.allchar) (str.to.re "\x0a"))))
(check-sat)
