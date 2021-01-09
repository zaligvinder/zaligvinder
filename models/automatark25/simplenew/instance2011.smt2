(declare-const X String)
; ((0[1-9])|(1[0-9])|(2[0-9])|(3[0]))/((0[1-9])|(1[0-2]))/14[3-9]{2}
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (str.to.re "30")) (str.to.re "/") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/14") ((_ re.loop 2 2) (re.range "3" "9")) (str.to.re "\x0a"))))
(check-sat)
