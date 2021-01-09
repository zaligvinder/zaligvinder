(declare-const X String)
; @([_a-zA-Z]+)
(assert (str.in.re X (re.++ (str.to.re "@") (re.+ (re.union (str.to.re "_") (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
(check-sat)
