(declare-const X String)
; /GET \/[a-z]{8,12}\?[a-z] HTTP\/1.1/i
(assert (not (str.in_re X (re.++ (str.to_re "/GET /") ((_ re.loop 8 12) (re.range "a" "z")) (str.to_re "?") (re.range "a" "z") (str.to_re " HTTP/1") re.allchar (str.to_re "1/i\u{a}")))))
(check-sat)
