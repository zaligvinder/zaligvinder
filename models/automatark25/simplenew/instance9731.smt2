(declare-const X String)
; ^0[0-9]{3}-[0-9]{7}$
(assert (not (str.in.re X (re.++ (str.to.re "0") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
