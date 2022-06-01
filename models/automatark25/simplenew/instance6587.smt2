(declare-const X String)
; ^([a-zA-Z0-9@*#]{8,15})$
(assert (str.in_re X (re.++ ((_ re.loop 8 15) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "@") (str.to_re "*") (str.to_re "#"))) (str.to_re "\u{a}"))))
(check-sat)
