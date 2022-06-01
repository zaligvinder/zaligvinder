(declare-const X String)
; (BE-?)?0?[0-9]{9}
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re "BE") (re.opt (str.to_re "-")))) (re.opt (str.to_re "0")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
