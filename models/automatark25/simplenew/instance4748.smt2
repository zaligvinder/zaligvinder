(declare-const X String)
; ^[a-zA-Z]{3}[0-9]{6}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
