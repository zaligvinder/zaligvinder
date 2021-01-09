(declare-const X String)
; ^[0-9a-zA-z]{3}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "z"))) (str.to.re "\x0a")))))
(check-sat)
