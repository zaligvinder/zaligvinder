(declare-const X String)
; /z\u{3D}[A-Z0-9%]{700}/i
(assert (str.in_re X (re.++ (str.to_re "/z=") ((_ re.loop 700 700) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to_re "%"))) (str.to_re "/i\u{a}"))))
(check-sat)
