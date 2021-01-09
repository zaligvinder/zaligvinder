(declare-const X String)
; (^(5[0678])\d{11,18}$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 11 18) (re.range "0" "9")) (str.to.re "5") (re.union (str.to.re "0") (str.to.re "6") (str.to.re "7") (str.to.re "8"))))))
(check-sat)
