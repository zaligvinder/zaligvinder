(declare-const X String)
; ^[1-9][0-9]{1,6}\-[0-9]{2}\-[0-9]
(assert (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 1 6) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") (re.range "0" "9") (str.to.re "\x0a"))))
(check-sat)
