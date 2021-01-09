(declare-const X String)
; ^[A-Z]{5}[0-9]{4}[A-Z]{1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "A" "Z")) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "A" "Z")) (str.to.re "\x0a")))))
(check-sat)
