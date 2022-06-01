(declare-const X String)
; /\/[a-zA-Z_-]+\.rtf$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "_") (str.to_re "-"))) (str.to_re ".rtf/U\u{a}")))))
(check-sat)
