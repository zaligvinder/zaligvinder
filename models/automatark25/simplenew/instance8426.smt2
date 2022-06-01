(declare-const X String)
; /filename=\u{22}\d+\u{22}\r\n/P
(assert (str.in_re X (re.++ (str.to_re "/filename=\u{22}") (re.+ (re.range "0" "9")) (str.to_re "\u{22}\u{d}\u{a}/P\u{a}"))))
(check-sat)
