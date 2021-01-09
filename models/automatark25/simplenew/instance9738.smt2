(declare-const X String)
; /^([A-Za-z0-9+\x2f]{4})*([A-Za-z0-9+\x2f]{4}|[A-Za-z0-9+\x2f]{3}=|[A-Za-z0-9+\x2f]{2}==)$/mP
(assert (str.in.re X (re.++ (str.to.re "/") (re.* ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/")))) (re.union ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/"))) (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/"))) (str.to.re "=")) (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/"))) (str.to.re "=="))) (str.to.re "/mP\x0a"))))
(check-sat)
