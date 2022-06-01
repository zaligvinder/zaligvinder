(declare-const X String)
; ([^a-zA-Z0-9])
(assert (not (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
