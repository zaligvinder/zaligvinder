(declare-const X String)
; ^(([1-9]{1})|([0-1][0-9])|([1-2][0-3])):([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.range "0" "3"))) (str.to.re ":\x0a") (re.range "0" "5") (re.range "0" "9"))))
(check-sat)
