(declare-const X String)
; ^[a-zA-Z_]{1}[a-zA-Z0-9_]+$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "\x0a"))))
(check-sat)
