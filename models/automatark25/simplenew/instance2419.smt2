(declare-const X String)
; ^[0-9]{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
