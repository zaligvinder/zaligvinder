(declare-const X String)
; \w.+(\n\t.+){0,}
(assert (not (str.in_re X (re.++ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.+ re.allchar) (re.* (re.++ (str.to_re "\u{a}\u{9}") (re.+ re.allchar))) (str.to_re "\u{a}")))))
(check-sat)
