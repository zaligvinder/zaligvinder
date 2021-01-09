(declare-const X String)
; (^[a-fA-F]+[+-]?$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "a" "f") (re.range "A" "F"))) (re.opt (re.union (str.to.re "+") (str.to.re "-")))))))
(check-sat)
