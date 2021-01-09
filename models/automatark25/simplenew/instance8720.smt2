(declare-const X String)
; ^((4(\d{12}|\d{15}))|(5\d{15})|(6011\d{12})|(3(4|7)\d{13}))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "4") (re.union ((_ re.loop 12 12) (re.range "0" "9")) ((_ re.loop 15 15) (re.range "0" "9")))) (re.++ (str.to.re "5") ((_ re.loop 15 15) (re.range "0" "9"))) (re.++ (str.to.re "6011") ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to.re "3") (re.union (str.to.re "4") (str.to.re "7")) ((_ re.loop 13 13) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
