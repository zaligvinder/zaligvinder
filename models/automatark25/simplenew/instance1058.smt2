(declare-const X String)
; ^[a-z]
(assert (str.in_re X (re.++ (re.range "a" "z") (str.to_re "\u{a}"))))
(check-sat)
