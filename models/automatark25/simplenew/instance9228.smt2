(declare-const X String)
; /z\d{1,3}/Pi
(assert (not (str.in_re X (re.++ (str.to_re "/z") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "/Pi\u{a}")))))
(check-sat)
