(declare-const X String)
; [+-]*[0-9]+[,]*[0-9]*|[+-]*[0-9]*[,]+[0-9]*
(assert (str.in.re X (re.union (re.++ (re.* (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (re.* (str.to.re ",")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.union (str.to.re "+") (str.to.re "-"))) (re.* (re.range "0" "9")) (re.+ (str.to.re ",")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
