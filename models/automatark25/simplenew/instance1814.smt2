(declare-const X String)
; [^A-Za-z0-9 ]
(assert (not (str.in_re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re " ")) (str.to_re "\u{a}")))))
(check-sat)
