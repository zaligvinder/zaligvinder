(declare-const X String)
; ^([9]{1})+(6|3|2|1{1})+([0-9]{7})$
(assert (str.in.re X (re.++ (re.+ ((_ re.loop 1 1) (str.to.re "9"))) (re.+ (re.union (str.to.re "6") (str.to.re "3") (str.to.re "2") ((_ re.loop 1 1) (str.to.re "1")))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
