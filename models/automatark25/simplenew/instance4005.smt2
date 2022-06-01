(declare-const X String)
; [A-Z][a-z]+
(assert (not (str.in_re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to_re "\u{a}")))))
(check-sat)
