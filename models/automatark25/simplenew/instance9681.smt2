(declare-const X String)
; ^(0|(-?(((0|[1-9]\d*)\.\d+)|([1-9]\d*))))$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "0") (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.union (str.to.re "0") (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))) (str.to.re ".") (re.+ (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))))) (str.to.re "\x0a")))))
(check-sat)
