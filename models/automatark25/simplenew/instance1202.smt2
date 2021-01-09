(declare-const X String)
; ^5[1-5][0-9]{14}$
(assert (not (str.in.re X (re.++ (str.to.re "5") (re.range "1" "5") ((_ re.loop 14 14) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
