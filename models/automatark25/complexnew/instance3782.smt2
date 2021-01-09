(declare-const X String)
; (CREATE|ALTER) +(PROCEDURE|PROC|FUNCTION|VIEW) *(\[(.*)\]|(.*))
(assert (not (str.in.re X (re.++ (re.union (str.to.re "CREATE") (str.to.re "ALTER")) (re.+ (str.to.re " ")) (re.union (str.to.re "PROCEDURE") (str.to.re "PROC") (str.to.re "FUNCTION") (str.to.re "VIEW")) (re.* (str.to.re " ")) (re.union (re.++ (str.to.re "[") (re.* re.allchar) (str.to.re "]")) (re.* re.allchar)) (str.to.re "\x0a")))))
; ^(GIR|[A-Z]\d[A-Z\d]??|[A-Z]{2}\d[A-Z\d]??)[ ]??(\d[A-Z]{2})$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "GIR") (re.++ (re.range "A" "Z") (re.range "0" "9") (re.opt (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.range "0" "9") (re.opt (re.union (re.range "A" "Z") (re.range "0" "9"))))) (re.opt (str.to.re " ")) (str.to.re "\x0a") (re.range "0" "9") ((_ re.loop 2 2) (re.range "A" "Z"))))))
(check-sat)
