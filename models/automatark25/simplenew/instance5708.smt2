(declare-const X String)
; [a-z0-9]{1,11}
(assert (str.in.re X (re.++ ((_ re.loop 1 11) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
