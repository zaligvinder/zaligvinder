(declare-const X String)
; ^[+][0-9]\d{2}-\d{3}-\d{4}$
(assert (str.in.re X (re.++ (str.to.re "+") (re.range "0" "9") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
