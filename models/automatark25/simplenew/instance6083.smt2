(declare-const X String)
; (^[A-Za-z])|(\s)([A-Za-z])
(assert (str.in_re X (re.union (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.union (re.range "A" "Z") (re.range "a" "z")) (str.to_re "\u{a}")) (re.range "A" "Z") (re.range "a" "z"))))
(check-sat)
