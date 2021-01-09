(declare-const X String)
; /\d+&/miR
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re "&/miR\x0a")))))
(check-sat)
