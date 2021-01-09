(declare-const X String)
; (^[0][2][1579]{1})(\d{6,7}$)
(assert (not (str.in.re X (re.++ ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "\x0a02") ((_ re.loop 1 1) (re.union (str.to.re "1") (str.to.re "5") (str.to.re "7") (str.to.re "9")))))))
(check-sat)
