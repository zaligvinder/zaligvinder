(declare-const X String)
; ^[A-Za-z]{1}[0-9]{7}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
