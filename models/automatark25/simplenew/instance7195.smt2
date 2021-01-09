(declare-const X String)
; ((\(\d{3}\) ?)|(\d{3}[- \.]))?\d{3}[- \.]\d{4}(\s(x\d+)?){0,1}$
(assert (str.in.re X (re.++ (re.opt (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") (re.opt (str.to.re " "))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ") (str.to.re ".")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.opt (re.++ (str.to.re "x") (re.+ (re.range "0" "9")))))) (str.to.re "\x0a"))))
(check-sat)
