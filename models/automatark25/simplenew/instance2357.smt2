(declare-const X String)
; (((\+44)? ?(\(0\))? ?)|(0))( ?[0-9]{3,4}){3}
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "+44")) (re.opt (str.to_re " ")) (re.opt (str.to_re "(0)")) (re.opt (str.to_re " "))) (str.to_re "0")) ((_ re.loop 3 3) (re.++ (re.opt (str.to_re " ")) ((_ re.loop 3 4) (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)
