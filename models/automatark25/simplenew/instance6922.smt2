(declare-const X String)
; s/\b(\w+)\b/ucfirst($1)/ge
(assert (not (str.in_re X (re.++ (str.to_re "s/") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/ucfirst1/ge\u{a}")))))
(check-sat)
