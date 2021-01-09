(declare-const X String)
; [( ]?\d{1,3}[ )]?[ -]?\d{3}[ -]?\d{4}
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "(") (str.to.re " "))) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re ")"))) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
