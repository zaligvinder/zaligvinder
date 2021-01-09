(declare-const X String)
; (^(\d+)$)|(^(\d{1,3}[ ,\.](\d{3}[ ,\.])*\d{3}|\d{1,3})$)
(assert (not (str.in.re X (re.union (re.+ (re.range "0" "9")) (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re ",") (str.to.re ".")) (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re ",") (str.to.re ".")))) ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 1 3) (re.range "0" "9"))) (str.to.re "\x0a"))))))
; (\+)?([-\._\(\) ]?[\d]{3,20}[-\._\(\) ]?){2,10}
(assert (str.in.re X (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 10) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re "_") (str.to.re "(") (str.to.re ")") (str.to.re " "))) ((_ re.loop 3 20) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re "_") (str.to.re "(") (str.to.re ")") (str.to.re " "))))) (str.to.re "\x0a"))))
(check-sat)
