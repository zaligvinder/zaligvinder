(declare-const X String)
; ^(\d{2}-\d{2})*$
(assert (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
