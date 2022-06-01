(declare-const X String)
; (\(")([0-9]*)(\")
(assert (str.in_re X (re.++ (str.to_re "(\u{22}") (re.* (re.range "0" "9")) (str.to_re "\u{22}\u{a}"))))
(check-sat)
