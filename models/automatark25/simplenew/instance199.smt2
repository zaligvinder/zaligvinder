(declare-const X String)
; ^[1-9]{1}[0-9]{3}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
