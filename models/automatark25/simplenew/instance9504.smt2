(declare-const X String)
; ^[0-9]{2}-[0-9]{8}-[0-9]$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "-") (re.range "0" "9") (str.to.re "\x0a"))))
(check-sat)
