(declare-const X String)
; ^(GIR|[A-Z]\d[A-Z\d]??|[A-Z]{2}\d[A-Z\d]??)[ ]??(\d[A-Z]{2})$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "GIR") (re.++ (re.range "A" "Z") (re.range "0" "9") (re.opt (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.range "0" "9") (re.opt (re.union (re.range "A" "Z") (re.range "0" "9"))))) (re.opt (str.to.re " ")) (str.to.re "\x0a") (re.range "0" "9") ((_ re.loop 2 2) (re.range "A" "Z"))))))
(check-sat)
