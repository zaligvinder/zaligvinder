(declare-const X String)
; ^((0?[1-9])|((1)[0-1]))?((\.[0-9]{0,2})?|0(\.[0-9]{0,2}))$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "1")))) (re.union (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9")))) (re.++ (str.to.re "0.") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
