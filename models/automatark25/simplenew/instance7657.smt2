(declare-const X String)
; ^L[a-zA-Z0-9]{26,33}$
(assert (not (str.in.re X (re.++ (str.to.re "L") ((_ re.loop 26 33) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
