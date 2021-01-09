(declare-const X String)
; /GET \/[a-z]{8,12}\?[a-z] HTTP\/1.1/i
(assert (not (str.in.re X (re.++ (str.to.re "/GET /") ((_ re.loop 8 12) (re.range "a" "z")) (str.to.re "?") (re.range "a" "z") (str.to.re " HTTP/1") re.allchar (str.to.re "1/i\x0a")))))
(check-sat)
