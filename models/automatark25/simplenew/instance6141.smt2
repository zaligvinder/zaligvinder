(declare-const X String)
; Login\d+dll\u{3F}HOST\u{3A}contains
(assert (str.in_re X (re.++ (str.to_re "Login") (re.+ (re.range "0" "9")) (str.to_re "dll?HOST:contains\u{a}"))))
(check-sat)
