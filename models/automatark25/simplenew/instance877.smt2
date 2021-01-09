(declare-const X String)
; ^([A-Z|a-z]{2}-\d{2}-[A-Z|a-z]{2}-\d{1,4})?([A-Z|a-z]{3}-\d{1,4})?$
(assert (str.in.re X (re.++ (re.opt (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (str.to.re "|") (re.range "a" "z"))) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.union (re.range "A" "Z") (str.to.re "|") (re.range "a" "z"))) (str.to.re "-") ((_ re.loop 1 4) (re.range "0" "9")))) (re.opt (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (str.to.re "|") (re.range "a" "z"))) (str.to.re "-") ((_ re.loop 1 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
