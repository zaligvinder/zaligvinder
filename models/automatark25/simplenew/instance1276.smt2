(declare-const X String)
; ^\+?[a-z0-9](([-+.]|[_]+)?[a-z0-9]+)*@([a-z0-9]+(\.|\-))+[a-z]{2,6}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+")) (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (re.+ (str.to.re "_")) (str.to.re "-") (str.to.re "+") (str.to.re "."))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))) (str.to.re "@") (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.union (str.to.re ".") (str.to.re "-")))) ((_ re.loop 2 6) (re.range "a" "z")) (str.to.re "\x0a")))))
(check-sat)
