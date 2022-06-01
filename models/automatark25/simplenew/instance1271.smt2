(declare-const X String)
; /filename=[a-z]+\.jat/
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.+ (re.range "a" "z")) (str.to_re ".jat/\u{a}")))))
(check-sat)
