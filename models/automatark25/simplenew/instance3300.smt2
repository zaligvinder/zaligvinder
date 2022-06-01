(declare-const X String)
; (")([0-9]*)(",")([0-9]*)("\))
(assert (not (str.in_re X (re.++ (str.to_re "\u{22}") (re.* (re.range "0" "9")) (str.to_re "\u{22},\u{22}") (re.* (re.range "0" "9")) (str.to_re "\u{22})\u{a}")))))
(check-sat)
