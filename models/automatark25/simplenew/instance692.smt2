(declare-const X String)
; ^(([a-z])+.)+[A-Z]([a-z])+$
(assert (not (str.in_re X (re.++ (re.+ (re.++ (re.+ (re.range "a" "z")) re.allchar)) (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to_re "\u{a}")))))
(check-sat)
