(declare-const X String)
; (^.+\|+[A-Za-z])
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.+ re.allchar) (re.+ (str.to_re "|")) (re.union (re.range "A" "Z") (re.range "a" "z"))))))
(check-sat)
