(declare-const X String)
; ^((18[5-9][0-9])|((19|20)[0-9]{2})|(2100))$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "18") (re.range "5" "9") (re.range "0" "9")) (re.++ (re.union (str.to.re "19") (str.to.re "20")) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "2100")) (str.to.re "\x0a"))))
(check-sat)
