(declare-const X String)
; ^((\+){1}91){1}[1-9]{1}[0-9]{9}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) (str.to.re "+")) (str.to.re "91"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
