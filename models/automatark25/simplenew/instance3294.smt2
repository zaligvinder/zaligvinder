(declare-const X String)
; (23:59:59)|([01]{1}[0-9]|2[0-3]):((00)|(15)|(30)|(45))+:(00)
(assert (str.in.re X (re.union (str.to.re "23:59:59") (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.+ (re.union (str.to.re "00") (str.to.re "15") (str.to.re "30") (str.to.re "45"))) (str.to.re ":00\x0a")))))
(check-sat)
