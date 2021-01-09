(declare-const X String)
; ^[A-Z]{1}-[0-9]{7}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
