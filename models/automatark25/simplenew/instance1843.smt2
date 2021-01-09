(declare-const X String)
; ^([01]\d|2[0123])([0-5]\d){2}([0-99]\d)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3")))) ((_ re.loop 2 2) (re.++ (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a") (re.union (re.range "0" "9") (str.to.re "9")) (re.range "0" "9")))))
(check-sat)
