(declare-const X String)
; ^([0-9a-fA-F]){8}$
(assert (str.in_re X (re.++ ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "\u{a}"))))
(check-sat)
