(declare-const X String)
; [0-9A-Za-z]
(assert (not (str.in_re X (re.++ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z")) (str.to_re "\u{a}")))))
(check-sat)
