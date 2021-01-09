(declare-const X String)
; ((^\d{5}$)|(^\d{8}$))|(^\d{5}-\d{3}$)
(assert (str.in.re X (re.union (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 8 8) (re.range "0" "9")))))
(check-sat)
