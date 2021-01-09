(declare-const X String)
; /tip\x3D[a-zA-Z]+\x26cli\x3D[a-zA-Z]+\x26tipo\x3Dcli\x26inf\x3D/smiP
(assert (str.in.re X (re.++ (str.to.re "/tip=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "&cli=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "&tipo=cli&inf=/smiP\x0a"))))
(check-sat)
