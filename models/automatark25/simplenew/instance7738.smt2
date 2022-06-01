(declare-const X String)
; /\d+&/miR
(assert (str.in_re X (re.++ (str.to_re "/") (re.+ (re.range "0" "9")) (str.to_re "&/miR\u{a}"))))
(check-sat)
