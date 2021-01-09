(declare-const X String)
; [A-Z][a-z]+
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a")))))
(check-sat)
