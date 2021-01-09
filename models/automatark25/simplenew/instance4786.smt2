(declare-const X String)
; ^([0-9]{0,5}|[0-9]{0,5}\.[0-9]{0,3})$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 0 5) (re.range "0" "9")) (re.++ ((_ re.loop 0 5) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 0 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
