(declare-const X String)
; .*[a-zA-Z]$
(assert (not (str.in_re X (re.++ (re.* re.allchar) (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re "\u{a}")))))
(check-sat)
