(declare-const X String)
; /\/[a-zA-Z_-]+\.doc$/U
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re "-"))) (str.to_re ".doc/U\u{a}"))))
(check-sat)
