(declare-const X String)
; &#([0-9]{1,5}|x[0-9a-fA-F]{1,4});
(assert (str.in.re X (re.++ (str.to.re "&#") (re.union ((_ re.loop 1 5) (re.range "0" "9")) (re.++ (str.to.re "x") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))))) (str.to.re ";\x0a"))))
(check-sat)
