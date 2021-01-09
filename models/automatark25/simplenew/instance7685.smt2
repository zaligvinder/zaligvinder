(declare-const X String)
; ^(\d+|[a-zA-Z]+)$
(assert (not (str.in.re X (re.++ (re.union (re.+ (re.range "0" "9")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z")))) (str.to.re "\x0a")))))
(check-sat)
