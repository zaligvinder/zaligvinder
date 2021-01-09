(declare-const X String)
; ^([0-9][,]?)*([0-9][0-9])$
(assert (str.in.re X (re.++ (re.* (re.++ (re.range "0" "9") (re.opt (str.to.re ",")))) (str.to.re "\x0a") (re.range "0" "9") (re.range "0" "9"))))
(check-sat)
