(declare-const X String)
; (^((((0[1-9])|([1-2][0-9])|(3[0-1]))|([1-9]))\x2F(((0[1-9])|(1[0-2]))|([1-9]))\x2F(([0-9]{2})|(((19)|([2]([0]{1})))([0-9]{2}))))$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/") (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.union (str.to.re "19") (re.++ (str.to.re "2") ((_ re.loop 1 1) (str.to.re "0")))) ((_ re.loop 2 2) (re.range "0" "9"))))))))
(check-sat)
