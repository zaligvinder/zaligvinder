(declare-const X String)
; ^(9,)*([1-9]\d{2}-?)*[1-9]\d{2}-?\d{4}$
(assert (str.in.re X (re.++ (re.* (str.to.re "9,")) (re.* (re.++ (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re "-")))) (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
