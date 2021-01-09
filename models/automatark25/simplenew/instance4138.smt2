(declare-const X String)
; ([+]?\d[ ]?[(]?\d{3}[)]?[ ]?\d{2,3}[- ]?\d{2}[- ]?\d{2})
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "+")) (re.range "0" "9") (re.opt (str.to.re " ")) (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (str.to.re " ")) ((_ re.loop 2 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 2 2) (re.range "0" "9")))))
(check-sat)
