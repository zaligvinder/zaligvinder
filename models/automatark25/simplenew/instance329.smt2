(declare-const X String)
; /^[-+]?((\d*|((\d{1,3})?,(\d{3},)*(\d{3})))?)(\.\d*)?([eE][-+]\d+)?$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.opt (re.union (re.* (re.range "0" "9")) (re.++ (re.opt ((_ re.loop 1 3) (re.range "0" "9"))) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.opt (re.++ (str.to.re ".") (re.* (re.range "0" "9")))) (re.opt (re.++ (re.union (str.to.re "e") (str.to.re "E")) (re.union (str.to.re "-") (str.to.re "+")) (re.+ (re.range "0" "9")))) (str.to.re "/\x0a"))))
(check-sat)
