(declare-const X String)
; ^[a-zA-Z]{4}\d{7}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
