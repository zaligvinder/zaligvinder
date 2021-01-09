(declare-const X String)
; (((\+44)? ?(\(0\))? ?)|(0))( ?[0-9]{3,4}){3}
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "+44")) (re.opt (str.to.re " ")) (re.opt (str.to.re "(0)")) (re.opt (str.to.re " "))) (str.to.re "0")) ((_ re.loop 3 3) (re.++ (re.opt (str.to.re " ")) ((_ re.loop 3 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
