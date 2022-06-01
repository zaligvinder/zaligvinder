(declare-const X String)
; ^([A-Za-z]\d[A-Za-z][-]?\d[A-Za-z]\d)
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.opt (str.to_re "-")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9"))))
(check-sat)
