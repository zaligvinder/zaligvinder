(declare-const X String)
; ^([1-9]|0[1-9]|1[0-2]):([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":\x0a") (re.range "0" "5") (re.range "0" "9"))))
(check-sat)
