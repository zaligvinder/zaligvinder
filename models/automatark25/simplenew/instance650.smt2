(declare-const X String)
; ^0(6[045679][0469]){1}(\-)?(1)?[^0\D]{1}\d{6}$
(assert (str.in.re X (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.++ (str.to.re "6") (re.union (str.to.re "0") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "9")) (re.union (str.to.re "0") (str.to.re "4") (str.to.re "6") (str.to.re "9")))) (re.opt (str.to.re "-")) (re.opt (str.to.re "1")) ((_ re.loop 1 1) (re.union (str.to.re "0") (re.comp (re.range "0" "9")))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
