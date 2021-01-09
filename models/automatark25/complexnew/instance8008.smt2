(declare-const X String)
; ^([GB])*(([1-9]\d{8})|([1-9]\d{11}))$
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "G") (str.to.re "B"))) (re.union (re.++ (re.range "1" "9") ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 11 11) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^[0-9]{4}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
