(declare-const X String)
; ^((5)/(1|2|5)/([0-9])/([0-9])/([0-9])/([0-9])/([0-9])/([0-9])/([2-9]))$
(assert (str.in.re X (re.++ (str.to.re "\x0a5/") (re.union (str.to.re "1") (str.to.re "2") (str.to.re "5")) (str.to.re "/") (re.range "0" "9") (str.to.re "/") (re.range "0" "9") (str.to.re "/") (re.range "0" "9") (str.to.re "/") (re.range "0" "9") (str.to.re "/") (re.range "0" "9") (str.to.re "/") (re.range "0" "9") (str.to.re "/") (re.range "2" "9"))))
(check-sat)
