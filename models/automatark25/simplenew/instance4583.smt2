(declare-const X String)
; /tip\u{3D}[a-zA-Z]+\u{26}cli\u{3D}[a-zA-Z]+\u{26}tipo\u{3D}cli\u{26}inf\u{3D}/smiP
(assert (str.in_re X (re.++ (str.to_re "/tip=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "&cli=") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "&tipo=cli&inf=/smiP\u{a}"))))
(check-sat)
