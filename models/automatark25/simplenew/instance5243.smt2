(declare-const X String)
; (\+?1[- .]?)?[.\(]?[\d^01]\d{2}\)?[- .]?\d{3}[- .]?\d{4}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) (str.to.re "1") (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))))) (re.opt (re.union (str.to.re ".") (str.to.re "("))) (re.union (re.range "0" "9") (str.to.re "^") (str.to.re "0") (str.to.re "1")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
