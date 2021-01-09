(declare-const X String)
; ^0[1-9]\d{7,8}$
(assert (not (str.in.re X (re.++ (str.to.re "0") (re.range "1" "9") ((_ re.loop 7 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
