(declare-const X String)
; ^(\d{3}|\d{4})[-](\d{5})$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
