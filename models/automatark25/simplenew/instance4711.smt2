(declare-const X String)
; ^[a-zA-Z]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
(check-sat)
