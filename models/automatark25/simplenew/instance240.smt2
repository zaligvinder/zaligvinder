(declare-const X String)
; [A-Z][a-zA-Z]+ [A-Z][a-zA-Z]+
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re " ") (re.range "A" "Z") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
(check-sat)
