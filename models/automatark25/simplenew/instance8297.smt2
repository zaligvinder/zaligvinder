(declare-const X String)
; [a-f0-9]{8}-[a-f0-9]{4}-4[a-f0-9]{3}-[89ab][a-f0-9]{3}-[a-f0-9]{12}
(assert (str.in.re X (re.++ ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-4") ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-") (re.union (str.to.re "8") (str.to.re "9") (str.to.re "a") (str.to.re "b")) ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 12 12) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
