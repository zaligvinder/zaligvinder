(declare-const X String)
; ^[A-Za-z]$
(assert (str.in_re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (str.to_re "\u{a}"))))
(check-sat)
