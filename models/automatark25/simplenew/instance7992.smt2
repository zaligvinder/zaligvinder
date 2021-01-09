(declare-const X String)
; ((19|20)[\d]{2}/[\d]{6}/[\d]{2})
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (str.to.re "19") (str.to.re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 2 2) (re.range "0" "9"))))))
(check-sat)
