(declare-const X String)
; (\d{5})[\.\-\+ ]?(\d{4})?
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re "+") (str.to.re " "))) (re.opt ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
