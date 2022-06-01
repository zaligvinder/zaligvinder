(declare-const X String)
; ^([A-Z][a-z]+)\s([A-Z][a-zA-Z-]+)$
(assert (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}") (re.range "A" "Z") (re.+ (re.range "a" "z")) (re.range "A" "Z") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "-"))))))
(check-sat)
