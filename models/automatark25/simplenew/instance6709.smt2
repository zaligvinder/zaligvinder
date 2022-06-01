(declare-const X String)
; ^[A-Za-z0-9_]+$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "_"))) (str.to_re "\u{a}"))))
(check-sat)
