(declare-const X String)
; (BE-?)?0?[0-9]{9}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "BE") (re.opt (str.to.re "-")))) (re.opt (str.to.re "0")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
