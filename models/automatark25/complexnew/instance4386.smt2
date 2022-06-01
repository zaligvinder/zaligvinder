(declare-const X String)
; [^A-Za-z0-9]
(assert (str.in_re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (str.to_re "\u{a}"))))
; /\u{F6}\u{EC}\u{D9}\u{B3}\u{67}\u{CF}\u{9E}\u{3D}\u{7B}(\u{F6}\u{EC}\u{D9}\u{B3}\u{67}\u{CF}\u{9E}\u{3D}\u{7B}){500}/m
(assert (str.in_re X (re.++ (str.to_re "/\u{f6}\u{ec}\u{d9}\u{b3}g\u{cf}\u{9e}={") ((_ re.loop 500 500) (str.to_re "\u{f6}\u{ec}\u{d9}\u{b3}g\u{cf}\u{9e}={")) (str.to_re "/m\u{a}"))))
(check-sat)
