(declare-const X String)
; s/\b(\w+)\b/ucfirst($1)/ge
(assert (str.in.re X (re.++ (str.to.re "s/") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/ucfirst1/ge\x0a"))))
(check-sat)
