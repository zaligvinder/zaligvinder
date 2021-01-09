(declare-const X String)
; ^(2[0-3]|[01]?[0-9]):([0-5]?[0-9]):([0-5]?[0-9])$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "2") (re.range "0" "3")) (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9"))) (str.to.re "::\x0a") (re.opt (re.range "0" "5")) (re.range "0" "9") (re.opt (re.range "0" "5")) (re.range "0" "9"))))
; ^[+-]?\d*(([,.]\d{3})+)?([,.]\d+)?([eE][+-]?\d+)?$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.* (re.range "0" "9")) (re.opt (re.+ (re.++ (re.union (str.to.re ",") (str.to.re ".")) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.opt (re.++ (re.union (str.to.re ",") (str.to.re ".")) (re.+ (re.range "0" "9")))) (re.opt (re.++ (re.union (str.to.re "e") (str.to.re "E")) (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
