(declare-const X String)
; ^(((2|8|9)\d{2})|((02|08|09)\d{2})|([1-9]\d{3}))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "2") (str.to.re "8") (str.to.re "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "0") (re.union (str.to.re "2") (str.to.re "8") (str.to.re "9"))) (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
