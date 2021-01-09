(declare-const X String)
; /filename=[a-z]+\.jat/
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.+ (re.range "a" "z")) (str.to.re ".jat/\x0a")))))
(check-sat)
