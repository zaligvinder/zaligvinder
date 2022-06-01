(declare-const X String)
; /^\/\d+\.ld$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.range "0" "9")) (str.to_re ".ld/U\u{a}")))))
(check-sat)
