(declare-const X String)
; ^(0[1-9]|1[0-2])\/((0[1-9]|2\d)|3[0-1])\/(19\d\d|200[0-3])$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (str.to.re "3") (re.range "0" "1")) (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "2") (re.range "0" "9"))) (str.to.re "/") (re.union (re.++ (str.to.re "19") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "200") (re.range "0" "3"))) (str.to.re "\x0a"))))
(check-sat)
