(declare-const X String)
; (\+)?([-\._\(\) ]?[\d]{3,20}[-\._\(\) ]?){2,10}
(assert (str.in.re X (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 10) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re "_") (str.to.re "(") (str.to.re ")") (str.to.re " "))) ((_ re.loop 3 20) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re "_") (str.to.re "(") (str.to.re ")") (str.to.re " "))))) (str.to.re "\x0a"))))
(check-sat)
