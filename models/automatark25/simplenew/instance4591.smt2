(declare-const X String)
; ^[6]\d{7}$
(assert (not (str.in.re X (re.++ (str.to.re "6") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
