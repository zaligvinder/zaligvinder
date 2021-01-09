(declare-const X String)
; ^([-]?[0-9]?(\.[0-9]{0,2})?)$|^([-]?([1][0-1])(\.[0-9]{0,2})?)$|^([-]?([1][0-3](\.[0]{0,2})))$
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) (re.opt (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (re.opt (str.to.re "-")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to.re "1") (re.range "0" "1")) (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (str.to.re "1") (re.range "0" "3") (str.to.re ".") ((_ re.loop 0 2) (str.to.re "0")))))))
(check-sat)
