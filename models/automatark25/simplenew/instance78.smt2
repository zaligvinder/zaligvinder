(declare-const X String)
; ^([a-z0-9]{32})$
(assert (not (str.in.re X (re.++ ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
