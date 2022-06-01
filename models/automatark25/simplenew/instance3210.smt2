(declare-const X String)
; /^[a-z]\u{3D}[0-9a-z]{100}$/Pm
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.range "a" "z") (str.to_re "=") ((_ re.loop 100 100) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to_re "/Pm\u{a}")))))
(check-sat)
